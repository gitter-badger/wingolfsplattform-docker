
all: test
run: all

test:
	docker-compose up -d
	docker-compose run tests /usr/bin/xvfb-daemon-run bin/cucumber --require cucumber/ services/

test_locally:
	docker-compose up -d
	cd spec && bundle install
	- cd spec && rbenv rehash
	cd spec && bundle exec cucumber --require cucumber/ services/

rebuild: rebuild_test

rebuild_test:
	docker-compose build tests

clean:
	docker-compose down --rmi 'all'
