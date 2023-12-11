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
RUN adduser -h /home/level17 -s /bin/ash -D level17
RUN echo "level17:e280510d058c72638d702ecd8bdd4893" | chpasswd

#banner
COPY ./flag.py /root/flag.py
COPY ./level17.sh /root/level17.sh
RUN chmod +x /root/level17.sh

#set user working directory
WORKDIR /home/level17
RUN chown root:root -R /home/level17
RUN chmod 744 /home/level17

EXPOSE 22

CMD ["/root/level17.sh"]
