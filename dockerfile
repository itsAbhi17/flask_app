# Use lightweight Alpine-based Python image
FROM python:3.9-alpine

# Set the working directory in the container
WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application files
COPY . .

# Expose port 5000 for Flask
EXPOSE 5000

# Define the command to run the application
CMD ["python", "app.py"]
