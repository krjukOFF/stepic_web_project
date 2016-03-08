sudo rm /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -s /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/gunicorn.conf
sudo ln -s /home/box/web/etc/django.conf /etc/gunicorn.d/django.conf
sudo /etc/init.d/gunicorn restart
mysql -uroot -e "CREATE DATABASE stepic_qa;"
mysql -uroot -e "CREATE USER 'box'@'localhost' IDENTIFIED BY '1234';"
mysql -uroot -e "GRANT ALL PRIVILEGES ON stepic_qa.* TO 'box'@'localhost';"
mysql -uroot -e "FLUSH PRIVILEGES;"
