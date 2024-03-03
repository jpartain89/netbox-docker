version: '3.4'
services:
  netbox:
    ports:
      - "9876:8080"
    # If you want the Nginx unit status page visible from the
    # outside of the container add the following port mapping:
    # - "8001:8081"
    # healthcheck:
      # Time for which the health check can fail after the container is started.
      # This depends mostly on the performance of your database. On the first start,
      # when all tables need to be created the start_period should be higher than on
      # subsequent starts. For the first start after major version upgrades of NetBox
      # the start_period might also need to be set higher.
      # Default value in our docker-compose.yml is 60s
      # start_period: 90s
    restart: unless-stopped
    environment:
      SKIP_SUPERUSER: "false"
      SUPERUSER_API_TOKEN: "{{ op://dev/Netbox/SUPERUSER/API_TOKEN }}"
      SUPERUSER_EMAIL: "jpartain@jpcdi.com"
      SUPERUSER_NAME: "jpartain89"
      SUPERUSER_PASSWORD: "{{ op://dev/Netbox/SUPERUSER/PASSWORD }}"
  netbox-worker:
    restart: unless-stopped
  netbox-housekeeping:
    restart: unless-stopped
  postgres:
    restart: unless-stopped
  redis:
    restart: unless-stopped
  redis-cache:
    restart: unless-stopped
