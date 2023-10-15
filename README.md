# `Inception`

This project aims to broaden your knowledge of system administration by using Docker.
You will virtualize several Docker images, creating them in your new personal virtual machine.

### Discription of mandatory part
This project consists in having you set up a small infrastructure composed of different services under specific rules.

<img align="left" src="https://raw.githubusercontent.com/tolmvad/Inception/78ccb50704fbc3e222e41808f208477d37743279/img/mariadb.svg" height="70">
<img align="left" src="https://raw.githubusercontent.com/tolmvad/Inception/78ccb50704fbc3e222e41808f208477d37743279/img/nginx.svg" height="70">
<img align="left" src="https://raw.githubusercontent.com/tolmvad/Inception/78ccb50704fbc3e222e41808f208477d37743279/img/wordpress.svg" height="70">
<img align="left" src="https://raw.githubusercontent.com/tolmvad/Inception/78ccb50704fbc3e222e41808f208477d37743279/img/docker.svg" height="70">

![basic](https://raw.githubusercontent.com/tolmvad/Inception/78ccb50704fbc3e222e41808f208477d37743279/img/basic.png)

#### Tasks:
- A Docker container that contains `NGINX` with TLSv1.2 or TLSv1.3 only.
- A Docker container that contains `WordPress` + php-fpm (it must be installed and configured) only without nginx.
- A Docker container that contains `MariaDB` only without nginx.
- A `volume` that contains your WordPress database.
- A second `volume` that contains your WordPress website files.
- A docker-network that establishes the connection between your containers.
- Your containers have to restart in case of a crash.
- In your WordPress database, there must be two users, one of them being the administrator. The administrator’s username can’t contain admin/Admin or administrator/Administrator (e.g., admin, administrator, Administrator, admin-123, and so forth).
- Your `volumes` will be available in the `/home/login/data` folder of the host machine using Docker. Of course, you have to replace the login with yours.
- To make things simpler, you have to configure your domain name so it points to your local IP address. This domain name must be `login.42.fr`. Again, you have to use your own `login`. For example, if your `login` is `wil`, `wil.42.fr` will redirect to the IP address pointing to wil’s website.
- It is mandatory to use environment variables. Also, it is strongly recommended to use a `.env` file to store environment variables. The .env file should be located at the root of the `srcs` directory.
