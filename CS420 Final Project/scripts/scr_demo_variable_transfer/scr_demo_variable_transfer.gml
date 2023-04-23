function scr_demo_variable_transfer() {
	/****
	gmpython can transfer numbers, and strings, and buffers back and forth between
	GM and python using the python_set_double(), python_set_string(),
	python_set_bytes(), python_get_double(), python_get_string(), and 
	python_get_bytes() functions.

	python_exists() can be used to check whether the variable exists in the 
	global python scope; python_del() can be used to delete it.

	As usual, python_execute_string() can be used to execute a stript. You can use
	a string literal, or load a file and pass that instead
	****/

	// setting values
	python_set_double("some_number", 123.456);
	python_set_string("some_string", "hello world");

	var buff = buffer_create(8, buffer_fixed, 1);
	buffer_write(buff, buffer_u32, 0x12345678);
	buffer_write(buff, buffer_u32, 0xaabbccdd);
	python_set_bytes("some_bytes", buffer_get_address(buff), 8);

	python_execute_string(@"
	import sys
	print(f'{some_string} from python version {sys.version}')
	print(f'your number is: {some_number}')
	print(f'your bytes are: {some_bytes}')
	sys.stdout.flush()

	some_number *= 2
	some_string = some_string[::-1]
	some_bytes = b'12345678'
	");

	// getting values
	var some_number = python_get_double("some_number");
	show_debug_message("GML got number: " + string(some_number));
	var some_string = python_get_string("some_string");
	show_debug_message("GML got string: " + string(some_string));
	var res = python_get_bytes("some_bytes", buffer_get_address(buff), 8);
	show_debug_message("GML got buffer: " + string(res) + " " + buffer_base64_encode(buff, 0, 8));

	// checking values exists and deleting
	var exists = python_exists("some_number");
	show_debug_message(exists? "now you see me": "no you don't");

	python_del("some_number");

	var exists = python_exists("some_number");
	show_debug_message(exists? "now you see me": "no you don't");

	buffer_delete(buff);


}
