			MAVEN				
DAY-1:		    ============
#1
	Java Build and Deployment End-To-End Workflow.

#2
Basics
	- Java program
	- manual compilation

#3
What is Maven? Why we need a build tool?


#4
Installation
---
Maven is developed in Java. So to run maven we need to  have JDK installed.


JDK Installation
--
$ sudo apt-get update
$ sudo apt-get install openjdk-8-jdk


JDK Un-Installation
--
$ sudo apt-get remove openjdk*

Maven Installation
--
$ sudo apt-get update
$ sudo apt-get install maven

Maven Un-Installation
--
$ sudo apt-get remove maven

Check The installations:
--
java -version
mvn -version

Check The installations path:
--
which java
which mvn


#5 TEST YOUR KNOWLEDGE
        - Build and Deployment E2E work-flow and basics
	- What is compilation & why we compile the source code?
	- Packaging sequence for Java application
	- What is Build
	- What is Deployment
	- Environment
	- Dev, QA & DevOps teams Interaction and Collaboration.

DAY-2:
#6
Maven's standard project layout
=================================
Project creation:
-----------------
java projects which are created by maven, ideally follows below project folder structure.
	
		flipkart
		   |
		  src		pom.xml
		   |
           main--------- test
	     | 		|
           java		java
	    |		 |
       (group.Id)    (group.Id)
	  |		|
      App.java	   AppTest.java


flipkart - is called "Project name" / "ArtifactID"
src 	 - Source folder which contains the 
				application source code
main	 - Contains application's main functional code
test	 - Contains application's unit testing code
pom.xml  - Maven's build file using which we can
				configure build steps such as 
				compilation, test runs, jar/war creation,
				deployments...etc.


#7
Building the maven project:
-----------------------

# Install git
	$ sudo apt-get update
	$ sudo apt-get install git
	$ git --version --> verify git installation.

#
Clone the code from Git Or create your own Project using below Maven command
   Clone:
	$ git clone https://github.com/nageshvkn/flipkart.git
        
#
Building the project using Maven. Use below command.
	$ mvn install


$ mvn install - command executes below "build life cycle phases" automatically. 

	- initialize
		prepares project with initial pre-
		requisites ex: creating necessary directory structure (i.e. target directory)
	- validate
		validates project's folder structure
				
	- compile
		compiles "main" java code.
	- testCompile
		compiles "test" java code
	- test
		Runs the test cases and generates test reports.
	- package
		creates jar/war.
	- install
		copy built artifacts i.e jar/war file into local repository $USER_HOME/.m2
		folder.


#
Verify Built artifacts:
--------------------------
Go to "target" folder and observe below.
	
			target
			  |
		classes     test-classes	surefire-reports	jar/war file


	classes: directory contains compiled class files
				of main source code
	test-classes: directory contains compiled class
				files of test source code
				
	surefire-reports: contains test reports.

	flipkart-1.0-SNAPSHOT.jar: jar file of the main code

Note:
first time when we run 'mvn install' command, Maven downloads all missing dependencies into .m2  from maven's central repository.
So, we need to have internet when we run 'mvn install' command first time.


#8
Understanding pom.xml file structure

#9
Artifact path in local repository .m2
 $USER_HOME/.m2/repository/groupId/artifactId/version/jar-OR-war-file

- Package naming convention:
	artifactId-version.jar/war

DAY-3:
#11
PROJECT-02: WEB Application Build and Deployment.
------------
Goal: 
	- Perform end-to-end build and deployment for flipkart web application
	- Handling build and deployment for any web application

Steps:
------
# Install git
	$ sudo apt-get update
	$ sudo apt-get install git
	$ git --version --> verify git installation

#
Clone the code from Git
	$ git clone https://github.com/nageshvkn/iflipkart.git
	                              
#
Building the project using Maven. Use below command.
	$ mvn install
	
#
Check final artifact i.e flipkart.war file in target directory
$ ls target 

#
Set-up tomcat for deployment
- Download tomcat *.tar.gz and JDK.
- Extract to your favouriate location
- Make sure that java is installed in the machine

#
Deploy flipkart.war into tomcat deployment path
$ cp target/flipkart.war $TOMCAT_HOME/webapps

#
Start tomcat server
$ cd $TOMCAT_HOME/bin 
$ ./startup.sh

#
Launch application with below URL.
http://localhost:8080/flipkart

Syntax:
[http://TomcatServerIP:Port/WarFilename]


#12
Project:3(Real-time End-to-End Build and Deployment Process)
=================================
Goals: 
- Building the War for large scale real-time kinda application
- Learning Deployments with a dedicated tomcat Server

Steps:
----------
#
Install GIT
$ sudo apt-get update
$ sudo apt-get install git

# Clone gamutkart application source code into the build server from below "gamutkart" github repository.
$ git clone https://github.com/nageshvkn/gamutkart2.git

3.
Build "gamutkart" application using below command.
$ mvn install

4. 
Deploy 'gamutkart.war' application to remote server deployment location(i.e $TOMCAT_HOME/webapps) using below command.
	$ cp target/gamutgurus.war $TOMCAT_HOME/webapps

4A.
After the deployment, we need start the server using below tomcat startup comamnd.
	$ cd $TOMCAT_HOME/bin
	$ ./startup.sh

5.
Tomcat by default runs on port 8080. So application can be accessed with below URL.

	ex: http://IPAddress:8080/gamutgurus
 	    http://localhost:8080/gamutgurus (If application is deployed in local machine)


6. NOTE:
In case there is any issue in the application, errors will be logged in 
"$TOMCAT_HOME/logs/catalina.2017-03-24.log" file.

We can check this file and if there are any errors/exceptions, we provide this information to developers.

7.
Note: If you want to change the port number, Go to below file and change the port number where you see something like this. ( port="8080" protocol="HTTP/1.1")
	$ vim $TOMCAT_HOME/conf/server.xml


