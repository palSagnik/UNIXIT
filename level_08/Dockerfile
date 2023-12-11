# docker run -d -p 2023:22 --rm level8
# For debug: docker exec -it <container_id> bash
FROM alpine:latest

RUN apk update
RUN apk add openssh
RUN apk add python3
RUN apk add py-pip
RUN pip install mysql-connector-python
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config

#adding user level8 for the challenge and making their home directory
RUN ssh-keygen -A
RUN adduser -h /home/level8 -s /bin/ash -D level8
RUN echo "level8:cf250e3ae57c2d2827963733482b2c3c" | chpasswd

#banner
RUN mkdir /opt/scripts/
RUN mkdir /opt/scripts/level8
RUN chmod 700 /opt/scripts/level8
COPY ./fetch.py /opt/scripts/level8/
COPY ./level8.sh /opt/scripts/level8/
RUN chmod +x /opt/scripts/level8/level8.sh
RUN /opt/scripts/level8/level8.sh


#set user working directory
WORKDIR /home/level8
RUN chown root:root -R /home/level8
RUN chattr +i /home/level8

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]





