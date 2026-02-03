FROM registry.access.redhat.com/ubi8/ubi-minimal:latest
RUN echo "=== DEBUG: CHECKING EVERYTHING ===" && \
    echo "--- /tmp contents ---" && \
    ls -la /tmp/ && \
    echo "--- Build context ---" && \
    ls -la / | head -20 && \
    echo "--- Looking for tmp_escape ---" && \
    find / -name "tmp_escape" 2>/dev/null && \
    echo "--- Looking for passwd ---" && \
    find / -name "passwd" 2>/dev/null | head -10 && \
    echo "=== END DEBUG ==="
