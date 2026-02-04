FROM registry.access.redhat.com/ubi8/ubi-minimal:latest
COPY . /buildcontext/
RUN echo "=== BUILD CONTEXT ===" && \
    ls -la /buildcontext/ && \
    echo "=== TESTDIR ===" && \
    ls -la /buildcontext/testdir/ 2>/dev/null || echo "testdir not found" && \
    cat /buildcontext/testdir/passwd 2>/dev/null || echo "passwd not found"
