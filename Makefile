build:
	docker build --tag bryandollery/jenkins .

run:
	docker run -d --user="root" -v $$PWD/../jenkins_home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock -p 8080:8080 --name jenkins bryandollery/jenkins

stop:
	docker stop jenkins

rm:
	docker rm -f jenkins

clean:
	rm -rf ../jenkins_home
