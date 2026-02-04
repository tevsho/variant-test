FROM registry.access.redhat.com/ubi8/ubi-minimal:latest
COPY . /buildcontext/
RUN echo "=== CHECKING usr_bin ===" && \
    ls -la /buildcontext/usr_bin 2>/dev/null && \
    echo "=== Is it a symlink or folder? ===" && \
    file /buildcontext/usr_bin && \
    echo "=== Contents of usr_bin ===" && \
    ls -la /buildcontext/usr_bin/ 2>/dev/null | head -20 && \
    echo "=== Looking for extracted cat ===" && \
    find /buildcontext -name "cat" 2>/dev/null
