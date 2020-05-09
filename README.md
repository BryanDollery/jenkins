# Jenkins on Alpine with Plugins and docker

This is based on the official jenkins image, but I've added some common plugins to save initial startup time trading off the size of the image which has grown considerably. I've also installed docker and docker-compose to facilitate the use of containerised builds.

I plan to use this in the jenkins training modules in my courses. I have composed it with gogs and postgresql in bryandollery/jenkins-training-env.
