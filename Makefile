CC = gcc
OMPI = mpicc
PT_FLAGS = -pthread

all: base pt omp  
base: gauss_serial.c
	$(CC) -o gauss_serial gauss_serial.c

pt: gauss_serial_pt.c
	$(CC) $(PT_FLAGS) -o gpt gauss_serial_pt.c

omp: gauss_serial_omp.c
	$(OMPI) -o gomp gauss_serial_omp.c

clean:
	rm -f gauss_serial gpt gomp