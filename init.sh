sudo rm /etc/nginx/sites-enabled/default
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart
sudo ln -s /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/gunicorn.conf
sudo ln -s /home/box/web/etc/gunicorn_django.conf /etc/gunicorn.d/django.conf
sudo /etc/init.d/gunicorn restart

#sudo ln -sf /home/box/web/etc/gunicorn.conf  /etc/gunicorn.d/test
#sudo ln -sf /home/box/web/etc/gunicorn_django.conf  /etc/gunicorn.d/test_django
#sudo /etc/init.d/gunicorn restart
