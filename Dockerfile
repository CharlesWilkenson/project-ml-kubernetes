FROM python:3.7.3-stretch

WORKDIR /app

COPY app.py model_data/boston_housing_prediction.joblib requirements.txt /app/

RUN pip install --upgrade pip &&\
    pip install -r requirements.txt

EXPOSE 80

CMD [ "python", "app.py" ]
