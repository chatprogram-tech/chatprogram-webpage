HOST=ubuntu@chatprogram.tech
all: deploy

deploy:
	rsync -avizhu --delete public/. $(HOST):chatprogram-webpage
	ssh $(HOST) 'sudo rsync -avizhu chatprogram-webpage/. /var/www/chatprogram/'
clean:
	hexo clean


