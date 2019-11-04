[![CircleCI](https://circleci.com/gh/JorgeConcepcion/microservice/tree/master.svg?style=svg)](https://circleci.com/gh/JorgeConcepcion/microservice/tree/master)
# Cloud DevOps Engineer Nanodegree - Operationalize a Machine Learning Microservice API

## Project Overview

This is a machine learning api that uses Kubernetes and Docker. The api `sklearn` has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios. You can read more about the data [here](https://www.kaggle.com/c/boston-housing).

---

### Running the application

1. Setup and Run Locally:
```
#Setup and activate a python virtual environment
python3 -m venv ~/.devops
source ~/.devops/bin/activate

#Install dependencies
make install

#Run app
python app.py
```
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

The application will be running on http://localhost:5000

### Predict housing prices

Run `./make_predicion.sh` to make calls to the API

### Upload Docker image to DockerHub
Execute script`./upload_docker.sh` to upload image to DockerHub only after running `./run_docker.sh`, 

---

## Project Files

* __app.py:__ The Flask API 
* __requirements.txt:__ Prerequisites for the Python packages
* __model_data/boston_housing_prediction.joblib:__ Pretrained sklearn model
* __Dockerfile:__ Defines the container in which the API runs
* __Makefile:__ Commands to install and lint the app
* __run_docker.sh:__ Runs the API in a Docker container
* __run_kubernetes.sh:__ Runs a Kubernetes deployment
* __make_prediction.sh:__ When the app is running, this script generates a prediciton
* __upload_docker.sh:__ Tags and uploads the Docker image to DockerHub
* __output_txt_files/docker_out.txt:__ Console output from running run_docker.sh and make_prediction.sh
* __output_txt_files/kubernetes_out.txt__ Console output from running run_kubernetes.sh and make_prediction.sh
* __.circleci/config.yml:__ Defines the circleCI deployment
