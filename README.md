# SwitchRPC
Discord Rich Presence for the Nintendo Switch

Does not rely on anything other than your Switch and a mobile device for logging in. Runs in the background and keeps your rich presence up to date with whatever title is open.

The rich presence is handled on the Switch itself, without the need for external tools on other computers.

> [!TIP]
> Like this project? Own a Mac for developing? You might like [XRPC, Xcode Rich Presence done right](https://github.com/llsc12/XRPC).

## Installing
Head over to [the releases](https://github.com/llsc12/SwitchRPC/releases/latest) and follow the instructions to download the latest version.

## Nerd details

Relies on tinfoil.io for game artworks. Uses Discord Social SDK endpoints for auth and its scope allow pushing presence data.

Written in Embedded Swift!

## Privacy

The OAuth2 process happens through the Switch showing a web page at `https://static.llsc12.me/discord/qr?url=<discord_auth_shim>`.

This page is a static page that renders a QR code for you to scan on your mobile device, leading to `https://static.llsc12.me/discord?ip=<switch_ip>&auth=<discord_oauth2_url>`.

The Discord OAuth2 flow will redirect back to `https://static.llsc12.me/discord` again, with the code and state params from the Discord OAuth2 flow. The page will redirect again to the IP address of the Switch, which will be picked up by the Switch and you will be authenticated.

All pages from this subdomain are static and hosted on GitHub Pages, you can examine them with inspect element to see exactly what they do.

## Credits

- NXGallery for the webserver implementation, very epic
- libnx innit
- also using libcurl libjson-c ykyk
- switchpresence-rewritten with the process checking
- eembedded swift is rly cool man
- ty toby you made me actually think about the rpc process lol

# Retrospect
The application is written in Swift with several swifty abstractions over lots of C stuff. It'd be nice to turn the horrific makefile into a swiftpm plugin!<br>
The sysmodule was written in Swift originally but rewritten in C++ because I was trying to fix a crashing bug, however it was just an issue with stack vs heap allocations. 

## Risks

Should be minimal probably, I use API routes from the Discord Social SDK. Their domain is `gaming-sdk.com` :sob: anyways it also uses discord headless sessions.
I haven't gotten to mimicking the official requests made by the SDK just yet, ban risk is non-zero.
