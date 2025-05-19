> [!IMPORTANT]
> The spaces do not seam to work via `brew services start sketchybar`
> To work around this create a file `~/Library/LaunchAgents/com.user.sketchybar.plist` with the following content
>
> ```xml
> <?xml version="1.0" encoding="UTF-8"?>
> <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
> <plist version="1.0">
> <dict>
>     <key>Label</key>
>     <string>com.user.sketchybar</string>
>     <key>ProgramArguments</key>
>     <array>
>         <string>/bin/zsh</string>
>         <string>-c</string>
>         <string>sketchybar --config ~/.config/sketchybar/sketchybarrc</string>
>     </array>
>     <key>RunAtLoad</key>
>     <true/>
>     <key>KeepAlive</key>
>     <true/>
>     <key>StandardOutPath</key>
>     <string>/tmp/sketchybar.out</string>
>     <key>StandardErrorPath</key>
>     <string>/tmp/sketchybar.err</string>
> </dict>
> </plist>
> ```
>
> Then just load the new process with `launchctl load ~/Library/LaunchAgents/com.user.sketchybar.plist`
