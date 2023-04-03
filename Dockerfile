FROM python:3.10

WORKDIR /llm-api

COPY ./requirements.txt /llm-api/requirements.txt
RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY ./app /llm-api/app
ENV PYTHONPATH "/llm-api"

CMD ["python", "./app/main.py"]
