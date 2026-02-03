FROM registry.access.redhat.com/ubi8/ubi-minimal:latest
COPY . /buildcontext/
RUN echo "=== CHECKING BUILD CONTEXT ===" && \
    ls -la /buildcontext/ && \
    echo "--- What is tmp_escape? ---" && \
    ls -la /buildcontext/tmp_escape 2>/dev/null || echo "tmp_escape not found" && \
    echo "--- passwd in tmp_escape? ---" && \
    cat /buildcontext/tmp_escape/passwd 2>/dev/null && echo "=== FOUND ===" || echo "=== NOT IN tmp_escape ===" && \
    echo "--- Check container /tmp ---" && \
    ls -la /tmp/
