FROM python:3.8

WORKDIR /app

COPY requirements.txt . 

COPY app.py .  

RUN pip install -r requirements.txt

EXPOSE 5000

ENV FLASK_ENV development

CMD ["flask", "run", "--host", "0.0.0.0"]
