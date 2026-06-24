#pragma once

#include <string>

/**
 * Waits until the network is ready before proceeding.
*/
void waitForNetworkReady();

/**
 * Looks up the eShop square icon URL for a title from Nintendo's EU search API.
 * Returns true and sets out_url on success, false if the title isn't found.
 *
 * @param titleId  The title ID of the game (as a u64).
 * @param out_url  Output: the image_url_sq_s from the EU eShop (500×500 JPEG).
 */
bool fetchEshopIconUrl(u64 titleId, std::string& out_url);