FROM django:1.9.6-python2

EXPOSE 8000

ENV HOME /opt/app
COPY . $HOME
WORKDIR $HOME

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
