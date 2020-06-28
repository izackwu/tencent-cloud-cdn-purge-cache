FROM python:3-alpine
# only copy necessary files for better cache
COPY requirements.txt refresh_cdn.py ./
RUN python3 --version
RUN pip3 install -r requirements.txt
ENTRYPOINT python3 refresh_cdn.py
