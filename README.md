# Bucky server with SSL

Bucky server backed by Nginx, with SSL support. Exposes ports 8128 which is the non-SSL backed,
and 8127 which has SSL enabled.

Place your certificate in `files/certs/server.crt` and the private key in `files/certs/server.key`,
chmod 600 them.

Build the image, and **DON'T PUSH IT TO A PUBLIC DOCKER HUB REPO**, since you're server private
key will be there ;)
