# TGLang

This is solution for telegram contest to detect language of a code snippet.

Contest page: https://contest.com/docs/ML-Competition-2023.

It is is just C wrap of [guesslang](https://github.com/yoeo/guesslang/tree/master/guesslang/data/model). 

# Build

Guesslang is tensorflow model. So, if we want to achieve C library we need to download TF.

```bash
wget -q --no-check-certificate https://storage.googleapis.com/tensorflow/libtensorflow/libtensorflow-cpu-linux-x86_64-2.5.0.tar.gz
tar -xzf libtensorflow-cpu-linux-x86_64-2.5.0.tar.gz -C resources/
```

## Compile&Run example
```bash
gcc -O3 -I./src/ -I./resources/include/ -ldl -lrt  ./src/tglang.c ./src/main.c -o src/main 
cd src 
./main
```
You must see something like this:

```bash
...
TF_LoadSessionFromSavedModel OK
TF_GraphOperationByName Placeholder is OK
TF_GraphOperationByName head/predictions/probabilities is OK
Session is OK
Input: #include <stdio.h>

int main(int argc, char* argv[])
{

  printf("Hello world");
}
Output: TGLANG_LANGUAGE_C

Function: 659.408000 milliseconds to execute 


Start measure
Session is OK
Input: <?php echo 'Hello, World!'; ?>
Output: TGLANG_LANGUAGE_PHP

Function: 2.662000 milliseconds to execute 
```
Since the first call requires loading the model, it takes significantly longer. 

## Compile libtglang.so

Since according to the rules of the contest it is required to provide shared so library which which will be linked of organizers and we can't influence (see libtglang-tester.tar.gz in rule contenst), I had to load tensorflow.so using dlopen/dlsys. 

```bash
gcc -O3 -fpic -c ./src/tglang.c -o tglang.o -I./src/ -I./resources/include/ -L/usr/lib/x86_64-linux-gnu/libdl.a -ldl -static
gcc -shared -o libtglang.so tglang.o -L/usr/lib/x86_64-linux-gnu/libdl.a -ldl
```