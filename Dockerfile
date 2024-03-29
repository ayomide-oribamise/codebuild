FROM python:3.9-bookworm

WORKDIR /src

COPY ./analytics .

RUN pip3 install -r requirements.txt

RUN echo "print(os.getenv('DB_USERNAME'))" >> /app.py
RUN echo "print(os.getenv('DB_PASSWORD'))" >> /app.py
RUN echo "print(os.getenv('DB_NAME'))" >> /app.py

CMD python app.py 