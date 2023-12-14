FROM alpine:3.18

RUN apk update
RUN apk add openssh
RUN apk add python3
RUN apk add py-pip
#RUN apk add rbash
RUN pip install mysql-connector-python
RUN pip install numpy
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config
RUN ssh-keygen -A

#adding user for the challenge and making their home directory
RUN adduser -h /home/level16 -s /bin/ash -D level16
RUN echo "level16:085956dfcd6d49d45c1516f7771f4659" | chpasswd

#banner
COPY ./flag.py /root/flag.py
COPY ./level16.sh /root/level16.sh
RUN chmod +x /root/level16.sh
#RUN ln -s /bin/ash /bin/rbash

#set user working directory
WORKDIR /home/level16
#RUN chown rootroot -R /home/level16
#RUN chmod 644 /home/level16

EXPOSE 22

CMD ["/root/level16.sh"]
