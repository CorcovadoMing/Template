function genprofile-py
	docker run --rm -it -v (pwd):/tmp -w /tmp util/template genprofile-py $argv
end
