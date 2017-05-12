# siva-container

Containerizing data for the SIVA air-quality web in Andalucía

## How to

Install perl and the modules for downloading data thus

	cpanm --installdeps .
	
## Container stuff

First, build the container image

	sudo docker build -t mynick/siva-data .
	
Create a container from it

	sudo docker run -v siva-data-container:/data --rm mynick/siva-data true
	
And then you can use this *data* container from others in the same node

	sudo docker run -v siva-data-container:/tmp -it --name siva-data alpine sh
	
The data in the `/data` directory in the first container will be available in the `/tmp` directory in the second container.
