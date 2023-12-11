# docker run -d -p 2023:22 --rm level15
# For debug: docker exec -it <container_id> bash
FROM alpine:latest

RUN apk update
RUN apk add openssh
RUN apk add python3
RUN apk add py-pip
RUN pip install mysql-connector-python
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config

#adding user level15 for the challenge and making their home directory
RUN ssh-keygen -A
RUN adduser -h /home/level15 -s /bin/ash -D level15
RUN echo "level15:7f1331a129c74e3ec5cefc2289017b48" | chpasswd

#level challenge
RUN mkdir /opt/scripts
RUN mkdir /opt/scripts/level15
RUN chmod 700 /opt/scripts/level15
COPY ./fetch.py /opt/scripts/level15/fetch.py
COPY ./level15.sh /opt/scripts/level15/level15.sh
COPY ./nohup.out /opt/scripts/level15/nohup.out
COPY ./flag.txt /opt/scripts/level15/flag.txt
RUN chmod +x /opt/scripts/level15/level15.sh
RUN /opt/scripts/level15/level15.sh

#set user working directory
WORKDIR /home/level15
RUN chown root:root -R /home/level15
RUN chattr +i -R /home/level15

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]





