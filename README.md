# SwitchRPC
Discord Rich Presence for the Nintendo Switch

Does not rely on anything other than your Switch and a mobile device for logging in. Runs in the background and keeps your rich presence up to date with whatever title is open.

The rich presence is handled on the Switch itself, without the need for external tools on other computers.

## Per-user Discord linking

Each Nintendo Switch user profile can be linked to its own Discord account. The config app lists every Switch profile (plus a "Default (all profiles)" entry for any profile that isn't linked individually) along with its current link status, so you can give each person on the console their own Discord identity.

When a game is running, the sysmodule looks up the currently-playing Switch user and pushes presence to **that** user's linked Discord account only. Presence is no longer mirrored to every linked account at once. Since the Switch only runs one application at a time, there is at most one active Discord session at a time, and the active Discord identity follows whichever Switch user is playing.

If a profile has no link of its own, the Default link (if set) is used as a fallback. If neither exists, no presence is pushed for that user.

In the config app:
- Up/Down move between profiles.
- A links a profile (or relinks one that is already linked).
- X unlinks a linked profile.
- Plus exits the app.

> [!TIP]
> Like this project? Own a Mac for developing? You might like [XRPC, Xcode Rich Presence done right](https://github.com/llsc12/XRPC).

## Installing
Head over to [the releases](https://github.com/llsc12/SwitchRPC/releases/latest) and follow the instructions to download the latest version.

## Nerd details

Relies on tinfoil.io for game artworks. Uses Discord Social SDK endpoints for auth and its scope allow pushing presence data.

Written in Embedded Swift!

## Pairing

Linking a profile is done entirely on-device. When you start a link, the Switch renders a QR code directly on its own screen (no web applet, no external page) pointing at the Switch's local web server, e.g. `http://<switch_ip>:45601`. Scan it with your phone, or type the URL printed underneath the QR code as a fallback.

Your phone opens the local page, which kicks off the Discord OAuth2 (PKCE) flow. Once you approve, Discord redirects back to the Switch's local web server with the code and state, the Switch exchanges the code for tokens, fetches your Discord id and username, and saves the link for the profile you chose.

## Privacy

The OAuth2 process happens entirely between your Switch, your phone, and Discord. The QR code is generated and displayed locally on the Switch screen, so no external/static web page is involved in showing it.

The QR code (and its fallback URL) point to the Switch's own local web server on your network (`http://<switch_ip>:45601`). The Discord OAuth2 flow redirects the code and state back to that local address, which the Switch picks up to complete authentication. Discord refresh tokens are stored on the SD card per linked profile.

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
Headers n stuff are in place.