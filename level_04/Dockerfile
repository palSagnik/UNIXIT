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
RUN adduser -h /home/level4 -s /bin/ash -D level4
RUN echo "level4:085956dfcd6d49d45c1516f7771f4659" | chpasswd

#banner
COPY ./flag.py /root/flag.py
COPY ./README.txt /home/level4/README
COPY ./level4.sh /root/level4.sh
RUN chmod +x /root/level4.sh

#set user working directory
WORKDIR /home/level4
RUN chown level4:level4 -R /home/level4
RUN chmod 444 /home/level4

EXPOSE 22

CMD ["/root/level4.sh"]
