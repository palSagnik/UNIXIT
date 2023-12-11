# docker run -d -p 2023:22 --rm level12
# For debug: docker exec -it <container_id> bash
FROM alpine:latest

RUN apk update
RUN apk add openssh
RUN apk add python3
RUN apk add py-pip
RUN pip install mysql-connector-python
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config

#adding user level12 for the challenge and making their home directory
RUN ssh-keygen -A
RUN adduser -h /home/level12 -s /bin/ash -D level12
RUN echo "level12:00bbba058fbdcf7ff48dafb2079e4d73" | chpasswd

#level challenge
RUN mkdir /opt/scripts
RUN mkdir /opt/scripts/level12
RUN chmod 700 /opt/scripts/level12
COPY ./fetch.py /opt/scripts/level12/fetch.py
COPY ./level12.sh /opt/scripts/level12/level12.sh
RUN chmod +x /opt/scripts/level12/level12.sh
RUN /opt/scripts/level12/level12.sh

#set user working directory
WORKDIR /home/level12
RUN chown root:root -R /home/level12
RUN chattr +i -R /home/level12

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]





