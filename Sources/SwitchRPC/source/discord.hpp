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
 * @param includeToken Whether to include the current sessionToken in the request.
 */
void discordCreateHeadlessSession(u64 titleId, std::string titleName, const bool includeToken);

/**
 * Deletes the active Discord Headless Session.
 * Call this when the game closes or the sysmodule is exiting.
 */
void discordDeleteHeadlessSession();
