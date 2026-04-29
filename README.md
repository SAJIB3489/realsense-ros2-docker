# RealSense ROS2 Jazzy Docker Setup

A Docker-based environment for running Intel RealSense cameras with ROS2 Jazzy. This setup includes librealsense2 and RealSense ROS2 packages with hardware device access.

## Prerequisites

- Docker installed
- Docker Compose installed
- RealSense USB camera connected to your system

## Build the Docker Image

Clone the repository:

```bash
git clone https://github.com/SAJIB3489/realsense-ros2-docker.git
cd realsense-ros2-docker
```

Build the image:

```bash
docker compose build --no-cache
```

## Run the Container

Start the container:

```bash
# Foreground mode (see logs)
docker compose up

# Background mode (detached)
docker compose up -d
```

The container will be named `realsense-camera-ros2` and automatically launch the RealSense camera node with configured profiles.

## Configuration

### Camera Profiles

By default, the camera runs with these profiles:

- **Depth module**: 640x480@30fps
- **RGB camera**: 640x480@30fps

To use default profiles instead, remove the profile parameters from the `command` in `docker-compose.yaml`:

```yaml
command: 'bash -c "source /opt/ros/jazzy/setup.bash && ros2 launch realsense2_camera rs_launch.py"'
```

### Environment Variables

Environment variables are defined in `.env` file. Key variables include:

- `ROS_DISTRO`: ROS distribution (jazzy)
- `ROS_DOMAIN_ID`: ROS domain ID (0)
- `RMW_IMPLEMENTATION`: ROS middleware (rmw_fastrtps_cpp)
- `DISPLAY`: Display server setting

## Stop the Container

```bash
docker compose down
```

## View Logs

```bash
# Foreground container
docker compose logs -f

# Background container
docker compose logs -f realsense-ros-jazzy
```
