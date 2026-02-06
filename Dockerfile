FROM grafana/grafana-oss:latest

ENV GF_SERVER_HTTP_PORT=${PORT:-3000} \
    GF_LOG_MODE=console \
    GF_SECURITY_ADMIN_USER=admin \
    GF_SECURITY_ADMIN_PASSWORD=admin

HEALTHCHECK --interval=30s --timeout=10s --retries=3 \
    CMD wget --no-verbose --tries=1 --spider http://localhost:${PORT:-3000}/api/health || exit 1
