FROM python:3.11

# Set the working directory
WORKDIR /usr/src/app

# Install required Python packages
RUN pip install --upgrade pip setuptools wheel
RUN pip install scikit-learn==1.1.2 uvicorn

# Copy your application code to the container
COPY . .

# Run the application
CMD ["uvicorn", "mlapi:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]
