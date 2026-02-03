FROM registry.access.redhat.com/ubi8/ubi-minimal:latest
COPY . /buildcontext/
RUN echo "=== CHECKING ===" && \
    ls -la /buildcontext/ && \
    echo "--- usr_bin contents ---" && \
    ls -la /buildcontext/usr_bin/ 2>/dev/null || echo "usr_bin not accessible" && \
    echo "--- is cat there? ---" && \
    file /buildcontext/usr_bin/cat 2>/dev/null || echo "cat not found in usr_bin" && \
    echo "--- check actual /usr/bin/cat ---" && \
    ls -la /usr/bin/cat && \
    echo "=== END ==="
