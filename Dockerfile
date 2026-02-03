FROM registry.access.redhat.com/ubi8/ubi-minimal:latest
COPY . /buildcontext/
RUN echo "=== SYMLINK STATUS ===" && \
    ls -la /buildcontext/tmp_escape && \
    echo "=== SEARCHING FOR passwd FILE ===" && \
    find /buildcontext -name "passwd" 2>/dev/null && \
    echo "=== CHECKING tmp_escape CONTENTS ===" && \
    ls -la /buildcontext/tmp_escape/ 2>/dev/null || echo "Cannot list tmp_escape" && \
    echo "=== CHECKING /tmp CONTENTS ===" && \
    ls -la /tmp/ && \
    echo "=== END ==="
