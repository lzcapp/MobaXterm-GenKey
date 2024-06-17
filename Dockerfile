FROM python:3.6-slim

MAINTAINER malaohu <tua@live.cn>

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./app.py" ]

HEALTHCHECK CMD curl --fail http://localhost:5000/ || exit 1
