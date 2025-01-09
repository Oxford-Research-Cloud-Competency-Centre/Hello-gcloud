# Use the official Python image from DockerHub
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8000 for Flask
EXPOSE 8000

# Run the Flask app with Gunicorn for production
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "app:app"]