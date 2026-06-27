// discord.hpp

#pragma once

#include <switch.h>
#include <string>
#include <vector>
#include <time.h>

// ------------------------------------------------------------------
// Per-Switch-user link model
// ------------------------------------------------------------------

// A Link connects a single Switch user profile to a single Discord account.
// Each link carries its OWN OAuth credentials and (at runtime) its OWN
// active headless-session token.
struct Link {
    AccountUid switchUid {};              // all-zero == DEFAULT/wildcard link
    std::string switchUidStr;             // "%016llx-%016llx"
    std::string discordId;               // display only / sessions bookkeeping
    std::string discordUsername;         // display only
    std::string refreshToken;            // ROTATES on each refresh
    std::string authToken;               // bearer token (in-memory only)
    time_t authTokenExpiry = 0;          // when authToken expires (epoch secs)

    // runtime-only headless session state for this link
    std::string sessionToken;            // active rich-presence session token
    time_t sessionTokenExpiry = 0;       // derived (request time + ~15 min)
};

// ------------------------------------------------------------------
// switch_uid serialization helpers (MUST match the Swift config app)
// ------------------------------------------------------------------
std::string accountUidToString(const AccountUid& uid);
bool accountUidFromString(const std::string& s, AccountUid& out);

// ------------------------------------------------------------------
// Link storage
// ------------------------------------------------------------------

/**
 * (Re)load all links from sdmc:/config/switchrpc_profiles.json.
 * If that file is absent, falls back to the legacy single
 * sdmc:/config/switchrpc_token as one default/wildcard link.
 * Populates and returns the global link table. Safe to call only when no
 * active Link pointer is being held (it clears/rebuilds the table).
 */
std::vector<Link>& loadLinks();

/**
 * Resolve a playing user's AccountUid to a link.
 * Returns the exact switch_uid match if present, else the default/wildcard
 * (all-zero) link if present, else nullptr (meaning: no presence).
 * Returned pointer is valid until the next loadLinks() call.
 */
Link* resolveLink(const AccountUid& uid);

/**
 * Persist a (rotated) refresh token back to switchrpc_profiles.json for the
 * link's switch_uid (preserving every other entry), or to the legacy
 * switchrpc_token file if the links were loaded from legacy.
 */
void persistLinkRefreshToken(const Link& link);

/**
 * Refresh the link's auth token if it is missing/expired (rotates and
 * persists the refresh token). Returns true if a usable auth token is held.
 */
bool refreshAuthTokenIfNeeded(Link& link);

// ------------------------------------------------------------------
// Public Discord API Functions
// ------------------------------------------------------------------

/**
 * Creates or updates a Discord Headless Session to show the current game for
 * the given link's Discord account.
 *
 * @param link          The resolved link (owning Discord account).
 * @param titleId       The Title ID of the currently running game.
 * @param titleName     The display name of the running game.
 * @param includeToken  Whether to include the link's current sessionToken.
 * @return true only if a session token was successfully obtained and stored.
 */
bool discordCreateHeadlessSession(Link& link, u64 titleId, std::string titleName, const bool includeToken);

/**
 * Deletes the link's active Discord Headless Session.
 * Call this when the game closes, the active link changes, or on exit.
 */
void discordDeleteHeadlessSession(Link& link);

/**
 * Deletes all known sessions recorded in switchrpc_sessions.json, resolving
 * each entry to its owning link (by switch_uid) for the correct credentials,
 * then clears the file. A legacy plaintext sessions file is deleted
 * best-effort. Requires loadLinks() to have been called first.
 */
void discordCleanupStaleSessions();
