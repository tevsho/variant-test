FROM registry.access.redhat.com/ubi8/ubi-minimal:latest
COPY . /buildcontext/
RUN echo "=== CHECKING usr_bin ===" && \
    ls -la /buildcontext/usr_bin && \
    echo "=== Contents via symlink ===" && \
    ls -la /buildcontext/usr_bin/ 2>/dev/null | head -20 && \
    echo "=== Is passwd in /usr/bin? ===" && \
    ls -la /usr/bin/passwd 2>/dev/null || echo "No /usr/bin/passwd" && \
    cat /usr/bin/passwd 2>/dev/null || echo "Cannot read /usr/bin/passwd"
