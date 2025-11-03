FROM kong:3.6
COPY kong.yml /etc/kong/kong.yml
ENV KONG_DATABASE=off
ENV KONG_DECLARATIVE_CONFIG=/etc/kong/kong.yml
# Render provides $PORT; make Kong listen on it
ENV KONG_PROXY_LISTEN=0.0.0.0:${PORT}
# Hide Admin API (safer)
ENV KONG_ADMIN_LISTEN=off
# Optional hardening
ENV KONG_NGINX_PROXY_CLIENT_MAX_BODY_SIZE=16m
