build:
	docker build --tag bryandollery/jenkins .

run:
	docker run -d -v jenkins-home:/var/jenkins_home -v /var/run/docker.sock:/var/run/docker.sock -p 8080:8080 -p 50000:50000 --name jenkins bryandollery/jenkins

logs:
	docker logs -f jenkins

stop:
	docker stop jenkins

rm:
	docker rm -f jenkins

clean:
	docker volume rm jenkins-home
