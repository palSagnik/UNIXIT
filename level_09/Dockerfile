# For debug: docker exec -it <container_id> bash
FROM alpine:latest

RUN apk update
RUN apk add openssh
RUN apk add python3
RUN apk add py-pip
RUN pip install mysql-connector-python
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config

#adding user level9 for the challenge and making their home directory
RUN ssh-keygen -A
RUN adduser -h /home/level9 -s /bin/ash -D level9
RUN echo "level9:1aadd06fb92b0b7fbeb1a867a67632c0" | chpasswd

#level challenge
RUN mkdir /opt/scripts
RUN mkdir /opt/scripts/level9
RUN chmod 700 /opt/scripts/level9
COPY ./fetch.py /opt/scripts/level9/
COPY ./level9.sh /opt/scripts/level9/
RUN chmod +x /opt/scripts/level9/level9.sh
RUN /opt/scripts/level9/level9.sh

#set user working directory
WORKDIR /home/level9
RUN chown root:root -R /home/level9
RUN chattr +i /home/level9

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]





