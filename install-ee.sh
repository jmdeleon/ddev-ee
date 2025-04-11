#!/bin/bash
# Create a project directory and move into it:
mkdir craftcms
cd craftcms

# Set up the DDEV environment:
ddev config --project-type=craftcms --docroot=web

# Boot the project and install the starter project:
ddev start
ddev composer create --no-scripts craftcms/craft
ddev craft install/craft \
    --username=admin \
    --password=Password123 \
    --email=admin@example.com \
    --site-name='$DDEV_PROJECT' \
    --language=en \
    --site-url='$DDEV_PRIMARY_URL'

# Login using `admin` user and `Password123` password
ddev launch