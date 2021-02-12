GITTAG=$(shell git describe --abbrev=0 --tags)

release:
	- docker build . -t vmedinskiy/nginx-le:$(GITTAG)
	- docker push vmedinskiy/nginx-le:$(GITTAG)
	- docker push vmedinskiy/nginx-le:latest

.PHONY: release
