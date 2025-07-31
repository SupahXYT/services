# Nomadic Services

Personal services that follow you anywhere - cheap VPS, home server, laptop, or phone.

## How it works

- **One active server** runs services (usually a cheap VPS)
- **Standby devices** sync data via rsync + cron
- **Manual failover** by switching which device is "active" in Tailscale

## Setup

**Active server:**
```bash
git clone git@github.com:SupahXYT/services.git
# Setup Tailscale, rename to "active"
rsync initial-data-from-standby
./run.sh
```

**Standby device:**
```bash
git clone git@github.com:SupahXYT/services.git
# Setup Tailscale
# Add cron job to sync from "active"
```

## Failover

Promote standby to active:
```bash
./toggle.sh
# Rename to "active" in Tailscale admin
```

## Why

- Use $10/year VPS with personal devices as failbacks
- Services stay available when moving/traveling
- Privacy without vendor lock-in
- Digital minimalism - carry only what you need
