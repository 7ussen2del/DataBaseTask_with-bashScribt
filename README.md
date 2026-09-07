# Bash DBMS 🗄️

A simple Database Management System (DBMS) built using Bash scripting
and the Linux file system.

The project provides basic database and table operations through a
command-line interface.

---

## 📂 Project Structure

```text
Bash-DBMS/
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
└── Files/
    ├── ConnectDb.sh
    ├── CreateDb.sh
    ├── CreateTable.sh
    ├── DeleteRow.sh
    ├── DeleteTable.sh
    ├── DropDb.sh
    ├── InsertRow.sh
    ├── ListDb.sh
    ├── main.sh
    ├── SelectRow.sh
    └── ShowTable.sh
🗄️ Database Structure

The project uses the Linux file system instead of a traditional
database server.

Each database is represented by a directory.
Each table is represented by a file.
Each row is represented by a line inside the table file.
Columns are separated using ||.

Example:

id || name || age || color ||
1 || sarah || 23 || white ||
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
▶️ How to Run

Give the scripts execute permission:

chmod +x Files/*.sh

Run the main program:

./Files/main.sh
📋 Example Table

A table is stored as a file and can contain:

id || name || age || color ||
1 || sarah || 23 || white ||
2 || ahmed || 25 || black ||
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
🎯 Project Goal

The goal of this project is to build a simple DBMS using only Bash
and the Linux file system.

It helps demonstrate how basic database operations such as creating,
reading, inserting, and deleting data can be implemented using shell
scripting.

👨‍💻 Author

Hessien Adel
