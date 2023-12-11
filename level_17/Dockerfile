# docker run -d -p 2023:22 --rm level17
# For debug: docker exec -it <container_id> bash
FROM alpine:latest

RUN apk update
RUN apk add openssh
RUN apk add python3
RUN apk add py-pip
RUN pip install mysql-connector-python
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config

#adding user level17 for the challenge and making their home directory
RUN ssh-keygen -A
RUN adduser -h /home/level17 -s /bin/ash -D level17
RUN echo "level17:8f73d1695b9856a15b12e1a87e6d4682" | chpasswd

#level challenge
RUN mkdir /opt/scripts
RUN mkdir /opt/scripts/level17
RUN chmod 700 /opt/scripts/level17
COPY ./fetch.py /opt/scripts/level17/fetch.py
COPY ./level17.sh /opt/scripts/level17/level17.sh
RUN chmod +x /opt/scripts/level17/level17.sh
RUN /opt/scripts/level17/level17.sh

#set user working directory
WORKDIR /home/level17
RUN chown root:root -R /home/level17
RUN chattr +i -R /home/level17

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
