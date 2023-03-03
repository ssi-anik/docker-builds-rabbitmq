COPY ./entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/entrypoint.sh"]
