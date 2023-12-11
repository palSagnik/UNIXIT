# docker run -d -p 2023:22 --rm level11
# For debug: docker exec -it <container_id> bash
FROM alpine:latest

RUN apk update
RUN apk add openssh
RUN apk add python3
RUN apk add py-pip
RUN pip install mysql-connector-python
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config

#adding user level11 for the challenge and making their home directory
RUN ssh-keygen -A
RUN adduser -h /home/level11 -s /bin/ash -D level11
RUN echo "level11:1dc2a364cbdc0c0e94abfecab2cc43e8" | chpasswd

#level challenge
RUN mkdir /opt/scripts
RUN mkdir /opt/scripts/level11
RUN chmod 700 /opt/scripts/level11
COPY ./fetch.py /opt/scripts/level11/
COPY ./level11.sh /opt/scripts/level11/
COPY ./step1.tar /home/level11/step1.tar
RUN chmod +x /opt/scripts/level11/level11.sh
RUN /opt/scripts/level11/level11.sh


#set user working directory
WORKDIR /home/level11
RUN chown root:root -R /home/level11
RUN chattr +i -R /home/level11

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]





