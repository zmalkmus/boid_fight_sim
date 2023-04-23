function scr_demo_pandas() {
	/****
	gmpython can import python packages. Unfortunately the resulting file is too large for YoYo marketplace.
	So you will have to prepare the python libs yourself (or download it from my dropbox link which may or
	may not work in th efuture).  In this example, pandas is imported and then
	used to read an excel file, which is then passed to GM as a json and turned into
	a ds_map. This could be one way to use excel files as a way to manage data.
	(but would you want to? ¯\_(ツ)_/¯)

	Pandas and other dependencies were grabbed using
	pip install pandas -t example_python_libs_pandas

	(where example_python_libs_pandas is a folder, this is done from 32-bit python 3.7 on windows)

	Then, either example_python_libs_pandas is added as a folder into Included Files (literally drag and drop
	the folder from windows explorer into Included Files. OR. zipped up the folder, and add the zip to
	Included Files and tell python to unzip it at run-time.  Both examples are included

	If you want to try the zip method, please run the above pip command to prepare the libraries and zip it up,
	or download them from this link which may not work in the future:
	https://www.dropbox.com/s/ji3twskhzje2t0i/example_python_libs_pandas.zip?dl=0
	****/

	python_set_string("working_directory", working_directory)

	// extract the libs
	/*python_execute_string(@'
	import os
	import sys
	lib_path = os.path.join(working_directory, "example_python_libs_pandas")
	sys.path.append(lib_path)
	print(f"Python libs successfully extracted to {lib_path}")');*/

	// alternative arrangement: unzip it
	python_execute_string(@'
	import os
	import sys
	import zipfile
	lib_path = os.path.join(working_directory, "lib")
	try:
		os.makedirs(lib_path)
	except FileExistsError:
		pass

	print("Extracting python libs, please wait...")
	sys.stdout.flush()

	if not os.path.isfile("example_python_libs_pandas.zip"):
		print("Error: example_python_libs_pandas.zip not found, did you prepare it like the comments in scr_demo_pandas said?")
		sys.exit(1)

	with zipfile.ZipFile("example_python_libs_pandas.zip") as zf:
		zf.extractall(lib_path)
	
	sys.path.append(lib_path)
	print(f"Python libs successfully extracted to {lib_path}")
	sys.stdout.flush()
	');


	// example code, load data using pandas and output dict
	python_execute_string(@'
	import json
	import pandas as pd

	df = pd.read_excel("example_data.xlsx")

	data = df.set_index("Name").transpose().to_dict()
	data_json = json.dumps(data)
	')

	var data = json_decode(python_get_string("data_json"));

	// display some data just to prove we have it
	var dagger = data[? "Dagger"]
	show_debug_message("Dagger cost: " + string(dagger[? "Cost"]))

	ds_map_destroy(data);



}
