FROM python:3.9

WORKDIR /app
COPY requirements.txt .

RUN pip install jupyter -U && pip install jupyterlab && pip install -r requirements.txt

EXPOSE 8888

ENTRYPOINT ["jupyter", "lab","--ip=0.0.0.0","--allow-root"]

# CMD ['your', 'cmd']
# ENTRYPOINT ['your', 'entrypoint']
