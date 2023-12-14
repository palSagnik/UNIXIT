# docker run -d -p 2023:22 --rm level0
# For debug: docker exec -it <container_id> bash
FROM alpine:3.18

RUN apk update
RUN apk add openssh
RUN apk add python3
RUN apk add py-pip
RUN python3 -m pip install mysql-connector-python
RUN python3 -m pip install numpy
RUN echo 'PasswordAuthentication yes' >> /etc/ssh/sshd_config

#adding user level0 for the challenge and making their home directory
RUN ssh-keygen -A
RUN adduser -h /home/level0 -s /bin/ash -D level0
RUN echo "level0:38ce30425114eed729dae669e81756e1" | chpasswd

#banner
COPY ./level0.sh /root/level0.sh
COPY ./flag.py /root/flag.py
RUN chmod +x /root/level0.sh

#set user working directory
WORKDIR /home/level0
RUN chown root:root -R /home/level0
RUN chmod 555 /home/level0

#cron 
RUN echo '*/15 * * * * root /root/cron.sh'
RUN crond -f -l 8

EXPOSE 22

CMD ["/root/level0.sh"]





