# Bash DBMS 🗄️

A simple Database Management System (DBMS) built using Bash scripting
and the Linux file system.

This project provides basic database and table operations through a
command-line interface.

---

## 📌 Project Description

This project is a simple DBMS implemented entirely using Bash Script.

Instead of using a traditional database system such as MySQL, the project
uses the Linux file system to store databases, tables, and records.

The project was created to practice Bash scripting, Linux commands,
file handling, functions, conditions, loops, and input validation.

---

## 🛠️ Technologies Used

- Bash Script
- Linux
- Shell Scripting
- Linux File System
- Git
- GitHub

---

## 📥 Download the Project

Clone the repository using Git:


git clone https://github.com/7ussen2del/DataBaseTask_with-bashScribt.git

Move into the project directory:

cd DataBaseTask_with-bashScribt
▶️ How to Run
1. Give Execute Permission

Make all Bash scripts executable:

chmod +x Files/*.sh
2. Run the Main Program

Start the DBMS:

./Files/main.sh
```bash
📂 Project Structure
DataBaseTask_with-bashScribt/
│
├── DataBases/
│   ├── ali/
│   │   └── anmed
│   │
│   ├── hessien/
│   │   └── adel
│   │
│   └── salem/
│       └── ahmed
│
├── Files/
│   ├── ConnectDb.sh
│   ├── CreateDb.sh
│   ├── CreateTable.sh
│   ├── DeleteRow.sh
│   ├── DeleteTable.sh
│   ├── DropDb.sh
│   ├── InsertRow.sh
│   ├── ListDb.sh
│   ├── main.sh
│   ├── SelectRow.sh
│   └── ShowTable.sh
│
└── README.md
🗄️ Database Structure

The project uses the Linux file system instead of a traditional
database server.

The structure is:

Database
    ↓
Directory

Table
    ↓
File

Row
    ↓
Line

Column
    ↓
Field separated by ||
Example

A database is represented by a directory:

DataBases/
└── hessien/

A table is represented by a file:

DataBases/
└── hessien/
    └── adel

The table file can contain:

id || name || age || color ||
1 || sarah || 23 || white ||
2 || ahmed || 25 || black ||
⚙️ Available Operations
Database Operations
Script	Description
CreateDb.sh	Create a new database
ListDb.sh	List all databases
ConnectDb.sh	Connect to a database
DropDb.sh	Delete a database
Table Operations
Script	Description
CreateTable.sh	Create a new table
ShowTable.sh	Display table data
DeleteTable.sh	Delete a table
InsertRow.sh	Insert a new record
SelectRow.sh	Select/search for a record
DeleteRow.sh	Delete a record
🖥️ Main Menu

After running:

./Files/main.sh

the program provides database operations such as:

1. Create Database
2. List Databases
3. Connect To Database
4. Drop Database
5. Exit
📋 Table Operations

After connecting to a database, the user can perform table operations:

1. Create Table
2. List Tables
3. Drop Table
4. Insert Row
5. Select Row
6. Delete Row
7. Back
📝 Example

Example table:

id || name || age || color ||
1 || sarah || 23 || white ||
2 || ahmed || 25 || black ||

Where:

id, name, age, and color are columns.
Each line represents a record.
|| is used as the column delimiter.
🧠 Bash Concepts Used

This project demonstrates the use of:

Bash Functions
Variables
Arrays
if conditions
case statements
while loops
for loops
read
Regular Expressions
File and Directory Operations
Input Validation
grep
sed
awk
cut
head
tail
File Redirection
🔐 Input Validation

The project includes validation for user input, such as:

Checking that database names are not empty.
Checking that table names are not empty.
Checking whether a database already exists.
Checking whether a table already exists.
Checking whether a database or table exists before performing operations.
Validating record IDs.
Handling invalid user choices.
🎯 Project Goal

The goal of this project is to build a simple Database Management System
using only Bash and the Linux file system.

The project demonstrates how basic database operations such as:

Create
Read
Insert
Delete

can be implemented using shell scripting.

🚀 How the Project Works

The general workflow is:

Run main.sh
     ↓
Database Menu
     ↓
Create / List / Connect / Drop Database
     ↓
Connect to Database
     ↓
Table Operations
     ↓
Create / Show / Insert / Select / Delete / Drop Table
👨‍💻 Author

Hessien Adel
