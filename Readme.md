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
$ docker run --rm -v /home/david/Desktop/my_project:/mkdocs/my_project damontic/mkdocs produce /mkdocs/my_project > result.tar.gz
```

This command will send a tar.gz file to stdout (result.tar.gz in the example). This compressed file is a directory containing a mkdocs generated site.

## Serve

You can serve the web page given this project like this:

```bash
$ cat <compressed mkdocs site> | docker run --rm -p 8000:8000 -i <docker image name> serve
```

Here is an example you can find in the serve.sh file:
```bash
$ cat result.tar.gz | docker run --rm -p 8000:8000 -i damontic/mkdocs serve
```

This command will serve the tar.gz web site in port 8000 via port forwarding using Docker.

## Tests

The repository comes with a Jenkinsfile that executes the two files produce.sh and serve.sh. Make sure that jenkins has access to the docker CLI.
