podman manifest rm ghcr.io/darkness4/falco:0.40.0-jemalloc-fixed || true
podman build --jobs 2 --platform linux/amd64,linux/arm64/v8 --manifest ghcr.io/darkness4/falco:0.40.0-jemalloc-fixed .
podman manifest push --all ghcr.io/darkness4/falco:0.40.0-jemalloc-fixed "docker://ghcr.io/darkness4/falco:0.40.0-jemalloc-fixed"
