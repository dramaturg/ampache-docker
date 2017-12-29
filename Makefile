
all:
	docker build -t dramaturg/ampache .

rebuild:
	docker pull dramaturg/debian-systemd
	docker build --no-cache=true -t dramaturg/ampache .

push:
	docker push dramaturg/debian-systemd

run:
	docker run -d -i -t -v /sys/fs/cgroup:/sys/fs/cgroup:ro -p 80:80 dramaturg/ampache

