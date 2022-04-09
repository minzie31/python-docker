FROM centos/python-38-centos7

COPY ./hello.py /opt
ENTRYPOINT ["python3", "/opt/hello.py"]
