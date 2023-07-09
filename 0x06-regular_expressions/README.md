## 0-simply_match_school.rb:

A regular expression that match School, it scans the arguments in the argv and if any matches "School" it outputs "School" otherwise outputs NULL

Example:

	sylvain@ubuntu$ ./0-simply_match_school.rb School | cat -e
	School$
	sylvain@ubuntu$ ./0-simply_match_school.rb "Best School" | cat -e
	School$
	sylvain@ubuntu$ ./0-simply_match_school.rb "School Best School" | cat -e
	SchoolSchool$
	sylvain@ubuntu$ ./0-simply_match_school.rb "Grace Hopper" | cat -e
$

-----------------------------------------------------------------------------------------------------------------------------------------------------


## 1-repetition_token_0.rb:

A regular expression that matches hbttn, hbtttn, hbttttn, hbtttttn

Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method

-----------------------------------------------------------------------------------------------------------------------------------------------------


## 2-repetition_token_1.rb:

A regular expression that matches htn, hbtn

Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method

-----------------------------------------------------------------------------------------------------------------------------------------------------

## 3-repetition_token_2.rb:

A regular expression that matches hbtn, hbttn, hbtttn, hbttttn, hbtttttn, hbttttttn and any other cases of hbt

-----------------------------------------------------------------------------------------------------------------------------------------------------

## 4-repetition_token_3.rb:

A regular expression that matches anything that has a hbtn and not hbon

-----------------------------------------------------------------------------------------------------------------------------------------------------

## 5-beginning_and_end.rb:

Requirements:

The regular expression must be exactly matching a string that starts with h ends with n and can have any single character in between

Using the project instructions, create a Ruby script that accepts one argument and pass it to a regular expression matching method


Example:

	sylvain@ubuntu$ ./5-beginning_and_end.rb 'hn' | cat -e
	$
	sylvain@ubuntu$ ./5-beginning_and_end.rb 'hbn' | cat -e
	hbn$
	sylvain@ubuntu$ ./5-beginning_and_end.rb 'hbtn' | cat -e
	$
	sylvain@ubuntu$ ./5-beginning_and_end.rb 'h8n' | cat -e
	h8n$
	sylvain@ubuntu$
	$

-----------------------------------------------------------------------------------------------------------------------------------------------------

## 6-phone_number.rb:

Requirement:

The regular expression must match a 10 digit phone number

Example:

	sylvain@ubuntu$ ./6-phone_number.rb 4155049898 | cat -e
	4155049898$
	sylvain@ubuntu$ ./6-phone_number.rb " 4155049898" | cat -e
	$
	sylvain@ubuntu$ ./6-phone_number.rb "415 504 9898" | cat -e
	$
	sylvain@ubuntu$ ./6-phone_number.rb "415-504-9898" | cat -e
	$
	sylvain@ubuntu$

-----------------------------------------------------------------------------------------------------------------------------------------------------


## 7-OMG_WHY_ARE_YOU_SHOUTING.rb:

Requirement:

The regular expression must be only matching: capital letters

Example:

	sylvain@ubuntu$ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "I realLy hOpe VancouvEr posseSs Yummy Soft vAnilla Dupper Mint Ice Nutella cream" | cat -e
	ILOVESYSADMIN$
	sylvain@ubuntu$ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "WHAT do you SAY?" | cat -e
	WHATSAY$
	sylvain@ubuntu$ ./7-OMG_WHY_ARE_YOU_SHOUTING.rb "cannot read you" | cat -e
	$
	sylvain@ubuntu$

-----------------------------------------------------------------------------------------------------------------------------------------------------


## 100-textme.rb:

Requirements:

Your script should output: [SENDER],[RECEIVER],[FLAGS]

The sender phone number or name (including country code if present)

The receiver phone number or name (including country code if present)

The flags that were used

Given a sentence like:
	'Feb 1 11:00:00 ip-10-0-0-11 mdr: 2016-02-01 11:00:00 Receive SMS [SMSC:SYBASE1] [SVC:] [ACT:] [BINF:] [FID:] [from:Google] [to:+16474951758] [flags:-1:0:-1:0:-1] [msg:127:This planet has - or rather had - a problem, which was this: most of the people on it were unhappy for pretty much of the time.] [udh:0:]'

The script should scan for the "from", "to" and "flag" in that sentence and output their value, which mimicks SENDER, RECEIVER and FLAGS
