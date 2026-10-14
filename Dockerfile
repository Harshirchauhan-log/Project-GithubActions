FROM python:3.13-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt  

COPY app.py .

EXPOSE 5000

CMD ["python", "app.py"]




# -r ? 
# -r stands for --requirement

#  No --no-cache-dir ? 
#  By default, pip caches downloaded packages so it can reinstall them faster later. However, inside a Docker container, this cache is unnecessary baggage. It gets trapped inside the image layer, bloating your final Docker image size. Using --no-cache-dir keeps your image as lightweight as possible.
