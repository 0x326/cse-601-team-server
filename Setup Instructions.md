# Server set up instructions

## Set up automatic upgrades

> See https://help.ubuntu.com/lts/serverguide/automatic-updates.html

```bash
sudo apt install unattended-upgrades
```

Append to `/etc/apt/apt.conf.d/20auto-upgrades`:

```
APT::Periodic::Download-Upgradeable-Packages "1";
APT::Periodic::AutocleanInterval "7";
```

## Set up auto refresh for Snap packages

> See https://snapcraft.io/docs/keeping-snaps-up-to-date#heading--controlling-updates

(Done automatically. See `snap refresh --time`)

## Install Docker

```bash
sudo snap install docker
sudo addgroup docker
sudo chown root:docker /var/run/docker.sock
sudo usermod -aG docker $USER
```
