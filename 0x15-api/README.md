# API

In this project, you will access employee data via an API to organize and export them to different data structures.

Application program interface (API) is  a set of routines, protocols and tools for building software applications. An api specifies how software components should interact.


## 0-gather_data_from_an_API.py:

Write a Python script that, using this REST API, for a given employee ID, returns information about his/her TODO list progress.

Requirements:

	* You must use urllib or requests module
	* The script must accept an integer as a parameter, which is the employee ID
	* The script must display on the standard output the employee TODO list progress in this exact format:
		* First line: Employee EMPLOYEE_NAME is done with tasks(NUMBER_OF_DONE_TASKS/TOTAL_NUMBER_OF_TASKS):
			* EMPLOYEE_NAME: name of the employee
			* NUMBER_OF_DONE_TASKS: number of completed tasks
			* TOTAL_NUMBER_OF_TASKS: total number of tasks, which is the sum of completed and non-completed tasks


## 1-export_to_CSV.py:

extend your Python script to export data in the CSV format.

Requirements:

	* Records all tasks that are owned by this employee
	* Format must be: "USER_ID","USERNAME","TASK_COMPLETED_STATUS","TASK_TITLE"
	* File name must be: USER_ID.csv



## 2-export_to_JSON.py:

extend your Python script to export data in the JSON format.

Requirements:

	* Records all tasks that are owned by this employee
	* Format must be: { "USER_ID": [{"task": "TASK_TITLE", "completed": TASK_COMPLETED_STATUS, "username": "USERNAME"}, {"task": "TASK_TITLE", "completed": TASK_COMPLETED_STATUS, "username": "USERNAME"}, ... ]}
	* File name must be: USER_ID.json


## 3-dictionary_of_list_of_dictionaries.py:

 extend your Python script to export data in the JSON format.

Requirements:

	* Records all tasks from all employees
	* Format must be: { "USER_ID": [ {"username": "USERNAME", "task": "TASK_TITLE", "completed": TASK_COMPLETED_STATUS}, {"username": "USERNAME", "task": "TASK_TITLE", "completed": TASK_COMPLETED_STATUS}, ... ], "USER_ID": [ {"username": "USERNAME", "task": "TASK_TITLE", "completed": TASK_COMPLETED_STATUS}, {"username": "USERNAME", "task": "TASK_TITLE", "completed": TASK_COMPLETED_STATUS}, ... ]}
	* File name must be: todo_all_employees.json