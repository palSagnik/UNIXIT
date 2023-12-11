FROM alpine:3.18

RUN apk update
RUN apk add openssh
RUN apk add python3
RUN apk add py-pip
RUN pip install mysql-connector-python
RUN pip install numpy
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config
RUN ssh-keygen -A

#adding user for the challenge and making their home directory
RUN adduser -h /home/level19 -s /bin/ash -D level19
RUN echo "level19:e280510d058c72638d702ecd8bdd4893" | chpasswd

#banner
COPY ./suid.c /root/suid.c
COPY ./flag.py /root/flag.py
COPY ./level19.sh /root/level19.sh
RUN chmod +x /root/level19.sh

#set user working directory
WORKDIR /home/level19
RUN chown root:root -R /home/level19
RUN chmod 744 /home/level19

EXPOSE 22

CMD ["/root/level19.sh"]
