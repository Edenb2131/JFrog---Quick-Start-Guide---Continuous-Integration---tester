# Use the official Python base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Create the application files
# Create requirements.txt and install Flask
RUN echo "Flask==2.0.1" > requirements.txt && pip install -r requirements.txt

# Create the main Python application file (app.py)
RUN echo "from flask import Flask" > app.py
RUN echo "app = Flask(__name__)" >> app.py
RUN echo "" >> app.py
RUN echo "@app.route('/')" >> app.py
RUN echo "def home():" >> app.py
RUN echo "    return 'Hello, Docker! This is a Flask app.'" >> app.py
RUN echo "" >> app.py
RUN echo "if __name__ == '__main__':" >> app.py
RUN echo "    app.run(host='0.0.0.0', port=5000)" >> app.py

# Expose the port the app will run on
EXPOSE 5000

# Define the command to run the application
CMD ["python", "app.py"]
