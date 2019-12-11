CC=gcc
SOURCES = src/

add: src/main.c src/add.c
	$(CC) -o add src/main.c src/add.c \
	-I /Users/dbu19518/Develop/Check_Jenkins/include/ \

test_even_digits: test/test_even_digits.cpp src/even_digit_calculator.cpp 
	$(CC) --std=c++11 -o test_even_digits test/test_even_digits.cpp src/even_digit_calculator.cpp  \
	-I /usr/local/include \
	-I /Users/dbu19518/Develop/Travis_Test_C/include/ \
	-L /usr/local/lib \
	-lboost_unit_test_framework