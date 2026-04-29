# Docker setup for Realsense on ROS2 Jazzy

## Build Docker image

Git clone

```bash
git clone https://github.com/SAJIB3489/realsense-ros2-docker.git
```

```bash
docker compose build --no-cache
```

## Start the container

```bash
docker-compose up

# OR
docker-compose up -d
```

## Notes

- Image uses the APT repository version of realsense2, which is likely never the latest version.
- The ROS_MASTER_URI is set by default to point to localhost, and having `network_mode: host` in docker-compose.yml makes the thing use an existing roscore process if one is already running on the host, otherwise it starts a new one.
