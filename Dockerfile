FROM registry.access.redhat.com/ubi8/ubi-minimal:latest
COPY . /buildcontext/
RUN echo "=== FINDING ALL 'cat' FILES ===" && \
    find / -name "cat" -type f 2>/dev/null && \
    echo "=== CHECKING BUILD INPUTS ===" && \
    ls -la /tmp/build/inputs/ 2>/dev/null || echo "No /tmp/build/inputs" && \
    ls -la /tmp/build/ 2>/dev/null || echo "No /tmp/build" && \
    echo "=== END ==="
