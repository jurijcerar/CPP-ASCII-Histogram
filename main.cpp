#include <stdio.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <sys/io.h>
#include <sys/mman.h>
#include <cstring>
#include <cstdlib>
#include <iostream>
#include <chrono>

struct character {
    char c;
    int occurrences;
};

int arr [128];

void use_mmap(const char *file){
    auto begin = std::chrono::steady_clock::now();
    char *f;
    int size;
    struct stat s;
    int fd = open (file, O_RDONLY);

    int status = fstat (fd, & s);
    size = s.st_size;

    f = (char *) mmap (0, size, PROT_READ, MAP_PRIVATE, fd, 0);
    for (int i = 0; i < size; i++) {
        char c = f[i];
        arr[c]++;
    };
    auto end = std::chrono::steady_clock::now();
    std::cout << "Time difference = " << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() << "[µs]" << std::endl;
}

void use_read(const char *file, int size){
    auto begin = std::chrono::steady_clock::now();
    char * f = new char[size];
    int fd = open (file, O_RDONLY);
    int b_read;

    do {
        b_read = read(fd, f, size);
        for (int i = 0; i < b_read; i++) {
            char c = f[i];
            arr[c]++;
        }
    } while (b_read != 0);
    delete [] f;
    auto end = std::chrono::steady_clock::now();
    std::cout << "Time difference = " << std::chrono::duration_cast<std::chrono::microseconds>(end - begin).count() << "[µs]" << std::endl;
}

void print_vec(){
    for (int i = 0; i < 128; i++){
        if(arr[i] > 0) {
            std::cout << (char) i << " - " << arr[i] << "\n";
        }
    }
}

int main (int argc, const char * argv[]) {

    const char * file = argv [argc-1];
    const char * type;
    int size;

    for (int i = 0; i < argc; ++i) {
        if (strcmp(argv[i],"-t") == 0) {
            type = argv[i+1];
        }
        else if (strcmp(argv[i],"-b") == 0) {
            size = strtol(argv[i+1], nullptr, 10);
            if (size == 0) {
                std::cout <<" Neveljaven vnos -b !";
                return 0;
            }
        }
    }

    if (strcmp(type,"mmap") == 0){
        use_mmap(file);
        print_vec();
    }
    else if (strcmp(type,"read") == 0){
        use_read(file,size);
        print_vec();
    }
    else {
        std::cout<<"Neveljaven vnos -t !";
    }

    return 0;
}