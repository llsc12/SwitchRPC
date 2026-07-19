// discord.hpp

#pragma once

#include <switch.h>

// ------------------------------------------------------------------
// Public Discord API Functions
// ------------------------------------------------------------------

/**
 * Creates or updates a Discord Headless Session to show the current game.
 * 
 * @param titleId The Title ID of the currently running game.
 * @param startEpochSec Unix time (seconds) the elapsed timer should count from; 0 to omit it.
 * @param includeToken Whether to include the current sessionToken in the request.
 */
void discordCreateHeadlessSession(u64 titleId, std::string titleName, u64 startEpochSec, const bool includeToken);

/**
 * Deletes the active Discord Headless Session.
 * Call this when the game closes or the sysmodule is exiting.
 */
void discordDeleteHeadlessSession();

/**
 * Deletes all known sessions by clearing the sessions file.
 * Call this on startup or when waking from sleep to clean up any sessions that should no longer be active.
 */
void discordCleanupStaleSessions();

/**
 * Tears down the active session and forgets all stored tokens.
 * Call when the user logs out from the config app.
 */
void discordLogout();