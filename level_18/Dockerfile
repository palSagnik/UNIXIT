# docker run -d -p 2023:22 --rm level18
# For debug: docker exec -it <container_id> bash
FROM alpine:latest

RUN apk update
RUN apk add openssh
RUN apk add python3
RUN apk add py-pip
RUN pip install mysql-connector-python
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config

#adding user level18 for the challenge and making their home directory
RUN ssh-keygen -A
RUN adduser -h /home/level18 -s /bin/ash -D level18
RUN echo "level18:43b5de615eb2190658c1da73436f2b6d" | chpasswd

#level challenge
RUN mkdir /opt/scripts
RUN mkdir /opt/scripts/level18
RUN chmod 700 /opt/scripts/level18
COPY ./fetch.py /opt/scripts/level18/fetch.py
COPY ./level18.sh /opt/scripts/level18/level18.sh
RUN chmod +x /opt/scripts/level18/level18.sh
RUN /opt/scripts/level18/level18.sh

#set user working directory
WORKDIR /home/level18
RUN chown root:root -R /home/level18
RUN chattr +i -R /home/level18

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
