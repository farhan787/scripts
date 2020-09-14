# Configurations to use above scripts with ease

## C++ code runner

### For UNIX/LINUX environments
Open Terminal and follow below instructions,

```sh
terminal:~$ git clone https://github.com/farhan787/scripts
terminal:~$ cp cpp_code_runner.sh /usr/local/bin/
terminal:~$ alias run='/usr/local/bin/cpp_code_runner.sh'
```
- Now, you'll be able to use **`run c++_file`** to execute your code.
- You can also give an input file, **`run c++_file input_file.txt`**.

- To make the alias permanent and session independent,
    - Open your `.bash_profile or .zshrc` file and add `alias run='/usr/local/bin/cpp_code_runner.sh'` and save it, then refresh your terminal session and voila you're ready to go :)
