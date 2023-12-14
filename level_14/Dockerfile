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
RUN adduser -h /home/level14 -s /bin/ash -D level14
RUN echo "level14:085956dfcd6d49d45c1516f7771f4659" | chpasswd

#banner
COPY ./flag.py /root/flag.py
COPY ./level14.sh /root/level14.sh
RUN chmod +x /root/level14.sh

#set user working directory
WORKDIR /home/level14
#RUN chown rootroot -R /home/level14
#RUN chmod 644 /home/level14

EXPOSE 22

CMD ["/root/level14.sh"]
