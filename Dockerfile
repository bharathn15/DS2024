# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install specific versions of dependencies
RUN pip install --no-cache-dir \
    blinker==1.8.2 \
    click==8.1.7 \
    colorama==0.4.6 \
    Flask==3.0.3 \
    itsdangerous==2.2.0 \
    Jinja2==3.1.4 \
    MarkupSafe==2.1.5 \
    packaging==24.1 \
    pip==24.1.1 \
    waitress==3.0.0 \
    Werkzeug==3.0.3

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Define environment variables
ENV FLASK_APP=run.py
ENV FLASK_RUN_HOST=0.0.0.0

# Run the Flask application using Waitress
CMD ["waitress-serve", "--port=5000", "run:app"]
