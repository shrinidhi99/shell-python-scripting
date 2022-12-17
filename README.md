# Shell Scripting
A shell script is a computer program designed to be run by the Unix shell, a command-line interpreter.[1] The various dialects of shell scripts are considered to be scripting languages. Typical operations performed by shell scripts include file manipulation, program execution, and printing text. A script which sets up the environment, runs the program, and does any necessary cleanup, logging, etc. is called a wrapper.

After creating a new script in `ksh` or `sh`, execute the following command before executing the script:
```shell
chmod u+v <script>.<extension>
```

### MySQL instructions
Store user name and password in conf file with 600 permission or make use of the following command before executing the script locally:
```shell
mysql_config_editor set --login-path=local --host=localhost --user=username --password
```
where username is your user name and password is later asked in the console window. After this follow the way to query in MySQL DB as done in the [firstScript.ksh](shell/firstScript.ksh) file. This is to avoid providing password from the script file.

![Shell Scripting](https://www.cyberciti.biz/media/new/faq/2016/01/Hello-World-Bash-Shell-Script-Program.jpg "Bash scripting")

# Python Scripting
Python is a high-level programming language designed to be easy to read and simple to implement. It is open source, which means it is free to use, even for commercial applications. ... Python is considered a scripting language, like Ruby or Perl and is often used for creating Web applications and dynamic Web content.

![Python script](https://miro.medium.com/max/1214/1*nxgK3JNlRXjLOZQVRImoEQ.png "Python scripting")

# Kotlin Scripting
Kotlin script has an extension .kts . The kotlin script needs to be executed in this way:
> kotlinc -script <script-name>.kts <args>

If kotlinc isn't recognized by the terminal then set the kotlin compiler path to the BASH.
