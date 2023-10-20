# Application server

# Use Tmux
        tmux new-session -d 'gunicorn --bind 0.0.0.0:5000 app.web_ap:app'


## Background Context

Your web infrastructure is already serving web pages via Nginx that you installed in your first web stack project. While a web server can also serve dynamic content, this task is usually given to an application server. In this project you will add this piece to your infrastructure, plug it to your Nginx and make is serve your Airbnb clone project.


# TASKS

* install the net-tools package on your server: ``sudo apt install -y net-tools``
* Install Gunicorn and any other libraries required by your application.
* In order to check your code, the checker will bind a Gunicorn instance to port 6000, so make sure nothing is listening on that port.


## 2-app_server-nginx_config:

Building on your work in the previous tasks, configure Nginx to serve your page from the route /airbnb-onepage/

Requirements:

* Nginx must serve this page both locally and on its public IP on port 80.
* Nginx should proxy requests to the process listening on port 5000.
* Include your Nginx config file as 2-app_server-nginx_config.

Notes:

* In order to test this you’ll have to spin up either your production or development application server (listening on port 5000)
* In an actual production environment the application server will be configured to start upon startup in a system initialization script. This will be covered in the advanced tasks.
* You will probably need to reboot your server (by using the command $ sudo reboot) to have Nginx publicly accessible


## 3-app_server-nginx_config:

Building on what you did in the previous tasks, let’s expand our web application by adding another service for Gunicorn to handle. In AirBnB_clone_v2/web_flask/6-number_odd_or_even, the route /number_odd_or_even/<int:n> should already be defined to render a page telling you whether an integer is odd or even. You’ll need to configure Nginx to proxy HTTP requests to the route /airbnb-dynamic/number_odd_or_even/(any integer) to a Gunicorn instance listening on port 5001. The key to this exercise is getting Nginx configured to proxy requests to processes listening on two different ports. You are not expected to keep your application server processes running. If you want to know how to run multiple instances of Gunicorn without having multiple terminals open, see tips below.

Requirements:

* Nginx must serve this page both locally and on its public IP on port 80.
* Nginx should proxy requests to the route /airbnb-dynamic/number_odd_or_even/(any integer) the process listening on port 5001.
* Include your Nginx config file as 3-app_server-nginx_config.


## 4-app_server-nginx_config:

Let’s serve what you built for AirBnB clone v3 - RESTful API on web-01.

Requirements:

* Git clone your AirBnB_clone_v3
* Setup Nginx so that the route /api/ points to a Gunicorn instance listening on port 5002
* Nginx must serve this page both locally and on its public IP on port 80
* To test your setup you should bind Gunicorn to api/v1/app.py
* It may be helpful to import your data (and environment variables) from this project
* Upload your Nginx config file as 4-app_server-nginx_config


## 5-app_server-nginx_config:

Let’s serve what you built for AirBnB clone - Web dynamic on web-01.

Requirements:

* Git clone your AirBnB_clone_v4
* Your Gunicorn instance should serve content from web_dynamic/2-hbnb.py on port 5003
* Setup Nginx so that the route / points to your Gunicorn instance
* Setup Nginx so that it properly serves the static assets found in web_dynamic/static/ (this is essential for your page to render properly)
* For your website to be fully functional, you will need to reconfigure web_dynamic/static/scripts/2-hbnb.js to the correct IP
* Nginx must serve this page both locally and on its public IP and port 5003
* Make sure to pull up your Developer Tools on your favorite browser to verify that you have no errors
* Upload your Nginx config as 5-app_server-nginx_config


# ADVANCED TASKS


## gunicorn.service:

Once you’ve got your application server configured, you want to set it up to run by default when Linux is booted. This way when your server inevitably requires downtime (you have to shut it down or restart it for one reason or another), your Gunicorn process(es) will start up as part of the system initialization process, freeing you from having to manually restart them. For this we will use systemd. You can read more about systemd in the documentation posted at the top of this project but to put it succinctly, it is a system initialization daemon for the Linux OS (amongst other things). For this task you will write a systemd script which will start your application server for you. As mentioned in the video at the top of the project, you do not need to create a Unix socket to bind the process to.

Requirements:

* Write a systemd script which starts a Gunicorn process to serve the same content as the previous task (web_dynamic/2-hbnb.py)
* The Gunicorn process should spawn 3 worker processes
* The process should log errors in /tmp/airbnb-error.log
* The process should log access in /tmp/airbnb-access.log
* The process should be bound to port 5003
* Your systemd script should be stored in the appropriate directory on web-01
* Make sure that you start the systemd service and leave it running
* Upload gunicorn.service to GitHub


## 4-reload_gunicorn_no_downtime:

One of the most important metrics for any Internet-based business is its uptime. It is the percentage of the time over a given period that the service/product is accessible to customers. Let’s pick the example of Amazon.com, for every minute of downtime (which is the opposite of uptime), it costs the company $2M. Yet, application servers often need to restart to update with the new version of the code or new configuration, when doing this operation, an application server cannot serve traffic, which meant downtime.

To avoid this; application servers are designed with a master/workers infrastructure. The master is in charge of:

Receiving requests
Managing workers (starting, stopping)
Distributing requests to workers

Workers are the actual ones processing the query by generation dynamic content by processing the application code.

To update an application without downtime, the master will proceed with a progressive rollout of the update. It will gracefully shut down some workers ( meaning that it will tell workers to finish processing the request they are working on, but will not send them new requests, once the worker is done, it’s will be shutdown) and start new ones with the new application code or configuration, then move on to the other old workers until it has renewed the whole pool.

# For testing it, please use the command $ sudo reboot to reboot your server (not shutdown!!)


Write a simple Bash script to reload Gunicorn in a graceful way.
