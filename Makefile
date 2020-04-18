build:
	docker build --tag bryandollery/jenkins .

run:
	docker run -d -v $$PWD/../jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock -p 8080:8080 --name jenkins bryandollery/jenkins

