FROM ubuntu
RUN apt update &&\
    apt install python3 -y &&\
    apt install python3-pip -y
WORKDIR /APP
COPY . .
RUN python3 -m pip install -r requirements.txt
CMD ["python3", "/APP/routes.py"]
