[![CircleCI](https://circleci.com/gh/avishkarnikale/cdend-udacity-op-ml-kub-project5/tree/master.svg?style=svg)](https://circleci.com/gh/avishkarnikale/cdend-udacity-op-ml-kub-project5/tree/master)

## Project Summary

Given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston.
This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

## Steps in the project

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

* On a high level you can test the running the Flask app `app.py`
      1. Standalone:  `python app.py`
      2. Run in Docker:  `./run_docker.sh`
      3. Run in Kubernetes:  `./run_kubernetes.sh`

## Detailed steps
* Create Flask app in Container using the Dockerfile
* Setup and Configure Docker locally  - 

     `sudo docker build --tag=cdend-uda-avish-proj5 .`
     
     `sudo docker image ls`
     
     `sudo docker run -p 8080:80 cdend-uda-avish-proj5`
     

* Setup and Configure Kubernetes locally

     `sudo kubectl run $dockerpath --image=avishkarn/cdend-uda-avish-proj5:latest --port=80`
     
     `sudo kubectl get pod`
     
     `sudo kubectl expose deployment cdend-uda-avish-proj5 --type=LoadBalancer --port 80`
     
     `minikube service cdend-uda-avish-proj5`

### Project Files & Tasks

1. `Dockerfile` - The docker file to containerise the application
2. `Makefile` - The make file for stitching all things together
3. `app.py` - the main python file(flask) which will create our api app
4. `make_prediction.sh` - the script for prediction for docker version of our app
5. `make_prdiction_k8s.sh` - the script for prediction for our pod 
6. `requirements.txt` - the needed modules for our prediction app
7. `run_docker.sh`  -  the commands to run our app in a docker container
8. `run_kubernetes.sh` - the commands to run our app in ak8s pod using the image created by `run_docker.sh`
9. `upload_docker.sh` - the commands to upload the docker image to dockerhub using the image created by `run_docker.sh`
