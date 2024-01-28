# Use an official Python runtime as a parent image
FROM python:3.11


copy requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /app

# Copy the current directory contents into the container at /app
COPY app /app

EXPOSE 80
	
ENV NAME Books

# Run app.py when the container launches
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
