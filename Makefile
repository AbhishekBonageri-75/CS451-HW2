CC = gcc
PT_FLAGS = -pthread

all: base pt omp  
base: gauss_serial.c
	$(CC) -o gauss_serial gauss_serial.c

pt: gauss_serial_pt.c
	$(CC) $(PT_FLAGS) -o gauss_serial_pt gauss_serial_pt.c

omp: gauss_serial_omp.c
	$(CC) -o gauss_serial_omp gauss_serial_omp.c

clean:
	rm -f gauss_serial gauss_serial_pt gauss_serial_omp