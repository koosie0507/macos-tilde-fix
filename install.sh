#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

sudo bash -c "cat > /Library/LaunchDaemons/com.github.koosie0507.remap-tilde.plist" << EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
  <dict>
    <key>Label</key><string>com.github.koosie0507.remap-tilde</string>
    <key>Program</key><string>${DIR}/remap-tilde.sh</string>
    <key>RunAtLoad</key><true/>
    <key>KeepAlive</key><false/>
  </dict>
</plist>
EOF
sudo launchctl load -w -- /Library/LaunchDaemons/com.github.koosie0507.remap-tilde.plist
