#! /bin/bash

cat site.tar.gz | docker run --name consumer -p 8000:8000 -i damontic/mkdocs serve