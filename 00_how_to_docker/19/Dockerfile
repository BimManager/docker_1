FROM python:2-slim
WORKDIR /home
COPY app.py .
COPY index.html .
RUN pip install Flask
ENTRYPOINT ["python", "app.py"]