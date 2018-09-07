FROM debian:stretch

#Covering JE-42390
RUN groupadd jelastic_qa && \
    useradd -s /usr/sbin/nologin -g jelastic_qa jelastic_qa
    
USER jelastic_qa
CMD ["cat", "/tmp/secrets.txt"]
