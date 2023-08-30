# Advanced Python Course
Repository to learn and try advanced python 
## Docker-shell 
In power shell run
```
docker run -it -p 8080:8000 -v C:/Users/pasqui/projects/python_advanced_learning:/workspace ubuntu-python3.11
```

to check if it works, run 
```
python3 test.py
```

and if you modify something from Dockerfile, you have to run again:
```
cd .\projects\python_advanced_learning\
docker build -t ubuntu-python3.11 .
```


## For runing the labs (in Pasqui machine)
```
docker run -v C:\Users\pasqui\projects\python_advanced_learning\labs:/home/jovyan -p 10000:8888 jupyter/scipy-notebook:2023-07-31
```

