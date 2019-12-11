CC=gcc
SOURCES = src/

add: src/main.c src/add.c
	$(CC) -o add src/main.c src/add.c \
	-I /Users/dbu19518/Develop/Check_Jenkins/include/ \

test_add: test/test_add.c src/add.c
	$(CC) -o test_add test/test_add.c src/add.c \
	-I /usr/local/include \
	-I /Users/dbu19518/Develop/Check_Jenkins/include/ \
	-L /usr/local/lib \
	-lcheck