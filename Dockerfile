# Use a lightweight Python base image
FROM python:3.11-slim

# Install dependencies
RUN pip install --no-cache-dir -r numpy


COPY example.py /Docker/

# Expose port (if applicable)
EXPOSE 5000

# Command to run the app
CMD ["python", "example.py"]
