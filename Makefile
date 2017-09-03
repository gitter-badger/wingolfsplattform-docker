test_locally:
	docker-compose up -d
	cd spec && bundle install
	- cd spec && rbenv rehash
	cd spec && bundle exec cucumber --require cucumber/ services/
