FROM gcc
RUN ["cd", "/libunwind-dwarf5"]
CMD ["gcc", "-g", "-gdwarf-5", "-o", "docker/gcc/hello_world", "hello_world.c"]