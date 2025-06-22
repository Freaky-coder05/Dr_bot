FROM python:3.12-slim

# Install system dependencies
RUN apt update && apt install -y git wget build-essential python3-dev

# Copy project files
COPY . .

# Install Python dependencies
RUN pip3 install --upgrade pip && pip3 install -r requirements.txt

# Start your app
CMD ["python3", "tg.py"]
