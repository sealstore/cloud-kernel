FROM golang:1.11.3
COPY config.sh .
RUN wget https://github.com/aliyun/aliyun-cli/releases/download/v3.0.26/aliyun-cli-linux-3.0.26-amd64.tgz && tar zxvf aliyun-cli-linux-3.0.26-amd64.tgz && cp aliyun /usr/bin && rm aliyun-cli-linux-3.0.26-amd64.tgz
