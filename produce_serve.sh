#! /bin/bash

docker run --rm -ti -v /home/david/Desktop/my_project:/mkdocs/my_project \
	damontic/mkdocs produce /mkdocs/my_project | \
	docker run --name consumer -p 8000:8000 -i damontic/mkdocs serve
