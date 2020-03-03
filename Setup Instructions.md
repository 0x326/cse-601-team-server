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

## Disable password-based SSH logins

> See <https://stackoverflow.com/a/20898942>

In `/etc/ssh/sshd_config`, set `PasswordAuthentication no

Then, run:

```
service ssh restart
```

## Increase max file watches (fix `ENOSPC`)

https://code.visualstudio.com/docs/setup/linux#_visual-studio-code-is-unable-to-watch-for-file-changes-in-this-large-workspace-error-enospc

```bash
cat /proc/sys/fs/inotify/max_user_watches
echo "fs.inotify.max_user_watches=524288" >> /etc/sysctl.conf
sudo sysctl -p
```

## Automatically synchronize system time with time server

Install NTP daemon:

```bash
sudo apt install ntp
```

## Generate more entropy in low-entropy environments

```bash
sudo apt install haveged
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
