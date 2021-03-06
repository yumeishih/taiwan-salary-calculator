FROM python:3.7.6

WORKDIR /app
ADD . .
RUN pip install -r requirements.txt

# CMD python manage.py runserver
CMD gunicorn salary_calculator.wsgi:application --bind 0.0.0.0:8000
