FROM python:2.7
LABEL maintainer="Peng Xiao<xiaoquwl@gmail.com>"
RUN mkdir /skeleton
COPY . /skeleton
WORKDIR /skeleton
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["scripts/dev.sh"]
