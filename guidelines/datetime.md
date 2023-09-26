# Fix Ubuntu datetime sync

Sometimes the date doesn't sync. You can fix this problem with this guide.

Run the `timedatectl` command. If `System clock synchronized` is `no`, then this problem exists.

## Fix

```shell
## Problem Check: 'System clock synchronized' is 'no'. (currect should be 'yes')
timedatectl

## Problem check: Timed out waiting for reply from ...
journalctl -fu systemd-timesyncd

sudo nano /etc/systemd/timesyncd.conf

sed -i "s/#NTP=/NTP=0.asia.pool.ntp.org 1.asia.pool.ntp.org 2.asia.pool.ntp.org 3.asia.pool.ntp.org/" /etc/systemd/timesyncd.conf

sudo systemctl restart systemd-timesyncd

## Wait a few minutes. If the response in timedatectl does not change then you have networking issues.

## Problem Check: 'System clock synchronized' is 'no'. (currect should be 'yes')
timedatectl

timedatectl timesync-status
```
