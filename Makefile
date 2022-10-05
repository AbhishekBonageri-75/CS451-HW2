ele: gaussian_ele.c
	$(CC) -o gauss_serial gauss_serial.c

pt: gaussian_ele_pt.c
	$(CC) $(PT_FLAGS) -o gauss_serial_pt gauss_serial_pt.c

omp: gaussian_ele_omp.c
	$(CC) -o gauss_serial_omp gauss_serial_omp.c

clean:
	rm -f gauss_serial gauss_serial_pt gauss_serial_omp