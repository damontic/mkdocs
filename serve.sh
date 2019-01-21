#! /bin/bash

cat result.tar.gz | docker run --rm -p 8000:8000 -i damontic/mkdocs serve