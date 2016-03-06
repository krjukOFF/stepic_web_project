#sudo rm /etc/nginx/sites-enabled/default
#ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
#/etc/init.d/nginx restart
#ln -s /home/box/web/etc/gunicorn.conf /etc/gunicorn/test.conf
#/etc/init.d/gunicorn restart
#sudo gunicorn -b 0.0.0.0:8080 hello:application
sudo rm /etc/nginx/sites-enabled/default
sudo rm /etc/nginx/sites-avilable/default
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/gunicorn.conf  /etc/gunicorn.d/test
sudo ln -sf /home/box/web/etc/gunicorn_django.conf  /etc/gunicorn.d/test_django
sudo /etc/init.d/gunicorn restart
