FROM alpine:3.18

RUN apk update
RUN apk add openssh
RUN apk add python3
RUN apk add py-pip
RUN pip install mysql-connector-python
RUN pip install numpy
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config
RUN ssh-keygen -A

RUN apk add zip

#adding user for the challenge and making their home directory
RUN adduser -h /home/level18 -s /bin/ash -D level18
RUN echo "level18:e280510d058c72638d702ecd8bdd4893" | chpasswd

#banner
COPY ./flag.py /root/flag.py
COPY ./level18.sh /root/level18.sh
RUN chmod +x /root/level18.sh

#set user working directory
WORKDIR /home/level18
#RUN chown rootroot -R /home/level18
#RUN chmod 644 /home/level18

EXPOSE 22

CMD ["/root/level18.sh"]
