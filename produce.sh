#! /bin/bash

docker run --name producer --rm -v /home/david/Desktop/my_project:/mkdocs/my_project \
	damontic/mkdocs produce /mkdocs/my_project > result.tar.gz
