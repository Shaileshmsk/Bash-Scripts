# Bash-Scripts

Introduction:
-----------------------------
In this repository im pushing all the scripts I have created while studying and implementing the shell scripting. 

Local-websetup:
-----------------------------
This contains a shell file with the script use case. sample use case, we have some commands to execute which will set up the website for us. So instead of doing that, manually, running all the commands, we are going to write a script to do that. So I'm going to call this script as Web site, setup script. So I know all the commands to set up the website.
I'm talking about the similar example we've seen in Linux download it from tooplate.com and set it up so we know all the commands.
I'm going to simply record all those commands in this text file, which is basically my script.

1firstscript.sh: 
It is a shell file that show how to write a script which is clear, understandable and readable even after a long period of time.

2_websetup.sh: 
This script holds a URl and dependencies to host a static website template which is borrowed from "tooplate.com". After running the script browse the hostmachine Ip to see the website hosted.

3_vars_websetup.sh:
An essential feature of programming is the ability to use a name or a label to refer to some other quantity: such as a value, or a command. This is commonly referred to as variables.However, variables really come into use in more advanced programming, when we're in a situation in which the actual values aren't known before executing a program. A variable acts as a placeholder that gets resolved upon actual execution time.
In this script it's a subtle demonstration of the 2_websetup.sh with variables and how we can easily change the variable values.

dismantle.sh:
It is rather a extra script which can be used to clean up the whole setup environment.

4_args_websetup.sh:

Command-line arguments are parameters that are passed to a script while executing them in the bash shell. They are also known as positional parameters in Linux. We use command-line arguments to denote the position in memory where the command and it’s associated parameters are stored.
Here, we to take the URL of the artifact as an argument so user can pass any URL in our script, will deploy that website for the userfArgument_first is going to be the URL. Argument_second is going to be the artifact name.
So this is now a reusable code, I can use it to deploy any website I want.
