#! /bin/sh

produce_help() {
	echo "Usage example:"
	echo "docker run -v /localpath/to/mkdocs_project:/conainer/mountpoint damontic/mkdocs produce /conainer/mountpoint"
}

serve_help() {
	echo "Help serve"
}

init_help() {
	echo "Produce or serve a local mkdocs directory"
	echo "docker run <arguments> <the-docker-image-name> produce"
	echo "docker run -p 8000:8000 <arguments> <the-docker-image-name> serve"
}

produce() {
	if [[ -z "$1" ]]; then
		echo -e "Waiting for a path to a host directory with a valid mkdocs project\n"
		produce_help
		exit 1
	fi
	
	if [[ -d $1 ]]; then
		cd $1
		mkdocs build
		cd site
		tar cz .
	else
		produce_help $1	
	fi
}

case $1 in
	produce)
		echo "Producing..."
		produce $2
		;;
	serve)
		echo "Serving..."
		;;
	*)
		init_help
		;;
esac
sh