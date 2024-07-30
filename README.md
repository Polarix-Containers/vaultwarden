# Vaultwarden

![Build, scan & push](https://github.com/Polarix-Containers/vaultwarden/actions/workflows/build.yml/badge.svg)

### Features & usage
- Built on the [official Alpine-based image](https://github.com/dani-garcia/vaultwarden/tree/main/docker), to be used as a drop-in replacement.
- Unprivileged image: you should check your volumes' permissions (eg `/data`), default UID/GID is 3001. Default port is 8080/tcp.
- Daily rebuilds keeping the image up-to-date.
- Comes with the [hardened memory allocator](https://github.com/GrapheneOS/hardened_malloc) built from the latest tag, protecting against some heap-based buffer overflows.

### Sample Docker Compose config

See this [link](https://github.com/TommyTran732/Docker-Compose-Files/tree/main/vaultwarden).

### Licensing
- Licensed under AGPL 3 to comply with licensing by Bitwarden.
- Any image built by Blue OCI is provided under the combination of license terms resulting from the use of individual packages.
