# Mkdocs

Simple docker image to wrap mkdocs

## Produce

First make sure that you have a mkdocs project in your file system.
You can build the web page given this project like this:

```bash
$ docker run -v <local path to mkdocs dir>:<container mount point to mkdocs dir> <docker image name> produce <container mount point to mkdocs dir>
```

Here is an example you can find in the produce.sh file:
```bash
$ docker run --rm -v /home/david/Desktop/my_project:/mkdocs/my_project damontic/mkdocs produce /mkdocs/my_project
```

## Serve

