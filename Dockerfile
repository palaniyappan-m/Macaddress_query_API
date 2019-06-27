FROM centos:latest
RUN yum -y update && \
    yum -y install curl
COPY ./macaddress-query.sh /
RUN chmod +x /macaddress-query.sh
ENTRYPOINT ["/macaddress-query.sh"]
