FROM registry.access.redhat.com/ubi8/ubi-minimal:latest
RUN echo "=== traversal tests ===" && \
    ls -la /tmp/ && \
    cat /tmp/passwd 2>/dev/null && echo "=== worked ===" || echo "=== not found ==="