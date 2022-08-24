FROM python:3.9-alpine
LABEL author="Sravs"
RUN useradd -D sravs1
USER sravs1
WORKDIR /home/sravs/sample
ADD . /home/sravs/sample/
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["Python",main.py] 
