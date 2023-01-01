FROM python:3.10.4-slim-buster

WORKDIR /AniPlay/

RUN apt-get update && apt-get upgrade -y
RUN apt-get -y install git
RUN python3 -m pip install -U pip

COPY requirements.txt .

RUN pip3 install wheel
RUN pip3 install --no-cache-dir -U -r requirements.txt
COPY . .
CMD ["python3", -"m", "AniPlay"]
