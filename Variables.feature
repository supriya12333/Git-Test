Feature: My Feature
Background:
Given i assign "CAT" to variable "Var1"
And i assign "30" to variable "Var2"
And i assign "20" to variable "Var3"
And i import scenarios from "Utilities/Variable.Utilities"
Scenario:accesing Variables
Given i echo $Var1
when i assign variable "Var1" by combining  $Var1 "Training"
And i echo $Var2
And i echo $Var3
When i prompt "Text" and assign user response to variable "Var4"
Then i echo $Var4
And i execute scenario "Login Mail"
And I execute scenario "send Mail"

Scenario:combine variables
Given i "compare variables"
if i verify number $Var2 is greater than or equal to $Var3
Then i echo "Var2 greater than"
 Else i echo "var2 less than"
 EndIf
 
 
 
 While i verify number $Var3 is less than 30
 Then i echo $Var3 
 And i increase variable "Var3"
 EndWhile