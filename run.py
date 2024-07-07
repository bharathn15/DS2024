from app import create_app
from waitress import serve

# Create your Flask app instance
app = create_app()

if __name__ == "__main__":
    # Use Waitress as your WSGI server
    serve(app, host='localhost', port=5000)
