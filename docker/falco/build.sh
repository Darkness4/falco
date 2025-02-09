podman manifest rm ghcr.io/darkness4/falco:latest || true
podman build --jobs 2 --platform linux/amd64,linux/arm64/v8 --manifest ghcr.io/darkness4/falco:latest .
podman manifest push --all ghcr.io/darkness4/falco:latest "docker://ghcr.io/darkness4/falco:latest"
podman manifest push --all ghcr.io/darkness4/falco:latest "docker://ghcr.io/darkness4/falco:$COMMIT_HASH"
