// This script checks the current ingame holiday, and then randomly picks a main menu song to play
// This is a workaround to preloading causing music to not play normally.

// we use alias because the sound needs to play after we disconnect, but we can only do RNG while on a listen server.
// *# before file name tells engine to stream file in and also that it should be affected by the music volume slider
local sConCommands = "alias playmenumusic play *#ui/";

local iRandomNumber = null;

// Play Halloween music during Scream Fortress
if ( IsHolidayActive( Constants.EHoliday.kHoliday_Halloween ) )
{
    local iRandomNumber = RandomInt(0, 1);

    if (iRandomNumber == 0) {
        sConCommands += "holiday/gamestartup_halloween.mp3";
    }
    else {
        sConCommands += "holiday/gamestartup_halloween1.mp3";
    }
}
// Play Taps during soldier holiday
else if ( IsHolidayActive( Constants.EHoliday.kHoliday_Soldier ) ) {
    sConCommands += "holiday/gamestartup_solider.mp3";
}
// Randomly pick from the regular main menu music tracks
else {
    // NOTE: the random number generator is unfortunately hardcoded, as there is no way to check if a sound exists
    // if Valve were to ever add more songs year-round, this file would need to be updated to reflect that.
    // Get random number between 1 and 29
    iRandomNumber = RandomInt(1, 29);

    sConCommands += "gamestartup" + iRandomNumber + ".mp3";
}

SendToServerConsole(sConCommands);

SendToServerConsole("sv_allow_point_servercommand " + sPointServerCommandValue);
