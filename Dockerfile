FROM python:3.7

ARG VERSION

LABEL org.label-schema.version=$VERSION

WORKDIR /webapp

COPY ./requirements.txt /webapp/requirements.txt



RUN pip install -r requirements.txt

COPY . /webapp

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
