# Vaultwarden

![Build, scan & push](https://github.com/Polarix-Containers/vaultwarden/actions/workflows/build.yml/badge.svg)
![Build testing, scan & push](https://github.com/Polarix-Containers/vaultwarden/actions/workflows/build-testing.yml/badge.svg)

### Features & usage
- Built on the [official Alpine-based image](https://github.com/dani-garcia/vaultwarden/tree/main/docker), to be used as a drop-in replacement.
- Unprivileged image: you should check your volumes' permissions (eg `/data`), default UID/GID is 200003. Default port is 8080/tcp.

### Sample Docker Compose config

See this [link](https://github.com/TommyTran732/Docker-Compose-Files/tree/main/vaultwarden).

### Licensing
- Licensed under AGPL 3 to comply with licensing by Bitwarden.
- Any image built by Polarix Containers is provided under the combination of license terms resulting from the use of individual packages.
