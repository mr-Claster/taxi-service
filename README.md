# taxi-service
## Description
This is a simple web application of a taxi service. This application allows you to keep track of cars and drivers
## Project structure
+ DB - Database based on MySQL server
+ DAO - (Data Access Object) Access information to DB
+ Service - Business logic
+ Controller - allows the user to use the application
## Features
+ Register
+ Log in, Log out
+ Create cars/drivers/manufacturers
+ Delete cars/drivers/manufacturers
+ Display cars/drivers/manufacturers
## Technologies
+ Java 17
+ Maven
+ MySQL
+ JDBC
+ Tomcat
+ JSP
## Quickstart
1. Fork this repository
2. Copy link of project
3. Create new project from Version Control
4. Create the necessary tables in your database using the file init_db.sql
5. Edit ConnectionUtil.class - set the necessary parameters
``` java
    private static final String URL = "URL";
    private static final String USERNAME = "USERNAME"; 
    private static final String PASSWORD = "PASSWORD";
    private static final String JDBC_DRIVER = "JDBC_DRIVER";
```
#### Example
``` java
    private static final String URL = "jdbc:mysql://localhost:3306/taxi?useUnicode=true&serverTimezone=UTC";
    private static final String USERNAME = "root"; 
    private static final String PASSWORD = "0000";
    private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
```
6. Install [Tomcat] (https://tomcat.apache.org/download-90.cgi)
7. Add Tomcat server to configuration and Fix it.
8. Run project
