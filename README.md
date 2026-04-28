# SwitchRPC
Discord Rich Presence for the Nintendo Switch

Does not rely on anything other than your Switch and a mobile device for logging in. Runs in the background and keeps your rich presence up to date with whatever title is open.

This is better than what's out there as of writing because it doesn't rely on an online computer on the local network to function. It all happens on the Switch itself.

> [!TIP]
> Like this project? Own a Mac for developing? You might like [XRPC, Xcode Rich Presence done right](https://github.com/llsc12/XRPC).

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
- eembedded swift is rly cool man
- ty toby you made me actually think about the rpc process lol

# Retrospect

I really hate the horrific makefile, soon i might make a super epic swiftpm based build process and template for this. if i do that ill restructure this project.

## Risks

Should be minimal probably, I use API routes from the Discord Social SDK. Their domain is `gaming-sdk.com` :sob: anyways it also uses discord headless sessions. I don't think any bans will happen but don't blame me, you're accepting the risk by using this software. 

Also I have to store the Discord refresh tokens somewhere, and unfortunately this means they could be taken by malicious software. Beware of malicious software. The login data is encrypted with your system info, at a minimum you won't accidentally leak it maybe.
