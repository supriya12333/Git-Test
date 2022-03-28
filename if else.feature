Feature: If else
Scenario:simple if else
Given i prompt "please enter a number" and assign user response to variable "Number"
If i verify number $Number is equal to "1"
Then i echo "user entered 1"
And	i wait 1 seconds
Elsif i verify number $Number is equal to 2
Then i echo "user entered 2"
And i wait 2 seconds
Elsif i verify number $Number is equal to 3
Then i echo "user entered 3"
And i wait 3 seconds
Else i echo "user didnot enter 1,2,or3"
And i wait 5 seconds
Endif

