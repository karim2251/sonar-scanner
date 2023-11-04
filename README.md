# sonar-scanner

##### to install java 11 and sonar-scanner and finally Configuration:
 `download the sonar.sh file`

##### the permission to execute
```
chmod +x sonar.sh
```
##### execute the scrupte 
```
./sonar.sh
```
`this script will be install java 11 and install sonar-scanner also add the sonar-scanner file in the /var/opt in the end create the symbolic link, you can run Sonar-Scanner simply by typing sonar in the terminal.`

```
sonar
```
##### output:

```
NFO: Scanner configuration file: /var/opt/sonar-scanner-5.0.1.3006/conf/sonar-scanner.properties
INFO: Project root configuration file: NONE
INFO: SonarScanner 5.0.1.3006
INFO: Java 17.0.7 Eclipse Adoptium (64-bit)
INFO: Linux 5.15.0-88-generic amd64
INFO: User cache: /home/karim/.sonar/cache
ERROR: SonarQube server [http://localhost:9000] can not be reached
INFO: ------------------------------------------------------------------------
INFO: EXECUTION FAILURE
INFO: ------------------------------------------------------------------------
INFO: Total time: 0.490s
INFO: Final Memory: 3M/20M
INFO: ------------------------------------------------------------------------
ERROR: Error during SonarScanner execution
org.sonarsource.scanner.api.internal.ScannerException: Unable to execute SonarScanner analysis
....more ....
```
