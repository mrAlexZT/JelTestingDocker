FROM debian:stretch

RUN groupadd jelastic_qa && \
    useradd -s /usr/sbin/nologin -g jelastic_qa jelastic_qa
    
USER jelastic_qa
CMD ["cat", "/tmp/secrets.txt"]
