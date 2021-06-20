FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive
ENV TZ Asia/Tokyo

RUN apt-get update -qq
RUN apt-get install -y -o Dpkg::Options::="--force-confold" vim nagios4 nagios-plugins-contrib nagios-nrpe-plugin && \
    apt-get clean
RUN a2enmod auth_digest && \
    a2enmod authz_groupfile && \
    cp /etc/nagios4/apache2.conf /etc/apache2/sites-available/nagios4.conf && \
    a2ensite nagios4

RUN mkdir /home/app
COPY start.sh /home/app/
COPY conf.d/* /etc/nagios4/conf.d/
WORKDIR /home/app

EXPOSE 80
ENTRYPOINT ["/home/app/start.sh"]

