# Use the official Python image from Docker Hub
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the Python app and requirements file into the container
COPY hello.py /app
COPY requirements.txt /app

# Upgrade pip and install the dependencies from requirements.txt
RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose the Streamlit default port (8501)
EXPOSE 8501

# Set the entrypoint for running the Streamlit app
ENTRYPOINT ["streamlit", "run", "hello.py", "--server.port=8501", "--server.address=0.0.0.0"]