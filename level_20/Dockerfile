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
RUN adduser -h /home/level20 -s /bin/ash -D level20
RUN adduser -h /home/level21 -s /bin/ash -D level21
RUN echo "level20:e280510d058c72638d702ecd8bdd4893" | chpasswd

#banner
COPY ./README.txt /home/level20/README
COPY ./flag.py /root/flag.py
COPY ./level20.sh /root/level20.sh
COPY ./cronjob_level21.sh /root/cronjob_level21.sh
RUN chmod +x /root/level20.sh

#set user working directory
WORKDIR /home/level20
RUN chown level21:root -R /home/level20
#RUN chmod 644 /home/level20

EXPOSE 22

CMD ["/root/level20.sh"]
