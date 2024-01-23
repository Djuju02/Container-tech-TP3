# app.py
import requests

def fetch_hello_world():
    response = requests.get("https://api.github.com")
    if response.status_code == 200:
        print("Hello, World! GitHub API status is:", response.status_code)
    else:
        print("Failed to access GitHub API")

if __name__ == "__main__":
    fetch_hello_world()

