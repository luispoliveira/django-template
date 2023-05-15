FROM python:3.10

WORKDIR /app

COPY mysite/requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY mysite .

ENV PYTHONUNBUFFERED 1
ENV DJANGO_SETTINGS_MODULE mysite.settings

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

