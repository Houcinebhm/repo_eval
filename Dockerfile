FROM tiangolo/uvicorn-gunicorn-fastapi:latest
WORKDIR /repo_eval
COPY . /repo_eval
EXPOSE 8001
RUN pip install -r requirements.txt
CMD ["python", "mini_groq.py", "uvicorn"]
