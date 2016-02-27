ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm /etc/nginx/sites-enabled/default
/etc/init.d/nginx restart
#ln -s /home/box/web/etc/guniconr.conf /etc/gunicorn/test.conf
#/etc/init.d/gunicorn restart
