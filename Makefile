build:
	docker build --tag bryandollery/jenkins .

run:
	docker run -d -v jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock -p 8080:8080 -p 50000:50000 bryandollery/jenkins

