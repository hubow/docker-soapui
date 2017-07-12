# SoapUI docker file (Open JRE)

## Docker Run example
```sh
$ sudo docker run -i -t --rm \
    -v /<dir on docker host with soapui project>:/opt/soapui/projects \
    -v /<dir  on docker host where test results will be saved>:/opt/soapui/projects/testresult \
    <docker image name> \
    -I "/opt/soapui/projects/<sopui project file name>" \
    -f/opt/soapui/projects/testresult
```

## Docker Run example with custom properties
```sh
$ sudo docker run -i -t --rm \
    -v /<dir on docker host with soapui project>:/opt/soapui/projects \
    -v /<dir  on docker host where test results will be saved>:/opt/soapui/projects/testresult \
    <docker image name> \
    -s<soapui testsuite name> \
    -Puser=<value for propery user> \
    -Ppass=<value for propery password> \
    -PdataFile="<value for propery dataFile>" \
    -I "/opt/soapui/projects/<sopui project file name>" \
    -f/opt/soapui/projects/testresult
```
