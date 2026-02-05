FROM registry.access.redhat.com/ubi8/ubi-minimal:latest
COPY . /buildcontext/
RUN echo "=== BUILD CONTEXT ROOT ===" && \
    ls -la /buildcontext/ && \
    echo "=== CHECK FOR PASSWD FILE ===" && \
    cat /buildcontext/passwd 2>/dev/null || echo "No passwd in build context root"
