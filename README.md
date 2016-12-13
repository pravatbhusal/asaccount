# ASAccount
ASAccount is an Actionscript-based program that is used as a template for logging and registering systems in games, websites, and even almost anything else.

# Techologies
MySQL Database
Host: www.000webhost.com (24/7 Database and Domain hosting for free)
- PhPMyAdmin to connect with PHP

PHP (Notepad ++)
Server-side language utilized to pass variables from Actionscript 3.0 to MySQL

Actionscript 3.0 (Adobe Flash Professional CS3 and any version above)
Client-based program to code and draw the Graphical-User-Interface (GUI)

FTP Client Access (FileZilla is best for FTP)

# Documentation
Setting up the MySQL Database -
- Receive a domain hosting website (or use localhost). We refernce "www.000webhost.com" for this tutorial (000webhost is a 24/7 Database and FREE host)
-  Create a new MySQL Database in your webhost. 
- Make sure to remember the: MySQL database name, MySQL user name, and password for MySQL user
-  Once your MySQL database is created, there should be a MySQL host URL. For 000webhost, the MySQL host is "mysql10.000webhost.com"
- A PHPMyAdmin database should be setup for your MySQL database (some webhosts don't use PHPMyAdmin, but most do.) Go to your PHPMyAdmin database and login using the information from step 2
- Make a new database in PHPMyAdmin and name it "users"
- Make new rows and columns in the "users" database. Here is the EXACT setup:
![Alt text](/Pictures/mysql_setup.PNG)
- Your setup for MySQL is finished!

Setting up the PHP Files -
- Download all 4 PHP Files
- Go to the ConnectSQL.php and change the $db_name, $db_username, $db_password, and $db_host variables to your MySQL database info.
- Now download FileZilla FTP Client Access
- Login to your website's FTP client (to find your FTP website information, look through your website host. If you're using 000webhost, find the "FTP Details" button in the homepage)
- Once connected to the FTP client, drag and drop all 4 PHP files somewhere in your website folders (make sure to remember the
file paths)

Setting up the Actionscript Files -
- Download the 4 Actionscript Files
- Open Adobe Flash and open a new :Actionscript 3.0 file:, and then save a name for that file (make sure the file directory for the Actionscript 3.0 file is the SAME as the 4 actionscript files)
- Inside the file, click the stage, go to properties, and for the main class type "Main"
- Your setup for the Actionscript files are finished!

Creating the Login/Register Screens in Flash -
- We will now start the Login screen setup
- Create an Email Dynamic text and Password Dynamic text with instance names of "EmailTxT" and "PassTxT" respectively
- Create a button with the instance name "LoginBTN"
- We will not start the Register screen setup
- Create an Email Dynamic text and Password Dynamic text and Username Dynamic text with instance names of "EmailTxTReg" "PassTxTReg" and "UserTxTReg" respectively
- Create a button with the instance name "RegisterBTN"
- Your setup for the Login/Register Screens are finished!

Whenever you want to save your data, then call "new SaveData()" within your flash application.
As of right now, the only variables that are sent and received from MySQL are the Email, Username, Password, and the Silver variables.
If you want to add new variables, then you will have to manually do it.

# Extra Information
This program was initially created for the "Fantasy Dreams" RPG game that I was coding. The project was later abandoned, sadly. The login/register system is now a usable template, though :).
