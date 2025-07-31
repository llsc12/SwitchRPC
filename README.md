# SwitchRPC
Discord Rich Presence for the Nintendo Switch

Does not rely on anything other than your Switch and a mobile device for logging in. Runs in the background and keeps your rich presence up to date with whatever title is open.

Relies on tinfoil.io for game artworks. Uses Discord Social SDK endpoints to push presence data.

Written in Embedded Swift!

## Privacy

The OAuth2 process happens through the Switch showing a web page at `https://static.llsc12.me/qr?ip=<switch_ip>&url=<discord_auth>`.

This page is a static page that renders a QR code for you to scan on your mobile device.

The Discord OAuth2 flow will redirect to `https://static.llsc12.me/discord` with the code and state params from the Discord OAuth2 flow, and this will redirect again to the IP address of the Switch, which will be picked up by the Switch and you will be authenticated.

All pages from my domain are static and hosted from GitHub Pages, you can examine them with inspect element to see exactly what they do.

## Credits

- NXGallery for the webserver implementation, very epic
- libnx innit
- also using libcurl libjson-c ykyk
- eembedded swift is rly cool man
- ty toby you made me actually think about the rpc process 

# Retrospect

I really hate the horrific makefile, soon i might make a super epic swiftpm based build process and template for this. if i do that ill restructure this project.
