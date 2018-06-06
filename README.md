## ramso/soapui ##

A simple container the allow the execution of the test cases or the mock-up of a soap-ui project.
---
**Quick start**

Run all test cases in a Soap Ui Project 

    docker run -v /home/ramso/soapui/test:/var/soapui -e PROJECT=soapui.xml ramso/soapui
Run all the mock-up in a Soap UI Project

    docker run -v /home/ramso/soapui/test:/var/soapui -e PROJECT=soapui.xml ramso/soapui mockup   
---
 **Volumes**
 The container use a volume to read the project to process and store the results and logs
 
|Volume|Description  |
|--|--|
|/var/soapui  | A folder that contain the Soap Ui project to use and go to store the results os the tests  |
---
**Environment Variables**
|Name  |Required  | Description |
|--|--|--|
|PROJECT  |true  |Path,relative to the folder added in the volume, of the sopa ui project file |
|PORT|false|Port number for the mock-up server. By default 8088.|
|SUITE|false|The name of the test suite or the mockup to run. If not reported, everything will be run |
|OPTIONS|false|A string with other soap ui console options |
---
**Commands** 
For make for flexible the container have two different commands
|Command|Description  |
|--|--|
|test|Run the test suite, is the default option  |
|mockup|Run the mockup server of the project|
