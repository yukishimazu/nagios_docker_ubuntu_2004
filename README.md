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

### restart nagios4
```
service nagios4 restart
```
