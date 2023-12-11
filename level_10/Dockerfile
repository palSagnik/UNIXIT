# docker run -d -p 2023:22 --rm level10
# For debug: docker exec -it <container_id> bash
FROM alpine:latest

RUN apk update
RUN apk add openssh
RUN apk add python3
RUN apk add py-pip
RUN pip install mysql-connector-python
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config

#adding user level10 for the challenge and making their home directory
RUN ssh-keygen -A
RUN adduser -h /home/level10 -s /bin/ash -D level10
RUN echo "level10:c449b208a248e144a48aad743dc38796" | chpasswd

#level challenge
RUN mkdir /opt/scripts
RUN mkdir /opt/scripts/level10
RUN chmod 700 /opt/scripts/level10
COPY ./new_flag /home/level10/new_flag
COPY ./fetch.py /opt/scripts/level10/fetch.py
COPY ./level10.sh /opt/scripts/level10/level10.sh
RUN chmod +x /opt/scripts/level10/level10.sh
RUN /opt/scripts/level10/level10.sh


#set user working directory
WORKDIR /home/level10
RUN chown root:root -R /home/level10

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]





