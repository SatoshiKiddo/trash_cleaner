###Menu Make para desplegar la tarea

MAQ= $(uname -s)
CARPETA= /usr/bin/

install:
	cp trash_cleaner.sh $(CARPETA)trshc
	cp trash_cleaner.sh /etc/cron.d/trshc
	echo "17 *	$(DIA) * *	root	trshc" >> /etc/crontab
clean:
	yes | rm $(CARPETA)trshc
	yes | rm /etc/cron.d/trshc
