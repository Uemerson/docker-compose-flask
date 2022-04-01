FROM python:3.8-alpine
ENV PYTHONUNBUFFERED 1
RUN mkdir /usr/src/app/
WORKDIR /usr/src/app/
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 8000
CMD ["python", "src/app.py"]