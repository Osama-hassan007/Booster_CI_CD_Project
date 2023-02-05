FROM python:3.8

# Set environment variables
ENV PYTHONUNBUFFERED 1
ENV DJANGO_ENV development

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the required dependencies
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Expose the default port for Django
EXPOSE 8000

# Define the command to run the Django app
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
