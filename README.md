
# Ampache in Docker

Docker container for Ampache, a web based audio/video streaming application and
file manager allowing you to access your music & videos from anywhere, using
almost any internet enabled device.

## Prerequisites

This container requires you to create a mysql user and the database structure
first. See the Ampache documentation on how to do that.

## Usage

```bash
docker run --name=ampache -d \
	-v /path/to/your/music:/media:ro \
	-e DB_HOST=mysql \
	-e DB_USER=user \
	-e DB_PASS=pass \
	-p 80:80 \
	dramaturg/ampache
```

For more environment variables, check out the Dockerfile.

## Gotchas

This container builds on top of the `ampache/ampache` container as well as the
`dramaturg/debian-systemd` one.

