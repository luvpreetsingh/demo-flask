### Description

This is a simple web app built using flask. There is only one API which returns a message when called using GET method. There are 2 different branches, `version-a` and `version-b`.

If we run on version-a branch, it returns the following message,

```
{
        "status": "up and running",
        "version": "this is version A."
}
```

If we run on version-b branch, it returns the following message,


```
{
        "status": "up and running",
        "version": "this is version B."
}
```

### Setup

To run this application, clone the repo first and switch to your desired branch. Create a python virtual environment and install the requirements by running,

```
pip install -r requirements.txt
```

To run the application you can use one of the following methods,

```
python main.py
```

OR

```
gunicorn --bind=0.0.0.0:5000 wsgi
```

Or else you can choose to run using docker by following the below instructions.

### Docker

To build the docker image, just run the following command,

```
docker build -t <your_image_name> --file Dockerfile .
```

To run a container using this image, use the following command,

```
docker container run -d -p 5000:5000 <your_image_name>
```
