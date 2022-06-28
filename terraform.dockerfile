FROM alpine
MAINTAINER Sukhveer Sohi

RUN wget -O /tmp/terraform.zip https://releases.hashicorp.com/terraform/1.2.3/terraform_1.2.3_linux_amd64.zip
RUN unzip /tmp/terraform.zip -d /
RUN apk add --no-cache ca-certificates curl
USER nobody
ENTRYPOINT [ "/terraform" ]

