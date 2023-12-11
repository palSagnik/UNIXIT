# docker run -d -p 2023:22 --rm level14
# For debug: docker exec -it <container_id> bash
FROM alpine:latest

RUN apk update
RUN apk add openssh
RUN apk add python3
RUN apk add py-pip
RUN pip install mysql-connector-python
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config

#adding user level14 for the challenge and making their home directory
RUN ssh-keygen -A
RUN adduser -h /home/level14 -s /bin/ash -D level14
RUN echo "level14:9aa42a885703d234c6729d326665e07a" | chpasswd

#level challenge
RUN mkdir /opt/scripts
RUN mkdir /opt/scripts/level14
RUN chmod 700 /opt/scripts/level14
COPY ./fetch.py /opt/scripts/level14/fetch.py
COPY ./level14.sh /opt/scripts/level14/level14.sh
RUN chmod +x /opt/scripts/level14/level14.sh
RUN /opt/scripts/level14/level14.sh

#set user working directory
WORKDIR /home/level14
RUN chown root:root -R /home/level14
RUN chattr +i -R /home/level14

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]





