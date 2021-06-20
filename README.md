# nagios_docker_ubuntu_2004

Docker image for Nagios. Built with Ubuntu 20.04 packages

### build
```
docker-compose build
```

### start
```
docker-compose up
```

### start (as daemon)
```
docker-compose up -d
```

### URL
http://localhost:8001/nagios4/

### plugins
```
/usr/lib/nagios/plugins
```

### config files
```
/etc/nagios4
```

### check config files
```
/etc/nagios4# nagios4 -v nagios.cfg
```

### restart nagios
```
service nagios4 restart
```

### references
- https://github.com/JasonRivers/Docker-Nagios
- https://github.com/manios/docker-nagios
- https://www.linuxhowto.net/how-to-install-nagios-on-ubuntu-20-04/
- https://www.centlinux.com/2021/04/install-nagios-core-on-ubuntu-lts.html

