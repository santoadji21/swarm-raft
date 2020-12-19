FROM python:3.6.4-jessie

RUN pip install zerorpc fysom APScheduler


COPY code /code

ENTRYPOINT ["python", "code/raft.py"]
