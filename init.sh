CUR_DIR=$(pwd)

sed 's|%ROOT_DIR%|'$CUR_DIR'|g' etc/nginx.conf.tmpl > etc/nginx.conf
sed 's|%ROOT_DIR%|'$CUR_DIR'|g' etc/gunicorn.conf.tmpl > etc/gunicorn.conf
sudo ln -s $CUR_DIR/etc/nginx.conf  /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
sudo ln -s $CUR_DIR/etc/gunicorn.conf   /etc/gunicorn.d/test
sudo /etc/init.d/gunicorn restart

