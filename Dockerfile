FROM docker.io/nginx:latest

# Remove default.conf from /etc/nginx/conf.d
RUN rm /etc/nginx/conf.d/default.conf

# Optionally, prevent the default IPv6 script from being triggered
RUN rm /docker-entrypoint.d/10-listen-on-ipv6-by-default.sh

# Expose the required port (e.g., 80 for HTTP or 443 for HTTPS)
EXPOSE 18080

