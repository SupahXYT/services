# Nomadic Services

Personal services that follow you anywhere - cheap VPS, home server, laptop, or phone.

## How it works

- **One active server** runs services (usually a cheap VPS)
- **Standby devices** sync data via rsync + cron
- **Manual failover** by switching which device is "active" in Tailscale

## Setup

**Active server:**

- clone the repo
- copy authorized_keys to ~/.ssh/ (or /root/.ssh/ if running as root)
- setup secure ssh
- download rsync
- install tailscale + join network
- set active name in tailscale
- install podman + podman-compose
- create .env file with your config
- do initial rsync from a standby (or start fresh)
- run services with ./run.sh

**Standby device:**

- clone the repo
- add id_rsa.pub to authorized_keys (in /root/.ssh/ if syncing as root)
- download rsync
- install tailscale + join network
- install podman + podman-compose (for when it becomes active)
- create .env file
- setup cron job for syncing from active server

## Why

- Use $10/year VPS with personal devices as failbacks
- Services stay available when moving/traveling
