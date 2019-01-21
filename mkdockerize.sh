#! /bin/sh

produce_help() {
	echo "Usage example:"
	echo "docker run -v /localpath/to/mkdocs_project:/conainer/mountpoint damontic/mkdocs produce /conainer/mountpoint"
}

serve_help() {
	echo "Usage example:"
	echo "docker run -p 8000:8000 <arguments> <the-docker-image-name> serve"
}

init_help() {
	echo "Produce or serve a local mkdocs directory"
	produce_help
	serve_help
}

produce() {
	if [[ -z "$1" ]]; then
		echo -e "Waiting for a path to a host directory with a valid mkdocs project\n"
		produce_help
		exit 1
	fi
	
	if [[ -d $1 ]]; then
		cd $1
		mkdocs build &> /dev/null
		tar czf - -C site .
		echo hola
		rm -rf site
	else
		produce_help $1	
	fi
}

serve() {
	mkdir www
	tar xzf - -C www
	cd www
	mkdocs serve
}

case $1 in
	produce)
		produce $2
		;;
	serve)
		echo "Serving..."
		serve
		;;
	*)
		init_help
		;;
esac
sh