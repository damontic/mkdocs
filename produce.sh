#! /bin/bash

docker run --rm -v /home/david/Desktop/my_project:/mkdocs/my_project \
	damontic/mkdocs produce /mkdocs/my_project
