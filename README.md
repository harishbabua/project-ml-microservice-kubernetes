<include a CircleCI status badge, here>
[![harishbabua](https://circleci.com/gh/harishbabua/project-ml-microservice-kubernetes.svg?style=svg)]

## Project Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API.

You are given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). This project tests your ability to operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Your project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project you will:

- Test your project code using linting
- Complete a Dockerfile to containerize this application
- Deploy your containerized application using Docker and make a prediction
- Improve the log statements in the source code for this application
- Configure Kubernetes and create a Kubernetes cluster
- Deploy a container using Kubernetes and make a prediction
- Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

**The final implementation of the project will showcase your abilities to operationalize production microservices.**

---

## Setup the Environment

- Create a virtualenv with Python 3.7 and activate it. Refer to this link for help on specifying the Python version in the virtualenv.

```bash
python3 -m pip install --user virtualenv
# You should have Python 3.7 available in your host.
# Check the Python path using `which python3`
# Use a command similar to this one:
python3 -m virtualenv --python=<path-to-Python3.7> .devops
source .devops/bin/activate
```

- Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone: `python app.py`
2. Run in Docker: `./run_docker.sh`
3. Run in Kubernetes: `./run_kubernetes.sh`

### Kubernetes Steps

- Setup and Configure Docker locally
- Setup and Configure Kubernetes locally
- Create Flask app in Container
- Run via kubectl

### Files in the repository

1. .circleci: `contains the circle ci build yml file`
2. output_txt_files: `contains terminal output of the predict end point, docker_out.txt and kubernetes_out.txt`
3. Dockerfile: `The Dockerfile contains all the commands a user could call on the command line to assemble an image`
4. Makefile: `Makefile with the following steps: make setup, make install, make test, make lint and make all.`
5. app.py: `Python code which has the prdict endpint `
6. make_prediction.sh: `Contains curl commands which executes post method predict`
7. requirements.txt: `Install all the neccessary dependencies for project`
8. run_docker.sh : `to buid a docker image and run on the desired port`
9. run_kubernetes.sh : `deploying container into kubernetes cluster`
10. upload_docker.sh: `To tag the docker image and to push to docker hub using login`
