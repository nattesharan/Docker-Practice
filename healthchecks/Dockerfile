FROM nginx:latest
# HEALTHCHECK curl -f localhost || exit 1
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
CMD curl -f localhost || exit 1