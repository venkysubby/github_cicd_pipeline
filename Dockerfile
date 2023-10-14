# Base image
FROM python:3.10

# Set the working directory in the container
WORKDIR /code

# Copy the rest of the application code
COPY . .

# Install Python dependencies
RUN pip install -r requirements.txt

# Run Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]