# ESTIAM DevOps TP1

## Running the project

```
~$ git clone https://github.com/Yaaqoub/ESTIAM-DevOpsTP1.git
~$ cd ESTIAM-DevOpsTP1/
~$ docker image build -t devopstp1 .
~$ docker container run --rm -p 8080:80 devopstp1
```


After that visit the following link: http://localhost:8080