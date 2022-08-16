---
description: A list of all console variables and commands on TF2 for Windows.
search:
  exclude: true
...

# Console Variables - Windows

```c
cvar list
--------------
_autosave                                : cmd      :                  : Autosave
_autosavedangerous                       : cmd      :                  : AutoSaveDangerous
_bugreporter_restart                     : cmd      :                  : Restarts bug reporter .dll
_cl_classmenuopen                        : 0        : , "cl"           : internal cvar used to tell server when class menu is open
_fov                                     : 0        : , "cl"           : Automates fov command to server.
_resetgamestats                          : cmd      :                  : Erases current game stats and writes out a blank stats file
_restart                                 : cmd      :                  : Shutdown and restart the engine.
abuse_report_queue                       : cmd      :                  : Capture data for abuse report and queue for submission.  Use abose_report_submit to activate UI to submit the report
abuse_report_submit                      : cmd      :                  : Activate UI to submit queued report.  Use abuse_report_queue to capture data for the report the report
achievement_debug                        : 0        : , "sv", "cheat", "rep" : Turn on achievement debug msgs.
addip                                    : cmd      :                  : Add an IP address to the ban list.
adsp_alley_min                           : 122      :                  :
adsp_courtyard_min                       : 126      :                  :
adsp_debug                               : 0        : , "a"            :
adsp_door_height                         : 112      :                  :
adsp_duct_min                            : 106      :                  :
adsp_hall_min                            : 110      :                  :
adsp_low_ceiling                         : 108      :                  :
adsp_opencourtyard_min                   : 126      :                  :
adsp_openspace_min                       : 130      :                  :
adsp_openstreet_min                      : 118      :                  :
adsp_openwall_min                        : 130      :                  :
adsp_room_min                            : 102      :                  :
adsp_street_min                          : 118      :                  :
adsp_tunnel_min                          : 114      :                  :
adsp_wall_height                         : 128      :                  :
ai_auto_contact_solver                   : 1        : , "sv"           :
ai_block_damage                          : 0        : , "sv"           :
ai_debug_assault                         : 0        : , "sv"           :
ai_debug_avoidancebounds                 : 0        : , "sv"           :
ai_debug_directnavprobe                  : 0        : , "sv"           :
ai_debug_doors                           : 0        : , "sv"           :
ai_debug_dyninteractions                 : 0        : , "sv"           : Debug the NPC dynamic interaction system.
ai_debug_efficiency                      : 0        : , "sv"           :
ai_debug_enemies                         : 0        : , "sv"           :
ai_debug_expressions                     : 0        : , "sv"           : Show random expression decisions for NPCs.
ai_debug_follow                          : 0        : , "sv"           :
ai_debug_loners                          : 0        : , "sv"           :
ai_debug_looktargets                     : 0        : , "sv"           :
ai_debug_los                             : 0        : , "sv", "cheat"  : NPC Line-Of-Sight debug mode. If 1, solid entities that block NPC LOC will be highlighted with white bounding boxes. If 2, it'll show non-solid entities that would do it if they were solid.
ai_debug_nav                             : 0        : , "sv"           :
ai_debug_node_connect                    : cmd      :                  : Debug the attempted connection between two nodes
ai_debug_ragdoll_magnets                 : 0        : , "sv"           :
ai_debug_shoot_positions                 : 0        : , "sv", "cheat", "rep" :
ai_debug_speech                          : 0        : , "sv"           :
ai_debug_squads                          : 0        : , "sv"           :
ai_debug_think_ticks                     : 0        : , "sv"           :
ai_debugscriptconditions                 : 0        : , "sv"           :
ai_default_efficient                     : 0        : , "sv"           :
ai_drawbattlelines                       : 0        : , "sv", "cheat"  :
ai_drop_hint                             : cmd      :                  : Drop an ai_hint at the player's current eye position.
ai_dump_hints                            : cmd      :                  :
ai_efficiency_override                   : 0        : , "sv"           :
ai_enable_fear_behavior                  : 1        : , "sv"           :
ai_expression_frametime                  : 0        : , "sv"           : Maximum frametime to still play background expressions.
ai_expression_optimization               : 0        : , "sv"           : Disable npc background expressions when you can't see them.
ai_fear_player_dist                      : 720      : , "sv"           :
ai_find_lateral_cover                    : 1        : , "sv"           :
ai_find_lateral_los                      : 1        : , "sv"           :
ai_follow_use_points                     : 1        : , "sv"           :
ai_follow_use_points_when_moving         : 1        : , "sv"           :
ai_force_serverside_ragdoll              : 0        : , "sv"           :
ai_frametime_limit                       : 50       : , "sv"           : frametime limit for min efficiency AIE_NORMAL (in sec's).
ai_inhibit_spawners                      : 0        : , "sv", "cheat"  :
ai_lead_time                             : 0        : , "sv"           :
ai_LOS_mode                              : 0        : , "sv", "rep"    :
ai_moveprobe_debug                       : 0        : , "sv"           :
ai_moveprobe_jump_debug                  : 0        : , "sv"           :
ai_moveprobe_usetracelist                : 0        : , "sv"           :
ai_navigator_generate_spikes             : 0        : , "sv"           :
ai_navigator_generate_spikes_strength    : 8        : , "sv"           :
ai_no_local_paths                        : 0        : , "sv"           :
ai_no_node_cache                         : 0        : , "sv"           :
ai_no_select_box                         : 0        : , "sv"           :
ai_no_steer                              : 0        : , "sv"           :
ai_no_talk_delay                         : 0        : , "sv"           :
ai_norebuildgraph                        : 0        : , "sv"           :
ai_path_adjust_speed_on_immediate_turns  : 1        : , "sv"           :
ai_path_insert_pause_at_est_end          : 1        : , "sv"           :
ai_path_insert_pause_at_obstruction      : 1        : , "sv"           :
ai_post_frame_navigation                 : 0        : , "sv"           :
ai_radial_max_link_dist                  : 512      : , "sv"           :
ai_reaction_delay_alert                  : 0        : , "sv"           :
ai_reaction_delay_idle                   : 0        : , "sv"           :
ai_rebalance_thinks                      : 1        : , "sv"           :
ai_report_task_timings_on_limit          : 0        : , "a", "sv"      :
ai_sequence_debug                        : 0        : , "sv"           :
ai_set_move_height_epsilon               : cmd      :                  : Set how high AI bumps up ground walkers when checking steps
ai_setupbones_debug                      : 0        : , "sv"           : Shows that bones that are setup every think
ai_shot_bias                             : 1        : , "sv"           :
ai_shot_bias_max                         : 1        : , "sv", "rep"    :
ai_shot_bias_min                         : -1       : , "sv", "rep"    :
ai_shot_stats                            : 0        : , "sv"           :
ai_shot_stats_term                       : 1000     : , "sv"           :
ai_show_hull_attacks                     : 0        : , "sv"           :
ai_show_think_tolerance                  : 0        : , "sv"           :
ai_simulate_task_overtime                : 0        : , "sv"           :
ai_spread_cone_focus_time                : 0        : , "sv"           :
ai_spread_defocused_cone_multiplier      : 3        : , "sv"           :
ai_spread_pattern_focus_time             : 0        : , "sv"           :
ai_strong_optimizations                  : 0        : , "sv"           :
ai_strong_optimizations_no_checkstand    : 0        : , "sv"           :
ai_task_pre_script                       : 0        : , "sv"           :
ai_test_moveprobe_ignoresmall            : 0        : , "sv"           :
ai_think_limit_label                     : 0        : , "a", "sv"      :
ai_use_clipped_paths                     : 1        : , "sv"           :
ai_use_efficiency                        : 1        : , "sv"           :
ai_use_frame_think_limits                : 1        : , "sv"           :
ai_use_think_optimizations               : 1        : , "sv"           :
ai_use_visibility_cache                  : 1        : , "sv"           :
ai_vehicle_avoidance                     : 1        : , "sv", "cheat"  :
air_density                              : cmd      :                  : Changes the density of air for drag computations.
alias                                    : cmd      :                  : Alias a command.
+alt1                                    : cmd      :                  :
-alt1                                    : cmd      :                  :
+alt2                                    : cmd      :                  :
-alt2                                    : cmd      :                  :
ammo_max                                 : 5000     : , "sv", "rep"    :
anim_3wayblend                           : 1        : , "sv", "rep"    : Toggle the 3-way animation blending code.
anim_showmainactivity                    : 0        : , "cheat", "cl"  : Show the idle, walk, run, and/or sprint activities.
askconnect_accept                        : cmd      :                  : Accept a redirect request by the server.
async_allow_held_files                   : 1        :                  : Allow AsyncBegin/EndRead()
async_mode                               : 0        :                  : Set the async filesystem mode (0 = async, 1 = synchronous)
async_resume                             : cmd      :                  :
async_serialize                          : 0        :                  : Force async reads to serialize for profiling
async_simulate_delay                     : 0        :                  : Simulate a delay of up to a set msec per file operation
async_suspend                            : cmd      :                  :
+attack                                  : cmd      :                  :
-attack                                  : cmd      :                  :
+attack2                                 : cmd      :                  :
-attack2                                 : cmd      :                  :
+attack3                                 : cmd      :                  :
-attack3                                 : cmd      :                  :
audit_save_in_memory                     : cmd      :                  : Audit the memory usage and files in the save-to-memory system
autoaim_max_deflect                      : 0        : , "sv"           :
autoaim_max_dist                         : 2160     : , "sv"           :
autosave                                 : cmd      :                  : Autosave
autosavedangerous                        : cmd      :                  : AutoSaveDangerous
autosavedangerousissafe                  : cmd      :                  :
+back                                    : cmd      :                  :
-back                                    : cmd      :                  :
banid                                    : cmd      :                  : Add a user ID to the ban list.
banip                                    : cmd      :                  : Add an IP address to the ban list.
bench_end                                : cmd      :                  : Ends gathering of info.
bench_showstatsdialog                    : cmd      :                  : Shows a dialog displaying the most recent benchmark results.
bench_start                              : cmd      :                  : Starts gathering of info. Arguments: filename to write results into
benchframe                               : cmd      :                  : Takes a snapshot of a particular frame in a time demo.
bind                                     : cmd      :                  : Bind a key.
bind_mac                                 : cmd      :                  : Bind this key but only on Mac, not win32
BindToggle                               : cmd      :                  : Performs a bind <key> 'increment var <cvar> 0 1 1'
blink_duration                           : 0        : , "cl"           : How many seconds an eye blink will last.
bloodspray                               : cmd      :                  : blood
bot                                      : cmd      :                  : Add a bot.
bot_changeclass                          : cmd      :                  : Forces the specified bot to change class (e.g. bot_changeclass bot01 soldier).
bot_changeteams                          : cmd      :                  : Make all bots change teams
bot_com_meleerange                       : 80       : , "sv", "cheat"  : Distance to a target that a melee bot wants to be within to attack.
bot_com_viewrange                        : 2000     : , "sv", "cheat"  : Distance within which bots looking for any enemies will find them.
bot_com_wpnrange                         : 400      : , "sv", "cheat"  : Distance to a target that a ranged bot wants to be within to attack.
bot_command                              : cmd      :                  : <bot id> <command string...>.  Sends specified command on behalf of specified bot
bot_crouch                               : 0        : , "sv", "cheat"  : Force all bots to crouch.
bot_debug                                : 0        : , "sv", "cheat"  : Bot debugging.
bot_dontmove                             : 0        : , "sv", "cheat"  :
bot_drop                                 : cmd      :                  : Force the specified bot to drop his active weapon. Usage: bot_drop <bot name>
bot_forceattack                          : 0        : , "sv"           : When on, all bots fire their guns.
bot_forceattack2                         : 0        : , "sv"           : When firing, use attack2.
bot_forceattack_down                     : 1        : , "sv"           : When firing, don't tap fire, hold it down.
bot_forcefireweapon                      : 0        : , "sv"           : Force bots with the specified weapon to fire.
bot_hurt                                 : cmd      :                  : Hurt a bot by team, or all bots ('all').
bot_jump                                 : 0        : , "sv", "cheat"  : Force all bots to repeatedly jump.
bot_kick                                 : cmd      :                  : Remove a bot by name, or an entire team ('red' or 'blue'), or all bots ('all').
bot_kill                                 : cmd      :                  : Kills a bot. Usage: bot_kill <bot name>
bot_mimic                                : 0        : , "sv"           : Bot uses usercmd of player by index.
bot_mimic_inverse                        : 0        : , "sv"           : Bot uses usercmd of player by index.
bot_mimic_yaw_offset                     : 180      : , "sv"           : Offsets the bot yaw.
bot_mirror                               : cmd      :                  : Forces the specified bot to be the same class, and use the same items, as you.
bot_moveto                               : cmd      :                  : Force the specified bot to move to the point under your crosshair. Usage: bot_moveto <bot name>
bot_nav_offsetpathinset                  : 20       : , "sv", "cheat"  : Distance into an area that waypoints should be generated when pathfinding through portals.
bot_nav_recomputetime                    : 0        : , "sv", "cheat"  : Delay before bots recompute their path to targets that have moved when moving to them.
bot_nav_simplifypaths                    : 1        : , "sv", "cheat"  : If set, bots will skip waypoints if they already see the waypoint post.
bot_nav_turnspeed                        : 5        : , "sv", "cheat"  : Rate at which bots turn to face their targets.
bot_nav_usefeelers                       : 1        : , "sv", "cheat"  : If set, bots will extend feelers to their sides to find & avoid upcoming collisions.
bot_nav_useoffsetpaths                   : 1        : , "sv", "cheat"  : If set, bots will generate waypoints on both sides of portals between waypoints when building paths.
bot_nav_wpdeceldistance                  : 128      : , "sv", "cheat"  : Distance to a waypoint to which a bot starts to decelerate to reach it.
bot_nav_wpdistance                       : 16       : , "sv", "cheat"  : Distance to a waypoint within which a bot considers as having reached it.
bot_randomnames                          : 0        : , "sv", "cheat"  :
bot_refill                               : cmd      :                  : Refill all bot ammo counts
bot_saveme                               : 0        : , "sv", "cheat"  :
bot_selectweaponslot                     : -1       : , "sv", "cheat"  : set to weapon slot that bot should switch to.
bot_teleport                             : cmd      :                  : Teleport the specified bot to the specified position & angles.  Format: bot_teleport <bot name> <X> <Y> <Z> <Pitch> <Yaw> <Roll>
bot_whack                                : cmd      :                  : Deliver lethal damage from player to specified bot. Usage: bot_whack <bot name>
box                                      : cmd      :                  : Draw a debug box.
+break                                   : cmd      :                  :
-break                                   : cmd      :                  :
breakable_disable_gib_limit              : 0        : , "sv"           :
breakable_multiplayer                    : 1        : , "sv"           :
bsp_repack                               : cmd      :                  : Repack and output a (re)compressed version of a bsp file
buddha                                   : cmd      :                  : Toggle.  Player takes damage but won't die. (Shows red cross when health is zero)
budget_averages_window                   : 30       : , "a"            : number of frames to look at when figuring out average frametimes
budget_background_alpha                  : 128      : , "a"            : how translucent the budget panel is
budget_bargraph_background_alpha         : 128      : , "a"            : how translucent the budget panel is
budget_bargraph_range_ms                 : 16       : , "a"            : budget bargraph range in milliseconds
budget_history_numsamplesvisible         : 100      : , "a"            : number of samples to draw in the budget history window.  The lower the better as far as rendering overhead of the budget panel
budget_history_range_ms                  : 66       : , "a"            : budget history range in milliseconds
budget_panel_bottom_of_history_fraction  : 0        : , "a"            : number between 0 and 1
budget_panel_height                      : 384      : , "a"            : height in pixels of the budget panel
budget_panel_width                       : 512      : , "a"            : width in pixels of the budget panel
budget_panel_x                           : 0        : , "a"            : number of pixels from the left side of the game screen to draw the budget panel
budget_panel_y                           : 50       : , "a"            : number of pixels from the top side of the game screen to draw the budget panel
budget_peaks_window                      : 30       : , "a"            : number of frames to look at when figuring out peak frametimes
budget_show_averages                     : 0        : , "a"            : enable/disable averages in the budget panel
budget_show_history                      : 1        : , "a"            : turn history graph off and on. . good to turn off on low end
budget_show_peaks                        : 1        : , "a"            : enable/disable peaks in the budget panel
budget_toggle_group                      : cmd      :                  : Turn a budget group on/off
bug                                      : cmd      :                  : Show/hide the bug reporting UI.
bug_swap                                 : cmd      :                  : Automatically swaps the current weapon for the bug bait and back again.
bugreporter_includebsp                   : 1        :                  : Include .bsp for internal bug submissions.
bugreporter_uploadasync                  : 0        : , "a"            : Upload attachments asynchronously
buildcubemaps                            : cmd      :                  : Rebuild cubemaps.
building_cubemaps                        : 0        :                  :
c_maxdistance                            : 200      : , "a", "cheat", "cl" :
c_maxpitch                               : 90       : , "a", "cheat", "cl" :
c_maxyaw                                 : 135      : , "a", "cheat", "cl" :
c_mindistance                            : 30       : , "a", "cheat", "cl" :
c_minpitch                               : 0        : , "a", "cheat", "cl" :
c_minyaw                                 : -135     : , "a", "cheat", "cl" :
c_orthoheight                            : 100      : , "a", "cheat", "cl" :
c_orthowidth                             : 100      : , "a", "cheat", "cl" :
cache_print                              : cmd      :                  : cache_print [section] Print out contents of cache memory.
cache_print_lru                          : cmd      :                  : cache_print_lru [section] Print out contents of cache memory.
cache_print_summary                      : cmd      :                  : cache_print_summary [section] Print out a summary contents of cache memory.
callvote                                 : cmd      :                  : Start a vote on an issue.
cam_collision                            : 1        : , "a", "cheat", "cl" : When in thirdperson and cam_collision is set to 1, an attempt is made to keep the camera from passing though walls.
cam_command                              : 0        : , "cheat", "cl"  :
cam_idealdelta                           : 4        : , "a", "cheat", "cl" : Controls the speed when matching offset to ideal angles in thirdperson view
cam_idealdist                            : 150      : , "a", "cheat", "cl" :
cam_idealdistright                       : 0        : , "a", "cheat", "cl" :
cam_idealdistup                          : 0        : , "a", "cheat", "cl" :
cam_ideallag                             : 4        : , "a", "cheat", "cl" : Amount of lag used when matching offset to ideal angles in thirdperson view
cam_idealpitch                           : 0        : , "a", "cheat", "cl" :
cam_idealyaw                             : 0        : , "a", "cheat", "cl" :
cam_showangles                           : 0        : , "cheat", "cl"  : When in thirdperson, print viewangles/idealangles/cameraoffsets to the console.
cam_snapto                               : 0        : , "a", "cheat", "cl" :
+camdistance                             : cmd      :                  :
-camdistance                             : cmd      :                  :
+camin                                   : cmd      :                  :
-camin                                   : cmd      :                  :
+cammousemove                            : cmd      :                  :
-cammousemove                            : cmd      :                  :
camortho                                 : cmd      :                  : Switch to orthographic camera.
+camout                                  : cmd      :                  :
-camout                                  : cmd      :                  :
+campitchdown                            : cmd      :                  :
-campitchdown                            : cmd      :                  :
+campitchup                              : cmd      :                  :
-campitchup                              : cmd      :                  :
+camyawleft                              : cmd      :                  :
-camyawleft                              : cmd      :                  :
+camyawright                             : cmd      :                  :
-camyawright                             : cmd      :                  :
cancelselect                             : cmd      :                  :
cast_hull                                : cmd      :                  : Tests hull collision detection
cast_ray                                 : cmd      :                  : Tests collision detection
catapult_physics_drag_boost              : 2        : , "sv", "rep"    :
cc_bot_selectweapon                      : cmd      :                  : Force a bot to select a weapon in a slot. Usage: bot_selectweapon <bot name> <weapon slot>
cc_captiontrace                          : 1        : , "cl"           : Show missing closecaptions (0 = no, 1 = devconsole, 2 = show in hud)
cc_emit                                  : cmd      :                  : Emits a closed caption
cc_findsound                             : cmd      :                  : Searches for soundname which emits specified text.
cc_flush                                 : cmd      :                  : Flushes async'd captions.
cc_lang                                  : 0        : , "a", "cl"      : Current close caption language (emtpy = use game UI language)
cc_linger_time                           : 1        : , "a", "cl"      : Close caption linger time.
cc_minvisibleitems                       : 1        : , "cl"           : Minimum number of caption items to show.
cc_predisplay_time                       : 0        : , "a", "cl"      : Close caption delay before showing caption.
cc_random                                : cmd      :                  : Emits a random caption
cc_sentencecaptionnorepeat               : 4        : , "cl"           : How often a sentence can repeat.
cc_showblocks                            : cmd      :                  : Toggles showing which blocks are pending/loaded async.
cc_smallfontlength                       : 300      : , "cl"           : If text stream is this long, force usage of small font size.
cc_spawn_merasmus_at_level               : cmd      :                  : Force Merasmus to spawn at a specific difficulty level
cc_subtitles                             : 0        : , "a", "cl"      : If set, don't show sound effect captions, just voice overs (i.e., won't help hearing impaired players).
ccs_create_convars_from_hwconfig         : cmd      :                  : Create convars from the current hardware config, useful for diffing purposes
centerview                               : cmd      :                  :
ch_createairboat                         : cmd      :                  : Spawn airboat in front of the player.
ch_createjeep                            : cmd      :                  : Spawn jeep in front of the player.
changeclass                              : cmd      :                  : Choose a new class
changelevel                              : cmd      :                  : Change server to the specified map
changelevel2                             : cmd      :                  : Transition to the specified map in single player
changelevel_next                         : cmd      :                  : Immediately changes to the next map in the map rotation for the server.
changeteam                               : cmd      :                  : Choose a new team
cl_allowdownload                         : 1        : , "a"            : Client downloads customization files
cl_allowupload                           : 1        : , "a"            : Client uploads customization files
cl_always_flush_models                   : 0        :                  : If set, always flush models between map loads.  Useful on systems under memory pressure.
cl_anglespeedkey                         : 0        : , "cl"           :
cl_animationinfo                         : cmd      :                  : Hud element to examine.
cl_ask_bigpicture_controller_opt_out     : 0        : , "a", "cl"      : Whether the user has opted out of being prompted for controller support in Big Picture.
cl_ask_blacklist_for_any_server          : 0        : , "cl"           : If nonzero, auto-ask for local/LAN servers (for debugging)
cl_ask_blacklist_max_session_duration    : 60       : , "cl"           : If player stays on a server for less than this time (in seconds) prompt to add server to blacklist
cl_ask_blacklist_opt_out                 : 0        : , "a", "cl"      : If nonzero, don't auto-ask to blacklist servers
cl_ask_favorite_for_any_server           : 0        : , "cl"           : If nonzero, auto-ask for local/LAN servers (for debugging)
cl_ask_favorite_min_session_duration     : 600      : , "cl"           : If player stays on a server for longer than this time (in seconds) prompt to add server to favorites
cl_ask_favorite_opt_out                  : 0        : , "a", "cl"      : If nonzero, don't auto-ask to favorite servers
cl_autoreload                            : 1        : , "a", "user", "cl" : When set to 1, clip-using weapons will automatically be reloaded whenever they're not being fired.
cl_autorezoom                            : 1        : , "a", "user", "cl" : When set to 1, sniper rifle will re-zoom after firing a zoomed shot.
cl_backspeed                             : 450      : , "sv", "cheat", "rep" :
cl_blobbyshadows                         : 0        : , "cl"           :
cl_bobcycle                              : 0        : , "cheat", "cl"  :
cl_bobup                                 : 0        : , "cheat", "cl"  :
cl_burninggibs                           : 0        : , "cl"           : A burning player that gibs has burning gibs.
cl_chatfilters                           : 63       : , "a", "cl"      : Stores the chat filter settings
cl_class                                 : 0        : , "a", "user", "cl" : Default class when joining a game
cl_clearhinthistory                      : cmd      :                  : Clear memory of client side hints displayed to the player.
cl_clock_correction                      : 1        : , "cheat"        : Enable/disable clock correction on the client.
cl_clock_correction_adjustment_max_amount : 200      : , "cheat"        : Sets the maximum number of milliseconds per second it is allowed to correct the client clock. It will only correct this amount if the difference between the client and server clock is equal to or larger than cl_clock_correction_adjustment_max_offset.
cl_clock_correction_adjustment_max_offset : 90       : , "cheat"        : As the clock offset goes from cl_clock_correction_adjustment_min_offset to this value (in milliseconds), it moves towards applying cl_clock_correction_adjustment_max_amount of adjustment. That way, the response is small when the offset is small.
cl_clock_correction_adjustment_min_offset : 10       : , "cheat"        : If the clock offset is less than this amount (in milliseconds), then no clock correction is applied.
cl_clock_correction_force_server_tick    : 999      : , "cheat"        : Force clock correction to match the server tick + this offset (-999 disables it).
cl_clock_showdebuginfo                   : 0        : , "cheat"        : Show debugging info about the clock drift.
cl_clockdrift_max_ms                     : 150      : , "cheat"        : Maximum number of milliseconds the clock is allowed to drift before the client snaps its clock to the server's.
cl_clockdrift_max_ms_threadmode          : 0        : , "cheat"        : Maximum number of milliseconds the clock is allowed to drift before the client snaps its clock to the server's.
cl_cmdrate                               : 30       : , "a", "user"    : Max number of command packets sent to server per second
cl_coach_find_coach                      : cmd      :                  : Request a coach for the current game
cl_coach_toggle                          : cmd      :                  : Toggle coach status
cl_crosshair_blue                        : 200      : , "a", "cl"      :
cl_crosshair_file                        : 0        : , "a", "cl"      :
cl_crosshair_green                       : 200      : , "a", "cl"      :
cl_crosshair_red                         : 200      : , "a", "cl"      :
cl_crosshair_scale                       : 32       : , "a", "cl"      :
cl_crosshairalpha                        : 200      : , "a", "cl"      :
cl_crosshaircolor                        : 0        : , "a", "cl"      :
cl_customsounds                          : 0        : , "cl"           : Enable customized player sound playback
cl_debug_player_perf                     : 0        :                  :
cl_debugrumble                           : 0        : , "a", "cl"      : Turn on rumble debugging spew
cl_decline_first_notification            : cmd      :                  : Tries to decline/remove the first notification
cl_demoviewoverride                      : 0        : , "cl"           : Override view during demo playback
cl_detail_multiplier                     : 1        : , "cheat", "cl"  : extra details to create
cl_detaildist                            : 1200     :                  : Distance at which detail props are no longer visible
cl_detailfade                            : 400      :                  : Distance across which detail props fade in
cl_disablehtmlmotd                       : 0        : , "a", "cl"      : Disable HTML motds.
cl_disconnect_prompt                     : cmd      :                  : Prompt about disconnect
cl_downloadfilter                        : 0        : , "a"            : Determines which files can be downloaded from the server (all, none, nosounds, mapsonly)
cl_drawhud                               : 1        : , "cheat", "cl"  : Enable the rendering of the hud
cl_drawleaf                              : -1       : , "cheat", "cl"  :
cl_drawmaterial                          : 0        : , "cheat", "cl"  : Draw a particular material over the frame
cl_drawmonitors                          : 1        : , "cl"           :
cl_drawshadowtexture                     : 0        : , "cheat", "cl"  :
cl_dump_particle_stats                   : cmd      :                  : dump particle profiling info to particle_profile.csv
cl_dynamiccrosshair                      : 1        : , "a", "cl"      :
cl_ejectbrass                            : 1        :                  :
cl_enable_text_chat                      : 1        : , "a", "cl"      : Enable text chat in this game
cl_ent_absbox                            : cmd      :                  : Displays the client's absbox for the entity under the crosshair.
cl_ent_bbox                              : cmd      :                  : Displays the client's bounding box for the entity under the crosshair.
cl_ent_rbox                              : cmd      :                  : Displays the client's render box for the entity under the crosshair.
cl_entityreport                          : 0        : , "cheat"        : For debugging, draw entity states to console
cl_entityreport_sorted                   : 0        : , "cheat"        : For debugging, draw entity states to console in sorted order. [0 = disabled, 1 = average, 2 = current, 3 = peak
cl_extrapolate                           : 1        : , "cheat", "cl"  : Enable/disable extrapolation if interpolation history runs out.
cl_extrapolate_amount                    : 0        : , "cheat", "cl"  : Set how many seconds the client will extrapolate entities for.
cl_fastdetailsprites                     : 1        : , "cheat", "cl"  : whether to use new detail sprite system
cl_fasttempentcollision                  : 5        : , "cl"           :
cl_find_ent                              : cmd      :                  : Find and list all client entities with classnames that contain the specified substring. Format: cl_find_ent <substring>
cl_find_ent_index                        : cmd      :                  : Display data for clientside entity matching specified index. Format: cl_find_ent_index <index>
cl_first_person_uses_world_model         : 0        : , "cl"           : Causes the third person model to be drawn instead of the view model
cl_flag_return_height                    : 82       : , "sv", "cheat"  :
cl_flag_return_size                      : 20       : , "cheat", "cl"  :
cl_flipviewmodels                        : 0        : , "a", "user", "cl" : Flip view models.
cl_flushentitypacket                     : 0        : , "cheat"        : For debugging. Force the engine to flush an entity packet.
cl_forwardspeed                          : 450      : , "sv", "cheat", "rep" :
cl_fullupdate                            : cmd      :                  : Forces the server to send a full update packet
cl_gameserver_create_identity            : cmd      :                  : Creates a new game server account associated with the currently logged in steam account
cl_gameserver_list                       : cmd      :                  : List all the game server accounts owned by the currently logged in steam account
cl_gameserver_reset_identity             : cmd      :                  : Resets the identity token for a given game server
cl_hud_killstreak_display_alpha          : 120      : , "a", "cl"      : Adjusts font alpha value of killstreak notices.  Range is from 0 to 255 (default is 200).
cl_hud_killstreak_display_fontsize       : 0        : , "a", "cl"      : Adjusts font size of killstreak notices.  Range is from 0 to 2 (default is 1).
cl_hud_killstreak_display_time           : 3        : , "a", "cl"      : How long a killstreak notice stays on the screen (in seconds).  Range is from 0 to 100.
cl_hud_minmode                           : 0        : , "a", "cl"      : Set to 1 to turn on the advanced minimalist HUD mode.
cl_hud_playerclass_use_playermodel       : 1        : , "a", "cl"      : Use player model in player class HUD.
cl_hudhint_sound                         : 1        : , "a", "cl"      : Disable hudhint sounds.
cl_idealpitchscale                       : 0        : , "a", "cl"      :
cl_ignorepackets                         : 0        : , "cheat"        : Force client to ignore packets (for debugging).
cl_interp                                : 0        : , "a", "user", "cl" : Sets the interpolation amount (bounded on low side by server interp ratio settings).
cl_interp_all                            : 0        : , "cl"           : Disable interpolation list optimizations.
cl_interp_npcs                           : 0        : , "user", "cl"   : Interpolate NPC positions starting this many seconds in past (or cl_interp, if greater)
cl_interp_ratio                          : 2        : , "a", "user", "cl" : Sets the interpolation amount (final amount is cl_interp_ratio / cl_updaterate).
cl_jiggle_bone_framerate_cutoff          : 20       : , "cl"           : Skip jiggle bone simulation if framerate drops below this value (frames/second)
cl_lagcompensation                       : 1        : , "user", "cl"   : Perform server side lag compensation of weapon firing events.
cl_language                              : 0        : , "user"         : Language (from HKCU\Software\Valve\Steam\Language)
cl_leveloverview                         : 0        : , "cheat", "cl"  :
cl_leveloverviewmarker                   : 0        : , "cheat", "cl"  :
cl_localnetworkbackdoor                  : 1        :                  : Enable network optimizations for single player games.
cl_logofile                              : 0        : , "a"            : Spraypoint logo decal.
cl_mainmenu_safemode                     : 0        : , "cl"           : Enable safe mode
cl_maxrenderable_dist                    : 3000     : , "cheat", "cl"  : Max distance from the camera at which things will be rendered
cl_meathook_neck_pivot_ingame_fwd        : 3        : , "cl"           :
cl_meathook_neck_pivot_ingame_up         : 7        : , "cl"           :
cl_mouseenable                           : 1        : , "cl"           :
cl_mouselook                             : 1        : , "a", "cl"      : Set to 1 to use mouse for look, 0 for keyboard look. Cannot be set while connected to a server.
cl_mute_all_comms                        : 1        : , "a", "cl"      : If 1, then all communications from a player will be blocked when that player is muted, including chat messages.
cl_muzzleflash_dlight_1st                : 1        : , "cl"           :
cl_mvm_wave_status_visible_during_wave   : 0        : , "a", "cl"      : Display full wave contents while a wave is active in MvM.
cl_new_impact_effects                    : 0        : , "cl"           :
cl_notifications_max_num_visible         : 3        : , "a", "cl"      : How many notifications are visible in-game.
cl_notifications_move_time               : 0        : , "a", "cl"      : How long it takes for a notification to move.
cl_notifications_show_ingame             : 1        : , "a", "cl"      : Whether notifications should show up in-game.
cl_obj_fake_alert                        : 0        : , "cl"           :
cl_obj_test_building_damage              : -1       : , "cheat", "cl"  : debug building damage
cl_observercrosshair                     : 1        : , "a", "cl"      :
cl_overdraw_test                         : 0        : , "cheat", "numeric", "cl" :
cl_panelanimation                        : cmd      :                  : Shows panel animation variables: <panelname | blank for all panels>.
cl_particle_batch_mode                   : 1        : , "cl"           :
cl_particle_retire_cost                  : 0        : , "cheat", "cl"  :
cl_particle_show_bbox                    : 0        : , "cheat", "cl"  :
cl_particle_show_bbox_cost               : 0        : , "cheat", "cl"  : Show # of particles: green->blue->red. Use a negative number to show ALL particles even cheap ones
cl_particle_stats_start                  : cmd      :                  : Start or restart particle stats - also dumps to particle_stats.csv
cl_particle_stats_stop                   : cmd      :                  : Stop particle stats, or snapshot this frame - also dumps to particle_stats.csv
cl_particle_stats_trigger_count          : 0        : , "cl"           : Dump stats if the particle count exceeds this number.
cl_particleeffect_aabb_buffer            : 2        : , "cheat", "cl"  : Add this amount to a particle effect's bbox in the leaf system so if it's growing slowly, it won't have to be reinserted as often.
cl_pclass                                : 0        : , "cheat", "cl"  : Dump entity by prediction classname.
cl_pdump                                 : -1       : , "cheat", "cl"  : Dump info about this entity to screen.
cl_phys_props_enable                     : 1        : , "cl"           : Disable clientside physics props (must be set before loading a level).
cl_phys_props_max                        : 300      : , "cl"           : Maximum clientside physic props
cl_phys_props_respawndist                : 1500     : , "cl"           : Minimum distance from the player that a clientside prop must be before it's allowed to respawn.
cl_phys_props_respawnrate                : 60       : , "cl"           : Time, in seconds, between clientside prop respawns.
cl_phys_timescale                        : 1        : , "cheat", "cl"  : Sets the scale of time for client-side physics (ragdolls)
cl_pitchdown                             : 89       : , "cheat", "cl"  :
cl_pitchspeed                            : 225      : , "cl"           : Client pitch speed.
cl_pitchup                               : 89       : , "cheat", "cl"  :
cl_playback_screenshots                  : 0        :                  : Allows the client to playback screenshot and jpeg commands in demos.
cl_precacheinfo                          : cmd      :                  : Show precache info (client).
cl_pred_optimize                         : 2        : , "cl"           : Optimize for not copying data if didn't receive a network update (1), and also for not repredicting if there were no errors (2).
cl_pred_track                            : cmd      :                  : <entindex> <fieldname>:  Track changes to entity index entindex, for field fieldname.
cl_predict                               : 1        : , "user", "cl"   : Perform client side prediction.
cl_predictionlist                        : 0        : , "cheat", "cl"  : Show which entities are predicting
cl_predictweapons                        : 1        : , "user", "cl"   : Perform client side prediction of weapon effects.
cl_promotional_codes_button_show         : 1        : , "a", "cl"      : Toggles the 'View Promotional Codes' button in the main menu for players that have used the 'RIFT Well Spun Hat Claim Code'.
cl_ragdoll_collide                       : 0        : , "cl"           :
cl_ragdoll_fade_time                     : 15       : , "cl"           :
cl_ragdoll_forcefade                     : 0        : , "cl"           :
cl_ragdoll_physics_enable                : 1        : , "cl"           : Enable/disable ragdoll physics.
cl_ragdoll_pronecheck_distance           : 64       : , "sv", "cl"     :
cl_reload_localization_files             : cmd      :                  : Reloads all localization files
cl_removedecals                          : cmd      :                  : Remove the decals from the entity under the crosshair.
cl_resend                                : 6        :                  : Delay in seconds before the client will resend the 'connect' attempt
cl_rumblescale                           : 1        : , "a", "cl"      : Scale sensitivity of rumble effects (0 to 1.0)
cl_scalecrosshair                        : 1        : , "a", "cl"      :
cl_screenshotname                        : 0        :                  : Custom Screenshot name
cl_SetupAllBones                         : 0        : , "cl"           :
cl_shadowtextureoverlaysize              : 256      : , "cheat", "cl"  :
cl_show_connectionless_packet_warnings   : 0        :                  : Show console messages about ignored connectionless packets on the client.
cl_show_market_data_on_items             : 1        : , "a", "cl"      : 0 = Never. 1 = Only when showing borders for Market-listable items. 2 = Always.
cl_show_num_particle_systems             : 0        : , "cl"           : Display the number of active particle systems.
cl_show_splashes                         : 1        : , "cl"           :
cl_showbackpackrarities                  : 0        : , "a", "cl"      : 0 = Show no backpack icon border colors. 1 = Show item rarities within the backpack. 2 = Show item rarities only for Market-listable items.
cl_showbattery                           : 0        : , "cl"           : Draw current battery level at top of screen when on battery power
cl_ShowBoneSetupEnts                     : 0        : , "cl"           : Show which entities are having their bones setup each frame.
cl_showdemooverlay                       : 0        :                  : How often to flash demo recording/playback overlay (0 - disable overlay, -1 - show always)
cl_showents                              : cmd      :                  : Dump entity list to console.
cl_showerror                             : 0        : , "cl"           : Show prediction errors, 2 for above plus detailed field deltas.
cl_showevents                            : 0        : , "cheat"        : Print event firing info in the console
cl_showfps                               : 0        : , "cl"           : Draw fps meter at top of screen (1 = fps, 2 = smooth fps)
cl_showhelp                              : 1        : , "a", "user", "cl" : Set to 0 to not show on-screen help
cl_showpausedimage                       : 1        : , "cl"           : Show the 'Paused' image when game is paused.
cl_showpluginmessages                    : 0        : , "a"            : Allow plugins to display messages to you
cl_showpos                               : 0        : , "cl"           : Draw current position at top of screen
cl_ShowSunVectors                        : 0        : , "cl"           :
cl_showtextmsg                           : 1        : , "cl"           : Enable/disable text messages printing on the screen.
cl_sidespeed                             : 450      : , "sv", "cheat", "rep" :
cl_smooth                                : 1        : , "cl"           : Smooth view/eye origin after prediction errors
cl_smoothtime                            : 0        : , "cl"           : Smooth client's view after prediction error over this many seconds
cl_software_cursor                       : 0        : , "a", "cl"      : Switches the game to use a larger software cursor instead of the normal OS cursor
cl_soundemitter_flush                    : cmd      :                  : Flushes the sounds.txt system (client only)
cl_soundfile                             : 0        : , "a"            : Jingle sound file.
cl_soundscape_flush                      : cmd      :                  : Flushes the client side soundscapes
cl_soundscape_printdebuginfo             : cmd      :                  : print soundscapes
cl_spec_carrieditems                     : 1        : , "a", "cl"      : Show non-standard items being carried by player you're spectating.
cl_spec_mode                             : 1        : , "a", "user", "server_can_execute", "cl" : spectator mode
cl_sporeclipdistance                     : 512      : , "cheat", "cl"  :
cl_spraydisable                          : 1        : , "a", "cl"      : Disable player sprays.
cl_steamscreenshots                      : 1        : , "a", "cl"      : Enable/disable saving screenshots to Steam
cl_sun_decay_rate                        : 0        : , "cheat", "cl"  :
cl_team                                  : 0        : , "a", "user", "cl" : Default team when joining a game
cl_threaded_client_leaf_system           : 0        : , "cl"           :
cl_timeout                               : 30       : , "a"            : After this many seconds without receiving a packet from the server, the client will disconnect itself
cl_trade                                 : cmd      :                  : Trade with a person by player name
cl_trade_steamid                         : cmd      :                  : Trade with a person by steam id
cl_trading_show_requests_from            : 3        : , "a", "cl"      : View trade requests from a certain group only.
cl_training_class_unlock_all             : cmd      :                  : Unlock all training
cl_training_completed_with_classes       : 0        : , "a", "cl"      : Bitfield representing what classes have been used to complete training.
cl_trigger_first_notification            : cmd      :                  : Tries to accept/trigger the first notification
cl_updaterate                            : 20       : , "a", "user"    : Number of packets per second of updates you are requesting from the server
cl_upspeed                               : 320      : , "sv", "cheat", "rep" :
cl_use_tournament_specgui                : 0        : , "a", "cl"      : When in tournament mode, use the advanced tournament spectator UI.
cl_view                                  : cmd      :                  : Set the view entity index.
cl_voice_filter                          : 0        :                  : Filter voice by name substring
cl_vote_non_input_alpha                  : 150      : , "cl"           :
cl_vote_ui_active_after_voting           : 1        : , "cl"           :
cl_vote_ui_show_notification             : 0        : , "cl"           :
cl_winddir                               : 0        : , "cheat", "cl"  : Weather effects wind direction angle
cl_windspeed                             : 0        : , "cheat", "cl"  : Weather effects wind speed scalar
cl_yawspeed                              : 210      : , "cl"           : Client yaw speed.
clear                                    : cmd      :                  : Clear all console output.
clear_debug_overlays                     : cmd      :                  : clears debug overlays
clientport                               : 27005    :                  : Host game client port
closecaption                             : 0        : , "a", "user"    : Enable close captioning.
cmd                                      : cmd      :                  : Forward command to server.
collision_shake_amp                      : 0        : , "sv"           :
collision_shake_freq                     : 0        : , "sv"           :
collision_shake_time                     : 0        : , "sv"           :
collision_test                           : cmd      :                  : Tests collision system
colorcorrectionui                        : cmd      :                  : Show/hide the color correction tools UI.
+commandermousemove                      : cmd      :                  :
-commandermousemove                      : cmd      :                  :
commentary                               : 0        : , "sv"           : Desired commentary mode state.
commentary_available                     : 0        : , "sv"           : Automatically set by the game when a commentary file is available for the current map.
commentary_cvarsnotchanging              : cmd      :                  :
commentary_finishnode                    : cmd      :                  :
commentary_firstrun                      : 0        : , "a", "cl"      :
commentary_showmodelviewer               : cmd      :                  : Display the commentary model viewer. Usage: commentary_showmodelviewer <model name> <optional attached model name>
commentary_testfirstrun                  : cmd      :                  :
con_drawnotify                           : 1        :                  : Disables drawing of notification area (for taking screenshots).
con_enable                               : 0        : , "a"            : Allows the console to be activated.
con_filter_enable                        : 0        :                  : Filters console output based on the setting of con_filter_text. 1 filters completely, 2 displays filtered text brighter than other text.
con_filter_text                          : 0        :                  : Text with which to filter console spew. Set con_filter_enable 1 or 2 to activate.
con_filter_text_out                      : 0        :                  : Text with which to filter OUT of console spew. Set con_filter_enable 1 or 2 to activate.
con_logfile                              : 0        :                  : Console output gets written to this file
con_notifytime                           : 8        :                  : How long to display recent console text to the upper part of the game window
con_nprint_bgalpha                       : 50       :                  : Con_NPrint background alpha.
con_nprint_bgborder                      : 5        :                  : Con_NPrint border size.
con_timestamp                            : 0        :                  : Prefix console.log entries with timestamps
con_trace                                : 0        :                  : Print console text to low level printout.
condump                                  : cmd      :                  : dump the text currently in the console to condumpXX.log
connect                                  : cmd      :                  : Connect to specified server.
+context_action                          : cmd      :                  : Use the item in the action slot.
-context_action                          : cmd      :                  :
contimes                                 : 8        :                  : Number of console lines to overlay for debugging.
coop                                     : 0        : , "nf"           : Cooperative play.
cpu_frequency_monitoring                 : 0        :                  : Set CPU frequency monitoring interval in seconds. Zero means disabled.
create_flashlight                        : cmd      :                  :
CreateHairball                           : cmd      :                  :
creditsdone                              : cmd      :                  :
crosshair                                : 1        : , "a", "cl"      :
currency_give                            : cmd      :                  : Have some in-game money.
cvarlist                                 : cmd      :                  : Show the list of convars/concommands.
datacachesize                            : 256      :                  : Size in MB.
dbg_spew_connected_players_level         : 0        : , "sv"           : If enabled, server will spew connected player GC updates
dbghist_addline                          : cmd      :                  : Add a line to the debug history. Format: <category id> <line>
dbghist_dump                             : cmd      :                  : Dump the debug history to the console. Format: <category id>     Categories:      0: Entity I/O      1: AI Decisions      2: Scene Print      3: Alyx Blind      4: Log of damage done to player
deathmatch                               : 1        : , "nf"           : Running a deathmatch server.
debug_materialmodifycontrol              : 0        : , "sv"           :
debug_materialmodifycontrol_client       : 0        : , "cl"           :
debug_physimpact                         : 0        : , "sv"           :
debug_touchlinks                         : 0        : , "sv"           : Spew touch link activity
debugsystemui                            : cmd      :                  : Show/hide the debug system UI.
decalfrequency                           : 10       : , "sv", "nf"     :
default_fov                              : 75       : , "cheat", "cl"  :
demo_avellimit                           : 2000     :                  : Angular velocity limit before eyes considered snapped for demo playback.
demo_debug                               : 0        :                  : Demo debug info.
demo_fastforwardfinalspeed               : 20       :                  : Go this fast when starting to hold FF button.
demo_fastforwardramptime                 : 5        :                  : How many seconds it takes to get to full FF speed.
demo_fastforwardstartspeed               : 2        :                  : Go this fast when starting to hold FF button.
demo_fov_override                        : 0        : , "norecord", "cl" : If nonzero, this value will be used to override FOV during demo playback.
demo_gototick                            : cmd      :                  : Skips to a tick in demo.
demo_interplimit                         : 4000     :                  : How much origin velocity before it's considered to have 'teleported' causing interpolation to reset.
demo_interpolateview                     : 1        :                  : Do view interpolation during dem playback.
demo_legacy_rollback                     : 1        :                  : Use legacy view interpolation rollback amount in demo playback.
demo_pause                               : cmd      :                  : Pauses demo playback.
demo_pauseatservertick                   : 0        :                  : Pauses demo playback at server tick
demo_quitafterplayback                   : 0        :                  : Quits game after demo playback.
demo_recordcommands                      : 1        : , "cheat"        : Record commands typed at console into .dem files.
demo_resume                              : cmd      :                  : Resumes demo playback.
demo_setendtick                          : cmd      :                  : Sets end demo playback tick. Set to 0 to disable.
demo_timescale                           : cmd      :                  : Sets demo replay speed.
demo_togglepause                         : cmd      :                  : Toggles demo playback.
demolist                                 : cmd      :                  : Print demo sequence list.
demos                                    : cmd      :                  : Demo demo file sequence.
demoui                                   : cmd      :                  : Show/hide the demo player UI.
demoui2                                  : cmd      :                  : Show/hide the advanced demo player UI (demoui2).
+demoui2                                 : cmd      :                  : Bring the advanced demo player UI (demoui2) to foreground.
-demoui2                                 : cmd      :                  : Send the advanced demo player UI (demoui2) to background.
developer                                : 0        :                  : Set developer message level
devshots_nextmap                         : cmd      :                  : Used by the devshots system to go to the next map in the devshots maplist.
devshots_screenshot                      : cmd      :                  : Used by the -makedevshots system to take a screenshot. For taking your own screenshots, use the 'screenshot' command instead.
differences                              : cmd      :                  : Show all convars which are not at their default values.
disconnect                               : cmd      :                  : Disconnect game from server.
disguise                                 : cmd      :                  : Disguises the spy.
disp_dynamic                             : 0        :                  :
dispcoll_drawplane                       : 0        : , "sv"           :
displaysoundlist                         : 0        : , "sv"           :
dlight_debug                             : cmd      :                  : Creates a dlight in front of the player
download_debug                           : 0        : , "norecord"     :
drawcross                                : cmd      :                  : Draws a cross at the given location  Arguments: x y z
drawline                                 : cmd      :                  : Draws line between two 3D Points.  Green if no collision  Red is collides with something  Arguments: x1 y1 z1 x2 y2 z2
dropitem                                 : cmd      :                  : Drop the flag.
ds_autodelete                            : 0        : , "a", "norecord", "cl" : Demo support - automatically delete .dem files with no associated bookmark or kill streak events.
ds_dir                                   : 0        : , "a", "norecord", "cl" : Demo support - will put all files into this folder under the gamedir. 24 characters max.
ds_enable                                : 0        : , "a", "norecord", "cl" : Demo support - enable automatic .dem file recording and features. 0 - Manual, 1 - Auto-record competitive matches, 2 - Auto-record all matches, 3 - Auto-record tournament (mp_tournament) matches
ds_kill_delay                            : 15       : , "a", "norecord", "cl" : Demo support - maximum time between kills for tracking kill streaks.
ds_log                                   : 1        : , "a", "norecord", "cl" : Demo support - log kill streak and bookmark events to an associated .txt file.
ds_mark                                  : cmd      :                  : Demo support - bookmark (with optional single-word description) the current tick count for the demo being recorded.
ds_min_streak                            : 4        : , "a", "norecord", "cl" : Demo support - minimum kill streak count before being recorded.
ds_notify                                : 0        : , "a", "norecord", "cl" : Demo support - text output when recording start/stop/bookmark events : 0 - console, 1 - console and chat, 2 - console and HUD.
ds_prefix                                : 0        : , "a", "norecord", "cl" : Demo support - will prefix files with this string. 24 characters max.
ds_record                                : cmd      :                  : Demo support - start recording a demo.
ds_screens                               : 1        : , "a", "norecord", "cl" : Demo support - take screenshot of the scoreboard for non-competitive matches or the match summary stats for competitive matches. For competitive matches, it will not capture the screenshot if you disconnect from the server before the medal awards have completed.
ds_sound                                 : 1        : , "a", "norecord", "cl" : Demo support - play start/stop sound for demo recording.
ds_status                                : cmd      :                  : Demo support - show the current recording status.
ds_stop                                  : cmd      :                  : Demo support - stop recording a demo.
dsp_automatic                            : 0        : , "demo"         :
dsp_db_min                               : 80       : , "demo"         :
dsp_db_mixdrop                           : 0        : , "demo"         :
dsp_dist_max                             : 1440     : , "cheat", "demo" :
dsp_dist_min                             : 0        : , "cheat", "demo" :
dsp_enhance_stereo                       : 0        : , "a"            :
dsp_facingaway                           : 0        : , "demo"         :
dsp_mix_max                              : 0        : , "demo"         :
dsp_mix_min                              : 0        : , "demo"         :
dsp_off                                  : 0        : , "cheat"        :
dsp_player                               : 0        : , "demo", "server_can_execute" :
dsp_reload                               : cmd      :                  :
dsp_room                                 : 0        : , "demo"         :
dsp_slow_cpu                             : 0        : , "a", "demo"    :
dsp_spatial                              : 0        : , "demo"         :
dsp_speaker                              : 0        : , "demo"         :
dsp_vol_2ch                              : 1        : , "demo"         :
dsp_vol_4ch                              : 0        : , "demo"         :
dsp_vol_5ch                              : 0        : , "demo"         :
dsp_volume                               : 1        : , "a", "demo"    :
dsp_water                                : 0        : , "demo"         :
dt_ShowPartialChangeEnts                 : 0        :                  : (SP only) - show entities that were copied using small optimized lists (FL_EDICT_PARTIAL_CHANGE).
dt_UsePartialChangeEnts                  : 1        :                  : (SP only) - enable FL_EDICT_PARTIAL_CHANGE optimization.
dti_flush                                : cmd      :                  : Write out the datatable instrumentation files (you must run with -dti for this to work).
dtwarning                                : 0        :                  : Print data table warnings?
dtwatchclass                             : 0        :                  : Watch all fields encoded with this table.
dtwatchent                               : -1       :                  : Watch this entities data table encoding.
dtwatchvar                               : 0        :                  : Watch the named variable.
+duck                                    : cmd      :                  :
-duck                                    : cmd      :                  :
dump_all_caches                          : cmd      :                  : Dump the contents all subsribed SOCaches
dump_entity_sizes                        : cmd      :                  : Print sizeof(entclass)
dump_globals                             : cmd      :                  : Dump all global entities/states
dump_panels                              : cmd      :                  : Dump Panel Tree
dump_particlemanifest                    : cmd      :                  : Dump the list of particles loaded.
dump_x360_cfg                            : cmd      :                  : Dump X360 config files to disk
dump_x360_saves                          : cmd      :                  : Dump X360 save games to disk
dumpentityfactories                      : cmd      :                  : Lists all entity factory names.
dumpeventqueue                           : cmd      :                  : Dump the contents of the Entity I/O event queue to the console.
dumpgamestringtable                      : cmd      :                  : Dump the contents of the game string table to the console.
dumplongticks                            : cmd      :                  : Enables generating minidumps on long ticks.
dumpsavedir                              : cmd      :                  : List the contents of the save directory in memory
dumpstringtables                         : cmd      :                  : Print string tables to console.
echo                                     : cmd      :                  : Echo text to console.
econ_show_items_with_tag                 : cmd      :                  : Lists the item definitions that have a specified tag.
enable_debug_overlays                    : 1        : , "sv", "cheat"  : Enable rendering of debug overlays
endmovie                                 : cmd      :                  : Stop recording movie frames.
engine_no_focus_sleep                    : 50       : , "a"            :
english                                  : 1        : , "user", "cl"   : If set to 1, running the english language set of assets.
ensure_so_trackers_for_steamid           : cmd      :                  : Ensures a steamID has all the trackers it should have, with extra spew along the way
ent_absbox                               : cmd      :                  : Displays the total bounding box for the given entity(s) in green.  Some entites will also display entity specific overlays.  Arguments:    {entity_name} / {class_name} / no argument picks what player is looking at
ent_attachments                          : cmd      :                  : Displays the attachment points on an entity.  Arguments:    {entity_name} / {class_name} / no argument picks what player is looking at
ent_autoaim                              : cmd      :                  : Displays the entity's autoaim radius.  Arguments:    {entity_name} / {class_name} / no argument picks what player is looking at
ent_bbox                                 : cmd      :                  : Displays the movement bounding box for the given entity(ies) in orange.  Some entites will also display entity specific overlays.  Arguments:    {entity_name} / {class_name} / no argument picks what player is looking at
ent_cancelpendingentfires                : cmd      :                  : Cancels all ent_fire created outputs that are currently waiting for their delay to expire.
ent_create                               : cmd      :                  : Creates an entity of the given type where the player is looking.  Additional parameters can be passed in in the form: ent_create <entity name> <param 1 name> <param 1> <param 2 name> <param 2>...<param N name> <param N>
ent_debugkeys                            : 0        : , "sv"           :
ent_dump                                 : cmd      :                  : Usage:    ent_dump <entity name>
ent_fire                                 : cmd      :                  : Usage:    ent_fire <target> [action] [value] [delay]
ent_info                                 : cmd      :                  : Usage:    ent_info <class name>
ent_keyvalue                             : cmd      :                  : Applies the comma delimited key=value pairs to the entity with the given Hammer ID.  Format: ent_keyvalue <entity id> <key1> <value1> <key2> <value2> ... <keyN> <valueN>
ent_messages                             : cmd      :                  : Toggles input/output message display for the selected entity(ies).  The name of the entity will be displayed as well as any messages that it sends or receives.  Arguments:    {entity_name} / {class_name} / no argument picks what player is looking at
ent_messages_draw                        : 0        : , "sv", "cheat"  : Visualizes all entity input/output activity.
ent_name                                 : cmd      :                  :
ent_orient                               : cmd      :                  : Orient the specified entity to match the player's angles. By default, only orients target entity's YAW. Use the 'allangles' option to orient on all axis.  Format: ent_orient <entity name> <optional: allangles>
ent_pause                                : cmd      :                  : Toggles pausing of input/output message processing for entities.  When turned on processing of all message will stop.  Any messages displayed with 'ent_messages' will stop fading and be displayed indefinitely. To step through the messages one by one use 'ent_step'.
ent_pivot                                : cmd      :                  : Displays the pivot for the given entity(ies).  (y=up=green, z=forward=blue, x=left=red).   Arguments:    {entity_name} / {class_name} / no argument picks what player is looking at
ent_rbox                                 : cmd      :                  : Displays the total bounding box for the given entity(s) in green.  Some entites will also display entity specific overlays.  Arguments:    {entity_name} / {class_name} / no argument picks what player is looking at
ent_remove                               : cmd      :                  : Removes the given entity(s)  Arguments:    {entity_name} / {class_name} / no argument picks what player is looking at
ent_remove_all                           : cmd      :                  : Removes all entities of the specified type  Arguments:    {entity_name} / {class_name}
ent_rotate                               : cmd      :                  : Rotates an entity by a specified # of degrees
ent_setname                              : cmd      :                  : Sets the targetname of the given entity(s)  Arguments:    {new entity name} {entity_name} / {class_name} / no argument picks what player is looking at
ent_show_response_criteria               : cmd      :                  : Print, to the console, an entity's current criteria set used to select responses.  Arguments:    {entity_name} / {class_name} / no argument picks what player is looking at
ent_step                                 : cmd      :                  : When 'ent_pause' is set this will step through one waiting input / output message at a time.
ent_teleport                             : cmd      :                  : Teleport the specified entity to where the player is looking.  Format: ent_teleport <entity name>
ent_text                                 : cmd      :                  : Displays text debugging information about the given entity(ies) on top of the entity (See Overlay Text)  Arguments:    {entity_name} / {class_name} / no argument picks what player is looking at
ent_viewoffset                           : cmd      :                  : Displays the eye position for the given entity(ies) in red.  Arguments:    {entity_name} / {class_name} / no argument picks what player is looking at
envmap                                   : cmd      :                  :
escape                                   : cmd      :                  : Escape key pressed.
exec                                     : cmd      :                  : Execute script file.
exit                                     : cmd      :                  : Exit the engine.
explode                                  : cmd      :                  : Kills the player with explosive damage
explodevector                            : cmd      :                  : Kills a player applying an explosive force. Usage: explodevector <player> <x value> <y value> <z value>
fadein                                   : cmd      :                  : fadein {time r g b}: Fades the screen in from black or from the specified color over the given number of seconds.
fadeout                                  : cmd      :                  : fadeout {time r g b}: Fades the screen to black or to the specified color over the given number of seconds.
fast_fogvolume                           : 0        :                  :
filesystem_buffer_size                   : 0        :                  : Size of per file buffers. 0 for none
filesystem_max_stdio_read                : 16       :                  :
filesystem_native                        : 1        :                  : Use native FS or STDIO
filesystem_report_buffered_io            : 0        :                  :
filesystem_unbuffered_io                 : 1        :                  :
filesystem_use_overlapped_io             : 1        :                  :
find                                     : cmd      :                  : Find concommands with the specified string in their name/help text.
find_ent                                 : cmd      :                  : Find and list all entities with classnames or targetnames that contain the specified substring. Format: find_ent <substring>
find_ent_index                           : cmd      :                  : Display data for entity matching specified index. Format: find_ent_index <index>
findflags                                : cmd      :                  : Find concommands by flags.
fire_absorbrate                          : 3        : , "sv"           :
fire_dmgbase                             : 1        : , "sv"           :
fire_dmginterval                         : 1        : , "sv"           :
fire_dmgscale                            : 0        : , "sv"           :
fire_extabsorb                           : 5        : , "sv"           :
fire_extscale                            : 12       : , "sv"           :
fire_growthrate                          : 1        : , "sv"           :
fire_heatscale                           : 1        : , "sv"           :
fire_incomingheatscale                   : 0        : , "sv"           :
fire_maxabsorb                           : 50       : , "sv"           :
firetarget                               : cmd      :                  :
firstperson                              : cmd      :                  : Switch to firstperson camera.
fish_debug                               : 0        : , "cheat", "cl"  : Show debug info for fish
fish_dormant                             : 0        : , "sv", "cheat", "rep" : Turns off interactive fish behavior. Fish become immobile and unresponsive.
flex_expression                          : 0        : , "sv"           :
flex_looktime                            : 5        : , "sv"           :
flex_maxawaytime                         : 1        : , "sv"           :
flex_maxplayertime                       : 7        : , "sv"           :
flex_minawaytime                         : 0        : , "sv"           :
flex_minplayertime                       : 5        : , "sv"           :
flex_rules                               : 1        : , "cl"           : Allow flex animation rules to run.
flex_smooth                              : 1        : , "cl"           : Applies smoothing/decay curve to flex animation controller changes.
flex_talk                                : 0        : , "sv"           :
flush                                    : cmd      :                  : Flush unlocked cache memory.
flush_locked                             : cmd      :                  : Flush unlocked and locked cache memory.
fog_color                                : -1       : , "cheat", "cl"  :
fog_colorskybox                          : -1       : , "cheat", "cl"  :
fog_enable                               : 1        : , "cheat", "cl"  :
fog_enable_water_fog                     : 1        : , "cheat"        :
fog_enableskybox                         : 1        : , "cheat", "cl"  :
fog_end                                  : -1       : , "cheat", "cl"  :
fog_endskybox                            : -1       : , "cheat", "cl"  :
fog_maxdensity                           : -1       : , "cheat", "cl"  :
fog_maxdensityskybox                     : -1       : , "cheat", "cl"  :
fog_override                             : 0        : , "cheat", "cl"  :
fog_start                                : -1       : , "cheat", "cl"  :
fog_startskybox                          : -1       : , "cheat", "cl"  :
fogui                                    : cmd      :                  : Show/hide fog control UI.
force_centerview                         : cmd      :                  :
+forward                                 : cmd      :                  :
-forward                                 : cmd      :                  :
fov                                      : cmd      :                  : Change players FOV
fov_desired                              : 75       : , "a", "user", "cl" : Sets the base field-of-view.
fps_max                                  : 300      :                  : Frame rate limiter, cannot be set while connected to a server.
free_pass_peek_debug                     : 0        : , "sv"           :
fs_monitor_read_from_pack                : 0        :                  : 0:Off, 1:Any, 2:Sync only
fs_printopenfiles                        : cmd      :                  : Show all files currently opened by the engine.
fs_report_sync_opens                     : 0        :                  : 0:Off, 1:Blocking only, 2:All
fs_warning_level                         : cmd      :                  : Set the filesystem warning level.
fs_warning_mode                          : 0        :                  : 0:Off, 1:Warn main thread, 2:Warn other threads
func_break_max_pieces                    : 15       : , "a", "sv", "rep" :
func_break_reduction_factor              : 0        : , "sv"           :
func_breakdmg_bullet                     : 0        : , "sv"           :
func_breakdmg_club                       : 1        : , "sv"           :
func_breakdmg_explosive                  : 1        : , "sv"           :
g15_dumpplayer                           : cmd      :                  : Spew player data.
g15_reload                               : cmd      :                  : Reloads the Logitech G-15 Keyboard configs.
g15_update_msec                          : 250      : , "a", "cl"      : Logitech G-15 Keyboard update interval.
g_debug_angularsensor                    : 0        : , "sv", "cheat"  :
g_debug_constraint_sounds                : 0        : , "sv", "cheat"  : Enable debug printing about constraint sounds.
g_debug_doors                            : 0        : , "sv"           :
g_debug_npc_vehicle_roles                : 0        : , "sv"           :
g_debug_ragdoll_removal                  : 0        : , "sv", "cheat", "rep" :
g_debug_ragdoll_visualize                : 0        : , "cheat", "cl"  :
g_debug_trackpather                      : 0        : , "sv", "cheat"  :
g_debug_transitions                      : 0        : , "sv"           : Set to 1 and restart the map to be warned if the map has no trigger_transition volumes. Set to 2 to see a dump of all entities & associated results during a transition.
g_debug_vehiclebase                      : 0        : , "sv", "cheat"  :
g_debug_vehicledriver                    : 0        : , "sv", "cheat"  :
g_debug_vehicleexit                      : 0        : , "sv", "cheat"  :
g_debug_vehiclesound                     : 0        : , "sv", "cheat"  :
g_Language                               : 0        : , "sv", "rep"    :
g_ragdoll_fadespeed                      : 600      : , "cl"           :
g_ragdoll_important_maxcount             : 2        : , "sv", "rep"    :
g_ragdoll_lvfadespeed                    : 100      : , "cl"           :
g_ragdoll_maxcount                       : 8        : , "sv", "rep"    :
gamemenucommand                          : cmd      :                  : Issue game menu command.
gameui_activate                          : cmd      :                  : Shows the game UI
gameui_allowescape                       : cmd      :                  : Escape key allowed to hide game UI
gameui_allowescapetoshow                 : cmd      :                  : Escape key allowed to show game UI
gameui_hide                              : cmd      :                  : Hides the game UI
gameui_hide_dialog                       : cmd      :                  : asdf
gameui_preventescape                     : cmd      :                  : Escape key doesn't hide game UI
gameui_preventescapetoshow               : cmd      :                  : Escape key doesn't show game UI
gameui_show_dialog                       : cmd      :                  : Show an arbitrary Dialog.
gameui_xbox                              : 0        :                  :
getpos                                   : cmd      :                  : dump position and angles to the console
ghost_spawn                              : cmd      :                  : Spawns a Ghost where the player is looking.
give                                     : cmd      :                  : Give item to player.  Arguments: <item_name>
givecurrentammo                          : cmd      :                  : Give a supply of ammo for current weapon..
gl_amd_occlusion_workaround              : 1        :                  :
gl_clear                                 : 0        : , "cl"           :
gl_clear_randomcolor                     : 0        : , "cheat", "cl"  : Clear the back buffer to random colors every frame. Helps spot open seams in geometry.
global_set                               : cmd      :                  : global_set <globalname> <state>: Sets the state of the given env_global (0 = OFF, 1 = ON, 2 = DEAD).
glow_outline_effect_enable               : 1        : , "a", "cl"      : Enable entity outline glow effects.
glow_outline_width                       : 10       : , "cheat", "cl"  : Width of glow outline effect in screen space.
god                                      : cmd      :                  : Toggle. Player becomes invulnerable.
+graph                                   : cmd      :                  :
-graph                                   : cmd      :                  :
-grenade1                                : cmd      :                  :
+grenade1                                : cmd      :                  :
-grenade2                                : cmd      :                  :
+grenade2                                : cmd      :                  :
groundlist                               : cmd      :                  : Display ground entity list <index>
hammer_update_entity                     : cmd      :                  : Updates the entity's position/angles when in edit mode
hammer_update_safe_entities              : cmd      :                  : Updates entities in the map that can safely be updated (don't have parents or are affected by constraints). Also excludes entities mentioned in any hammer_updateignorelist objects in this map.
hap_damagescale_game                     : 0        : , "cl"           :
hap_HasDevice                            : 0        : , "user", "cl"   : falcon is connected
hap_melee_scale                          : 0        : , "numeric", "cl" :
hap_noclip_avatar_scale                  : 0        : , "numeric", "cl" :
hap_ui_vehicles                          : 0        : , "cl"           :
heartbeat                                : cmd      :                  : Force heartbeat of master servers
help                                     : cmd      :                  : Find help about a convar/concommand.
+helpme                                  : cmd      :                  :
-helpme                                  : cmd      :                  :
hide_server                              : 0        : , "sv"           : Whether the server should be hidden from the master server
hideconsole                              : cmd      :                  : Hide the console.
hidehud                                  : 0        : , "cheat", "cl"  :
hidepanel                                : cmd      :                  : Hides a viewport panel <name>
hl2_episodic                             : 0        : , "sv", "rep"    :
host_flush_threshold                     : 20       :                  : Memory threshold below which the host should flush caches between server instances
host_framerate                           : 0        :                  : Set to lock per-frame time elapse.
host_limitlocal                          : 0        :                  : Apply cl_cmdrate and cl_updaterate to loopback connection
host_map                                 : 0        :                  : Current map name.
host_profile                             : 0        :                  :
host_runofftime                          : cmd      :                  : Run off some time without rendering/updating sounds
host_showcachemiss                       : 0        :                  : Print a debug message when the client or server cache is missed.
host_ShowIPCCallCount                    : 0        :                  : Print # of IPC calls this number of times per second. If set to -1, the # of IPC calls is shown every frame.
host_sleep                               : 0        : , "cheat"        : Force the host to sleep a certain number of milliseconds each frame.
host_speeds                              : 0        :                  : Show general system running times.
host_thread_mode                         : 0        :                  : Run the host in threaded mode, (0 == off, 1 == if multicore, 2 == force)
host_timer_report                        : cmd      :                  : Spew CPU timer jitter for the last 128 frames in microseconds (dedicated only)
host_timer_spin_ms                       : 0        :                  : Use CPU busy-loop for improved timer precision (dedicated only)
host_timescale                           : 1        : , "rep"          : Prescale the clock by this amount.
host_writeconfig                         : cmd      :                  : Store current settings to config.cfg (or specified .cfg file).
hostip                                   : 0        :                  : Host game server ip
hostname                                 : 0        :                  : Hostname for server.
hostport                                 : 27015    :                  : Host game server port
hud_achievement_count                    : 8        : , "a", "cl"      : Max number of achievements that can be shown on the HUD
hud_achievement_count_engineer           : 3        : , "a", "cl"      : Max number of achievements that can be shown on the HUD when you're an engineer
hud_achievement_description              : 1        : , "a", "cl"      : Show full descriptions of achievements on the HUD
hud_achievement_glowtime                 : 2        : , "cl"           : Duration of glow effect around incremented achievements
hud_achievement_tracker                  : 1        : , "cl"           : Show or hide the achievement tracker
hud_autoaim_method                       : 1        : , "cl"           :
hud_autoaim_scale_icon                   : 0        : , "cl"           :
hud_autoreloadscript                     : 0        : , "cl"           : Automatically reloads the animation script each time one is ran
hud_classautokill                        : 1        : , "a", "user", "cl" : Automatically kill player after choosing a new playerclass.
hud_combattext                           : 1        : , "a", "user", "cl" :
hud_combattext_batching                  : 0        : , "a", "user", "cl" : If set to 1, numbers that are too close together are merged.
hud_combattext_batching_window           : 0        : , "a", "cl"      : Maximum delay between damage events in order to batch numbers.
hud_combattext_blue                      : 0        : , "a", "user", "cl" :
hud_combattext_doesnt_block_overhead_text : 1        : , "a", "user", "cl" : If set to 1, allow text like 'CRIT' to still show over a victim's head.
hud_combattext_green                     : 0        : , "a", "user", "cl" :
hud_combattext_healing                   : 1        : , "a", "user", "cl" : Shows health restored per-second over heal targets.
hud_combattext_red                       : 255      : , "a", "user", "cl" :
hud_damagemeter                          : 0        : , "cheat", "cl"  : Display damage-per-second information in the lower right corner of the screen.
hud_damagemeter_ooctimer                 : 1        : , "cl"           : How many seconds after the last damage event before we consider the player out of combat.
hud_damagemeter_period                   : 0        : , "cl"           : When set to zero, average damage-per-second across all recent damage events, otherwise average damage across defined period (number of seconds).
hud_damagemeter_report                   : 1        : , "cl"           : Display end-of-combat DPS result (from first damage even to last before OOC timer hit).
hud_deathnotice_time                     : 6        : , "cl"           :
hud_draw_active_reticle                  : 0        : , "cl"           :
hud_draw_fixed_reticle                   : 0        : , "a", "cl"      :
hud_drawhistory_time                     : 5        : , "cl"           :
hud_escort_interp                        : 0        : , "cl"           :
hud_escort_test_progress                 : -1       : , "cl"           :
hud_escort_test_speed                    : -1       : , "cl"           :
hud_fastswitch                           : 0        : , "a", "cl"      :
hud_freezecamhide                        : 0        : , "a", "cl"      : Hide the HUD during freeze-cam
hud_magnetism                            : 0        : , "cl"           :
hud_medicautocallers                     : 0        : , "a", "cl"      :
hud_medicautocallersthreshold            : 75       : , "a", "cl"      :
hud_medichealtargetmarker                : 0        : , "a", "cl"      :
hud_reloadscheme                         : cmd      :                  : Reloads hud layout and animation scripts.
hud_reticle_alpha_speed                  : 700      : , "cl"           :
hud_reticle_maxalpha                     : 255      : , "cl"           :
hud_reticle_minalpha                     : 125      : , "cl"           :
hud_reticle_scale                        : 1        : , "cl"           :
hud_saytext_time                         : 12       : , "cl"           :
hud_takesshots                           : 0        : , "a", "cl"      : Auto-save a scoreboard screenshot at the end of a map.
hurtme                                   : cmd      :                  : Hurts the player.  Arguments: <health to lose>
ifm_basecamera_camerastate               : cmd      :                  : Set camera state
ifm_steadycam_2ddragconstant             : 11       : , "a", "cl"      :
ifm_steadycam_2dspringconstant           : 33       : , "a", "cl"      :
ifm_steadycam_armspeed                   : 0        : , "a", "cl"      :
ifm_steadycam_mousefactor                : 1        : , "a", "cl"      :
ifm_steadycam_mousepower                 : 1        : , "a", "cl"      :
ifm_steadycam_noise                      : 0        : , "a", "rep", "cl" :
ifm_steadycam_rotatedamp                 : 0        : , "a", "cl"      :
ifm_steadycam_rotaterate                 : 60       : , "a", "cl"      :
ifm_steadycam_sensitivity                : 1        : , "a", "rep", "cl" :
ifm_steadycam_zoomdamp                   : 0        : , "a", "cl"      :
ifm_steadycam_zoomspeed                  : 1        : , "a", "cl"      :
impulse                                  : cmd      :                  :
in_usekeyboardsampletime                 : 1        : , "cl"           : Use keyboard sample time smoothing.
incrementvar                             : cmd      :                  : Increment specified convar value.
+inspect                                 : cmd      :                  :
-inspect                                 : cmd      :                  :
invnext                                  : cmd      :                  :
invprev                                  : cmd      :                  :
ip                                       : 0        :                  : Overrides IP for multihomed hosts
item_show_whitelistable_definitions      : cmd      :                  : Lists the item definitions that can be whitelisted in the item_whitelist.txt file in tournament mode.
itemtest                                 : cmd      :                  : Open the item testing panel.
itemtest_botcontrols                     : cmd      :                  : Open the item testing bot control panel.
+jlook                                   : cmd      :                  :
-jlook                                   : cmd      :                  :
join_class                               : cmd      :                  : Send a joinclass command
join_class                               : cmd      :                  : Send a joinclass command
joy_accel_filter                         : 0        : , "cl"           :
joy_accelmax                             : 1        : , "a", "cl"      :
joy_accelscale                           : 0        : , "a", "cl"      :
joy_active                               : -1       :                  : Which of the connected joysticks / gamepads to use (-1 means first found)
joy_advanced                             : 1        : , "a", "cl"      :
joy_advaxisr                             : 1        : , "a", "cl"      :
joy_advaxisu                             : 3        : , "a", "cl"      :
joy_advaxisv                             : 0        : , "a", "cl"      :
joy_advaxisx                             : 4        : , "a", "cl"      :
joy_advaxisy                             : 2        : , "a", "cl"      :
joy_advaxisz                             : 0        : , "a", "cl"      :
joy_autoaimdampen                        : 0        : , "a", "cl"      : How much to scale user stick input when the gun is pointing at a valid target.
joy_autoaimdampenrange                   : 0        : , "a", "cl"      : The stick range where autoaim dampening is applied. 0 = off
joy_autosprint                           : 0        : , "cl"           : Automatically sprint when moving with an analog joystick
joy_axis_deadzone                        : 0        : , "a"            : Dead zone near the zero point to not report movement.
joy_axisbutton_threshold                 : 0        : , "a"            : Analog axis range before a button press is registered.
joy_diagonalpov                          : 0        : , "a", "cl"      : POV manipulator operates on diagonal axes, too.
joy_display_input                        : 0        : , "a", "cl"      :
joy_forwardsensitivity                   : -1       : , "a", "cl"      :
joy_forwardthreshold                     : 0        : , "a", "cl"      :
joy_gamecontroller_config                : 0        : , "a"            : Game controller mapping (passed to SDL with SDL_HINT_GAMECONTROLLERCONFIG), can also be configured in Steam Big Picture mode.
joy_inverty                              : 0        : , "a", "cl"      : Whether to invert the Y axis of the joystick for looking.
joy_inverty_default                      : 0        : , "cl"           :
joy_lowend                               : 1        : , "a", "cl"      :
joy_lowmap                               : 1        : , "a", "cl"      :
joy_movement_stick                       : 0        : , "a", "cl"      : Which stick controls movement (0 is left stick)
joy_movement_stick_default               : 0        : , "cl"           :
joy_name                                 : 0        : , "a", "cl"      :
joy_pegged                               : 0        : , "cl"           :
joy_pitchsensitivity                     : 1        : , "a", "cl"      :
joy_pitchsensitivity_default             : -1       : , "cl"           :
joy_pitchthreshold                       : 0        : , "a", "cl"      :
joy_response_look                        : 0        : , "a", "cl"      : 'Look' stick response mode: 0=Default, 1=Acceleration Promotion
joy_response_move                        : 1        : , "a", "cl"      : 'Movement' stick response mode: 0=Linear, 1=quadratic, 2=cubic, 3=quadratic extreme, 4=power function(i.e., pow(x,1/sensitivity)), 5=two-stage
joy_response_move_vehicle                : 6        : , "cl"           :
joy_sidesensitivity                      : 1        : , "a", "cl"      :
joy_sidethreshold                        : 0        : , "a", "cl"      :
joy_vehicle_turn_lowend                  : 0        : , "cl"           :
joy_vehicle_turn_lowmap                  : 0        : , "cl"           :
joy_virtual_peg                          : 0        : , "cl"           :
joy_wingmanwarrior_turnhack              : 0        : , "a", "cl"      : Wingman warrior hack related to turn axes.
joy_xcontroller_cfg_loaded               : 0        : , "a", "cl"      : If 0, the 360controller.cfg file will be executed on startup & option changes.
joy_yawsensitivity                       : -1       : , "a", "cl"      :
joy_yawsensitivity_default               : -1       : , "cl"           :
joy_yawthreshold                         : 0        : , "a", "cl"      :
joyadvancedupdate                        : cmd      :                  :
joystick                                 : 0        : , "a", "cl"      :
jpeg                                     : cmd      :                  : Take a jpeg screenshot:  jpeg <filename> <quality 1-100>.
jpeg_quality                             : 90       :                  : jpeg screenshot quality.
+jump                                    : cmd      :                  :
-jump                                    : cmd      :                  :
kdtree_test                              : cmd      :                  : Tests spatial partition for entities queries.
key_findbinding                          : cmd      :                  : Find key bound to specified command string.
key_listboundkeys                        : cmd      :                  : List bound keys with bindings.
key_updatelayout                         : cmd      :                  : Updates game keyboard layout to current windows keyboard setting.
kick                                     : cmd      :                  : Kick a player by name.
kickall                                  : cmd      :                  : Kicks everybody connected with a message.
kickid                                   : cmd      :                  : Kick a player by userid or uniqueid, with a message.
kill                                     : cmd      :                  : Kills the player with generic damage
killserver                               : cmd      :                  : Shutdown the server.
killvector                               : cmd      :                  : Kills a player applying force. Usage: killvector <player> <x value> <y value> <z value>
+klook                                   : cmd      :                  :
-klook                                   : cmd      :                  :
lastdisguise                             : cmd      :                  : Disguises the spy as the last disguise.
lastinv                                  : cmd      :                  :
+left                                    : cmd      :                  :
-left                                    : cmd      :                  :
light_crosshair                          : cmd      :                  : Show texture color at crosshair
lightcache_maxmiss                       : 2        : , "cheat"        :
lightprobe                               : cmd      :                  : Samples the lighting environment. Creates a cubemap and a file indicating the local lighting in a subdirectory called 'materials/lightprobes' .The lightprobe command requires you specify a base file name.
linefile                                 : cmd      :                  : Parses map leak data from .lin file
listdemo                                 : cmd      :                  : List demo file contents.
listid                                   : cmd      :                  : Lists banned users.
listip                                   : cmd      :                  : List IP addresses on the ban list.
listissues                               : cmd      :                  : List all the issues that can be voted on.
listmodels                               : cmd      :                  : List loaded models.
listRecentNPCSpeech                      : cmd      :                  : Displays a list of the last 5 lines of speech from NPCs.
load                                     : cmd      :                  : Load a saved game.
load_itempreset                          : cmd      :                  : Equip all items for a given preset on the player.
loadcommentary                           : cmd      :                  :
loader_dump_table                        : cmd      :                  :
loader_spew_info                         : 0        :                  : 0:Off, 1:Timing, 2:Completions, 3:Late Completions, 4:Purges, -1:All
loader_spew_info_ex                      : 0        :                  : (internal)
lockplayername                           : cmd      :                  : Prevent name changes for this userID.
lod_TransitionDist                       : 800      : , "cl"           :
log                                      : cmd      :                  : Enables logging to file, console, and udp < on | off >.
log_verbose_enable                       : 0        : , "sv"           : Set to 1 to enable verbose server log on the server.
log_verbose_interval                     : 3        : , "sv"           : Determines the interval (in seconds) for the verbose server log.
logaddress_add                           : cmd      :                  : Set address and port for remote host <ip:port>.
logaddress_del                           : cmd      :                  : Remove address and port for remote host <ip:port>.
logaddress_delall                        : cmd      :                  : Remove all udp addresses being logged to
logaddress_list                          : cmd      :                  : List all addresses currently being used by logaddress.
+lookdown                                : cmd      :                  :
-lookdown                                : cmd      :                  :
lookspring                               : 0        : , "a", "cl"      :
lookstrafe                               : 0        : , "a", "cl"      :
+lookup                                  : cmd      :                  :
-lookup                                  : cmd      :                  :
lservercfgfile                           : 0        : , "sv"           :
lzma_persistent_buffer                   : 0        :                  : If set, attempt to keep a persistent buffer for the LZMA decoder dictionary. This avoids re-allocating a ~16-64meg buffer for each operation, at the expensive of keeping extra memory around when it is not in-use.
m_customaccel                            : 0        : , "a", "cl"      : Custom mouse acceleration: 0: custom accelaration disabled 1: mouse_acceleration = min(m_customaccel_max, pow(raw_mouse_delta, m_customaccel_exponent) * m_customaccel_scale + sensitivity) 2: Same as 1, with but x and y sensitivity are scaled by m_pitch and m_yaw respectively. 3: mouse_acceleration = pow(raw_mouse_delta, m_customaccel_exponent - 1) * sensitivity
m_customaccel_exponent                   : 1        : , "a", "cl"      : Mouse move is raised to this power before being scaled by scale factor.
m_customaccel_max                        : 0        : , "a", "cl"      : Max mouse move scale factor, 0 for no limit
m_customaccel_scale                      : 0        : , "a", "cl"      : Custom mouse acceleration value.
m_filter                                 : 0        : , "a", "cl"      : Mouse filtering (set this to 1 to average the mouse over 2 frames).
m_forward                                : 1        : , "a", "cl"      : Mouse forward factor.
m_limitedcapture_workaround              : 0        : , "cl"           : Workaround limitations on mouse capture in some environments
m_mouseaccel1                            : 0        : , "a", "cl"      : Windows mouse acceleration initial threshold (2x movement).
m_mouseaccel2                            : 0        : , "a", "cl"      : Windows mouse acceleration secondary threshold (4x movement).
m_mousespeed                             : 1        : , "a", "cl"      : Windows mouse acceleration (0 to disable, 1 to enable [Windows 2000: enable initial threshold], 2 to enable secondary threshold [Windows 2000 only]).
m_pitch                                  : 0        : , "a", "cl"      : Mouse pitch factor.
m_rawinput                               : 0        : , "a", "cl"      : Use Raw Input for mouse input.
m_side                                   : 0        : , "a", "cl"      : Mouse side factor.
m_yaw                                    : 0        : , "a", "cl"      : Mouse yaw factor.
map                                      : cmd      :                  : Start playing on specified map.
map_background                           : cmd      :                  : Runs a map as the background to the main menu.
map_commentary                           : cmd      :                  : Start playing, with commentary, on a specified map.
map_edit                                 : cmd      :                  :
map_noareas                              : 0        :                  : Disable area to area connection testing.
map_showspawnpoints                      : cmd      :                  : Dev - test the spawn points, draws for 60 seconds
mapcyclefile                             : 0        : , "sv"           : Name of the .txt file used to cycle the maps on multiplayer servers
maps                                     : cmd      :                  : Displays list of maps.
mat_aaquality                            : 0        : , "a"            :
mat_accelerate_adjust_exposure_down      : 3        : , "cheat"        :
mat_alphacoverage                        : 1        :                  :
mat_antialias                            : 0        : , "a"            :
mat_autoexposure_max                     : 2        : , "cl"           :
mat_autoexposure_min                     : 0        : , "cl"           :
mat_bloom_scalefactor_scalar             : 1        : , "cl"           :
mat_bloomamount_rate                     : 0        : , "cheat", "cl"  :
mat_bloomscale                           : 1        : , "cl"           :
mat_bufferprimitives                     : 1        :                  :
mat_bumpbasis                            : 0        : , "cheat"        :
mat_bumpmap                              : 1        :                  :
mat_camerarendertargetoverlaysize        : 256      : , "cheat", "cl"  :
mat_clipz                                : 1        : , "cl"           :
mat_colcorrection_disableentities        : 0        :                  : Disable map color-correction entities
mat_color_projection                     : 0        : , "a"            :
mat_colorcorrection                      : 1        : , "a"            :
mat_compressedtextures                   : 1        :                  :
mat_configcurrent                        : cmd      :                  : show the current video control panel config for the material system
mat_crosshair                            : cmd      :                  : Display the name of the material under the crosshair
mat_crosshair_edit                       : cmd      :                  : open the material under the crosshair in the editor defined by mat_crosshair_edit_editor
mat_crosshair_explorer                   : cmd      :                  : open the material under the crosshair in explorer and highlight the vmt file
mat_crosshair_printmaterial              : cmd      :                  : print the material under the crosshair
mat_crosshair_reloadmaterial             : cmd      :                  : reload the material under the crosshair
mat_debug_autoexposure                   : 0        : , "cheat", "cl"  :
mat_debug_bloom                          : 0        : , "cheat", "cl"  :
mat_debug_postprocessing_effects         : 0        : , "cl"           : 0 = off, 1 = show post-processing passes in quadrants of the screen, 2 = only apply post-processing to the centre of the screen
mat_debug_process_halfscreen             : 0        : , "cheat", "cl"  :
mat_debugalttab                          : 0        : , "cheat"        :
mat_debugdepth                           : 0        :                  :
mat_debugdepthmode                       : 0        :                  :
mat_debugdepthval                        : 128      :                  :
mat_debugdepthvalmax                     : 256      :                  :
mat_depthbias_decal                      : -262144  : , "cheat"        :
mat_depthbias_normal                     : 0        : , "cheat"        :
mat_depthbias_shadowmap                  : 0        : , "cheat"        :
mat_diffuse                              : 1        : , "cheat"        :
mat_disable_bloom                        : 0        : , "cl"           :
mat_disable_fancy_blending               : 0        :                  :
mat_disable_lightwarp                    : 0        :                  :
mat_disable_ps_patch                     : 0        :                  :
mat_disablehwmorph                       : 0        :                  : Disables HW morphing for particular mods
mat_drawflat                             : 0        : , "cheat"        :
mat_drawTexture                          : 0        : , "cl"           : Enable debug view texture
mat_drawTextureScale                     : 1        : , "cl"           : Debug view texture scale
mat_drawTitleSafe                        : 0        :                  : Enable title safe overlay
mat_drawwater                            : 1        : , "cheat", "cl"  :
mat_dump_rts                             : 0        : , "cl"           :
mat_dxlevel                              : 95       : , "sp"           : Current DirectX Level. Competitive play requires at least mat_dxlevel 90
mat_dynamic_tonemapping                  : 1        : , "cheat"        :
mat_edit                                 : cmd      :                  : Bring up the material under the crosshair in the editor
mat_enable_vrmode                        : cmd      :                  : Switches the material system to VR mode (after restart)
mat_envmapsize                           : 128      :                  :
mat_envmaptgasize                        : 32       :                  :
mat_evict_all                            : cmd      :                  : Evict all fine mipmaps from the gpu
mat_excludetextures                      : 0        : , "cheat"        :
mat_exposure_center_region_x             : 0        : , "cheat", "cl"  :
mat_exposure_center_region_x_flashlight  : 0        : , "cheat", "cl"  :
mat_exposure_center_region_y             : 0        : , "cheat", "cl"  :
mat_exposure_center_region_y_flashlight  : 0        : , "cheat", "cl"  :
mat_fastclip                             : 0        : , "cheat"        :
mat_fastnobump                           : 0        : , "cheat"        :
mat_fastspecular                         : 1        :                  : Enable/Disable specularity for visual testing.  Will not reload materials and will not affect perf.
mat_fillrate                             : 0        : , "cheat"        :
mat_filterlightmaps                      : 1        :                  :
mat_filtertextures                       : 1        :                  :
mat_force_bloom                          : 0        : , "cheat", "cl"  :
mat_force_ps_patch                       : 0        :                  :
mat_force_tonemap_scale                  : 0        : , "cheat"        :
mat_forceaniso                           : 1        : , "a"            :
mat_forcedynamic                         : 0        : , "cheat"        :
mat_forcehardwaresync                    : 1        :                  :
mat_frame_sync_enable                    : 1        : , "cheat"        :
mat_frame_sync_force_texture             : 0        : , "cheat"        : Force frame syncing to lock a managed texture.
mat_framebuffercopyoverlaysize           : 256      : , "cl"           :
mat_fullbright                           : 0        : , "cheat"        :
mat_hdr_enabled                          : cmd      :                  : Report if HDR is enabled for debugging
mat_hdr_level                            : 2        : , "a"            : Set to 0 for no HDR, 1 for LDR+bloom on HDR maps, and 2 for full HDR on HDR maps.
mat_hdr_manual_tonemap_rate              : 1        :                  :
mat_hdr_tonemapscale                     : 1        : , "cheat"        : The HDR tonemap scale. 1 = Use autoexposure, 0 = eyes fully closed, 16 = eyes wide open.
mat_hdr_uncapexposure                    : 0        : , "cheat", "cl"  :
mat_hsv                                  : 0        : , "cheat", "cl"  :
mat_info                                 : cmd      :                  : Shows material system info
mat_leafvis                              : 0        : , "cheat"        : Draw wireframe of current leaf
mat_levelflush                           : 1        :                  :
mat_lightmap_pfms                        : 0        :                  : Outputs .pfm files containing lightmap data for each lightmap page when a level exits.
mat_loadtextures                         : 1        : , "cheat"        :
mat_luxels                               : 0        : , "cheat"        :
mat_managedtextures                      : 1        : , "a"            : If set, allows Direct3D to manage texture uploading at the cost of extra system memory
mat_max_worldmesh_vertices               : 65536    :                  :
mat_measurefillrate                      : 0        : , "cheat"        :
mat_mipmaptextures                       : 1        :                  :
mat_monitorgamma                         : 2        : , "a"            : monitor gamma (typically 2.2 for CRT and 1.7 for LCD)
mat_monitorgamma_tv_enabled              : 0        : , "a"            :
mat_monitorgamma_tv_exp                  : 2        :                  :
mat_monitorgamma_tv_range_max            : 255      :                  :
mat_monitorgamma_tv_range_min            : 16       :                  :
mat_morphstats                           : 0        : , "cheat"        :
mat_motion_blur_enabled                  : 1        : , "a"            :
mat_motion_blur_falling_intensity        : 1        : , "cl"           :
mat_motion_blur_falling_max              : 20       : , "cl"           :
mat_motion_blur_falling_min              : 10       : , "cl"           :
mat_motion_blur_forward_enabled          : 0        : , "cl"           :
mat_motion_blur_percent_of_screen_max    : 4        :                  :
mat_motion_blur_rotation_intensity       : 1        : , "cl"           :
mat_motion_blur_strength                 : 1        : , "cl"           :
mat_non_hdr_bloom_scalefactor            : 0        : , "cl"           :
mat_norendering                          : 0        : , "cheat"        :
mat_normalmaps                           : 0        : , "cheat"        :
mat_normals                              : 0        : , "cheat"        :
mat_phong                                : 1        :                  :
mat_picmip                               : 0        : , "a"            :
mat_postprocess_x                        : 4        : , "cl"           :
mat_postprocess_y                        : 1        : , "cl"           :
mat_postprocessing_combine               : 1        : , "cl"           : Combine bloom, software anti-aliasing and color correction into one post-processing pass
mat_powersavingsmode                     : 0        : , "a"            : Power Savings Mode
mat_proxy                                : 0        : , "cheat"        :
mat_queue_mode                           : -1       : , "a"            : The queue/thread mode the material system should use: -1=default, 0=synchronous single thread, 2=queued multithreaded
mat_queue_report                         : 0        : , "a"            : Report thread stalls.  Positive number will filter by stalls >= time in ms.  -1 reports all locks.
mat_reducefillrate                       : 0        :                  :
mat_reduceparticles                      : 0        :                  :
mat_reloadallmaterials                   : cmd      :                  : Reloads all materials
mat_reloadmaterial                       : cmd      :                  : Reloads a single material
mat_reloadtextures                       : cmd      :                  : Reloads all textures
mat_remoteshadercompile                  : 127      : , "cheat"        :
mat_report_queue_status                  : 0        :                  :
mat_reporthwmorphmemory                  : cmd      :                  : Reports the amount of size in bytes taken up by hardware morph textures.
mat_reset_rendertargets                  : cmd      :                  : Resets all the render targets
mat_reversedepth                         : 0        : , "cheat"        :
mat_savechanges                          : cmd      :                  : saves current video configuration to the registry
mat_setvideomode                         : cmd      :                  : sets the width, height, windowed state of the material system
mat_shadercount                          : cmd      :                  : display count of all shaders and reset that count
mat_show_ab_hdr                          : 0        :                  :
mat_show_ab_hdr_hudelement               : 0        : , "cheat", "cl"  : HDR Demo HUD Element toggle.
mat_show_histogram                       : 0        : , "cl"           :
mat_show_texture_memory_usage            : 0        : , "cheat", "numeric" : Display the texture memory usage on the HUD.
mat_showcamerarendertarget               : 0        : , "cheat", "cl"  :
mat_showenvmapmask                       : 0        :                  :
mat_showframebuffertexture               : 0        : , "cheat", "cl"  :
mat_showlightmappage                     : -1       : , "cl"           :
mat_showlowresimage                      : 0        : , "cheat"        :
mat_showmaterials                        : cmd      :                  : Show materials.
mat_showmaterialsverbose                 : cmd      :                  : Show materials (verbose version).
mat_showmiplevels                        : 0        : , "cheat"        : color-code miplevels 2: normalmaps, 1: everything else
mat_showtextures                         : cmd      :                  : Show used textures.
mat_showwatertextures                    : 0        : , "cheat", "cl"  :
mat_slopescaledepthbias_decal            : 0        : , "cheat"        :
mat_slopescaledepthbias_normal           : 0        : , "cheat"        :
mat_slopescaledepthbias_shadowmap        : 16       : , "cheat"        :
mat_software_aa_blur_one_pixel_lines     : 0        : , "a", "cl"      : How much software AA should blur one-pixel thick lines: (0.0 - none), (1.0 - lots)
mat_software_aa_debug                    : 0        : , "cl"           : Software AA debug mode: (0 - off), (1 - show number of 'unlike' samples: 0->black, 1->red, 2->green, 3->blue), (2 - show anti-alias blend strength), (3 - show averaged 'unlike' colour)
mat_software_aa_edge_threshold           : 1        : , "a", "cl"      : Software AA - adjusts the sensitivity of the software AA shader's edge detection (default 1.0 - a lower value will soften more edges, a higher value will soften fewer)
mat_software_aa_quality                  : 0        : , "a", "cl"      : Software AA quality mode: (0 - 5-tap filter), (1 - 9-tap filter)
mat_software_aa_strength                 : -1       : , "a", "cl"      : Software AA - perform a software anti-aliasing post-process (an alternative/supplement to MSAA). This value sets the strength of the effect: (0.0 - off), (1.0 - full)
mat_software_aa_strength_vgui            : -1       : , "a", "cl"      : Same as mat_software_aa_strength, but forced to this value when called by the post vgui AA pass.
mat_software_aa_tap_offset               : 1        : , "a", "cl"      : Software AA - adjusts the displacement of the taps used by the software AA shader (default 1.0 - a lower value will make the image sharper, higher will make it blurrier)
mat_softwarelighting                     : 0        :                  :
mat_softwareskin                         : 0        : , "cheat"        :
mat_specular                             : 1        :                  : Enable/Disable specularity for perf testing.  Will cause a material reload upon change.
mat_spew_on_texture_size                 : 0        :                  : Print warnings about vtf content that isn't of the expected size
mat_spewvertexandpixelshaders            : cmd      :                  : Print all vertex and pixel shaders currently loaded to the console
mat_stub                                 : 0        : , "cheat", "cl"  :
mat_surfaceid                            : 0        : , "cheat"        :
mat_surfacemat                           : 0        : , "cheat"        :
mat_texture_limit                        : -1       : , "numeric"      : If this value is not -1, the material system will limit the amount of texture memory it uses in a frame. Useful for identifying performance cliffs. The value is in kilobytes.
mat_texture_list                         : 0        : , "cheat"        : For debugging, show a list of used textures per frame
+mat_texture_list                        : cmd      :                  :
-mat_texture_list                        : cmd      :                  :
mat_texture_list_all                     : 0        : , "cheat", "numeric" : If this is nonzero, then the texture list panel will show all currently-loaded textures.
mat_texture_list_content_path            : 0        : , "a"            : The content path to the materialsrc directory. If left unset, it'll assume your content directory is next to the currently running game dir.
mat_texture_list_txlod                   : cmd      :                  : Adjust LOD of the last viewed texture +1 to inc resolution, -1 to dec resolution
mat_texture_list_txlod_sync              : cmd      :                  : 'reset' - resets all run-time changes to LOD overrides, 'save' - saves all changes to material content files
mat_texture_list_view                    : 1        : , "cheat", "numeric" : If this is nonzero, then the texture list panel will render thumbnails of currently-loaded textures.
mat_texture_outline_fonts                : cmd      :                  : Outline fonts textures.
mat_texture_reload_frame_swap_workaround : 0        :                  : Workaround certain GL drivers holding unnecessary amounts of data when loading many materials by forcing synthetic frame swaps
mat_texture_save_fonts                   : cmd      :                  : Save all font textures
mat_texture_tracking                     : 0        :                  :
mat_tonemap_algorithm                    : 1        : , "cheat"        : 0 = Original Algorithm 1 = New Algorithm
mat_tonemap_min_avglum                   : 3        : , "cheat", "cl"  :
mat_tonemap_percent_bright_pixels        : 2        : , "cheat", "cl"  :
mat_tonemap_percent_target               : 60       : , "cheat", "cl"  :
mat_tonemapping_occlusion_use_stencil    : 0        :                  :
mat_trilinear                            : 1        :                  :
mat_use_compressed_hdr_textures          : 1        :                  :
mat_viewportscale                        : 1        : , "a", "cl"      : Scale down the main viewport (to reduce GPU impact on CPU profiling)
mat_viewportupscale                      : 1        : , "a", "cl"      : Scale the viewport back up
mat_visualize_dof                        : 0        : , "cheat"        :
mat_vrmode_adapter                       : -1       :                  :
mat_vsync                                : 0        :                  : Force sync to vertical retrace
mat_wateroverlaysize                     : 256      : , "cl"           :
mat_wireframe                            : 0        : , "cheat"        :
mat_yuv                                  : 0        : , "cheat", "cl"  :
matchmakingport                          : 27025    :                  : Host Matchmaking port
maxplayers                               : cmd      :                  : Change the maximum number of players allowed on this server.
mem_compact                              : cmd      :                  :
mem_dump                                 : cmd      :                  : Dump memory stats to text file.
mem_dumpstats                            : 0        :                  : Dump current and max heap usage info to console at end of frame ( set to 2 for continuous output )
mem_dumpvballocs                         : cmd      :                  : Dump VB memory allocation stats.
mem_eat                                  : cmd      :                  :
mem_force_flush                          : 0        : , "cheat"        : Force cache flush of unlocked resources on every alloc
mem_max_heapsize                         : 256      :                  : Maximum amount of memory to dedicate to engine hunk and datacache (in mb)
mem_max_heapsize_dedicated               : 64       :                  : Maximum amount of memory to dedicate to engine hunk and datacache, for dedicated server (in mb)
mem_min_heapsize                         : 144      :                  : Minimum amount of memory to dedicate to engine hunk and datacache (in mb)
mem_periodicdumps                        : 0        :                  : Write periodic memstats dumps every n seconds.
mem_test                                 : cmd      :                  :
mem_test_each_frame                      : 0        :                  : Run heap check at end of every frame
mem_test_every_n_seconds                 : 0        :                  : Run heap check at a specified interval
mem_vcollide                             : cmd      :                  : Dumps the memory used by vcollides
memory                                   : cmd      :                  : Print memory stats.
memory_diff                              : cmd      :                  : show memory stats relative to snapshot
memory_list                              : cmd      :                  : dump memory list (linux only)
memory_mark                              : cmd      :                  : snapshot current allocation status
memory_status                            : cmd      :                  : show memory stats (linux only)
menuselect                               : cmd      :                  : menuselect
minisave                                 : cmd      :                  : Saves game (for current level only!)
mission_list                             : cmd      :                  : List all available tactical missions
mission_show                             : cmd      :                  : Show the given mission
mm_add_item                              : cmd      :                  : Add a stats item
mm_add_player                            : cmd      :                  : Add a player
mm_max_spectators                        : 4        :                  : Max players allowed on the spectator team
mm_message                               : cmd      :                  : Send a message to all remote clients
mm_minplayers                            : 2        :                  : Number of players required to start an unranked game
mm_select_session                        : cmd      :                  : Select a session
mm_session_info                          : cmd      :                  : Dump session information
mm_stats                                 : cmd      :                  :
mod_forcedata                            : 1        :                  : Forces all model file data into cache on model load.
mod_forcetouchdata                       : 1        :                  : Forces all model file data into cache on model load.
mod_load_anims_async                     : 0        :                  :
mod_load_fakestall                       : 0        :                  : Forces all ANI file loading to stall for specified ms
mod_load_mesh_async                      : 0        :                  :
mod_load_showstall                       : 0        :                  : 1 - show hitches , 2 - show stalls
mod_load_vcollide_async                  : 0        :                  :
mod_lock_mdls_on_load                    : 0        :                  :
mod_offline_hdr_switch                   : 0        :                  : Re-order the HDR/LDR mode switch to do most of the material system reloading with the device offline. This reduces unnecessary device resource uploads and may drastically reduce load time and memory pressure on certain drivers, but may trigger bugs in some very old source engine pathways.
mod_test_mesh_not_available              : 0        : , "cheat"        :
mod_test_not_available                   : 0        : , "cheat"        :
mod_test_verts_not_available             : 0        : , "cheat"        :
mod_touchalldata                         : 1        :                  : Touch model data during level startup
mod_trace_load                           : 0        :                  :
model_list                               : cmd      :                  : Dump model list to file
motdfile                                 : 0        : , "sv"           : The MOTD file to load.
motdfile_text                            : 0        : , "sv"           : The text-only MOTD file to use for clients that have disabled HTML MOTDs.
+movedown                                : cmd      :                  :
-movedown                                : cmd      :                  :
+moveleft                                : cmd      :                  :
-moveleft                                : cmd      :                  :
+moveright                               : cmd      :                  :
-moveright                               : cmd      :                  :
+moveup                                  : cmd      :                  :
-moveup                                  : cmd      :                  :
movie_fixwave                            : cmd      :                  : Fixup corrupted .wav file if engine crashed during startmovie/endmovie, etc.
mp_allowNPCs                             : 1        : , "sv", "nf"     :
mp_allowspectators                       : 1        : , "sv", "rep"    : toggles whether the server allows spectator mode or not
mp_autocrosshair                         : 1        : , "sv", "nf"     :
mp_autoteambalance                       : 1        : , "sv", "nf"     : Automatically balance the teams based on mp_teams_unbalance_limit. 0 = off, 1 = forcibly switch, 2 = ask volunteers
mp_bonusroundtime                        : 15       : , "sv", "rep"    : Time after round win until round restarts
mp_chattime                              : 10       : , "sv", "rep"    : amount of time players can chat after the game is over
mp_clan_ready_signal                     : 0        : , "sv"           : Text that team leader from each team must speak for the match to begin
mp_clan_readyrestart                     : 0        : , "sv"           : If non-zero, game will restart once someone from each team gives the ready signal
mp_decals                                : 200      : , "a"            :
mp_defaultteam                           : 0        : , "sv"           :
mp_disable_autokick                      : cmd      :                  : Prevents a userid from being auto-kicked
mp_disable_respawn_times                 : 0        : , "sv", "nf", "rep" :
mp_enableroundwaittime                   : 1        : , "sv", "rep"    : Enable timers to wait between rounds.
mp_fadetoblack                           : 0        : , "sv", "nf", "rep" : fade a player's screen to black when he dies
mp_falldamage                            : 0        : , "sv", "nf"     :
mp_flashlight                            : 0        : , "sv", "nf"     :
mp_footsteps                             : 1        : , "sv", "nf"     :
mp_forceautoteam                         : 0        : , "sv", "nf", "rep" : Automatically assign players to teams when joining.
mp_forcecamera                           : 1        : , "sv", "rep"    : Restricts spectator modes for dead players
mp_forcerespawn                          : 1        : , "sv", "nf"     :
mp_forcerespawnplayers                   : cmd      :                  : Force all players to respawn.
mp_forcewin                              : cmd      :                  : Forces team to win
mp_fraglimit                             : 0        : , "sv", "nf", "rep" : The number of kills at which the map ends
mp_friendlyfire                          : 0        : , "sv", "nf", "rep" : Allows team members to injure other members of their team
mp_highlander                            : 0        : , "sv", "nf", "rep" : Allow only 1 of each player class type.
mp_holiday_nogifts                       : 0        : , "sv", "nf"     : Set to 1 to prevent holiday gifts from spawning when players are killed.
mp_humans_must_join_team                 : 0        : , "sv", "rep"    : Restricts human players to a single team {any, blue, red, spectator}
mp_idledealmethod                        : 1        : , "sv"           : Deals with Idle Players. 1 = Sends them into Spectator mode then kicks them if they're still idle, 2 = Kicks them out of the game;
mp_idlemaxtime                           : 3        : , "sv"           : Maximum time a player is allowed to be idle (in minutes)
mp_mapcycle_empty_timeout_seconds        : 0        : , "sv", "rep"    : If nonzero, server will cycle to the next map if it has been empty on the current map for N seconds
mp_match_end_at_timelimit                : 0        : , "sv", "nf"     : Allow the match to end when mp_timelimit hits instead of waiting for the end of the current round.
mp_maxrounds                             : 0        : , "sv", "nf", "rep" : max number of rounds to play before server changes maps
mp_respawnwavetime                       : 10       : , "sv", "nf", "rep" : Time between respawn waves.
mp_restartgame                           : 0        : , "sv"           : If non-zero, game will restart in the specified number of seconds
mp_restartgame_immediate                 : 0        : , "sv"           : If non-zero, game will restart immediately
mp_restartround                          : 0        : , "sv"           : If non-zero, the current round will restart in the specified number of seconds
mp_scrambleteams                         : cmd      :                  : Scramble the teams and restart the game
mp_scrambleteams_auto                    : 1        : , "sv", "nf"     : Server will automatically scramble the teams if criteria met.  Only works on dedicated servers.
mp_scrambleteams_auto_windifference      : 2        : , "sv", "nf"     : Number of round wins a team must lead by in order to trigger an auto scramble.
mp_show_voice_icons                      : 1        : , "sv", "rep"    : Show overhead player voice icons when players are speaking.
mp_showrespawntimes                      : cmd      :                  : Show the min respawn times for the teams
mp_simulatemultiplecappers               : 1        : , "sv", "cheat"  :
mp_spectators_restricted                 : 0        : , "sv"           : Prevent players on game teams from joining team spectator if it would unbalance the teams.
mp_stalemate_enable                      : 0        : , "sv", "nf"     : Enable/Disable stalemate mode.
mp_stalemate_meleeonly                   : 0        : , "sv", "nf", "rep" : Restrict everyone to melee weapons only while in Sudden Death.
mp_stalemate_timelimit                   : 240      : , "sv", "rep"    : Timelimit (in seconds) of the stalemate round.
mp_switchteams                           : cmd      :                  : Switch teams and restart the game
mp_teamlist                              : 0        : , "sv", "nf"     :
mp_teamoverride                          : 1        : , "sv"           :
mp_teamplay                              : 0        : , "sv", "nf"     :
mp_teams_unbalance_limit                 : 1        : , "sv", "rep"    : Teams are unbalanced when one team has this many more players than the other team. (0 disables check)
mp_time_between_capscoring               : 30       : , "sv"           : Delay between scoring of owned capture points.
mp_timelimit                             : 0        : , "sv", "nf", "rep" : game time per map in minutes
mp_tournament                            : 0        : , "sv", "nf", "rep" :
mp_tournament_allow_non_admin_restart    : 1        : , "sv"           : Allow mp_tournament_restart command to be issued by players other than admin.
mp_tournament_post_match_period          : 90       : , "sv", "rep"    : The amount of time (in seconds) before the server resets post-match.
mp_tournament_prevent_team_switch_on_readyup : 1        : , "sv"           : Prevent switching teams on ready-up for subsequent rounds in tournament mode.
mp_tournament_readymode                  : 0        : , "sv", "nf", "rep" : Enable per-player ready status for tournament mode.
mp_tournament_readymode_countdown        : 10       : , "sv", "nf", "rep" : The number of seconds before a match begins when both teams are ready.
mp_tournament_readymode_min              : 2        : , "sv", "nf", "rep" : Minimum number of players required on the server before players can toggle ready status.
mp_tournament_readymode_team_size        : 0        : , "sv", "nf", "rep" : Minimum number of players required to be ready per-team before the game can begin.
mp_tournament_restart                    : cmd      :                  : Restart Tournament Mode on the current level.
mp_tournament_stopwatch                  : 1        : , "sv", "nf", "rep" : Use Stopwatch mode while using Tournament mode (mp_tournament)
mp_tournament_whitelist                  : 0        : , "sv"           : Specifies the item whitelist file to use.
mp_usehwmmodels                          : 0        : , "cl"           : Enable the use of the hw morph models. (-1 = never, 1 = always, 0 = based upon GPU)
mp_usehwmvcds                            : 0        : , "cl"           : Enable the use of the hw morph vcd(s). (-1 = never, 1 = always, 0 = based upon GPU)
mp_waitingforplayers_cancel              : 0        : , "sv"           : Set to 1 to end the WaitingForPlayers period.
mp_waitingforplayers_restart             : 0        : , "sv"           : Set to 1 to start or restart the WaitingForPlayers period.
mp_weaponstay                            : 0        : , "sv", "nf"     :
mp_windifference                         : 0        : , "sv", "nf", "rep" : Score difference between teams before server changes maps
mp_windifference_min                     : 0        : , "sv", "nf", "rep" : Minimum score needed for mp_windifference to be applied
mp_winlimit                              : 0        : , "sv", "nf", "rep" : Max score one team can reach before server changes maps
multvar                                  : cmd      :                  : Multiply specified convar value.
muzzleflash_light                        : 1        : , "a", "cl"      :
name                                     : 0        : , "a", "user", "print", "server_can_execute" : Current user name
namelockid                               : cmd      :                  : Prevent name changes for this userID.
nav_add_to_selected_set                  : cmd      :                  : Add current area to the selected set.
nav_add_to_selected_set_by_id            : cmd      :                  : Add specified area id to the selected set.
nav_analyze                              : cmd      :                  : Re-analyze the current Navigation Mesh and save it to disk.
nav_area_bgcolor                         : 0        : , "sv", "cheat"  : RGBA color to draw as the background color for nav areas while editing.
nav_area_max_size                        : 50       : , "sv", "cheat"  : Max area size created in nav generation
nav_avoid                                : cmd      :                  : Toggles the 'avoid this area when possible' flag used by the AI system.
nav_begin_area                           : cmd      :                  : Defines a corner of a new Area or Ladder. To complete the Area or Ladder, drag the opposite corner to the desired location and issue a 'nav_end_area' command.
nav_begin_deselecting                    : cmd      :                  : Start continuously removing from the selected set.
nav_begin_drag_deselecting               : cmd      :                  : Start dragging a selection area.
nav_begin_drag_selecting                 : cmd      :                  : Start dragging a selection area.
nav_begin_selecting                      : cmd      :                  : Start continuously adding to the selected set.
nav_begin_shift_xy                       : cmd      :                  : Begin shifting the Selected Set.
nav_build_ladder                         : cmd      :                  : Attempts to build a nav ladder on the climbable surface under the cursor.
nav_check_file_consistency               : cmd      :                  : Scans the maps directory and reports any missing/out-of-date navigation files.
nav_check_floor                          : cmd      :                  : Updates the blocked/unblocked status for every nav area.
nav_check_stairs                         : cmd      :                  : Update the nav mesh STAIRS attribute
nav_chop_selected                        : cmd      :                  : Chops all selected areas into their component 1x1 areas
nav_clear_attribute                      : cmd      :                  : Remove given nav attribute from all areas in the selected set.
nav_clear_selected_set                   : cmd      :                  : Clear the selected set.
nav_clear_walkable_marks                 : cmd      :                  : Erase any previously placed walkable positions.
nav_compress_id                          : cmd      :                  : Re-orders area and ladder ID's so they are continuous.
nav_connect                              : cmd      :                  : To connect two Areas, mark the first Area, highlight the second Area, then invoke the connect command. Note that this creates a ONE-WAY connection from the first to the second Area. To make a two-way connection, also connect the second area to the first.
nav_coplanar_slope_limit                 : 0        : , "sv", "cheat"  :
nav_coplanar_slope_limit_displacement    : 0        : , "sv", "cheat"  :
nav_corner_adjust_adjacent               : 18       : , "sv", "cheat"  : radius used to raise/lower corners in nearby areas when raising/lowering corners.
nav_corner_lower                         : cmd      :                  : Lower the selected corner of the currently marked Area.
nav_corner_place_on_ground               : cmd      :                  : Places the selected corner of the currently marked Area on the ground.
nav_corner_raise                         : cmd      :                  : Raise the selected corner of the currently marked Area.
nav_corner_select                        : cmd      :                  : Select a corner of the currently marked Area. Use multiple times to access all four corners.
nav_create_area_at_feet                  : 0        : , "sv", "cheat"  : Anchor nav_begin_area Z to editing player's feet
nav_create_place_on_ground               : 0        : , "sv", "cheat"  : If true, nav areas will be placed flush with the ground when created by hand.
nav_crouch                               : cmd      :                  : Toggles the 'must crouch in this area' flag used by the AI system.
nav_debug_blocked                        : 0        : , "sv", "cheat"  :
nav_delete                               : cmd      :                  : Deletes the currently highlighted Area.
nav_delete_marked                        : cmd      :                  : Deletes the currently marked Area (if any).
nav_disconnect                           : cmd      :                  : To disconnect two Areas, mark an Area, highlight a second Area, then invoke the disconnect command. This will remove all connections between the two Areas.
nav_disconnect_outgoing_oneways          : cmd      :                  : For each area in the selected set, disconnect all outgoing one-way connections.
nav_displacement_test                    : 10000    : , "sv", "cheat"  : Checks for nodes embedded in displacements (useful for in-development maps)
nav_dont_hide                            : cmd      :                  : Toggles the 'area is not suitable for hiding spots' flag used by the AI system.
nav_drag_selection_volume_zmax_offset    : 32       : , "sv", "rep"    : The offset of the nav drag volume top from center
nav_drag_selection_volume_zmin_offset    : 32       : , "sv", "rep"    : The offset of the nav drag volume bottom from center
nav_draw_limit                           : 500      : , "sv", "cheat"  : The maximum number of areas to draw in edit mode
nav_dump_selected_set_positions          : cmd      :                  : Write the (x,y,z) coordinates of the centers of all selected nav areas to a file.
nav_edit                                 : 0        : , "sv", "cheat"  : Set to one to interactively edit the Navigation Mesh. Set to zero to leave edit mode.
nav_end_area                             : cmd      :                  : Defines the second corner of a new Area or Ladder and creates it.
nav_end_deselecting                      : cmd      :                  : Stop continuously removing from the selected set.
nav_end_drag_deselecting                 : cmd      :                  : Stop dragging a selection area.
nav_end_drag_selecting                   : cmd      :                  : Stop dragging a selection area.
nav_end_selecting                        : cmd      :                  : Stop continuously adding to the selected set.
nav_end_shift_xy                         : cmd      :                  : Finish shifting the Selected Set.
nav_flood_select                         : cmd      :                  : Selects the current Area and all Areas connected to it, recursively. To clear a selection, use this command again.
nav_gen_cliffs_approx                    : cmd      :                  : Mark cliff areas, post-processing approximation
nav_generate                             : cmd      :                  : Generate a Navigation Mesh for the current map and save it to disk.
nav_generate_fencetops                   : 1        : , "sv", "cheat"  : Autogenerate nav areas on fence and obstacle tops
nav_generate_fixup_jump_areas            : 1        : , "sv", "cheat"  : Convert obsolete jump areas into 2-way connections
nav_generate_incremental                 : cmd      :                  : Generate a Navigation Mesh for the current map and save it to disk.
nav_generate_incremental_range           : 2000     : , "sv", "cheat"  :
nav_generate_incremental_tolerance       : 0        : , "sv", "cheat"  : Z tolerance for adding new nav areas.
nav_generate_jump_connections            : 1        : , "sv", "cheat"  : If disabled, don't generate jump connections from jump areas
nav_jump                                 : cmd      :                  : Toggles the 'traverse this area by jumping' flag used by the AI system.
nav_ladder_flip                          : cmd      :                  : Flips the selected ladder's direction.
nav_load                                 : cmd      :                  : Loads the Navigation Mesh for the current map.
nav_lower_drag_volume_max                : cmd      :                  : Lower the top of the drag select volume.
nav_lower_drag_volume_min                : cmd      :                  : Lower the bottom of the drag select volume.
nav_make_sniper_spots                    : cmd      :                  : Chops the marked area into disconnected sub-areas suitable for sniper spots.
nav_mark                                 : cmd      :                  : Marks the Area or Ladder under the cursor for manipulation by subsequent editing commands.
nav_mark_attribute                       : cmd      :                  : Set nav attribute for all areas in the selected set.
nav_mark_unnamed                         : cmd      :                  : Mark an Area with no Place name. Useful for finding stray areas missed when Place Painting.
nav_mark_walkable                        : cmd      :                  : Mark the current location as a walkable position. These positions are used as seed locations when sampling the map to generate a Navigation Mesh.
nav_max_view_distance                    : 6000     : , "sv", "cheat"  : Maximum range for precomputed nav mesh visibility (0 = default 1500 units)
nav_max_vis_delta_list_length            : 64       : , "sv", "cheat"  :
nav_merge                                : cmd      :                  : To merge two Areas into one, mark the first Area, highlight the second by pointing your cursor at it, and invoke the merge command.
nav_merge_mesh                           : cmd      :                  : Merges a saved selected set into the current mesh.
nav_no_hostages                          : cmd      :                  : Toggles the 'hostages cannot use this area' flag used by the AI system.
nav_no_jump                              : cmd      :                  : Toggles the 'dont jump in this area' flag used by the AI system.
nav_place_floodfill                      : cmd      :                  : Sets the Place of the Area under the cursor to the curent Place, and 'flood-fills' the Place to all adjacent Areas. Flood-filling stops when it hits an Area with the same Place, or a different Place than that of the initial Area.
nav_place_list                           : cmd      :                  : Lists all place names used in the map.
nav_place_pick                           : cmd      :                  : Sets the current Place to the Place of the Area under the cursor.
nav_place_replace                        : cmd      :                  : Replaces all instances of the first place with the second place.
nav_place_set                            : cmd      :                  : Sets the Place of all selected areas to the current Place.
nav_potentially_visible_dot_tolerance    : 0        : , "sv", "cheat"  :
nav_precise                              : cmd      :                  : Toggles the 'dont avoid obstacles' flag used by the AI system.
nav_quicksave                            : 1        : , "sv", "cheat"  : Set to one to skip the time consuming phases of the analysis.  Useful for data collection and testing.
nav_raise_drag_volume_max                : cmd      :                  : Raise the top of the drag select volume.
nav_raise_drag_volume_min                : cmd      :                  : Raise the bottom of the drag select volume.
nav_recall_selected_set                  : cmd      :                  : Re-selects the stored selected set.
nav_remove_from_selected_set             : cmd      :                  : Remove current area from the selected set.
nav_remove_jump_areas                    : cmd      :                  : Removes legacy jump areas, replacing them with connections.
nav_run                                  : cmd      :                  : Toggles the 'traverse this area by running' flag used by the AI system.
nav_save                                 : cmd      :                  : Saves the current Navigation Mesh to disk.
nav_save_selected                        : cmd      :                  : Writes the selected set to disk for merging into another mesh via nav_merge_mesh.
nav_select_blocked_areas                 : cmd      :                  : Adds all blocked areas to the selected set
nav_select_damaging_areas                : cmd      :                  : Adds all damaging areas to the selected set
nav_select_half_space                    : cmd      :                  : Selects any areas that intersect the given half-space.
nav_select_invalid_areas                 : cmd      :                  : Adds all invalid areas to the Selected Set.
nav_select_larger_than                   : cmd      :                  : Select nav areas where both dimensions are larger than the given size.
nav_select_obstructed_areas              : cmd      :                  : Adds all obstructed areas to the selected set
nav_select_orphans                       : cmd      :                  : Adds all orphan areas to the selected set (highlight a valid area first).
nav_select_overlapping                   : cmd      :                  : Selects nav areas that are overlapping others.
nav_select_radius                        : cmd      :                  : Adds all areas in a radius to the selection set
nav_select_stairs                        : cmd      :                  : Adds all stairway areas to the selected set
nav_selected_set_border_color            : 100      : , "sv", "cheat"  : Color used to draw the selected set borders while editing.
nav_selected_set_color                   : 255      : , "sv", "cheat"  : Color used to draw the selected set background while editing.
nav_set_place_mode                       : cmd      :                  : Sets the editor into or out of Place mode. Place mode allows labelling of Area with Place names.
nav_shift                                : cmd      :                  : Shifts the selected areas by the specified amount
nav_show_approach_points                 : 0        : , "sv", "cheat"  : Show Approach Points in the Navigation Mesh.
nav_show_area_info                       : 0        : , "sv", "cheat"  : Duration in seconds to show nav area ID and attributes while editing
nav_show_compass                         : 0        : , "sv", "cheat"  :
nav_show_continguous                     : 0        : , "sv", "cheat"  : Highlight non-contiguous connections
nav_show_danger                          : 0        : , "sv", "cheat"  : Show current 'danger' levels.
nav_show_dumped_positions                : cmd      :                  : Show the (x,y,z) coordinate positions of the given dump file.
nav_show_func_nav_avoid                  : 0        : , "sv", "cheat"  : Show areas of designer-placed bot avoidance due to func_nav_avoid entities
nav_show_func_nav_prefer                 : 0        : , "sv", "cheat"  : Show areas of designer-placed bot preference due to func_nav_prefer entities
nav_show_func_nav_prerequisite           : 0        : , "sv", "cheat"  : Show areas of designer-placed bot preference due to func_nav_prerequisite entities
nav_show_light_intensity                 : 0        : , "sv", "cheat"  :
nav_show_node_grid                       : 0        : , "sv", "cheat"  :
nav_show_node_id                         : 0        : , "sv", "cheat"  :
nav_show_nodes                           : 0        : , "sv", "cheat"  :
nav_show_player_counts                   : 0        : , "sv", "cheat"  : Show current player counts in each area.
nav_show_potentially_visible             : 0        : , "sv", "cheat"  : Show areas that are potentially visible from the current nav area
nav_simplify_selected                    : cmd      :                  : Chops all selected areas into their component 1x1 areas and re-merges them together into larger areas
nav_slope_limit                          : 0        : , "sv", "cheat"  : The ground unit normal's Z component must be greater than this for nav areas to be generated.
nav_slope_tolerance                      : 0        : , "sv", "cheat"  : The ground unit normal's Z component must be this close to the nav area's Z component to be generated.
nav_snap_to_grid                         : 0        : , "sv", "cheat"  : Snap to the nav generation grid when creating new nav areas
nav_solid_props                          : 0        : , "sv", "cheat"  : Make props solid to nav generation/editing
nav_splice                               : cmd      :                  : To splice, mark an area, highlight a second area, then invoke the splice command to create a new, connected area between them.
nav_split                                : cmd      :                  : To split an Area into two, align the split line using your cursor and invoke the split command.
nav_split_place_on_ground                : 0        : , "sv", "cheat"  : If true, nav areas will be placed flush with the ground when split.
nav_stand                                : cmd      :                  : Toggles the 'stand while hiding' flag used by the AI system.
nav_stop                                 : cmd      :                  : Toggles the 'must stop when entering this area' flag used by the AI system.
nav_store_selected_set                   : cmd      :                  : Stores the current selected set for later retrieval.
nav_strip                                : cmd      :                  : Strips all Hiding Spots, Approach Points, and Encounter Spots from the current Area.
nav_subdivide                            : cmd      :                  : Subdivides all selected areas.
nav_test_node                            : 0        : , "sv", "cheat"  :
nav_test_node_crouch                     : 0        : , "sv", "cheat"  :
nav_test_node_crouch_dir                 : 4        : , "sv", "cheat"  :
nav_test_stairs                          : cmd      :                  : Test the selected set for being on stairs
nav_toggle_deselecting                   : cmd      :                  : Start or stop continuously removing from the selected set.
nav_toggle_in_selected_set               : cmd      :                  : Remove current area from the selected set.
nav_toggle_place_mode                    : cmd      :                  : Toggle the editor into and out of Place mode. Place mode allows labelling of Area with Place names.
nav_toggle_place_painting                : cmd      :                  : Toggles Place Painting mode. When Place Painting, pointing at an Area will 'paint' it with the current Place.
nav_toggle_selected_set                  : cmd      :                  : Toggles all areas into/out of the selected set.
nav_toggle_selecting                     : cmd      :                  : Start or stop continuously adding to the selected set.
nav_transient                            : cmd      :                  : Toggles the 'area is transient and may become blocked' flag used by the AI system.
nav_unmark                               : cmd      :                  : Clears the marked Area or Ladder.
nav_update_blocked                       : cmd      :                  : Updates the blocked/unblocked status for every nav area.
nav_update_lighting                      : cmd      :                  : Recomputes lighting values
nav_update_visibility_on_edit            : 0        : , "sv", "cheat"  : If nonzero editing the mesh will incrementally recompue visibility
nav_use_place                            : cmd      :                  : If used without arguments, all available Places will be listed. If a Place argument is given, the current Place is set.
nav_walk                                 : cmd      :                  : Toggles the 'traverse this area by walking' flag used by the AI system.
nav_warp_to_mark                         : cmd      :                  : Warps the player to the marked area.
nav_world_center                         : cmd      :                  : Centers the nav mesh in the world
nb_allow_avoiding                        : 1        : , "sv", "cheat"  :
nb_allow_climbing                        : 1        : , "sv", "cheat"  :
nb_allow_gap_jumping                     : 1        : , "sv", "cheat"  :
nb_blind                                 : 0        : , "sv", "cheat"  : Disable vision
nb_command                               : cmd      :                  : Sends a command string to all bots
nb_debug                                 : cmd      :                  : Debug NextBots.  Categories are: BEHAVIOR, LOOK_AT, PATH, ANIMATION, LOCOMOTION, VISION, HEARING, EVENTS, ERRORS.
nb_debug_climbing                        : 0        : , "sv", "cheat"  :
nb_debug_filter                          : cmd      :                  : Add items to the NextBot debug filter. Items can be entindexes or part of the indentifier of one or more bots.
nb_debug_history                         : 1        : , "sv", "cheat"  : If true, each bot keeps a history of debug output in memory
nb_debug_known_entities                  : 0        : , "sv", "cheat"  : Show the 'known entities' for the bot that is the current spectator target
nb_delete_all                            : cmd      :                  : Delete all non-player NextBot entities.
nb_force_look_at                         : cmd      :                  : Force selected bot to look at the local player's position
nb_goal_look_ahead_range                 : 50       : , "sv", "cheat"  :
nb_head_aim_resettle_angle               : 100      : , "sv", "cheat"  : After rotating through this angle, the bot pauses to 'recenter' its virtual mouse on its virtual mousepad
nb_head_aim_resettle_time                : 0        : , "sv", "cheat"  : How long the bot pauses to 'recenter' its virtual mouse on its virtual mousepad
nb_head_aim_settle_duration              : 0        : , "sv", "cheat"  :
nb_head_aim_steady_max_rate              : 100      : , "sv", "cheat"  :
nb_ladder_align_range                    : 50       : , "sv", "cheat"  :
nb_last_area_update_tolerance            : 4        : , "sv", "cheat"  : Distance a character needs to travel in order to invalidate cached area
nb_move_to_cursor                        : cmd      :                  : Tell all NextBots to move to the cursor position
nb_path_draw_inc                         : 100      : , "sv", "cheat"  :
nb_path_draw_segment_count               : 100      : , "sv", "cheat"  :
nb_path_segment_influence_radius         : 100      : , "sv", "cheat"  :
nb_player_crouch                         : 0        : , "sv", "cheat"  : Force bots to crouch
nb_player_move                           : 1        : , "sv", "cheat"  : Prevents bots from moving
nb_player_move_direct                    : 0        : , "sv"           :
nb_player_stop                           : 0        : , "sv", "cheat"  : Stop all NextBotPlayers from updating
nb_player_walk                           : 0        : , "sv", "cheat"  : Force bots to walk
nb_saccade_speed                         : 1000     : , "sv", "cheat"  :
nb_saccade_time                          : 0        : , "sv", "cheat"  :
nb_select                                : cmd      :                  : Select the bot you are aiming at for further debug operations.
nb_shadow_dist                           : 400      : , "cl"           :
nb_speed_look_ahead_range                : 150      : , "sv", "cheat"  :
nb_stop                                  : 0        : , "sv", "cheat", "rep" : Stop all NextBots
nb_update_debug                          : 0        : , "sv", "cheat"  :
nb_update_framelimit                     : 15       : , "sv", "cheat"  :
nb_update_frequency                      : 0        : , "sv", "cheat"  :
nb_update_maxslide                       : 2        : , "sv", "cheat"  :
nb_warp_selected_here                    : cmd      :                  : Teleport the selected bot to your cursor position
net_blockmsg                             : 0        : , "cheat"        : Discards incoming message: <0|1|name>
net_chan_limit_msec                      : 0        :                  : Netchannel processing is limited to so many milliseconds, abort connection if exceeding budget
net_chan_stats_dump                      : 0        :                  : Netchannel statistics will dump in the logs upon request
net_chan_stats_dump_top_msgs             : 5        :                  : Netchannel statistics will dump so many top messages in each category
net_chan_stats_lru                       : 3        :                  : Netchannel statistics LRU accumulation buffer size
net_channels                             : cmd      :                  : Shows net channel info
net_chokeloop                            : 0        :                  : Apply bandwidth choke to loopback packets
net_compresspackets                      : 1        :                  : Use compression on game packets.
net_compresspackets_minsize              : 1024     :                  : Don't bother compressing packets below this size.
net_compressvoice                        : 0        :                  : Attempt to compress out of band voice payloads (360 only).
net_disconnect_reason                    : 0        :                  : Whether the server should relay the disconnect reason to clients.
net_drawslider                           : 0        :                  : Draw completion slider during signon
net_droponsendoverflow                   : 0        :                  : If enabled, channel will drop client when sending too much data causes buffer overrun
net_droppackets                          : 0        : , "cheat"        : Drops next n packets on client
net_fakejitter                           : 0        : , "cheat"        : Jitter fakelag packet time
net_fakelag                              : 0        : , "cheat"        : Lag all incoming network data (including loopback) by this many milliseconds.
net_fakeloss                             : 0        : , "cheat"        : Simulate packet loss as a percentage (negative means drop 1/n packets)
net_graph                                : 0        : , "cl"           : Draw the network usage graph, = 2 draws data on payload, = 3 draws payload legend.
net_graphheight                          : 64       : , "a", "cl"      : Height of netgraph panel
net_graphmsecs                           : 400      : , "a", "cl"      : The latency graph represents this many milliseconds.
net_graphpos                             : 1        : , "a", "cl"      :
net_graphproportionalfont                : 1        : , "a", "cl"      : Determines whether netgraph font is proportional or not
net_graphshowinterp                      : 1        : , "a", "cl"      : Draw the interpolation graph.
net_graphshowlatency                     : 1        : , "a", "cl"      : Draw the ping/packet loss graph.
net_graphsolid                           : 1        : , "a", "cl"      :
net_graphtext                            : 1        : , "a", "cl"      : Draw text fields
net_maxcleartime                         : 4        :                  : Max # of seconds we can wait for next packets to be sent based on rate setting (0 == no limit).
net_maxfilesize                          : 16       :                  : Maximum allowed file size for uploading in MB
net_maxfragments                         : 1260     :                  : Max fragment bytes per packet
net_maxpacketdrop                        : 5000     :                  : Ignore any packets with the sequence number more than this ahead (0 == no limit)
net_maxroutable                          : 1260     : , "a", "user"    : Requested max packet size before packets are 'split'.
net_queue_trace                          : 0        :                  :
net_queued_packet_thread                 : 1        :                  : Use a high priority thread to send queued packets out instead of sending them each frame.
net_scale                                : 5        : , "a", "cl"      :
net_showdrop                             : 0        :                  : Show dropped packets in console
net_showevents                           : 0        : , "cheat"        : Dump game events to console (1=client only, 2=all).
net_showfragments                        : 0        :                  : Show netchannel fragments
net_showmsg                              : 0        :                  : Show incoming message: <0|1|name>
net_showpeaks                            : 0        :                  : Show messages for large packets only: <size>
net_showsplits                           : 0        :                  : Show info about packet splits
net_showtcp                              : 0        :                  : Dump TCP stream summary to console
net_showudp                              : 0        :                  : Dump UDP packets summary to console
net_showudp_wire                         : 0        :                  : Show incoming packet information
net_splitpacket_maxrate                  : 80000    :                  : Max bytes per second when queueing splitpacket chunks
net_splitrate                            : 1        :                  : Number of fragments for a splitpacket that can be sent per frame
net_start                                : cmd      :                  : Inits multiplayer network sockets
net_status                               : cmd      :                  : Shows current network status
net_udp_rcvbuf                           : 131072   :                  : Default UDP receive buffer size
net_usesocketsforloopback                : 0        :                  : Use network sockets layer even for listen server local player's packets (multiplayer only).
net_warningthrottle                      : 5        :                  : Network warning throttling to specified Hz rate
next                                     : 0        : , "cheat"        : Set to 1 to advance to next frame ( when singlestep == 1 )
nextdemo                                 : cmd      :                  : Play next demo in sequence.
nextlevel                                : 0        : , "sv", "nf"     : If set to a valid map name, will trigger a changelevel to the specified map at the end of the round
noclip                                   : cmd      :                  : Toggle. Player becomes non-solid and flies.
notarget                                 : cmd      :                  : Toggle. Player becomes hidden to NPCs.
npc_ally_deathmessage                    : 1        : , "sv", "cheat"  :
npc_height_adjust                        : 1        : , "a", "sv"      : Enable test mode for ik height adjustment
npc_sentences                            : 0        : , "sv"           :
npc_speakall                             : cmd      :                  : Force the npc to try and speak all their responses
npc_vphysics                             : 0        : , "sv"           :
obj_capture_damage                       : 0        : , "sv"           : Captures all damage taken by objects for dumping later.
obj_dump_damage                          : cmd      :                  :
obj_sapper_amount                        : 25       : , "sv"           : Amount of health inflicted by a Sapper object per second
obj_show_damage                          : 0        : , "sv"           : Show all damage taken by objects.
object_deterioration_time                : 30       : , "sv"           : Time it takes for a fully-healed object to deteriorate.
old_radiusdamage                         : 0        : , "sv", "rep"    :
open_charinfo                            : cmd      :                  : Open the character info panel
open_charinfo_armory                     : cmd      :                  : Open the character info panel directly to armory.
open_charinfo_backpack                   : cmd      :                  : Open the character info panel directly to backpack.
open_charinfo_crafting                   : cmd      :                  : Open the character info panel directly to crafting screen.
open_charinfo_direct                     : cmd      :                  : Open the character info panel directly to the class you're currently playing.
open_replaybrowser                       : cmd      :                  : Open the replay browser.
open_replayinputpanel                    : cmd      :                  : Open replay input panel test
open_store                               : cmd      :                  : Open the in-game store
OpenSteamWorkshopDialog                  : cmd      :                  :
opentf2options                           : cmd      :                  : Displays the TF2 Advanced Options dialog.
opt_EnumerateLeavesFastAlgorithm         : 1        :                  : Use the new SIMD version of CEngineBSPTree::EnumerateLeavesInBox.
option_duck_method                       : 1        : , "a", "sv", "rep" :
option_duck_method_default               : 1        : , "cl"           :
overview_alpha                           : 1        : , "a", "clientcmd_can_execute", "cl" : Overview map translucency.
overview_health                          : 1        : , "a", "clientcmd_can_execute", "cl" : Show player's health in map overview.
overview_locked                          : 1        : , "a", "clientcmd_can_execute", "cl" : Locks map angle, doesn't follow view angle.
overview_mode                            : cmd      :                  : Sets overview map mode off,small,large: <0|1|2>
overview_names                           : 1        : , "a", "clientcmd_can_execute", "cl" : Show player's names in map overview.
overview_tracks                          : 1        : , "a", "clientcmd_can_execute", "cl" : Show player's tracks in map overview.
overview_zoom                            : cmd      :                  : Sets overview map zoom: <zoom> [<time>] [rel]
panel_test_title_safe                    : 0        : , "cheat"        : Test vgui panel positioning with title safe indentation
particle_sim_alt_cores                   : 2        : , "cl"           :
particle_simulateoverflow                : 0        : , "cheat", "cl"  : Used for stress-testing particle systems. Randomly denies creation of particles.
particle_test_attach_attachment          : 0        : , "sv", "cheat"  : Attachment index for attachment mode
particle_test_attach_mode                : 0        : , "sv", "cheat"  : Possible Values: 'start_at_attachment', 'follow_attachment', 'start_at_origin', 'follow_origin'
particle_test_file                       : 0        : , "sv", "cheat"  : Name of the particle system to dynamically spawn
particle_test_start                      : cmd      :                  : Dispatches the test particle system with the parameters specified in particle_test_file,  particle_test_attach_mode and particle_test_attach_param on the entity the player is looking at.  Arguments:    {entity_name} / {class_name} / no argument picks what player is looking at
particle_test_stop                       : cmd      :                  : Stops all particle systems on the selected entities.  Arguments:    {entity_name} / {class_name} / no argument picks what player is looking at
password                                 : 0        : , "a", "norecord" : Current server access password
path                                     : cmd      :                  : Show the engine filesystem path.
pause                                    : cmd      :                  : Toggle the server pause state.
PerfMark                                 : cmd      :                  : inserts a telemetry marker into the stream. If args are provided, they will be included.
perfui                                   : cmd      :                  : Show/hide the level performance tools UI.
perfvisualbenchmark                      : cmd      :                  :
perfvisualbenchmark_abort                : cmd      :                  :
phonemedelay                             : 0        : , "cl"           : Phoneme delay to account for sound system latency.
phonemefilter                            : 0        : , "cl"           : Time duration of box filter to pass over phonemes.
phonemesnap                              : 2        : , "cl"           : Lod at level at which visemes stops always considering two phonemes, regardless of duration.
phys_impactforcescale                    : 1        : , "sv"           :
phys_penetration_error_time              : 10       : , "sv"           : Controls the duration of vphysics penetration error boxes.
phys_pushscale                           : 1        : , "sv", "rep"    :
phys_speeds                              : 0        : , "sv"           :
phys_stressbodyweights                   : 5        : , "sv"           :
phys_timescale                           : 1        : , "sv"           : Scale time for physics
phys_upimpactforcescale                  : 0        : , "sv"           :
physics_budget                           : cmd      :                  : Times the cost of each active object
physics_constraints                      : cmd      :                  : Highlights constraint system graph for an entity
physics_debug_entity                     : cmd      :                  : Dumps debug info for an entity
physics_highlight_active                 : cmd      :                  : Turns on the absbox for all active physics objects
physics_report_active                    : cmd      :                  : Lists all active physics objects
physics_select                           : cmd      :                  : Dumps debug info for an entity
physicsshadowupdate_render               : 0        : , "sv"           :
picker                                   : cmd      :                  : Toggles 'picker' mode.  When picker is on, the bounding box, pivot and debugging text is displayed for whatever entity the player is looking at.  Arguments: full - enables all debug information
ping                                     : cmd      :                  : Display ping to server.
pipeline_static_props                    : 1        :                  :
pixelvis_debug                           : cmd      :                  : Dump debug info
play                                     : cmd      :                  : Play a sound.
playdemo                                 : cmd      :                  : Play a recorded demo file (.dem ).
player_debug_print_damage                : 0        : , "sv", "cheat"  : When true, print amount and type of all damage received by player to console.
player_old_armor                         : 0        : , "sv"           :
player_ready_toggle                      : cmd      :                  : Toggle player ready state
playflush                                : cmd      :                  : Play a sound, reloading from disk in case of changes.
playgamesound                            : cmd      :                  : Play a sound from the game sounds txt file
playsoundscape                           : cmd      :                  : Forces a soundscape to play
playvideo                                : cmd      :                  : Plays a video: <filename> [width height]
playvideo_exitcommand                    : cmd      :                  : Plays a video and fires and exit command when it is stopped or finishes: <filename> <exit command>
playvol                                  : cmd      :                  : Play a sound at a specified volume.
plugin_load                              : cmd      :                  : plugin_load <filename> : loads a plugin
plugin_pause                             : cmd      :                  : plugin_pause <index> : pauses a loaded plugin
plugin_pause_all                         : cmd      :                  : pauses all loaded plugins
plugin_print                             : cmd      :                  : Prints details about loaded plugins
plugin_unload                            : cmd      :                  : plugin_unload <index> : unloads a plugin
plugin_unpause                           : cmd      :                  : plugin_unpause <index> : unpauses a disabled plugin
plugin_unpause_all                       : cmd      :                  : unpauses all disabled plugins
+posedebug                               : cmd      :                  : Turn on pose debugger or add ents to pose debugger UI
-posedebug                               : cmd      :                  : Turn off pose debugger or hide ents from pose debugger UI
print_colorcorrection                    : cmd      :                  : Display the color correction layer information.
progress_enable                          : cmd      :                  :
prop_active_gib_limit                    : 999999   : , "sv"           :
prop_active_gib_max_fade_time            : 999999   : , "sv"           :
prop_crosshair                           : cmd      :                  : Shows name for prop looking at
prop_debug                               : cmd      :                  : Toggle prop debug mode. If on, props will show colorcoded bounding boxes. Red means ignore all damage. White means respond physically to damage but never break. Green maps health in the range of 100 down to 1.
prop_dynamic_create                      : cmd      :                  : Creates a dynamic prop with a specific .mdl aimed away from where the player is looking.  Arguments: {.mdl name}
prop_physics_create                      : cmd      :                  : Creates a physics prop with a specific .mdl aimed away from where the player is looking.  Arguments: {.mdl name}
props_break_max_pieces                   : -1       :                  : Maximum prop breakable piece count (-1 = model default)
props_break_max_pieces_perframe          : -1       : , "sv", "rep"    : Maximum prop breakable piece count per frame (-1 = model default)
pwatchent                                : -1       : , "cheat", "cl"  : Entity to watch for prediction system changes.
pwatchvar                                : 0        : , "cheat", "cl"  : Entity variable to watch in prediction system for changes.
pyro_dof                                 : 1        : , "a", "cl"      :
pyro_max_intensity                       : 0        : , "a", "cl"      :
pyro_max_rate                            : 0        : , "a", "cl"      :
pyro_max_side_length                     : 0        : , "a", "cl"      :
pyro_max_side_width                      : 0        : , "a", "cl"      :
pyro_min_intensity                       : 0        : , "a", "cl"      :
pyro_min_rate                            : 0        : , "a", "cl"      :
pyro_min_side_length                     : 0        : , "a", "cl"      :
pyro_min_side_width                      : 0        : , "a", "cl"      :
pyro_vignette                            : 2        : , "a", "cl"      :
pyro_vignette_distortion                 : 1        : , "a", "cl"      :
+quickswitch                             : cmd      :                  :
-quickswitch                             : cmd      :                  :
quit                                     : cmd      :                  : Exit the engine.
r_3dnow                                  : cmd      :                  : Enable/disable 3DNow code
r_3dsky                                  : 1        : , "cl"           : Enable the rendering of 3d sky boxes
r_AirboatViewDampenDamp                  : 1        : , "sv", "cheat", "nf", "rep" :
r_AirboatViewDampenFreq                  : 7        : , "sv", "cheat", "nf", "rep" :
r_AirboatViewZHeight                     : 0        : , "sv", "cheat", "nf", "rep" :
r_ambientboost                           : 1        : , "a"            : Set to boost ambient term if it is totally swamped by local lights
r_ambientfactor                          : 5        : , "a"            : Boost ambient cube by no more than this factor
r_ambientfraction                        : 0        : , "cheat"        : Fraction of direct lighting that ambient cube must be below to trigger boosting
r_ambientlightingonly                    : 0        : , "cheat"        : Set this to 1 to light models with only ambient lighting (and no static lighting).
r_ambientmin                             : 0        : , "a"            : Threshold above which ambient cube will not boost (i.e. it's already sufficiently bright
r_aspectratio                            : 0        : , "cheat"        :
r_avglight                               : 1        : , "cheat"        :
r_avglightmap                            : 0        : , "cheat"        :
r_bloomtintb                             : 0        :                  :
r_bloomtintexponent                      : 2        :                  :
r_bloomtintg                             : 0        :                  :
r_bloomtintr                             : 0        :                  :
r_cheapwaterend                          : cmd      :                  :
r_cheapwaterstart                        : cmd      :                  :
r_cleardecals                            : cmd      :                  : Usage r_cleardecals <permanent>.
r_ClipAreaPortals                        : 1        : , "cheat"        :
r_colorstaticprops                       : 0        : , "cheat"        :
r_debugcheapwater                        : 0        : , "cheat", "cl"  :
r_debugrandomstaticlighting              : 0        : , "cheat"        : Set to 1 to randomize static lighting for debugging.  Must restart for change to take affect.
r_decal_cover_count                      : 4        :                  :
r_decal_cullsize                         : 5        :                  :
r_decal_overlap_area                     : 0        :                  :
r_decal_overlap_count                    : 3        :                  :
r_decals                                 : 2048     :                  :
r_decalstaticprops                       : 1        :                  : Decal static props test
r_depthoverlay                           : 0        : , "cheat", "cl"  : Replaces opaque objects with their grayscaled depth values. r_showz_power scales the output.
r_DispBuildable                          : 0        : , "cheat"        :
r_DispDrawAxes                           : 0        :                  :
r_DispWalkable                           : 0        : , "cheat"        :
r_dopixelvisibility                      : 1        : , "cl"           :
r_drawbatchdecals                        : 1        :                  : Render decals batched.
r_DrawBeams                              : 1        : , "cheat"        : 0=Off, 1=Normal, 2=Wireframe
r_drawbrushmodels                        : 1        : , "cheat"        : Render brush models. 0=Off, 1=Normal, 2=Wireframe
r_drawclipbrushes                        : 0        : , "cheat"        : Draw clip brushes (red=NPC+player, pink=player, purple=NPC)
r_drawdecals                             : 1        : , "cheat"        : Render decals.
r_drawdetailprops                        : 1        :                  : 0=Off, 1=Normal, 2=Wireframe
r_DrawDisp                               : 1        : , "cheat"        : Toggles rendering of displacment maps
r_drawentities                           : 1        : , "cheat"        :
r_drawflecks                             : 1        :                  :
r_drawfuncdetail                         : 1        : , "cheat"        : Render func_detail
r_drawleaf                               : -1       : , "cheat"        : Draw the specified leaf.
r_drawlightcache                         : 0        : , "cheat"        : 0: off 1: draw light cache entries 2: draw rays
r_drawlightinfo                          : 0        : , "cheat"        :
r_drawlights                             : 0        : , "cheat"        :
r_drawmodeldecals                        : 1        :                  :
r_DrawModelLightOrigin                   : 0        : , "cheat"        :
r_drawmodelstatsoverlay                  : 0        : , "cheat"        :
r_drawmodelstatsoverlaydistance          : 500      : , "cheat"        :
r_drawmodelstatsoverlaymax               : 1        : , "a"            : time in milliseconds beyond which a model overlay is fully red in r_drawmodelstatsoverlay 2
r_drawmodelstatsoverlaymin               : 0        : , "a"            : time in milliseconds that a model must take to render before showing an overlay in r_drawmodelstatsoverlay 2
r_drawopaquerenderables                  : 1        : , "cheat", "cl"  :
r_drawopaquestaticpropslast              : 0        : , "cl"           : Whether opaque static props are rendered after non-npcs
r_drawopaqueworld                        : 1        : , "cheat", "cl"  :
r_drawothermodels                        : 1        : , "cheat", "cl"  : 0=Off, 1=Normal, 2=Wireframe
r_drawparticles                          : 1        : , "cheat", "cl"  : Enable/disable particle rendering
r_drawpixelvisibility                    : 0        : , "cl"           : Show the occlusion proxies
r_DrawPortals                            : 0        : , "cheat"        :
r_DrawRain                               : 1        : , "cheat", "cl"  : Enable/disable rain rendering.
r_drawrenderboxes                        : 0        : , "cheat", "cl"  :
r_drawropes                              : 1        : , "cheat", "cl"  :
r_drawskybox                             : 1        : , "cheat"        :
r_DrawSpecificStaticProp                 : -1       :                  :
r_drawsprites                            : 1        : , "cheat", "cl"  :
r_drawstaticprops                        : 1        : , "cheat"        : 0=Off, 1=Normal, 2=Wireframe
r_drawtracers                            : 1        : , "cheat", "cl"  :
r_drawtracers_firstperson                : 1        : , "a", "cl"      : Toggle visibility of first person weapon tracers
r_drawtranslucentrenderables             : 1        : , "cheat", "cl"  :
r_drawtranslucentworld                   : 1        : , "cheat"        :
r_drawvgui                               : 1        : , "cheat"        : Enable the rendering of vgui panels
r_drawviewmodel                          : 1        : , "norecord", "cl" :
r_drawworld                              : 1        : , "cheat"        : Render the world.
r_dscale_basefov                         : 90       : , "cheat"        :
r_dscale_fardist                         : 2000     : , "cheat"        :
r_dscale_farscale                        : 4        : , "cheat"        :
r_dscale_neardist                        : 100      : , "cheat"        :
r_dscale_nearscale                       : 1        : , "cheat"        :
r_dynamic                                : 1        :                  :
r_dynamiclighting                        : 1        : , "cheat"        :
r_entityclips                            : 1        : , "cl"           :
r_eyeglintlodpixels                      : 20       : , "cheat"        : The number of pixels wide an eyeball has to be before rendering an eyeglint.  Is a floating point value.
r_eyegloss                               : 1        : , "a", "cl"      :
r_eyemove                                : 1        : , "a"            :
r_eyes                                   : 1        :                  :
r_eyeshift_x                             : 0        : , "a"            :
r_eyeshift_y                             : 0        : , "a"            :
r_eyeshift_z                             : 0        : , "a"            :
r_eyesize                                : 0        : , "a"            :
r_eyewaterepsilon                        : 10       : , "cheat", "cl"  :
r_farz                                   : -1       : , "cheat", "cl"  : Override the far clipping plane. -1 means to use the value in env_fog_controller.
r_fastzreject                            : 0        :                  : Activate/deactivates a fast z-setting algorithm to take advantage of hardware with fast z reject. Use -1 to default to hardware settings
r_fastzrejectdisp                        : 0        :                  : Activates/deactivates fast z rejection on displacements (360 only). Only active when r_fastzreject is on.
r_flashlightambient                      : 0        : , "cheat", "cl"  :
r_flashlightclip                         : 0        : , "cheat"        :
r_flashlightconstant                     : 0        : , "cheat", "cl"  :
r_flashlightculldepth                    : 1        :                  :
r_flashlightdepthres                     : 512      : , "cl"           :
r_flashlightdepthtexture                 : 1        :                  :
r_flashlightdrawclip                     : 0        : , "cheat"        :
r_flashlightdrawdepth                    : 0        :                  :
r_flashlightdrawfrustum                  : 0        : , "cl"           :
r_flashlightdrawfrustumbbox              : 0        :                  :
r_flashlightdrawsweptbbox                : 0        :                  :
r_flashlightfar                          : 750      : , "cheat", "cl"  :
r_flashlightfov                          : 45       : , "cheat", "cl"  :
r_flashlightladderdist                   : 40       : , "cheat", "cl"  :
r_flashlightlinear                       : 100      : , "cheat", "cl"  :
r_flashlightlockposition                 : 0        : , "cheat", "cl"  :
r_flashlightmodels                       : 1        : , "cl"           :
r_flashlightnear                         : 4        : , "cheat", "cl"  :
r_flashlightnodraw                       : 0        :                  :
r_flashlightoffsetx                      : 10       : , "cheat", "cl"  :
r_flashlightoffsety                      : -20      : , "cheat", "cl"  :
r_flashlightoffsetz                      : 24       : , "cheat", "cl"  :
r_flashlightquadratic                    : 0        : , "cheat", "cl"  :
r_flashlightrender                       : 1        :                  :
r_flashlightrendermodels                 : 1        :                  :
r_flashlightrenderworld                  : 1        :                  :
r_flashlightscissor                      : 1        :                  :
r_flashlightshadowatten                  : 0        : , "cheat", "cl"  :
r_flashlightupdatedepth                  : 1        :                  :
r_flashlightvisualizetrace               : 0        : , "cheat", "cl"  :
r_flex                                   : 1        :                  :
r_flushlod                               : cmd      :                  : Flush and reload LODs.
r_ForceWaterLeaf                         : 1        : , "cl"           : Enable for optimization to water - considers view in leaf under water for purposes of culling
r_frustumcullworld                       : 1        :                  :
r_glint_alwaysdraw                       : 0        :                  :
r_glint_procedural                       : 0        :                  :
r_hunkalloclightmaps                     : 1        :                  :
r_hwmorph                                : 1        : , "cheat"        :
r_itemblinkmax                           : 0        : , "cheat"        :
r_itemblinkrate                          : 4        : , "cheat"        :
r_JeepFOV                                : 90       : , "sv", "cheat", "rep" :
r_JeepViewBlendTo                        : 1        : , "cheat", "cl"  :
r_JeepViewBlendToScale                   : 0        : , "cheat", "cl"  :
r_JeepViewBlendToTime                    : 1        : , "cheat", "cl"  :
r_JeepViewDampenDamp                     : 1        : , "sv", "cheat", "nf", "rep" :
r_JeepViewDampenFreq                     : 7        : , "sv", "cheat", "nf", "rep" :
r_JeepViewZHeight                        : 10       : , "sv", "cheat", "nf", "rep" :
r_lightaverage                           : 1        :                  : Activates/deactivate light averaging
r_lightcache_numambientsamples           : 162      : , "cheat"        : number of random directions to fire rays when computing ambient lighting
r_lightcache_zbuffercache                : 0        :                  :
r_lightcachecenter                       : 1        : , "cheat"        :
r_lightcachemodel                        : -1       : , "cheat"        :
r_lightinterp                            : 5        : , "cheat"        : Controls the speed of light interpolation, 0 turns off interpolation
r_lightmap                               : -1       : , "cheat"        :
r_lightstyle                             : -1       : , "cheat"        :
r_lightwarpidentity                      : 0        : , "cheat"        :
r_lockpvs                                : 0        : , "cheat"        : Lock the PVS so you can fly around and inspect what is being drawn.
r_lod                                    : -1       :                  :
r_mapextents                             : 16384    : , "cheat", "cl"  : Set the max dimension for the map.  This determines the far clipping plane
r_maxdlights                             : 32       :                  :
r_maxmodeldecal                          : 50       :                  :
r_maxnewsamples                          : 6        :                  :
r_maxsampledist                          : 128      :                  :
r_minnewsamples                          : 3        :                  :
r_modelwireframedecal                    : 0        : , "cheat"        :
r_newflashlight                          : 1        : , "cheat", "cl"  :
r_nohw                                   : 0        : , "cheat"        :
r_norefresh                              : 0        :                  :
r_nosw                                   : 0        : , "cheat"        :
r_novis                                  : 0        : , "cheat"        : Turn off the PVS.
r_occludeemaxarea                        : 0        :                  : Prevents occlusion testing for entities that take up more than X% of the screen. 0 means use whatever the level said to use.
r_occluderminarea                        : 0        :                  : Prevents this occluder from being used if it takes up less than X% of the screen. 0 means use whatever the level said to use.
r_occludermincount                       : 0        :                  : At least this many occluders will be used, no matter how big they are.
r_occlusion                              : 1        :                  : Activate/deactivate the occlusion system.
r_occlusionspew                          : 0        : , "cheat"        : Activate/deactivates spew about what the occlusion system is doing.
r_oldlightselection                      : 0        : , "cheat"        : Set this to revert to HL2's method of selecting lights
r_overlayfadeenable                      : 0        :                  :
r_overlayfademax                         : 2000     :                  :
r_overlayfademin                         : 1750     :                  :
r_overlaywireframe                       : 0        :                  :
r_particle_sim_spike_threshold_ms        : 5        : , "cl"           :
r_partition_level                        : -1       : , "cheat"        : Displays a particular level of the spatial partition system. Use -1 to disable it.
r_PhysPropStaticLighting                 : 1        : , "cl"           :
r_pix_recordframes                       : 0        :                  :
r_pix_start                              : 0        :                  :
r_pixelfog                               : 1        :                  :
r_pixelvisibility_partial                : 1        : , "cl"           :
r_pixelvisibility_spew                   : 0        : , "cl"           :
r_portalsopenall                         : 0        : , "cheat"        : Open all portals
r_PortalTestEnts                         : 1        : , "cheat", "cl"  : Clip entities against portal frustums.
r_printdecalinfo                         : cmd      :                  :
r_proplightingfromdisk                   : 1        : , "cheat"        : 0=Off, 1=On, 2=Show Errors
r_proplightingpooling                    : -1       : , "cheat"        : 0 - off, 1 - static prop color meshes are allocated from a single shared vertex buffer (on hardware that supports stream offset)
r_propsmaxdist                           : 1200     : , "cl"           : Maximum visible distance
r_queued_decals                          : 0        :                  : Offloads a bit of decal rendering setup work to the material system queue when enabled.
r_queued_post_processing                 : 0        : , "cl"           :
r_queued_ropes                           : 1        : , "cl"           :
r_radiosity                              : 4        : , "cheat"        : 0: no radiosity 1: radiosity with ambient cube (6 samples) 2: radiosity with 162 samples 3: 162 samples for static props, 6 samples for everything else
r_rainalpha                              : 0        : , "cheat", "cl"  :
r_rainalphapow                           : 0        : , "cheat", "cl"  :
r_raindensity                            : 0        : , "cheat", "cl"  :
r_RainHack                               : 0        : , "cheat", "cl"  :
r_rainlength                             : 0        : , "cheat", "cl"  :
r_RainProfile                            : 0        : , "cheat", "cl"  : Enable/disable rain profiling.
r_RainRadius                             : 1500     : , "cheat", "cl"  :
r_RainSideVel                            : 130      : , "cheat", "cl"  : How much sideways velocity rain gets.
r_RainSimulate                           : 1        : , "cheat", "cl"  : Enable/disable rain simulation.
r_rainspeed                              : 600      : , "cheat", "cl"  :
r_RainSplashPercentage                   : 20       : , "cheat", "cl"  :
r_rainwidth                              : 0        : , "cheat", "cl"  :
r_randomflex                             : 0        : , "cheat"        :
r_renderoverlayfragment                  : 1        :                  :
r_rimlight                               : 1        :                  :
r_rootlod                                : 0        : , "a"            : Root LOD
r_ropes_holiday_light_color              : cmd      :                  : Set each light's color: [light0-3] [r0-255] [g0-255] [b0-255]
r_ropetranslucent                        : 1        : , "cl"           :
r_screenfademaxsize                      : 0        : , "cheat"        :
r_screenfademinsize                      : 0        : , "cheat"        :
r_screenoverlay                          : cmd      :                  : Draw specified material as an overlay
r_sequence_debug                         : 0        : , "cl"           :
r_shader_srgb                            : 0        :                  : -1 = use hardware caps. 0 = use hardware srgb. 1 = use shader srgb(software lookup)
r_shadowangles                           : cmd      :                  : Set shadow angles
r_shadowblobbycutoff                     : cmd      :                  : some shadow stuff
r_shadowcolor                            : cmd      :                  : Set shadow color
r_shadowdir                              : cmd      :                  : Set shadow direction
r_shadowdist                             : cmd      :                  : Set shadow distance
r_shadowids                              : 0        : , "cheat"        :
r_shadowmaxrendered                      : 32       : , "cl"           :
r_shadowrendertotexture                  : 1        : , "a"            :
r_shadows                                : 1        :                  :
r_shadows_gamecontrol                    : -1       : , "cheat"        :
r_shadowwireframe                        : 0        : , "cheat"        :
r_showenvcubemap                         : 0        : , "cheat"        :
r_ShowViewerArea                         : 0        :                  :
r_showz_power                            : 1        : , "cheat"        :
r_skin                                   : 0        : , "cheat"        :
r_skybox                                 : 1        : , "cheat", "cl"  : Enable the rendering of sky boxes
r_snapportal                             : -1       :                  :
r_SnowColorBlue                          : 200      : , "cheat", "cl"  : Snow.
r_SnowColorGreen                         : 175      : , "cheat", "cl"  : Snow.
r_SnowColorRed                           : 150      : , "cheat", "cl"  : Snow.
r_SnowDebugBox                           : 0        : , "cheat", "cl"  : Snow Debug Boxes.
r_SnowEnable                             : 1        : , "cheat", "cl"  : Snow Enable
r_SnowEndAlpha                           : 255      : , "cheat", "cl"  : Snow.
r_SnowEndSize                            : 0        : , "cheat", "cl"  : Snow.
r_SnowFallSpeed                          : 1        : , "cheat", "cl"  : Snow fall speed scale.
r_SnowInsideRadius                       : 256      : , "cheat", "cl"  : Snow.
r_SnowOutsideRadius                      : 1024     : , "cheat", "cl"  : Snow.
r_SnowParticles                          : 500      : , "cheat", "cl"  : Snow.
r_SnowPosScale                           : 1        : , "cheat", "cl"  : Snow.
r_SnowRayEnable                          : 1        : , "cheat", "cl"  : Snow.
r_SnowRayLength                          : 8192     : , "cheat", "cl"  : Snow.
r_SnowRayRadius                          : 256      : , "cheat", "cl"  : Snow.
r_SnowSpeedScale                         : 1        : , "cheat", "cl"  : Snow.
r_SnowStartAlpha                         : 25       : , "cheat", "cl"  : Snow.
r_SnowStartSize                          : 1        : , "cheat", "cl"  : Snow.
r_SnowWindScale                          : 0        : , "cheat", "cl"  : Snow.
r_SnowZoomOffset                         : 384      : , "cheat", "cl"  : Snow.
r_SnowZoomRadius                         : 512      : , "cheat", "cl"  : Snow.
r_spray_lifetime                         : 2        :                  : Number of rounds player sprays are visible
r_sse2                                   : cmd      :                  : Enable/disable SSE2 code
r_sse_s                                  : 1        : , "cl"           : sse ins for particle sphere create
r_staticprop_lod                         : -1       :                  :
r_staticpropinfo                         : 0        :                  :
r_studio_stats                           : 0        : , "cheat"        :
r_studio_stats_lock                      : 0        : , "cheat", "cl"  : Lock the current studio stats entity selection
r_studio_stats_mode                      : 0        : , "cheat", "cl"  : Sets a mode for r_studio_stats. Modes are as follows:  0 = Entity under your crosshair  1 = Weapon held by player under your crosshair  2 = Your viewmodel  3 = The first entity attached to your viewmodel
r_swingflashlight                        : 1        : , "cheat", "cl"  :
r_teeth                                  : 1        :                  :
r_threaded_client_shadow_manager         : 0        : , "cl"           :
r_threaded_particles                     : 1        : , "cl"           :
r_threaded_renderables                   : 0        : , "cl"           :
r_unloadlightmaps                        : 0        : , "cheat"        :
r_updaterefracttexture                   : 1        : , "cheat", "cl"  :
r_vehicleBrakeRate                       : 1        : , "sv", "cheat"  :
r_VehicleViewClamp                       : 1        : , "cheat", "cl"  :
r_VehicleViewDampen                      : 1        : , "sv", "cheat", "nf", "rep" :
r_visambient                             : 0        :                  : Draw leaf ambient lighting samples.  Needs mat_leafvis 1 to work
r_visocclusion                           : 0        : , "cheat"        : Activate/deactivate wireframe rendering of what the occlusion system is doing.
r_visualizelighttraces                   : 0        : , "cheat"        :
r_visualizelighttracesshowfulltrace      : 0        : , "cheat"        :
r_visualizeproplightcaching              : 0        : , "cl"           :
r_visualizetraces                        : 0        : , "cheat"        :
r_WaterDrawReflection                    : 1        : , "cl"           : Enable water reflection
r_WaterDrawRefraction                    : 1        : , "cl"           : Enable water refraction
r_waterforceexpensive                    : 1        : , "a"            :
r_waterforcereflectentities              : 0        :                  :
r_worldlightmin                          : 0        :                  :
r_worldlights                            : 4        :                  : number of world lights to use per vertex
r_worldlistcache                         : 1        : , "cl"           :
ragdoll_sleepaftertime                   : 5        : , "cl"           : After this many seconds of being basically stationary, the ragdoll will go to sleep.
randommap                                : cmd      :                  : Changelevel to a random map in the mapcycle file
rate                                     : 80000    : , "a", "user"    : Max bytes/sec the host can receive data
rcon                                     : cmd      :                  : Issue an rcon command.
rcon_address                             : 0        : , "norecord"     : Address of remote server if sending unconnected rcon commands (format x.x.x.x:p)
rcon_password                            : 0        : , "norecord"     : remote console password.
recompute_speed                          : cmd      :                  : Recomputes clock speed (for debugging purposes).
record                                   : cmd      :                  : Record a demo.
redirect                                 : cmd      :                  : Redirect client to specified server.
refresh_options_dialog                   : cmd      :                  : Refresh the options dialog.
+reload                                  : cmd      :                  :
-reload                                  : cmd      :                  :
reload                                   : cmd      :                  : Reload the most recent saved game (add setpos to jump to current view position on reload).
reload_char_info                         : cmd      :                  : Reloads the char info panel
reload_materials                         : 0        :                  :
removeid                                 : cmd      :                  : Remove a user ID from the ban list.
removeip                                 : cmd      :                  : Remove an IP address from the ban list.
replay_add_fake_replays                  : cmd      :                  : Adds a set of fake replays
replay_block_dump_interval               : 10       : , "norecord", "cl" : The server will write partial replay files at this interval when recording.
replay_buffersize                        : 32       : , "norecord", "cl" : Maximum size for the replay memory buffer.
replay_cache_client_ragdolls             : 0        : , "cl"           : Record ragdolls on the client during.
replay_clearqueuedtakes                  : cmd      :                  : Clear takes from render queue.
replay_data_lifespan                     : 1        : , "rep", "norecord", "cl" : The number of days before replay data will be removed from the server.  Server operators can expect that any data written more than replay_data_lifespan days will be considered stale, and any subsequent execution of replay_docleanup (or automatic cleanup, which can be enabled with replay_fileserver_autocleanup) will remove that data.
replay_deathcammaxverticaloffset         : 150      : , "norecord", "cl" : Vertical offset for player death camera
replay_debug                             : 0        : , "norecord"     : Show Replay debug info.
replay_deleteclientreplays               : cmd      :                  : Deletes all replays from client replay history, as well as all files associated with each replay.
replay_docleanup                         : cmd      :                  : Deletes stale session data from the fileserver.  'replay_docleanup force' will remove all replay session data.
replay_dofileserver_cleanup_on_start     : 1        : , "sv", "cl"     : Cleanup any stale replay data (both locally and on fileserver) at startup.
replay_dopublishtest                     : cmd      :                  : Do a replay publish test using the current setup.
replay_editor_camera_length              : 15       : , "a", "cl"      : This is the camera length used to simulate camera shake in the replay editor.  The larger this number, the more the actual position will change.  It can also be set to negative values.
replay_editor_fov_mousewheel_invert      : 0        : , "a", "norecord", "cl" : Invert FOV zoom/unzoom on mousewheel in the replay editor.
replay_editor_fov_mousewheel_multiplier  : 5        : , "a", "norecord", "cl" : The multiplier on mousewheel input for adjusting camera FOV in the replay editor.
replay_enable                            : 0        : , "rep", "norecord", "cl" : Enable Replay recording on server
replay_enableeventbasedscreenshots       : 0        : , "a", "norecord", "cl" : If disabled, only take a screenshot when a replay is saved.  If enabled, take up to replay_maxscreenshotsperreplay screenshots, with a minimum of replay_mintimebetweenscreenshots seconds in between, at key events.  Events include kills, ubers (if you are a medic), sentry kills (if you are an engineer), etc.  NOTE: Turning this on may affect performance!
replay_enablerenderpreview               : 1        : , "a", "norecord", "cl" : Enable preview during replay render.
replay_fileserver_autocleanup            : 0        : , "sv", "cl"     : Automatically do fileserver cleanup in between rounds?  This is the same as explicitly calling replay_docleanup.
replay_fileserver_host                   : 0        : , "rep", "norecord", "cl" : The hostname of the Web server hosting replays.  This can be an IP or a hostname, e.g. '1.2.3.4' or 'www.myserver.com'
replay_fileserver_offload_aborttime      : 60       : , "sv", "cl"     : The time after which publishing will be aborted for a session block or session info file.
replay_fileserver_path                   : 0        : , "rep", "norecord", "cl" : If your replays are stored at 'http://123.123.123.123:4567/tf/replays', replay_fileserver_path should be set to '/tf/replays'
replay_fileserver_port                   : 80       : , "rep", "norecord", "cl" : The port for the Web server hosting replays.  For example, if your replays are stored at 'http://123.123.123.123:4567/tf/replays', replay_fileserver_port should be 4567.
replay_fileserver_protocol               : 0        : , "rep", "norecord", "cl" : Can be 'http' or 'https'
replay_flushinterval                     : 15       : , "a", "norecord", "cl" : Replay system will flush to disk a maximum of every replay_flushinterval seconds.
replay_forcereconstruct                  : 0        : , "norecord", "cl" : Force the reconstruction of replays each time.
replay_hidebrowser                       : cmd      :                  : Hides replay browser
replay_ignorereplayticks                 : 0        :                  :
replay_local_fileserver_path             : 0        : , "norecord", "cl" : The file server local path.  For example, 'c:\MyWebServer\htdocs\replays' or '/MyWebServer/htdocs/replays'.
replay_max_publish_threads               : 4        : , "sv", "cl"     : The max number of threads allowed for publishing replay data, e.g. FTP threads.
replay_maxconcurrentdownloads            : 3        : , "norecord", "cl" : The maximum number of concurrent downloads allowed.
replay_maxscreenshotsperreplay           : 8        : , "norecord", "cl" : The maximum number of screenshots that can be taken for any given replay.
replay_mintimebetweenscreenshots         : 5        : , "norecord", "cl" : The minimum time (in seconds) that must pass between screenshots being taken.
replay_msgduration_connectrecording      : 8        : , "norecord", "cl" : Duration for the message that pops up when you connect to a server already recording replays.
replay_msgduration_error                 : 6        : , "norecord", "cl" : Duration for replays available message.
replay_msgduration_misc                  : 5        : , "norecord", "cl" : Duration for misc replays messages (server errors and such).
replay_msgduration_replaysavailable      : 6        : , "norecord", "cl" : Duration for replays available message.
replay_msgduration_startrecord           : 6        : , "norecord", "cl" : Duration for start record message.
replay_msgduration_stoprecord            : 6        : , "norecord", "cl" : Duration for stop record message.
replay_name                              : 0        : , "sv", "cl"     : Replay bot name
replay_playerdeathscreenshotdelay        : 2        : , "norecord", "cl" : Amount of time to wait after player is killed before taking a screenshot
replay_postdeathrecordtime               : 5        : , "norecord", "cl" : The amount of time (seconds) to be recorded after you die for a given replay.
replay_postwinreminderduration           : 5        : , "norecord", "cl" : The number of seconds to show a Replay reminder, post-win/lose.
replay_printclientreplays                : cmd      :                  : Prints out all client replay info
replay_printqueuedtakes                  : cmd      :                  : Print a list of takes queued for rendering.
replay_printsessioninfo                  : cmd      :                  : Print session info
replay_publish_simulate_delay_local_http : 0        : , "norecord", "cl" : Simulate a delay (in seconds) when publishing replay data via local HTTP.
replay_publish_simulate_rename_fail      : 0        : , "norecord", "cl" : Simulate a rename failure during local HTTP publishing, which will force a manual copy & delete.
replay_quitmsg_dontaskagain              : 0        : , "a", "norecord", "cl" : The replay system will ask you to render your replays on quit, unless this cvar is 1.
replay_ragdoll_dbg                       : 0        : , "cl"           : Display replay ragdoll debugging information.
replay_record                            : cmd      :                  : Starts Replay demo recording.
replay_record_voice                      : 1        : , "sv", "cl"     : If enabled, voice data is recorded into the replay files.
replay_reloadbrowser                     : cmd      :                  : Reloads replay data and display replay browser
replay_removeclientreplay                : cmd      :                  : Remove the replay at the given index.
replay_renderpause                       : cmd      :                  : Pause Replay rendering.
replay_rendersetting_encodingquality     : 100      : , "norecord", "cl" : Render quality: the higher the quality, the larger the resulting movie file size.
replay_rendersetting_exportraw           : 0        : , "a", "norecord", "cl" : Export raw TGA frames and a .wav file, instead of encoding a movie file.
replay_rendersetting_motionblur_can_toggle : 0        : , "norecord", "cl" :
replay_rendersetting_motionblurenabled   : 1        : , "norecord", "cl" : Motion blur enabled/disabled.
replay_rendersetting_motionblurquality   : 0        : , "norecord", "cl" : Motion blur quality.
replay_rendersetting_quitwhendone        : 0        : , "norecord", "cl" : Quit after rendering is completed.
replay_rendersetting_renderglow          : 0        : , "a", "norecord", "cl" : Glow effect enabled/disabled.
replay_renderunpause                     : cmd      :                  : Unpause Replay rendering.
replay_screenshotkilldelay               : 0        : , "norecord", "cl" : Delay before taking a screenshot when you kill someone, in seconds.
replay_screenshotresolution              : 0        : , "norecord", "cl" : 0 for low-res screenshots (width=512), 1 for hi-res (width=1024)
replay_screenshotsentrykilldelay         : 0        : , "norecord", "cl" : Delay before taking a screenshot when you kill someone, in seconds.
replay_sentrycammaxverticaloffset        : 10       : , "norecord", "cl" : Vertical offset from a sentry on sentry kill
replay_sentrycamoffset_frontback         : -50      : , "norecord", "cl" : Front/back offset for sentry POV screenshot
replay_sentrycamoffset_leftright         : -25      : , "norecord", "cl" : Left/right offset for sentry POV screenshot
replay_sentrycamoffset_updown            : 22       : , "norecord", "cl" : Up/down offset for sentry POV screenshot
replay_sessioninfo_updatefrequency       : 5        : , "norecord", "cl" : If a replay has not been downloaded, the replay browser will update the status of a given replay on the server based on this cvar (in seconds).
replay_stoprecord                        : cmd      :                  : Stop Replay demo recording.
replay_test_take_save_dlg                : cmd      :                  : Open replay save take dlg
replay_voice_during_playback             : 0        : , "a", "cl"      : Play player voice chat during replay playback
report_entities                          : cmd      :                  : Lists all entities
report_simthinklist                      : cmd      :                  : Lists all simulating/thinking entities
report_soundpatch                        : cmd      :                  : reports sound patch count
report_soundpatch                        : cmd      :                  : reports sound patch count
report_touchlinks                        : cmd      :                  : Lists all touchlinks
resetplayerstats                         : cmd      :                  :
respawn_entities                         : cmd      :                  : Respawn all the entities in the map.
restart                                  : cmd      :                  : Restart the game on the same level (add setpos to jump to current view position on restart).
retry                                    : cmd      :                  : Retry connection to last server.
+right                                   : cmd      :                  :
-right                                   : cmd      :                  :
room_type                                : 0        : , "demo"         :
rope_averagelight                        : 1        : , "cl"           : Makes ropes use average of cubemap lighting instead of max intensity.
rope_collide                             : 1        : , "cl"           : Collide rope with the world
rope_rendersolid                         : 1        : , "cl"           :
rope_shake                               : 0        : , "cl"           :
rope_smooth                              : 1        : , "cl"           : Do an antialiasing effect on ropes
rope_smooth_enlarge                      : 1        : , "cl"           : How much to enlarge ropes in screen space for antialiasing effect
rope_smooth_maxalpha                     : 0        : , "cl"           : Alpha for rope antialiasing effect
rope_smooth_maxalphawidth                : 1        : , "cl"           :
rope_smooth_minalpha                     : 0        : , "cl"           : Alpha for rope antialiasing effect
rope_smooth_minwidth                     : 0        : , "cl"           : When using smoothing, this is the min screenspace width it lets a rope shrink to
rope_solid_maxalpha                      : 1        : , "cl"           :
rope_solid_maxwidth                      : 1        : , "cl"           :
rope_solid_minalpha                      : 0        : , "cl"           :
rope_solid_minwidth                      : 0        : , "cl"           :
rope_subdiv                              : 2        : , "cl"           : Rope subdivision amount
rope_wind_dist                           : 1000     : , "cl"           : Don't use CPU applying small wind gusts to ropes when they're past this distance.
rr_debug_qa                              : 0        : , "sv"           : Set to 1 to see debug related to the Question & Answer system used to create conversations between allied NPCs.
rr_debugresponses                        : 0        : , "sv"           : Show verbose matching output (1 for simple, 2 for rule scoring). If set to 3, it will only show response success/failure for npc_selected NPCs.
rr_debugrule                             : 0        : , "sv"           : If set to the name of the rule, that rule's score will be shown whenever a concept is passed into the response rules system.
rr_dumpresponses                         : 0        : , "sv"           : Dump all response_rules.txt and rules (requires restart)
rr_reloadresponsesystems                 : cmd      :                  : Reload all response system scripts.
save                                     : cmd      :                  : Saves current game.
save_async                               : 1        :                  :
save_asyncdelay                          : 0        :                  : For testing, adds this many milliseconds of delay to the save operation.
save_console                             : 0        :                  : Autosave on the PC behaves like it does on the consoles.
save_disable                             : 0        :                  :
save_finish_async                        : cmd      :                  :
save_history_count                       : 1        :                  : Keep this many old copies in history of autosaves and quicksaves.
save_huddelayframes                      : 1        :                  : Number of frames to defer for drawing the Saving message.
save_in_memory                           : 0        :                  : Set to 1 to save to memory instead of disk (Xbox 360)
save_noxsave                             : 0        :                  :
save_replay                              : cmd      :                  : Save a replay of the current life if possible.
save_screenshot                          : 1        :                  : 0 = none, 1 = non-autosave, 2 = always
save_spew                                : 0        :                  :
say                                      : cmd      :                  : Display player message
say_party                                : cmd      :                  : Send a message to the user's party, if they have one
say_team                                 : cmd      :                  : Display player message to team
sb_close_browser_on_connect              : 1        : , "a", "cl"      :
sb_dontshow_maxplayer_warning            : 0        : , "a", "cl"      :
sc_disable                               : 0        : , "a"            : Disables use of Steam Controller API
sc_joystick_map                          : 1        : , "a"            : How to map the analog joystick deadzone and extents 0 = Scaled Cross, 1 = Concentric Mapping to Square.
sc_look_sensitivity_scale                : 0        : , "cl"           : Steam Controller look sensitivity global scale factor.
sc_pitch_sensitivity                     : 0        : , "a", "cl"      : SteamController pitch factor.
sc_pitch_sensitivity_default             : 0        : , "cl"           :
sc_show_binding_panel                    : cmd      :                  : Launches the Steam Controller binding panel UI
sc_status                                : cmd      :                  : Show Steam Controller status information
sc_yaw_sensitivity                       : 1        : , "a", "cl"      : SteamController yaw factor.
sc_yaw_sensitivity_default               : 1        : , "cl"           :
scene_async_prefetch_spew                : 0        : , "sv"           : Display async .ani file loading info.
scene_clamplookat                        : 1        : , "sv"           : Clamp head turns to a max of 20 degrees per think.
scene_clientflex                         : 1        : , "sv", "rep"    : Do client side flex animation.
scene_flatturn                           : 1        : , "sv"           :
scene_flush                              : cmd      :                  : Flush all .vcds from the cache and reload from disk.
scene_forcecombined                      : 0        : , "sv"           : When playing back, force use of combined .wav files even in english.
scene_maxcaptionradius                   : 1200     : , "sv"           : Only show closed captions if recipient is within this many units of speaking actor (0==disabled).
scene_print                              : 0        : , "sv", "rep"    : When playing back a scene, print timing and event info to console.
scene_showfaceto                         : 0        : , "a", "sv"      : When playing back, show the directions of faceto events.
scene_showlook                           : 0        : , "a", "sv"      : When playing back, show the directions of look events.
scene_showmoveto                         : 0        : , "a", "sv"      : When moving, show the end location.
scene_showunlock                         : 0        : , "a", "sv"      : Show when a vcd is playing but normal AI is running.
+score                                   : cmd      :                  :
-score                                   : cmd      :                  :
scr_centertime                           : 5        : , "cl"           :
screenshot                               : cmd      :                  : Take a screenshot.
sdr                                      : cmd      :                  : View/edit SteamNetworkingSockets configuration variables
sdr_spew_level                           : 4        :                  : Verbosity level for SteamNetworkingSockets spew.  4=warning, 5=msg, 6=verbose, 7=debug
sensitivity                              : 3        : , "a", "cl"      : Mouse sensitivity.
server_game_time                         : cmd      :                  : Gives the game time in seconds (server's curtime)
servercfgfile                            : 0        : , "sv"           :
set_party_contract_progress_enabled      : cmd      :                  : Set whether or not you'd like your party memebers to be able to make progress on your Contracts along with you.
setang                                   : cmd      :                  : Snap player eyes to specified pitch yaw <roll:optional> (must have sv_cheats).
setang_exact                             : cmd      :                  : Snap player eyes and orientation to specified pitch yaw <roll:optional> (must have sv_cheats).
setinfo                                  : cmd      :                  : Adds a new user info value
setmodel                                 : cmd      :                  : Changes's player's model
setpause                                 : cmd      :                  : Set the pause state of the server.
setpos                                   : cmd      :                  : Move player to specified origin (must have sv_cheats).
setpos_exact                             : cmd      :                  : Move player to an exact specified origin (must have sv_cheats).
shake                                    : cmd      :                  : Shake the screen.
shake_show                               : 0        : , "cl"           : Displays a list of the active screen shakes.
shake_stop                               : cmd      :                  : Stops all active screen shakes.
show_quest_log                           : cmd      :                  : Show the quest map panel
+showbudget                              : cmd      :                  :
-showbudget                              : cmd      :                  :
showbudget_texture                       : 0        : , "cheat"        : Enable the texture budget panel.
+showbudget_texture                      : cmd      :                  :
-showbudget_texture                      : cmd      :                  :
+showbudget_texture_global               : cmd      :                  :
-showbudget_texture_global               : cmd      :                  :
showbudget_texture_global_dumpstats      : cmd      :                  : Dump all items in +showbudget_texture_global in a text form
showbudget_texture_global_sum            : 0        :                  :
showconsole                              : cmd      :                  : Show the console.
showhitlocation                          : 0        : , "sv"           :
showinfo                                 : cmd      :                  : Shows a info panel: <type> <title> <message> [<command number>]
showmapinfo                              : cmd      :                  : Show map info panel
showpanel                                : cmd      :                  : Shows a viewport panel <name>
showparticlecounts                       : 0        : , "cl"           : Display number of particles drawn per frame
showschemevisualizer                     : cmd      :                  : Show borders, fonts and colors for a particular scheme.  The default is ClientScheme.res
+showscores                              : cmd      :                  :
-showscores                              : cmd      :                  :
showstatsdlg                             : cmd      :                  : Shows the player stats dialog
showtriggers                             : 0        : , "sv", "cheat"  : Shows trigger brushes
showtriggers_toggle                      : cmd      :                  : Toggle show triggers
+showvprof                               : cmd      :                  :
-showvprof                               : cmd      :                  :
simple_bot_add                           : cmd      :                  : Add a simple bot.
singlestep                               : 0        : , "cheat"        : Run engine in single step mode ( set next to 1 to advance a frame )
sixense_aim_1to1_heading_multiplier      : 3        : , "a", "cl"      :
sixense_aim_1to1_pitch_multiplier        : 3        : , "a", "cl"      :
sixense_aim_1to1_ratchet_vertical        : 1        : , "a", "cl"      :
sixense_aim_freeaim_accel_band_exponent  : 1        : , "a", "cl"      :
sixense_aim_freeaim_accel_band_size      : 15       : , "a", "cl"      :
sixense_aim_freeaim_auto_level_rate      : 1        : , "a", "cl"      :
sixense_aim_freeaim_dead_zone_radius     : 0        : , "a", "cl"      :
sixense_aim_freeaim_heading_multiplier   : 1        : , "a", "cl"      :
sixense_aim_freeaim_max_speed            : 12       : , "a", "cl"      :
sixense_aim_freeaim_pitch_multiplier     : 1        : , "a", "cl"      :
sixense_aim_freeaim_spin_disabled        : cmd      :                  :
sixense_aim_freeaim_switch_blend_time_enter : 0        : , "cheat", "cl"  :
sixense_aim_freeaim_switch_blend_time_exit : 0        : , "a", "cl"      :
sixense_aim_scope_heading_multiplier     : 0        : , "a", "cl"      :
sixense_aim_scope_pitch_multiplier       : 0        : , "a", "cl"      :
sixense_always_draw_crosshair            : 1        : , "a", "cl"      :
sixense_base_offset_x                    : 0        : , "a", "cl"      :
sixense_base_offset_y                    : 0        : , "a", "cl"      :
sixense_base_offset_z                    : -20      : , "a", "cl"      :
sixense_bind                             : cmd      :                  : Bind a concommand to a button.
sixense_clear_bindings                   : cmd      :                  : Clear all sixense bindings.
sixense_controller_angle_mode            : 0        : , "a", "cl"      :
sixense_create_default_bindings          : cmd      :                  : Erase all current bindings and load the default bindings for this game.
sixense_crosshair_horiz_multiplier       : 1        : , "a", "cl"      :
sixense_crosshair_vert_multiplier        : 1        : , "a", "cl"      :
sixense_crouch_sensitivity               : 1        : , "a", "cl"      :
sixense_delete_binding                   : cmd      :                  : Delete a single binding by index.
sixense_disable_gestures                 : cmd      :                  :
sixense_enabled                          : 0        : , "a", "cl"      :
sixense_exit_metroid_blend               : 0        : , "a", "cl"      :
sixense_exit_one_to_one_dot              : 0        : , "a", "cl"      :
sixense_features_enabled                 : 0        : , "rep", "cl"    :
sixense_feet_angles_offset_stick_spin_exponent : 1        : , "a", "cl"      :
sixense_feet_angles_offset_stick_spin_horiz_multiplier : 7        : , "a", "cl"      :
sixense_feet_angles_offset_stick_spin_invert_pitch : 1        : , "a", "cl"      :
sixense_feet_angles_offset_stick_spin_vert_multiplier : 4        : , "a", "cl"      :
sixense_filter_level                     : 0        : , "a", "cl"      :
sixense_jump_sensitivity                 : 1        : , "a", "cl"      :
sixense_left_handed                      : 0        : , "a", "cl"      :
+sixense_left_point_gesture              : cmd      :                  :
-sixense_left_point_gesture              : cmd      :                  :
sixense_list_bindings                    : cmd      :                  : List the sixense bindings.
sixense_max_charge_spin                  : 3        : , "a", "cl"      :
sixense_melee_pitch_blend_val            : 0        : , "a", "cl"      :
sixense_mode                             : 0        : , "a", "cl"      :
sixense_mouse_enabled                    : 1        : , "a", "cl"      :
sixense_mouse_sensitivity                : 1        : , "a", "cl"      :
sixense_point_gesture_angle_threshold    : 15       : , "a", "cl"      :
+sixense_ratchet                         : cmd      :                  :
-sixense_ratchet                         : cmd      :                  :
sixense_reload_sensitivity               : 1        : , "a", "cl"      :
+sixense_right_point_gesture             : cmd      :                  :
-sixense_right_point_gesture             : cmd      :                  :
sixense_roll_correct_blend               : 0        : , "a", "cl"      :
sixense_select_grenade                   : cmd      :                  :
sixense_select_machinegun                : cmd      :                  :
sixense_select_melee                     : cmd      :                  :
sixense_select_pistol                    : cmd      :                  :
sixense_sensitivity_level                : 2        : , "a", "cl"      :
sixense_set_base_offset                  : cmd      :                  :
sixense_set_filter_params                : cmd      :                  :
sixense_show_frame                       : cmd      :                  : Show/hide Sixense UI.
sixense_spring_view_enabled              : 1        : , "a", "cl"      :
sixense_spring_view_max_angle            : 45       : , "a", "cl"      :
sixense_spring_view_max_spring           : 0        : , "a", "cl"      :
sixense_spring_view_min_angle            : 1        : , "a", "cl"      :
sixense_spring_view_min_spring           : 0        : , "a", "cl"      :
sixense_teleport_metroid_blend_time      : 3        : , "cheat", "cl"  :
sixense_teleport_wait_to_blend_time      : 0        : , "cheat", "cl"  :
sixense_tilt_gesture_angle_threshold     : 35       : , "a", "cl"      :
sixense_trigger_threshold                : 0        : , "a", "cl"      :
sixense_walking_dead_zone_percent        : 10       : , "a", "cl"      :
sixense_walking_exponent                 : 1        : , "a", "cl"      :
sixense_weapon_select_sensitivity        : 1        : , "a", "cl"      :
sixense_write_bindings                   : cmd      :                  : Save the sixense bindings to a file.
sixense_zoom_momentary_time              : 500      : , "a", "cl"      :
sk_ally_regen_time                       : 0        : , "sv"           : Time taken for an ally to regenerate a point of health.
sk_autoaim_mode                          : 1        : , "a", "sv", "rep" :
sk_npc_arm                               : 1        : , "sv"           :
sk_npc_chest                             : 1        : , "sv"           :
sk_npc_head                              : 2        : , "sv"           :
sk_npc_leg                               : 1        : , "sv"           :
sk_npc_stomach                           : 1        : , "sv"           :
sk_player_arm                            : 1        : , "sv"           :
sk_player_chest                          : 1        : , "sv"           :
sk_player_head                           : 2        : , "sv"           :
sk_player_leg                            : 1        : , "sv"           :
sk_player_stomach                        : 1        : , "sv"           :
sk_plr_dmg_grenade                       : 0        : , "sv"           :
skill                                    : 1        : , "a"            : Game skill level (1-3).
skip_next_map                            : cmd      :                  : Skips the next map in the map rotation for the server.
slot0                                    : cmd      :                  :
slot1                                    : cmd      :                  :
slot10                                   : cmd      :                  :
slot11                                   : cmd      :                  :
slot12                                   : cmd      :                  :
slot2                                    : cmd      :                  :
slot3                                    : cmd      :                  :
slot4                                    : cmd      :                  :
slot5                                    : cmd      :                  :
slot6                                    : cmd      :                  :
slot7                                    : cmd      :                  :
slot8                                    : cmd      :                  :
slot9                                    : cmd      :                  :
smoothstairs                             : 1        : , "sv", "rep"    : Smooth player eye z coordinate when traversing stairs.
snapto                                   : cmd      :                  :
snd_async_flush                          : cmd      :                  : Flush all unlocked async audio data
snd_async_fullyasync                     : 0        :                  : All playback is fully async (sound doesn't play until data arrives).
snd_async_minsize                        : 262144   :                  :
snd_async_showmem                        : cmd      :                  : Show async memory stats
snd_async_spew                           : 0        :                  : Spew all async sound reads, including success
snd_async_spew_blocking                  : 1        :                  : Spew message to console any time async sound loading blocks on file i/o. ( 0=Off, 1=With -steam only, 2=Always
snd_async_stream_spew                    : 0        :                  : Spew streaming info ( 0=Off, 1=streams, 2=buffers
snd_buildcache                           : cmd      :                  : <directory or VPK filename>  Rebulds sound cache for a given search path.
snd_cull_duplicates                      : 0        :                  : If nonzero, aggressively cull duplicate sounds during mixing. The number specifies the number of duplicates allowed to be played.
snd_defer_trace                          : 1        :                  :
snd_delay_sound_shift                    : 0        :                  :
snd_disable_mixer_duck                   : 0        :                  :
snd_duckerattacktime                     : 0        : , "a"            :
snd_duckerreleasetime                    : 2        : , "a"            :
snd_duckerthreshold                      : 0        : , "a"            :
snd_ducktovolume                         : 0        : , "a"            :
snd_dumpclientsounds                     : cmd      :                  : Dump sounds to console
snd_foliage_db_loss                      : 4        : , "cheat"        :
snd_gain                                 : 1        : , "cheat"        :
snd_gain_max                             : 1        : , "cheat"        :
snd_gain_min                             : 0        : , "cheat"        :
snd_legacy_surround                      : 0        : , "a"            :
snd_lockpartial                          : 1        :                  :
snd_mix_async                            : 0        :                  :
snd_mixahead                             : 0        : , "a"            :
snd_musicvolume                          : 1        : , "a"            : Music volume
snd_mute_losefocus                       : 1        : , "a"            :
snd_noextraupdate                        : 0        :                  :
snd_obscured_gain_dB                     : -2       : , "cheat"        :
snd_pitchquality                         : 1        : , "a"            :
snd_profile                              : 0        : , "demo"         :
snd_refdb                                : 60       : , "cheat"        :
snd_refdist                              : 36       : , "cheat"        :
snd_restart                              : cmd      :                  : Restart sound system.
snd_show                                 : 0        : , "cheat"        : Show sounds info
snd_showclassname                        : 0        :                  :
snd_showmixer                            : 0        :                  :
snd_showstart                            : 0        : , "cheat"        :
snd_ShowThreadFrameTime                  : 0        :                  :
snd_soundmixer                           : 0        :                  :
snd_spatialize_roundrobin                : 0        :                  : Lowend optimization: if nonzero, spatialize only a fraction of sound channels each frame. 1/2^x of channels will be spatialized per frame.
snd_surround_speakers                    : 2        :                  :
snd_visualize                            : 0        : , "cheat"        : Show sounds location in world
snd_vox_captiontrace                     : 0        :                  : Shows sentence name for sentences which are set not to show captions.
snd_vox_globaltimeout                    : 300      :                  :
snd_vox_sectimetout                      : 300      :                  :
snd_vox_seqtimetout                      : 300      :                  :
sndplaydelay                             : cmd      :                  : Usage:  sndplaydelay delay_in_sec (negative to skip ahead) soundname
soundfade                                : cmd      :                  : Fade client volume.
soundinfo                                : cmd      :                  : Describe the current sound device.
soundlist                                : cmd      :                  : List all known sounds.
soundpatch_captionlength                 : 2        : , "sv", "rep"    : How long looping soundpatch captions should display for.
soundscape_debug                         : 0        : , "sv", "cheat"  : When on, draws lines to all env_soundscape entities. Green lines show the active soundscape, red lines show soundscapes that aren't in range, and white lines show soundscapes that are in range, but not the active soundscape.
soundscape_dumpclient                    : cmd      :                  : Dumps the client's soundscape data.
soundscape_fadetime                      : 3        : , "cheat", "cl"  : Time to crossfade sound effects between soundscapes
soundscape_flush                         : cmd      :                  : Flushes the server & client side soundscapes
speak                                    : cmd      :                  : Play a constructed sentence.
spec_autodirector                        : 1        : , "clientcmd_can_execute", "cl" : Auto-director chooses best view modes while spectating
spec_freeze_distance_max                 : 200      : , "cheat", "cl"  : Maximum random distance from the target to stop when framing them in observer freeze cam.
spec_freeze_distance_min                 : 96       : , "cheat", "cl"  : Minimum random distance from the target to stop when framing them in observer freeze cam.
spec_freeze_time                         : 4        : , "sv", "cheat", "rep" : Time spend frozen in observer freeze cam.
spec_freeze_traveltime                   : 0        : , "sv", "cheat", "rep" : Time taken to zoom in to frame a target in observer freeze cam.
spec_mode                                : cmd      :                  : Set spectator mode
spec_next                                : cmd      :                  : Spectate next player
spec_player                              : cmd      :                  : Spectate player by partial name, steamid, or userid
spec_pos                                 : cmd      :                  : dump position and angles to the console
spec_prev                                : cmd      :                  : Spectate previous player
spec_scoreboard                          : 0        : , "a", "cl"      :
spec_track                               : 0        : , "cl"           : Tracks an entity in spec mode
+speed                                   : cmd      :                  :
-speed                                   : cmd      :                  :
spew_consolelog_to_debugstring           : 0        :                  : Send console log to PLAT_DebugString()
spike                                    : cmd      :                  : generates a fake spike
star_memory                              : cmd      :                  : Dump memory stats
startdemos                               : cmd      :                  : Play demos in demo sequence.
startmovie                               : cmd      :                  : Start recording movie frames.
startupmenu                              : cmd      :                  : Opens initial menu screen and loads the background bsp, but only if no other level is being loaded, and we're not in developer mode.
stats                                    : cmd      :                  : Prints server performance variables
status                                   : cmd      :                  : Display map and connection status.
step_spline                              : 0        : , "sv"           :
stop                                     : cmd      :                  : Finish recording demo.
stopdemo                                 : cmd      :                  : Stop playing back a demo.
stopsound                                : cmd      :                  :
stopsoundscape                           : cmd      :                  : Stops all soundscape processing and fades current looping sounds
+strafe                                  : cmd      :                  :
-strafe                                  : cmd      :                  :
studio_queue_mode                        : 1        :                  :
stuffcmds                                : cmd      :                  : Parses and stuffs command line + commands to command buffer.
suitvolume                               : 0        : , "a", "sv"      :
surfaceprop                              : cmd      :                  : Reports the surface properties at the cursor
sv_allow_color_correction                : 1        : , "rep"          : Allow or disallow clients to use color correction on this server.
sv_allow_point_servercommand             : 0        : , "sv"           : Allow use of point_servercommand entities in map. Potentially dangerous for untrusted maps.   disallow : Always disallow   official : Allowed for valve maps only   always   : Allow for all maps
sv_allow_voice_from_file                 : 1        : , "rep"          : Allow or disallow clients from using voice_inputfromfile on this server.
sv_allow_votes                           : 1        : , "sv"           : Allow voting?
sv_allow_wait_command                    : 1        : , "rep"          : Allow or disallow the wait command on clients connected to this server.
sv_allowdownload                         : 1        :                  : Allow clients to download files
sv_allowupload                           : 1        :                  : Allow clients to upload customizations files
sv_alltalk                               : 0        : , "sv", "nf", "rep" : Players can hear all other players, no team restrictions
sv_alternateticks                        : 0        : , "sp"           : If set, server only simulates entities on even numbered ticks.
sv_autosave                              : 1        :                  : Set to 1 to autosave game on level transition. Does not affect autosave triggers.
sv_benchmark_autovprofrecord             : 0        : , "sv"           : If running a benchmark and this is set, it will record a vprof file over the duration of the benchmark with filename benchmark.vprof.
sv_benchmark_force_start                 : cmd      :                  : Force start the benchmark. This is only for debugging. It's better to set sv_benchmark to 1 and restart the level.
sv_benchmark_freeroam                    : 0        : , "sv"           : Allow the local player to move freely in the benchmark. Only used for debugging. Don't use for real benchmarks because it will make the timing inconsistent.
sv_benchmark_numticks                    : 3300     : , "sv"           : If > 0, then it only runs the benchmark for this # of ticks.
sv_bonus_challenge                       : 0        : , "sv", "rep"    : Set to values other than 0 to select a bonus map challenge type.
sv_bonus_map_challenge_update            : cmd      :                  : Updates a bonus map challenge score.
sv_bonus_map_complete                    : cmd      :                  : Completes a bonus map.
sv_bonus_map_unlock                      : cmd      :                  : Locks a bonus map.
sv_cacheencodedents                      : 1        :                  : If set to 1, does an optimization to prevent extra SendTable_Encode calls.
sv_chat_bucket_size_tier1                : 4        : , "sv"           : The maxmimum size of the short term chat msg bucket.
sv_chat_bucket_size_tier2                : 30       : , "sv"           : The maxmimum size of the long term chat msg bucket.
sv_chat_seconds_per_msg_tier1            : 3        : , "sv"           : The number of seconds to accrue an additional short term chat msg.
sv_chat_seconds_per_msg_tier2            : 10       : , "sv"           : The number of seconds to accrue an additional long term chat msg.
sv_cheats                                : 0        : , "nf", "rep"    : Allow cheats on server
sv_clearhinthistory                      : cmd      :                  : Clear memory of server side hints displayed to the player.
sv_client_cmdrate_difference             : 20       : , "rep"          : cl_cmdrate is moved to within sv_client_cmdrate_difference units of cl_updaterate before it is clamped between sv_mincmdrate and sv_maxcmdrate.
sv_client_max_interp_ratio               : 5        : , "rep"          : This can be used to limit the value of cl_interp_ratio for connected clients (only while they are connected). If sv_client_min_interp_ratio is -1, then this cvar has no effect.
sv_client_min_interp_ratio               : 1        : , "rep"          : This can be used to limit the value of cl_interp_ratio for connected clients (only while they are connected).               -1 = let clients set cl_interp_ratio to anything  any other value = set minimum value for cl_interp_ratio
sv_client_predict                        : -1       : , "rep"          : This can be used to force the value of cl_predict for connected clients (only while they are connected).    -1 = let clients set cl_predict to anything     0 = force cl_predict to 0     1 = force cl_predict to 1
sv_clockcorrection_msecs                 : 60       : , "sv"           : The server tries to keep each player's m_nTickBase withing this many msecs of the server absolute tickcount
sv_compressstringtablebaselines_threshold : 2048     :                  : Minimum size (in bytes) for stringtablebaseline buffer to be compressed.
sv_consistency                           : 1        : , "rep"          : Legacy variable with no effect!  This was deleted and then added as a temporary kludge to prevent players from being banned by servers running old versions of SMAC
sv_contact                               : 0        : , "nf"           : Contact email for server sysop
sv_debug_player_use                      : 0        : , "sv", "rep"    : Visualizes +use logic. Green cross=trace success, Red cross=trace too far, Green box=radius success
sv_debugmanualmode                       : 0        :                  : Make sure entities correctly report whether or not their network data has changed.
sv_debugtempentities                     : 0        :                  : Show temp entity bandwidth usage.
sv_deltaprint                            : 0        :                  : Print accumulated CalcDelta profiling data (only if sv_deltatime is on)
sv_deltatime                             : 0        :                  : Enable profiling of CalcDelta calls
sv_disable_querycache                    : 0        : , "sv", "cheat"  : debug - disable trace query cache
sv_downloadlist_include_navfile          : 0        :                  : Include map nav files in the download list for clients.
sv_downloadurl                           : 0        : , "rep"          : Location from which clients can download missing files
sv_dump_edicts                           : cmd      :                  : Display a list of edicts allocated on the server.
sv_dumpstringtables                      : 0        : , "cheat"        :
sv_enableoldqueries                      : 0        :                  : Enable support for old style (HL1) server queries
sv_filterban                             : 1        :                  : Set packet filtering by IP mode
sv_forcepreload                          : 0        : , "a"            : Force server side preloading.
sv_gravity                               : 800      : , "sv", "nf", "rep" : World gravity.
sv_hudhint_sound                         : 1        : , "sv", "rep"    :
sv_lan                                   : 0        :                  : Server is a lan server ( no heartbeat, no authentication, no non-class C addresses )
sv_log_onefile                           : 0        : , "a"            : Log server information to only one file.
sv_logbans                               : 0        : , "a"            : Log server bans in the server logs.
sv_logblocks                             : 0        :                  : If true when log when a query is blocked (can cause very large log files)
sv_logdownloadlist                       : 1        :                  :
sv_logecho                               : 1        : , "a"            : Echo log information to the console.
sv_logfile                               : 1        : , "a"            : Log server information in the log file.
sv_logfilecompress                       : 0        : , "a"            : Gzip compress logfile and rename to logfilename.log.gz on close.
sv_logfilename_format                    : 0        : , "a"            : Log filename format. See strftime for formatting codes.
sv_logflush                              : 0        : , "a"            : Flush the log file to disk on each write (slow).
sv_logsdir                               : 0        : , "a"            : Folder in the game directory where server logs will be stored.
sv_logsecret                             : 0        :                  : If set then include this secret when doing UDP logging (will use 0x53 as packet type, not usual 0x52)
sv_lowedict_action                       : 0        :                  : 0 - no action, 1 - warn to log file, 2 - attempt to restart the game, if applicable, 3 - restart the map, 4 - go to the next map in the map cycle, 5 - spew all edicts.
sv_lowedict_threshold                    : 8        :                  : When only this many edicts are free, take the action specified by sv_lowedict_action.
sv_massreport                            : 0        : , "sv"           :
sv_master_share_game_socket              : 1        :                  : Use the game's socket to communicate to the master server.  This is recommended.If this is 0, then it will create a socket on -steamport to handle server browser traffic
sv_max_connects_sec                      : 2        :                  : Maximum connections per second to respond to from a single IP address.
sv_max_connects_sec_global               : 0        :                  : Maximum connections per second to respond to from anywhere.
sv_max_connects_window                   : 4        :                  : Window over which to average connections per second averages.
sv_max_dropped_packets_to_process        : 10       :                  : Max dropped packets to process. Lower settings prevent lagged players from simulating too far in the past. Setting of 0 disables cap.
sv_max_queries_sec                       : 3        :                  : Maximum queries per second to respond to from a single IP address.
sv_max_queries_sec_global                : 3000     :                  : Maximum queries per second to respond to from anywhere.
sv_max_queries_window                    : 30       :                  : Window over which to average queries per second averages.
sv_max_usercmd_move_magnitude            : 1000     : , "sv"           : Maximum move magnitude that can be requested by client.
sv_maxcmdrate                            : 66       : , "rep"          : (If sv_mincmdrate is > 0), this sets the maximum value for cl_cmdrate.
sv_maxrate                               : 0        : , "rep"          : Max bandwidth rate allowed on server, 0 == unlimited
sv_maxreplay                             : 0        :                  : Maximum replay time in seconds
sv_maxroutable                           : 1260     :                  : Server upper bound on net_maxroutable that a client can use.
sv_maxupdaterate                         : 66       : , "rep"          : Maximum updates per second that the server will allow
sv_maxuptimelimit                        : 0        :                  : If set, whenever a game ends, if the server uptime exceeds this number of hours, the server will exit.
sv_maxusrcmdprocessticks                 : 24       : , "sv", "nf"     : Maximum number of client-issued usrcmd ticks that can be replayed in packet loss conditions, 0 to allow no restrictions
sv_maxusrcmdprocessticks_holdaim         : 1        : , "sv", "cheat"  : Hold client aim for multiple server sim ticks when client-issued usrcmd contains multiple actions (0: off; 1: hold this server tick; 2+: hold multiple ticks)
sv_maxusrcmdprocessticks_warning         : -1       : , "sv"           : Print a warning when user commands get dropped due to insufficient usrcmd ticks allocated, number of seconds to throttle, negative disabled
sv_memlimit                              : 0        :                  : If set, whenever a game ends, if the total memory used by the server is greater than this # of megabytes, the server will exit.
sv_mincmdrate                            : 10       : , "rep"          : This sets the minimum value for cl_cmdrate. 0 == unlimited.
sv_minrate                               : 3500     : , "rep"          : Min bandwidth rate allowed on server, 0 == unlimited
sv_minupdaterate                         : 10       : , "rep"          : Minimum updates per second that the server will allow
sv_minuptimelimit                        : 0        :                  : If set, whenever a game ends, if the server uptime is less than this number of hours, the server will continue running regardless of sv_memlimit.
sv_motd_unload_on_dismissal              : 0        : , "sv"           : If enabled, the MOTD contents will be unloaded when the player closes the MOTD.
sv_mumble_positionalaudio                : 1        : , "rep", "cl"    : Allows players using Mumble to have support for positional audio.
sv_namechange_cooldown_seconds           : 30       :                  : When a client name change is received, wait N seconds before allowing another name change
sv_netspike                              : cmd      :                  : Write network trace if amount of data sent to client exceeds N bytes.  Use zero to disable tracing. Note that having this enabled, even if never triggered, impacts performance.  Set to zero when not in use. For compatibility reasons, this command can be initialized on the command line with the -netspike option.
sv_netspike_on_reliable_snapshot_overflow : 0        :                  : If nonzero, the server will dump a netspike trace if a client is dropped due to reliable snapshot overflow
sv_netspike_output                       : 1        :                  : Where the netspike data be written?  Sum of the following values: 1=netspike.txt, 2=ordinary server log
sv_netspike_sendtime_ms                  : 0        :                  : If nonzero, the server will dump a netspike trace if it takes more than N ms to prepare a snapshot to a single client.  This feature does take some CPU cycles, so it should be left off when not in use.
sv_no_name_changes                       : 0        :                  :
sv_noclipaccelerate                      : 5        : , "a", "sv", "nf", "rep" :
sv_noclipduringpause                     : 0        : , "sv", "cheat", "rep" : If cheats are enabled, then you can noclip with the game paused (for doing screenshots, etc.).
sv_noclipspeed                           : 5        : , "a", "sv", "nf", "rep" :
sv_npc_talker_maxdist                    : 1024     : , "sv"           : NPCs over this distance from the player won't attempt to speak.
sv_parallel_packentities                 : 1        :                  :
sv_parallel_sendsnapshot                 : 0        :                  :
sv_password                              : 0        : , "nf", "prot", "norecord" : Server password for entry into multiplayer games
sv_pausable                              : 0        : , "nf"           : Is the server pausable.
sv_player_display_usercommand_errors     : 0        : , "sv", "cheat"  : 1 = Display warning when command values are out-of-range. 2 = Spew invalid ranges.
sv_player_usercommand_timeout            : 3        : , "sv", "cheat"  : After this many seconds without a usercommand from a player, the server will RunNullCommand as if client sends an empty command.
sv_playerperfhistorycount                : 60       : , "sv"           : Number of samples to maintain in player perf history
sv_precacheinfo                          : cmd      :                  : Show precache info.
sv_pure                                  : cmd      :                  : Show user data.
sv_pure_consensus                        : 5        :                  : Minimum number of file hashes to agree to form a consensus.
sv_pure_kick_clients                     : 1        :                  : If set to 1, the server will kick clients with mismatching files. Otherwise, it will issue a warning to the client.
sv_pure_retiretime                       : 900      :                  : Seconds of server idle time to flush the sv_pure file hash cache.
sv_pure_trace                            : 0        :                  : If set to 1, the server will print a message whenever a client is verifying a CRC for a file.
sv_pvsskipanimation                      : 1        : , "a", "sv"      : Skips SetupBones when npc's are outside the PVS
sv_querycache_stats                      : cmd      :                  : Display status of the query cache (client only)
sv_quota_stringcmdspersecond             : 40       :                  : How many string commands per second clients are allowed to submit, 0 to disallow all string commands
sv_rcon_banpenalty                       : 0        :                  : Number of minutes to ban users who fail rcon authentication
sv_rcon_log                              : 1        :                  : Enable/disable rcon logging.
sv_rcon_maxfailures                      : 10       :                  : Max number of times a user can fail rcon authentication before being banned
sv_rcon_maxpacketbans                    : 1        :                  : Ban IPs for sending RCON packets exceeding the value specified in sv_rcon_maxpacketsize
sv_rcon_maxpacketsize                    : 1024     :                  : The maximum number of bytes to allow in a command packet
sv_rcon_minfailures                      : 5        :                  : Number of times a user can fail rcon authentication in sv_rcon_minfailuretime before being banned
sv_rcon_minfailuretime                   : 30       :                  : Number of seconds to track failed rcon authentications
sv_rcon_whitelist_address                : 0        :                  : When set, rcon failed authentications will never ban this address, e.g. '127.0.0.1'
sv_region                                : -1       :                  : The region of the world to report this server in.
sv_restrict_aspect_ratio_fov             : 1        : , "rep"          : This can be used to limit the effective FOV of users using wide-screen resolutions with aspect ratios wider than 1.85:1 (slightly wider than 16:9).     0 = do not cap effective FOV     1 = limit the effective FOV on windowed mode users using resolutions         greater than 1.85:1     2 = limit the effective FOV on both windowed mode and full-screen users
sv_runcmds                               : 1        : , "sv"           :
sv_setsteamaccount                       : cmd      :                  : token Set game server account token to use for logging in to a persistent game server account
sv_showladders                           : 0        : , "sv"           : Show bbox and dismount points for all ladders (must be set before level load.)
sv_showlagcompensation                   : 0        : , "sv", "cheat"  : Show lag compensated hitboxes whenever a player is lag compensated.
sv_shutdown                              : cmd      :                  : Sets the server to shutdown next time it's empty
sv_shutdown_cancel                       : cmd      :                  : Cancels pending sv_shutdown command
sv_shutdown_timeout_minutes              : 360      : , "rep"          : If sv_shutdown is pending, wait at most N minutes for server to drain before forcing shutdown.
sv_signon_dos_disconnect                 : 20       :                  : Number of extra signon state confirmations required to disconnect a misbehaving client.
sv_skyname                               : 0        : , "a", "sv", "rep" : Current name of the skybox texture
sv_soundemitter_trace                    : 0        : , "sv", "rep"    : Show all EmitSound calls including their symbolic name and the actual wave file they resolved to
sv_specaccelerate                        : 5        : , "a", "sv", "nf", "rep" :
sv_specnoclip                            : 1        : , "a", "sv", "nf", "rep" :
sv_specspeed                             : 3        : , "a", "sv", "nf", "rep" :
sv_stats                                 : 1        :                  : Collect CPU usage stats
sv_steamblockingcheck                    : 0        :                  : Check each new player for Steam blocking compatibility, 1 = message only, 2 >= drop if any member of owning clan blocks,3 >= drop if any player has blocked, 4 >= drop if player has blocked anyone on server
sv_steamgroup                            : 0        : , "nf"           : The ID of the steam group that this server belongs to. You can find your group's ID on the admin profile page in the steam community.
sv_stickysprint_default                  : 0        : , "cl"           :
sv_strict_notarget                       : 0        : , "sv"           : If set, notarget will cause entities to never think they are in the pvs
sv_tags                                  : 0        : , "nf"           : Server tags. Used to provide extra information to clients when they're browsing for servers. Separate tags with a comma.
sv_test_scripted_sequences               : 0        : , "sv"           : Tests for scripted sequences that are embedded in the world. Run through your map with this set to check for NPCs falling through the world.
sv_teststepsimulation                    : 1        : , "sv"           :
sv_thinktimecheck                        : 0        : , "sv"           : Check for thinktimes all on same timestamp.
sv_timeout                               : 65       :                  : After this many seconds without a message from a client, the client is dropped
sv_turbophysics                          : 0        : , "sv", "rep"    : Turns on turbo physics
sv_unlockedchapters                      : 99       : , "a"            : Highest unlocked game chapter.
sv_usercmd_custom_random_seed            : 1        : , "sv", "cheat"  : When enabled server will populate an additional random seed independent of the client
sv_vehicle_autoaim_scale                 : 8        : , "sv"           :
sv_visiblemaxplayers                     : -1       :                  : Overrides the max players reported to prospective clients
sv_voicecodec                            : 0        :                  : Specifies which voice codec to use. Valid options are: vaudio_speex - Legacy Speex codec (lowest quality) vaudio_celt - Newer CELT codec (22kHz, 22kbps) vaudio_celt_high - Newer CELT codec, higher bitrate (44kHz, 44kbps) steam - Use Steam voice API
sv_voiceenable                           : 1        : , "a", "nf"      :
sv_vote_allow_spectators                 : 0        : , "sv"           : Allow spectators to vote?
sv_vote_bots_allowed                     : 0        : , "sv"           : Allow bots to vote or not.
sv_vote_creation_timer                   : 150      : , "sv"           : How long before a player can attempt to call another vote (in seconds).
sv_vote_failure_timer                    : 300      : , "sv"           : A vote that fails cannot be re-submitted for this long
sv_vote_failure_timer_mvm                : 120      : , "sv"           : A vote that fails in MvM cannot be re-submitted for this long
sv_vote_holder_may_vote_no               : 0        : , "sv", "rep"    : 1 = Vote caller is not forced to vote yes on yes/no votes.
sv_vote_issue_autobalance_allowed        : 0        : , "sv"           : Can players call votes to enable or disable auto team balance?
sv_vote_issue_autobalance_cooldown       : 300      : , "sv"           : Minimum time before another auto team balance vote can occur (in seconds).
sv_vote_issue_changelevel_allowed        : 0        : , "sv"           : Can players call votes to change levels?
sv_vote_issue_changelevel_allowed_mvm    : 0        : , "sv"           : Can players call votes to change levels in MvM?
sv_vote_issue_classlimits_allowed        : 0        : , "sv"           : Can players call votes to enable or disable per-class limits?
sv_vote_issue_classlimits_allowed_mvm    : 0        : , "sv"           : Can players call votes in Mann-Vs-Machine to enable or disable per-class limits?
sv_vote_issue_classlimits_cooldown       : 300      : , "sv"           : Minimum time before another classlimits vote can occur (in seconds).
sv_vote_issue_classlimits_max            : 4        : , "sv"           : Maximum number of players (per-team) that can be any one class.
sv_vote_issue_classlimits_max_mvm        : 2        : , "sv"           : Maximum number of players (per-team) that can be any one class.
sv_vote_issue_extendlevel_allowed        : 1        : , "sv"           : Can players call votes to set the next level?
sv_vote_issue_extendlevel_quorum         : 0        : , "sv"           : What is the ratio of voters needed to reach quorum?
sv_vote_issue_kick_allowed               : 0        : , "sv"           : Can players call votes to kick players from the server?
sv_vote_issue_kick_allowed_mvm           : 1        : , "sv"           : Can players call votes to kick players from the server in MvM?
sv_vote_issue_kick_min_connect_time_mvm  : 300      : , "sv"           : How long a player must be connected before they can be kicked (in seconds).
sv_vote_issue_kick_namelock_duration     : 120      : , "sv"           : How long to prevent kick targets from changing their name (in seconds).
sv_vote_issue_kick_spectators_mvm        : 1        : , "sv"           : Allow players to kick spectators in MvM.
sv_vote_issue_mvm_challenge_allowed      : 1        : , "sv"           : Can players call votes to set the challenge level?
sv_vote_issue_nextlevel_allowed          : 1        : , "sv"           : Can players call votes to set the next level?
sv_vote_issue_nextlevel_allowextend      : 1        : , "sv"           : Allow players to extend the current map?
sv_vote_issue_nextlevel_choicesmode      : 0        : , "sv"           : Present players with a list of lowest playtime maps to choose from?
sv_vote_issue_nextlevel_prevent_change   : 1        : , "sv"           : Not allowed to vote for a nextlevel if one has already been set.
sv_vote_issue_restart_game_allowed       : 0        : , "sv"           : Can players call votes to restart the game?
sv_vote_issue_restart_game_allowed_mvm   : 1        : , "sv"           : Can players call votes to restart the game in Mann-Vs-Machine?
sv_vote_issue_restart_game_cooldown      : 300      : , "sv"           : Minimum time before another restart vote can occur (in seconds).
sv_vote_issue_scramble_teams_allowed     : 1        : , "sv"           : Can players call votes to scramble the teams?
sv_vote_issue_scramble_teams_cooldown    : 1200     : , "sv"           : Minimum time before another scramble vote can occur (in seconds).
sv_vote_kick_ban_duration                : 20       : , "sv"           : The number of minutes a vote ban should last. (0 = Disabled)
sv_vote_late_join_cooldown               : 300      : , "sv"           : Length of the vote-creation cooldown when joining the server after the grace period has expired
sv_vote_late_join_time                   : 90       : , "sv"           : Grace period after the match starts before players who join the match receive a vote-creation cooldown
sv_vote_quorum_ratio                     : 0        : , "sv", "nf"     : The minimum ratio of eligible players needed to pass a vote.  Min 0.1, Max 1.0.
sv_vote_timer_allow_early_finish         : 1        : , "sv"           : If all votes are in, whether to end the vote (for debugging)
sv_vote_timer_duration                   : 15       : , "sv"           : How long to allow voting on an issue
sv_vote_ui_hide_disabled_issues          : 1        : , "sv"           : Suppress listing of disabled issues in the vote setup screen.
sys_minidumpexpandedspew                 : 1        :                  :
sys_minidumpspewlines                    : 500      :                  : Lines of crash dump console spew to keep.
systemlinkport                           : 27030    :                  : System Link port
+taunt                                   : cmd      :                  :
taunt_by_name                            : cmd      :                  : Use equipped taunt by name.
telemetry_demoend                        : 0        :                  : When playing demo, stop telemetry on tick #
telemetry_demostart                      : 0        :                  : When playing demo, start telemetry on tick #
telemetry_framecount                     : 0        :                  : Set Telemetry count of frames to capture
telemetry_level                          : 0        :                  : Set Telemetry profile level: 0 being off.
telemetry_pause                          : 0        :                  : Pause Telemetry
telemetry_resume                         : 0        :                  : Resume Telemetry
telemetry_server                         : 0        :                  : Set Telemetry server
template_debug                           : 0        : , "sv"           :
Test_CreateEntity                        : cmd      :                  :
test_dispatcheffect                      : cmd      :                  : Test a clientside dispatch effect.  Usage: test_dispatcheffect <effect name> <distance away> <flags> <magnitude> <scale>  Defaults are: <distance 1024> <flags 0> <magnitude 0> <scale 0>
Test_EHandle                             : cmd      :                  :
test_entity_blocker                      : cmd      :                  : Test command that drops an entity blocker out in front of the player.
test_freezeframe                         : cmd      :                  : Test the freeze frame code.
test_giveawayitem                        : cmd      :                  : Debugging tool to test the item giveaway panel. Usage: test_giveawayitem <weapon name>    <weapon id>: 0 = primary, 1 = secondary, 2 = melee.
Test_InitRandomEntitySpawner             : cmd      :                  :
Test_ProxyToggle_EnableProxy             : cmd      :                  :
Test_ProxyToggle_EnsureValue             : cmd      :                  : Test_ProxyToggle_EnsureValue
Test_ProxyToggle_SetValue                : cmd      :                  :
Test_RandomizeInPVS                      : cmd      :                  :
Test_RandomPlayerPosition                : cmd      :                  :
Test_RemoveAllRandomEntities             : cmd      :                  :
Test_SpawnRandomEntities                 : cmd      :                  :
testhudanim                              : cmd      :                  : Test a hud element animation.  Arguments: <anim name>
testscript_debug                         : 0        :                  : Debug test scripts.
texture_budget_background_alpha          : 128      : , "a"            : how translucent the budget panel is
texture_budget_panel_bottom_of_history_fraction : 0        : , "a"            : number between 0 and 1
texture_budget_panel_global              : 0        :                  : Show global times in the texture budget panel.
texture_budget_panel_height              : 284      : , "a"            : height in pixels of the budget panel
texture_budget_panel_width               : 512      : , "a"            : width in pixels of the budget panel
texture_budget_panel_x                   : 0        : , "a"            : number of pixels from the left side of the game screen to draw the budget panel
texture_budget_panel_y                   : 450      : , "a"            : number of pixels from the top side of the game screen to draw the budget panel
tf_airblast_cray                         : 1        : , "sv", "cheat"  : Use alternate cray airblast logic globally.
tf_airblast_cray_debug                   : 0        : , "sv", "cheat"  : Enable debugging overlays & output for cray airblast.  Value is length of time to show debug overlays in seconds.
tf_airblast_cray_ground_minz             : 100      : , "sv", "cheat"  : If set, cray airblast ensures the target has this minimum Z velocity after reflections and impulse have been applied. Set to 268.3281572999747 for exact old airblast Z behavior.
tf_airblast_cray_ground_reflect          : 1        : , "sv", "cheat"  : If set, cray airblast reflects any airblast power directed into the ground off of it, to prevent ground-stuck and provide a bit more control over up-vs-forward vectoring
tf_airblast_cray_lose_footing_duration   : 0        : , "sv", "cheat"  : How long the player should be unable to regain their footing after being airblast, separate from air-control stun.
tf_airblast_cray_pitch_control           : 0        : , "sv", "cheat"  : If set, allow controlling the pitch of the airblast, in addition to the yaw.
tf_airblast_cray_power                   : 600      : , "sv", "cheat"  : Amount of force cray airblast should apply unconditionally. Set to 0 to only perform player momentum reflection.
tf_airblast_cray_power_relative          : 0        : , "sv", "cheat"  : If set, the blast power power also inherits from the blast's forward momentum.
tf_airblast_cray_reflect_coeff           : 2        : , "sv", "cheat"  : The coefficient of reflective power cray airblast employs.  0   - No reflective powers  0-1 - Cancel out some/all incoming velocity  1-2 - Reflect some/all incoming velocity outwards  2+  - Reflect incoming velocity outwards and then some
tf_airblast_cray_reflect_cost_coeff      : 0        : , "sv", "cheat"  : What portion of power used for reflection is removed from the push effect. Note that reflecting incoming momentum requires 2x the momentum - to first neutralize and then reverse it.  Setting this to 1 means that a target running towards the blast at more than 50% blast-speed would have a net pushback half that of a stationary target, since half the power was used to negate their incoming momentum. A value of 0.5 would mean that running towards the blast would not be beneficial vs being still, while values
tf_airblast_cray_reflect_relative        : 0        : , "sv", "cheat"  : If set, the relative, rather than absolute, target velocity is considered for reflection.
tf_airblast_cray_stun_amount             : 0        : , "sv", "cheat"  : Amount of control loss to apply if stun_duration is set.
tf_airblast_cray_stun_duration           : 0        : , "sv", "cheat"  : If set, apply this duration of stun when initially hit by an airblast.  Does not apply to repeated airblasts.
tf_allow_player_name_change              : 1        : , "sv", "nf"     : Allow player name changes.
tf_allow_player_use                      : 0        : , "sv", "nf"     : Allow players to execute +use while playing.
tf_allow_server_hibernation              : 1        : , "sv"           : Allow the server to hibernate when empty.
tf_allow_sliding_taunt                   : 0        : , "sv"           : 1 - Allow player to slide for a bit after taunting
tf_allow_taunt_switch                    : 0        : , "sv", "rep"    : 0 - players are not allowed to switch weapons while taunting, 1 - players can switch weapons at the start of a taunt (old bug behavior), 2 - players can switch weapons at any time during a taunt.
tf_always_deathanim                      : 0        : , "cheat", "cl"  : Force death anims to always play.
tf_always_loser                          : 0        : , "sv", "cheat", "rep" : Force loserstate to true.
tf_archer_proxy_fire_rate                : 1        : , "sv", "cheat"  :
tf_arena_first_blood                     : 1        : , "sv", "nf", "rep" : Rewards the first player to get a kill each round.
tf_arena_max_streak                      : 3        : , "sv", "nf", "rep" : Teams will be scrambled if one team reaches this streak
tf_arena_override_cap_enable_time        : -1       : , "sv", "nf", "rep" : Overrides the time (in seconds) it takes for the capture point to become enable, -1 uses the level designer specified time.
tf_arena_override_team_size              : 0        : , "sv", "rep"    : Overrides the maximum team size in arena mode. Set to zero to keep the default behavior of 1/3 maxplayers.
tf_arena_preround_time                   : 10       : , "sv", "nf", "rep" : Length of the Pre-Round time
tf_arena_round_time                      : 0        : , "sv", "nf", "rep" :
tf_arena_use_queue                       : 1        : , "sv", "nf", "rep" : Enables the spectator queue system for Arena.
tf_autobalance_ask_candidates_maxtime    : 10       : , "sv", "rep"    :
tf_autobalance_dead_candidates_maxtime   : 15       : , "sv", "rep"    :
tf_autobalance_force_candidates_maxtime  : 5        : , "sv", "rep"    :
tf_autobalance_xp_bonus                  : 500      : , "sv", "rep"    :
tf_avoidteammates_pushaway               : 1        : , "sv", "rep"    : Whether or not teammates push each other away when occupying the same space
tf_backpack_page_button_delay            : 0        : , "a", "cl"      : Amount of time the mouse cursor needs to hover over the page button to select the page.
tf_base_boss_max_turn_rate               : 25       : , "sv", "cheat"  :
tf_base_boss_speed                       : 75       : , "sv", "cheat"  :
tf_birthday                              : 0        : , "sv", "nf", "rep" :
tf_birthday_ball_chance                  : 100      : , "sv", "rep"    : Percent chance of a birthday beach ball spawning at each round start
tf_bison_tick_time                       : 0        : , "sv", "cheat"  :
tf_bot_add                               : cmd      :                  : Add a bot.
tf_bot_always_full_reload                : 0        : , "sv", "cheat"  :
tf_bot_ammo_search_range                 : 5000     : , "sv", "cheat"  : How far bots will search to find ammo around them
tf_bot_arrow_elevation_rate              : 0        : , "sv", "cheat"  : When firing arrows at far away targets, this is the degree/range slope to raise our aim
tf_bot_auto_vacate                       : 1        : , "sv"           : If nonzero, bots will automatically leave to make room for human players.
tf_bot_ballistic_elevation_rate          : 0        : , "sv", "cheat"  : When lobbing grenades at far away targets, this is the degree/range slope to raise our aim
tf_bot_capture_seek_and_destroy_max_duration : 30       : , "sv", "cheat"  : If a capturing bot decides to go hunting, this is the max duration he will hunt for before reconsidering
tf_bot_capture_seek_and_destroy_min_duration : 15       : , "sv", "cheat"  : If a capturing bot decides to go hunting, this is the min duration he will hunt for before reconsidering
tf_bot_cart_push_radius                  : 60       : , "sv", "cheat"  :
tf_bot_choose_target_interval            : 0        : , "sv", "cheat"  : How often, in seconds, a TFBot can reselect his target
tf_bot_debug_ammo_scavenging             : 0        : , "sv", "cheat"  :
tf_bot_debug_destroy_enemy_sentry        : 0        : , "sv", "cheat"  :
tf_bot_debug_payload_guard_vantage_points : 0        : , "sv", "cheat"  :
tf_bot_debug_retreat_to_cover            : 0        : , "sv", "cheat"  :
tf_bot_debug_seek_and_destroy            : 0        : , "sv", "cheat"  :
tf_bot_debug_sentry_placement            : 0        : , "sv", "cheat"  :
tf_bot_debug_sniper                      : 0        : , "sv", "cheat"  :
tf_bot_debug_spy                         : 0        : , "sv", "cheat"  :
tf_bot_debug_stuck_log                   : cmd      :                  : Given a server logfile, visually display bot stuck locations.
tf_bot_debug_stuck_log_clear             : cmd      :                  : Clear currently loaded bot stuck data
tf_bot_debug_tags                        : 0        : , "sv", "cheat"  : ent_text will only show tags on bots
tf_bot_defend_owned_point_percent        : 0        : , "sv", "cheat"  : Stay on the contested point we own until enemy cap percent falls below this
tf_bot_defense_debug                     : 0        : , "sv", "cheat"  :
tf_bot_defense_must_defend_time          : 300      : , "sv", "cheat"  : If timer is less than this, bots will stay near point and guard
tf_bot_difficulty                        : 1        : , "sv"           : Defines the skill of bots joining the game.  Values are: 0=easy, 1=normal, 2=hard, 3=expert.
tf_bot_engineer_building_health_multiplier : 2        : , "sv", "cheat"  :
tf_bot_engineer_exit_near_sentry_range   : 2500     : , "sv", "cheat"  : Maximum travel distance between a bot's Sentry gun and its Teleporter Exit
tf_bot_engineer_max_sentry_travel_distance_to_point : 2500     : , "sv", "cheat"  : Maximum travel distance between a bot's Sentry gun and the currently contested point
tf_bot_engineer_mvm_hint_min_distance_from_bomb : 1300     : , "sv", "cheat"  :
tf_bot_engineer_mvm_sentry_hint_bomb_backward_range : 3000     : , "sv", "cheat"  :
tf_bot_engineer_mvm_sentry_hint_bomb_forward_range : 0        : , "sv", "cheat"  :
tf_bot_engineer_retaliate_range          : 750      : , "sv", "cheat"  : If attacker who destroyed sentry is closer than this, attack. Otherwise, retreat
tf_bot_escort_range                      : 300      : , "sv", "cheat"  :
tf_bot_fetch_lost_flag_time              : 10       : , "sv", "cheat"  : How long busy TFBots will ignore the dropped flag before they give up what they are doing and go after it
tf_bot_fire_weapon_allowed               : 1        : , "sv", "cheat"  : If zero, TFBots will not pull the trigger of their weapons (but will act like they did)
tf_bot_fire_weapon_min_time              : 1        : , "sv", "cheat"  :
tf_bot_flag_escort_give_up_range         : 1000     : , "sv", "cheat"  :
tf_bot_flag_escort_max_count             : 4        : , "sv", "cheat"  :
tf_bot_flag_escort_range                 : 500      : , "sv", "cheat"  :
tf_bot_flag_kill_on_touch                : 0        : , "sv", "cheat"  : If nonzero, any bot that picks up the flag dies. For testing.
tf_bot_force_class                       : 0        : , "sv"           : If set to a class name, all TFBots will respawn as that class
tf_bot_force_jump                        : 0        : , "sv", "cheat"  : Force bots to continuously jump
tf_bot_formation_debug                   : 0        : , "sv", "cheat"  :
tf_bot_health_critical_ratio             : 0        : , "sv", "cheat"  :
tf_bot_health_ok_ratio                   : 0        : , "sv", "cheat"  :
tf_bot_health_search_far_range           : 2000     : , "sv", "cheat"  :
tf_bot_health_search_near_range          : 1000     : , "sv", "cheat"  :
tf_bot_hitscan_range_limit               : 1800     : , "sv", "cheat"  :
tf_bot_join_after_player                 : 1        : , "sv"           : If nonzero, bots wait until a player joins before entering the game.
tf_bot_keep_class_after_death            : 0        : , "sv"           :
tf_bot_kick                              : cmd      :                  : Remove a TFBot by name, or all bots ('all').
tf_bot_kill                              : cmd      :                  : Kill a TFBot by name, or all bots ('all').
tf_bot_max_grenade_launch_at_sentry_range : 1500     : , "sv", "cheat"  :
tf_bot_max_point_defend_range            : 1250     : , "sv", "cheat"  : How far (in travel distance) from the point defending bots will take up positions
tf_bot_max_setup_gate_defend_range       : 2000     : , "sv", "cheat"  : How far from the setup gate(s) defending bots can take up positions
tf_bot_max_sticky_launch_at_sentry_range : 1500     : , "sv", "cheat"  :
tf_bot_max_teleport_entrance_travel      : 1500     : , "sv", "cheat"  : Don't plant teleport entrances farther than this travel distance from our spawn room
tf_bot_max_teleport_exit_travel_to_point : 2500     : , "sv", "cheat"  : In an offensive engineer bot's tele exit is farther from the point than this, destroy it
tf_bot_medic_cover_test_resolution       : 8        : , "sv", "cheat"  :
tf_bot_medic_debug                       : 0        : , "sv", "cheat"  :
tf_bot_medic_max_call_response_range     : 1000     : , "sv", "cheat"  :
tf_bot_medic_max_heal_range              : 600      : , "sv", "cheat"  :
tf_bot_medic_start_follow_range          : 250      : , "sv", "cheat"  :
tf_bot_medic_stop_follow_range           : 75       : , "sv", "cheat"  :
tf_bot_melee_attack_abandon_range        : 500      : , "sv", "cheat"  : If threat is farther away than this, bot will switch back to its primary weapon and attack
tf_bot_melee_only                        : 0        : , "sv"           : If nonzero, TFBots will only use melee weapons
tf_bot_min_setup_gate_defend_range       : 750      : , "sv", "cheat"  : How close from the setup gate(s) defending bots can take up positions. Areas closer than this will be in cover to ambush.
tf_bot_min_setup_gate_sniper_defend_range : 1500     : , "sv", "cheat"  : How far from the setup gate(s) a defending sniper will take up position
tf_bot_min_teleport_travel               : 3000     : , "sv", "cheat"  : Minimum travel distance between teleporter entrance and exit before engineer bot will build one
tf_bot_mvm_show_engineer_hint_region     : cmd      :                  : Show the nav areas MvM engineer bots will consider when selecting sentry and teleporter hints
tf_bot_near_point_travel_distance        : 750      : , "sv", "cheat"  : If within this travel distance to the current point, bot is 'near' it
tf_bot_notice_backstab_chance            : 25       : , "sv", "cheat"  :
tf_bot_notice_backstab_max_range         : 750      : , "sv", "cheat"  :
tf_bot_notice_backstab_min_range         : 100      : , "sv", "cheat"  :
tf_bot_notice_gunfire_range              : 3000     : , "sv"           :
tf_bot_notice_quiet_gunfire_range        : 500      : , "sv"           :
tf_bot_npc_archer_arrow_damage           : 75       : , "sv", "cheat"  :
tf_bot_npc_archer_health                 : 100      : , "sv", "cheat"  :
tf_bot_npc_archer_shoot_interval         : 2        : , "sv", "cheat"  :
tf_bot_npc_archer_speed                  : 100      : , "sv", "cheat"  :
tf_bot_offense_must_push_time            : 120      : , "sv", "cheat"  : If timer is less than this, bots will push hard to cap
tf_bot_offline_practice                  : 0        : , "sv"           : Tells the server that it is in offline practice mode.
tf_bot_path_lookahead_range              : 300      : , "sv"           :
tf_bot_payload_guard_range               : 1000     : , "sv", "cheat"  :
tf_bot_prefix_name_with_difficulty       : 0        : , "sv"           : Append the skill level of the bot to the bot's name
tf_bot_pyro_always_reflect               : 0        : , "sv", "cheat"  : Pyro bots will always reflect projectiles fired at them. For tesing/debugging purposes.
tf_bot_pyro_deflect_tolerance            : 0        : , "sv", "cheat"  :
tf_bot_pyro_shove_away_range             : 250      : , "sv", "cheat"  : If a Pyro bot's target is closer than this, compression blast them away
tf_bot_quota                             : 0        : , "sv"           : Determines the total number of tf bots in the game.
tf_bot_quota_mode                        : 0        : , "sv"           : Determines the type of quota. Allowed values: 'normal', 'fill', and 'match'. If 'fill', the server will adjust bots to keep N players in the game, where N is bot_quota. If 'match', the server will maintain a 1:N ratio of humans to bots, where N is bot_quota.
tf_bot_reevaluate_class_in_spawnroom     : 1        : , "sv", "cheat"  : If set, bots will opportunisticly switch class while in spawnrooms if their current class is no longer their first choice.
tf_bot_retreat_to_cover_range            : 1000     : , "sv", "cheat"  :
tf_bot_sniper_aim_error                  : 0        : , "sv", "cheat"  :
tf_bot_sniper_aim_steady_rate            : 10       : , "sv", "cheat"  :
tf_bot_sniper_allow_opportunistic        : 1        : , "sv"           : If set, Snipers will stop on their way to their preferred lurking spot to snipe at opportunistic targets
tf_bot_sniper_choose_target_interval     : 3        : , "sv", "cheat"  : How often, in seconds, a zoomed-in Sniper can reselect his target
tf_bot_sniper_flee_range                 : 400      : , "sv", "cheat"  : If threat is closer than this, retreat
tf_bot_sniper_goal_entity_move_tolerance : 500      : , "sv", "cheat"  :
tf_bot_sniper_linger_time                : 5        : , "sv", "cheat"  : How long Sniper will wait around after losing his target before giving up
tf_bot_sniper_melee_range                : 200      : , "sv", "cheat"  : If threat is closer than this, attack with melee weapon
tf_bot_sniper_patience_duration          : 10       : , "sv", "cheat"  : How long a Sniper bot will wait without seeing an enemy before picking a new spot
tf_bot_sniper_personal_space_range       : 1000     : , "sv", "cheat"  : Enemies beyond this range don't worry the Sniper
tf_bot_sniper_spot_epsilon               : 100      : , "sv", "cheat"  :
tf_bot_sniper_spot_max_count             : 10       : , "sv", "cheat"  : Stop searching for sniper spots when each side has found this many
tf_bot_sniper_spot_min_range             : 1000     : , "sv", "cheat"  :
tf_bot_sniper_spot_point_tolerance       : 750      : , "sv", "cheat"  :
tf_bot_sniper_spot_search_count          : 10       : , "sv", "cheat"  : Search this many times per behavior update frame
tf_bot_sniper_target_linger_duration     : 2        : , "sv", "cheat"  : How long a Sniper bot will keep toward at a target it just lost sight of
tf_bot_spawn_use_preset_roster           : 1        : , "sv", "cheat"  : Bot will choose class from a preset class table.
tf_bot_spy_change_target_range_threshold : 300      : , "sv", "cheat"  :
tf_bot_spy_knife_range                   : 300      : , "sv", "cheat"  : If threat is closer than this, prefer our knife
tf_bot_squad_escort_range                : 500      : , "sv", "cheat"  :
tf_bot_sticky_base_range                 : 800      : , "sv", "cheat"  :
tf_bot_sticky_charge_rate                : 0        : , "sv", "cheat"  : Seconds of charge per unit range beyond base
tf_bot_stickybomb_density                : 0        : , "sv", "cheat"  : Number of stickies to place per square inch
tf_bot_suicide_bomb_friendly_fire        : 1        : , "sv", "cheat"  :
tf_bot_suicide_bomb_range                : 300      : , "sv", "cheat"  :
tf_bot_suspect_spy_forget_cooldown       : 5        : , "sv", "cheat"  : How long to consider a suspicious spy as suspicious
tf_bot_suspect_spy_touch_interval        : 5        : , "sv", "cheat"  : How many seconds back to look for touches against suspicious spies
tf_bot_taunt_victim_chance               : 20       : , "sv"           :
tf_bot_teleport_build_surface_normal_limit : 0        : , "sv", "cheat"  : If the ground normal Z component is less that this value, Engineer bots won't place their entrance teleporter
tf_bot_wait_in_cover_max_time            : 2        : , "sv", "cheat"  :
tf_bot_wait_in_cover_min_time            : 1        : , "sv", "cheat"  :
tf_bot_warp_team_to_me                   : cmd      :                  :
tf_build_menu_controller_mode            : 0        : , "a", "cl"      : Use console controller build menus. 1 = ON, 0 = OFF.
tf_cart_spell_drop_rate                  : 4        : , "sv"           :
tf_chargedfriends                        : 0        : , "a", "cl"      :
tf_chat_popup_hold_time                  : 5        : , "a", "cl"      :
tf_clamp_airducks                        : 1        : , "sv", "rep"    :
tf_classlimit                            : 0        : , "sv", "nf", "rep" : Limit on how many players can be any class (i.e. tf_class_limit 2 would limit 2 players per class).
tf_clear_attribute                       : cmd      :                  : Remove given attribute from all areas in the selected set.
tf_clientsideeye_lookats                 : 1        : , "cl"           : When on, players will turn their pupils to look at nearby players.
tf_colorblindassist                      : 0        : , "a", "cl"      : Setting this to 1 turns on colorblind mode.
tf_competitive_preround_duration         : 3        : , "sv", "rep"    : How long we stay in pre-round when in competitive games.
tf_contract_competitive_show             : 2        : , "a", "norecord", "cl" : Settings for the contract HUD element during competitive matches: 0 show nothing, 1 show everything, 2 show only active contracts.
tf_contract_progress_show                : 1        : , "a", "norecord", "cl" : Settings for the contract HUD element: 0 show nothing, 1 show everything, 2 show only active contracts.
tf_ctf_bonus_time                        : 10       : , "sv", "nf"     : Length of team crit time for CTF capture.
tf_damage_disablespread                  : 1        : , "sv", "nf", "rep" : Toggles the random damage spread applied to all player damage.
tf_damage_multiplier_blue                : 1        : , "sv", "cheat"  : All incoming damage to a blue player is multiplied by this value
tf_damage_multiplier_red                 : 1        : , "sv", "cheat"  : All incoming damage to a red player is multiplied by this value
tf_dashboard_slide_time                  : 0        : , "a", "cl"      : How long it takes for the dashboard side panels to slide in and out
tf_datacenter_ping_debug                 : 0        : , "cl"           :
tf_datacenter_ping_dump                  : cmd      :                  : Dump current datacenter ping values to console
tf_debug_damage                          : 0        : , "sv", "cheat"  :
tf_debug_flamethrower                    : 0        : , "sv", "cheat", "rep" : Visualize the flamethrower damage.
tf_debug_placement_failure               : 0        : , "sv", "cheat"  :
tf_decoy_lifetime                        : 5        : , "sv", "cheat"  : The lifetime of a decoy, in seconds
tf_delete_temp_files                     : 1        : , "a", "cl"      : Delete custom player sprays and other temp files during shutdown
tf_demoman_charge_frametime_scaling      : 1        : , "sv", "cheat", "rep" : When enabled, scale yaw limiting based on client performance (frametime).
tf_dingaling_lasthit_pitch_override      : -1       : , "cl"           : If set, pitch for last hit sounds.
tf_dingaling_lasthit_pitchmaxdmg         : 100      : , "a", "cl"      : Desired pitch of the last hit sound when a maximum damage hit (>= 150 health) is done.
tf_dingaling_lasthit_pitchmindmg         : 100      : , "a", "cl"      : Desired pitch of the last hit sound when a minimal damage hit (<= 10 health) is done.
tf_dingaling_lasthit_volume              : 0        : , "a", "cl"      : Desired volume of the last hit sound.
tf_dingaling_pitch_override              : -1       : , "cl"           : If set, pitch for all hit sounds.
tf_dingaling_pitchmaxdmg                 : 100      : , "a", "cl"      : Desired pitch of the hit sound when a maximum damage hit (>= 150 health) is done.
tf_dingaling_pitchmindmg                 : 100      : , "a", "cl"      : Desired pitch of the hit sound when a minimal damage hit (<= 10 health) is done.
tf_dingaling_volume                      : 0        : , "a", "cl"      : Desired volume of the hit sound.
tf_dingalingaling                        : 0        : , "a", "cl"      : If set to 1, play a sound everytime you injure an enemy. The sound can be customized by replacing the 'tf/sound/ui/hitsound.wav' file.
tf_dingalingaling_effect                 : 0        : , "a", "cl"      : Which Dingalingaling sound is used
tf_dingalingaling_last_effect            : 0        : , "a", "cl"      : Which final hit sound to play when the target expires.
tf_dingalingaling_lasthit                : 0        : , "a", "cl"      : If set to 1, play a sound whenever one of your attacks kills an enemy. The sound can be customized by replacing the 'tf/sound/ui/killsound.wav' file.
tf_dingalingaling_repeat_delay           : 0        : , "a", "cl"      : Desired repeat delay of the hit sound.  Set to 0 to play a sound for every instance of damage dealt.
tf_disguise_menu_controller_mode         : 0        : , "a", "cl"      : Use console controller disguise menus. 1 = ON, 0 = OFF.
tf_dropped_weapon_lifetime               : 30       : , "sv", "cheat"  :
tf_duck_edict_limit                      : 1900     : , "sv", "rep"    : Maximum number of edicts allowed before spawning a duck
tf_duck_edict_warning                    : 1800     : , "sv", "rep"    : Maximum number of edicts allowed before slowing duck spawn rate
tf_enable_glows_after_respawn            : 1        : , "a", "cl"      : Enable teammate glow effects after respawn.
tf_escort_recede_time                    : 30       : , "sv"           :
tf_escort_recede_time_overtime           : 5        : , "sv"           :
tf_escort_score_rate                     : 1        : , "sv", "cheat"  : Score for escorting the train, in points per second
tf_explanations_backpackpanel            : 0        : , "a", "cl"      : Whether the user has seen explanations for this panel.
tf_explanations_charinfo_armory_panel    : 0        : , "a", "cl"      : Whether the user has seen explanations for this panel.
tf_explanations_charinfopanel            : 0        : , "a", "cl"      : Whether the user has seen explanations for this panel.
tf_explanations_craftingpanel            : 0        : , "a", "cl"      : Whether the user has seen explanations for this panel.
tf_explanations_discardpanel             : 0        : , "a", "cl"      : Whether the user has seen explanations for this panel.
tf_explanations_store                    : 0        : , "a", "cl"      : Whether the user has seen explanations for this panel.
tf_eyeball_boss_acceleration             : 500      : , "sv", "cheat"  :
tf_eyeball_boss_attack_range             : 750      : , "sv", "cheat"  :
tf_eyeball_boss_debug                    : 0        : , "sv", "cheat"  :
tf_eyeball_boss_debug_orientation        : 0        : , "sv", "cheat"  :
tf_eyeball_boss_health_at_level_2        : 17000    : , "sv", "cheat"  :
tf_eyeball_boss_health_base              : 8000     : , "sv", "cheat"  :
tf_eyeball_boss_health_per_level         : 3000     : , "sv", "cheat"  :
tf_eyeball_boss_health_per_player        : 400      : , "sv", "cheat"  :
tf_eyeball_boss_horiz_damping            : 2        : , "sv", "cheat"  :
tf_eyeball_boss_hover_height             : 200      : , "sv", "cheat"  :
tf_eyeball_boss_lifetime                 : 120      : , "sv", "cheat"  :
tf_eyeball_boss_lifetime_spell           : 8        : , "sv", "cheat"  :
tf_eyeball_boss_speed                    : 250      : , "sv", "cheat"  :
tf_eyeball_boss_vert_damping             : 1        : , "sv", "cheat"  :
tf_fall_damage_disablespread             : 0        : , "sv"           :
tf_find_a_match_hint_viewed              : 0        : , "a", "cl"      :
tf_fireball_airblast_recharge_penalty    : 0        : , "sv", "cheat", "rep" :
tf_fireball_burn_duration                : 2        : , "sv", "cheat", "rep" :
tf_fireball_burning_bonus                : 3        : , "sv", "cheat", "rep" :
tf_fireball_damage                       : 25       : , "sv", "cheat", "rep" :
tf_fireball_distance                     : 500      : , "sv", "cheat", "rep" :
tf_fireball_draw_debug_radius            : 0        : , "sv", "cheat", "rep" :
tf_fireball_hit_recharge_boost           : 1        : , "sv", "cheat", "rep" :
tf_fireball_max_lifetime                 : 0        : , "sv", "cheat", "rep" :
tf_fireball_radius                       : 22       : , "sv", "cheat", "rep" :
tf_fireball_speed                        : 3000     : , "sv", "cheat", "rep" :
tf_flag_caps_per_round                   : 3        : , "sv", "rep"    : Number of captures per round on CTF and PASS Time maps. Set to 0 to disable.
tf_flag_return_on_touch                  : 0        : , "sv", "rep"    : If this is set, your flag must be at base in order to capture the enemy flag. Remote friendly flags return to your base instantly when you touch them
tf_flag_return_time_credit_factor        : 1        : , "sv", "rep"    : Number of seconds the flag's return time will be credited for each second the flag is being carried.
tf_flamethrower_boxsize                  : 12       : , "sv", "cheat", "rep" : Size of flame damage entities.
tf_forced_holiday                        : 0        : , "sv", "rep"    : Forced holiday,     Birthday = 1    Halloween = 2
tf_fortune_teller_fortune_duration       : 30       : , "sv", "cheat"  : Duration of the fortune time.
tf_fortune_teller_interval_time          : 120      : , "sv", "cheat"  : Time until the next fortune teller event (in second).
tf_fortune_teller_warning_time           : 2        : , "sv", "cheat"  : Warning time (in second) before fortune teller tells a fortune.
tf_ghost_up_speed                        : 300      : , "sv", "cheat", "rep" : Speed that ghost go upward while holding jump key
tf_ghost_xy_speed                        : 300      : , "sv", "cheat", "rep" :
tf_grapplinghook_acceleration            : 3500     : , "sv", "cheat", "rep" :
tf_grapplinghook_dampening               : 500      : , "sv", "cheat", "rep" :
tf_grapplinghook_enable                  : 0        : , "sv", "rep"    :
tf_grapplinghook_fire_delay              : 0        : , "sv", "cheat", "rep" :
tf_grapplinghook_follow_distance         : 64       : , "sv", "cheat", "rep" :
tf_grapplinghook_jump_up_speed           : 375      : , "sv", "cheat", "rep" :
tf_grapplinghook_los_force_detach_time   : 1        : , "sv", "cheat"  :
tf_grapplinghook_max_distance            : 2000     : , "sv", "cheat", "rep" : Valid distance for grappling hook to travel
tf_grapplinghook_medic_latch_speed_scale : 0        : , "sv", "cheat", "rep" :
tf_grapplinghook_move_speed              : 750      : , "sv", "cheat", "rep" :
tf_grapplinghook_prevent_fall_damage     : 0        : , "sv", "cheat", "rep" :
tf_grapplinghook_projectile_speed        : 1500     : , "sv", "cheat", "rep" : How fast does the grappliing hook projectile travel
tf_grapplinghook_use_acceleration        : 0        : , "sv", "rep"    : Use full acceleration calculation for grappling hook movement
tf_gravetalk                             : 1        : , "sv", "nf"     : Allows living players to hear dead players using text/voice chat.
tf_halloween_allow_ghost_hit_by_kart_delay : 0        : , "sv", "cheat"  :
tf_halloween_allow_truce_during_boss_event : 0        : , "sv", "nf"     : Determines if RED and BLU can damage each other while fighting Monoculus or Merasmus on non-Valve maps.
tf_halloween_bonus_ducks_cooldown        : 20       : , "a", "cl"      :
tf_halloween_boss_spawn_interval         : 480      : , "sv", "cheat"  : Average interval between boss spawns, in seconds
tf_halloween_boss_spawn_interval_variation : 60       : , "sv", "cheat"  : Variation of spawn interval +/-
tf_halloween_bot_attack_range            : 200      : , "sv", "cheat"  :
tf_halloween_bot_chase_duration          : 30       : , "sv", "cheat"  :
tf_halloween_bot_chase_range             : 1500     : , "sv", "cheat"  :
tf_halloween_bot_health_base             : 3000     : , "sv", "cheat"  :
tf_halloween_bot_health_per_player       : 200      : , "sv", "cheat"  :
tf_halloween_bot_min_player_count        : 10       : , "sv", "cheat"  :
tf_halloween_bot_quit_range              : 2000     : , "sv", "cheat"  :
tf_halloween_bot_speed                   : 400      : , "sv", "cheat"  :
tf_halloween_bot_speed_recovery_rate     : 100      : , "sv", "cheat"  : Movement units/second
tf_halloween_bot_terrify_radius          : 500      : , "sv", "cheat"  :
tf_halloween_eyeball_boss_spawn_interval : 180      : , "sv", "cheat"  : Average interval between boss spawns, in seconds
tf_halloween_eyeball_boss_spawn_interval_variation : 30       : , "sv", "cheat"  : Variation of spawn interval +/-
tf_halloween_force_boss_spawn            : cmd      :                  : For testing.
tf_halloween_giant_health_scale          : 10       : , "sv", "cheat"  :
tf_halloween_gift_lifetime               : 240      : , "sv", "cheat", "rep" :
tf_halloween_hhh_attack_kart_radius      : 300      : , "sv", "cheat"  :
tf_halloween_kart_air_turn_scale         : 1        : , "sv", "cheat", "rep" :
tf_halloween_kart_aircontrol             : 1        : , "sv", "cheat", "rep" : Multiplier for how much air control players have when in Kart Mode
tf_halloween_kart_bomb_head_damage_scale : 2        : , "sv", "cheat"  :
tf_halloween_kart_bomb_head_impulse_scale : 2        : , "sv", "cheat"  :
tf_halloween_kart_bombhead_scale         : 1        : , "sv", "cheat", "rep" :
tf_halloween_kart_boost_duration         : 1        : , "sv", "cheat", "rep" :
tf_halloween_kart_boost_impact_force     : 0        : , "sv", "cheat"  : Impact force scaler on boosts
tf_halloween_kart_boost_recharge         : 5        : , "sv", "cheat", "rep" :
tf_halloween_kart_brake_accel            : 500      : , "sv", "cheat", "rep" :
tf_halloween_kart_brake_speed            : 0        : , "sv", "cheat", "rep" :
tf_halloween_kart_cam_dist               : 225      : , "cheat", "cl"  :
tf_halloween_kart_cam_follow             : 0        : , "cheat", "cl"  :
tf_halloween_kart_coast_accel            : 300      : , "sv", "cheat", "rep" :
tf_halloween_kart_damage_to_force        : 300      : , "sv", "cheat"  :
tf_halloween_kart_dash_accel             : 750      : , "sv", "cheat", "rep" :
tf_halloween_kart_dash_speed             : 1000     : , "sv", "cheat", "rep" :
tf_halloween_kart_fast_turn_accel_speed  : 400      : , "sv", "cheat", "rep" :
tf_halloween_kart_fast_turn_speed        : 60       : , "sv", "cheat", "rep" :
tf_halloween_kart_idle_speed             : 0        : , "sv", "cheat", "rep" :
tf_halloween_kart_impact_air_scale       : 0        : , "sv", "cheat"  :
tf_halloween_kart_impact_bounds_scale    : 1        : , "sv", "cheat"  :
tf_halloween_kart_impact_damage          : 1        : , "sv", "cheat"  : Impact damage scaler
tf_halloween_kart_impact_feedback        : 0        : , "sv", "cheat"  :
tf_halloween_kart_impact_force           : 0        : , "sv", "cheat"  : Impact force scaler
tf_halloween_kart_impact_lookahead       : 12       : , "sv", "cheat"  :
tf_halloween_kart_impact_rate            : 0        : , "sv", "cheat"  : rate of allowing impact damage
tf_halloween_kart_normal_accel           : 300      : , "sv", "cheat", "rep" :
tf_halloween_kart_normal_speed           : 650      : , "sv", "cheat", "rep" :
tf_halloween_kart_pitch                  : 10       : , "a", "cl"      :
tf_halloween_kart_pitch_fast_follow_rate : 2        : , "a", "cl"      :
tf_halloween_kart_pitch_slow_follow_rate : 0        : , "a", "cl"      :
tf_halloween_kart_punting_ghost_force_scale : 4        : , "sv", "cheat"  :
tf_halloween_kart_return_turn_accell     : 200      : , "sv", "cheat", "rep" :
tf_halloween_kart_reverse_speed          : -50      : , "sv", "cheat", "rep" :
tf_halloween_kart_reverse_turn_speed     : 50       : , "sv", "cheat", "rep" :
tf_halloween_kart_rocketspell_force      : 900      : , "sv", "cheat"  :
tf_halloween_kart_rocketspell_lifetime   : 0        : , "sv", "cheat"  :
tf_halloween_kart_rocketspell_speed      : 1500     : , "sv", "cheat"  :
tf_halloween_kart_slow_turn_accel_speed  : 200      : , "sv", "cheat", "rep" :
tf_halloween_kart_slow_turn_speed        : 100      : , "sv", "cheat", "rep" :
tf_halloween_kart_slowmoving_accel       : 500      : , "sv", "cheat", "rep" :
tf_halloween_kart_slowmoving_threshold   : 300      : , "sv", "cheat", "rep" :
tf_halloween_kart_sound_fast_pitch       : 80       : , "cheat", "rep", "cl" :
tf_halloween_kart_sound_slow_pitch       : 30       : , "cheat", "rep", "cl" :
tf_halloween_kart_stationary_turn_speed  : 50       : , "sv", "cheat", "rep" :
tf_halloween_kart_stun_amount            : 1        : , "sv", "cheat"  :
tf_halloween_kart_stun_duration_scale    : 0        : , "sv", "cheat"  :
tf_halloween_kart_stun_enabled           : 1        : , "sv", "cheat"  :
tf_halloween_kart_turning_curve_peak_position : 0        : , "sv", "cheat", "rep" :
tf_halloween_unlimited_spells            : 0        : , "sv", "cheat"  :
tf_halloween_zombie_damage               : 10       : , "sv", "cheat"  : How much damage a zombie melee hit does.
tf_halloween_zombie_mob_enabled          : 0        : , "sv", "cheat"  : If set to 1, spawn zombie mobs on non-Halloween Valve maps
tf_halloween_zombie_mob_spawn_count      : 20       : , "sv", "cheat"  : How many zombies to spawn
tf_halloween_zombie_mob_spawn_interval   : 180      : , "sv", "cheat"  : Average interval between zombie mob spawns, in seconds
tf_healthicon_height_offset              : 10       : , "a", "cl"      : Offset of the health icon away from the top of the target.
tf_highfive_debug                        : 0        : , "sv"           : Turns on some console spew for debugging high five issues.
tf_highfive_hintcount                    : 0        : , "a", "norecord", "cl" : Counts the number of times the high five hint has been displayed
tf_hud_no_crosshair_on_scope_zoom        : 0        : , "a", "cl"      :
tf_hud_notification_duration             : 3        : , "cl"           : How long to display hud notification panels before fading them
tf_hud_notification_show_count_ghost_controls : 0        : , "a", "cl"      :
tf_hud_notification_show_count_ghost_controls_no_respawn : 0        : , "a", "cl"      :
tf_hud_notification_show_count_kart_controls : 0        : , "a", "cl"      :
tf_hud_num_building_alert_beeps          : 2        : , "a", "cl"      : Number of times to play warning sound when a new alert displays on building hud objects
tf_hud_show_servertimelimit              : 0        : , "a", "cl"      : Display time left before the current map ends.
tf_hud_target_id_alpha                   : 100      : , "a", "cl"      : Alpha value of target id background, default 100
tf_hud_target_id_disable_floating_health : 0        : , "a", "cl"      : Set to disable floating health bar
tf_hud_target_id_offset                  : 0        : , "a", "cl"      : RES file Y offset for target id
tf_hud_target_id_show_avatars            : 2        : , "a", "cl"      : Display Steam avatars on TargetID when using floating health icons.  1 = everyone, 2 = friends only.
tf_impactwatertime                       : 1        : , "cheat", "cl"  : Draw impact debris effects.
tf_impactwatertimeenable                 : 0        : , "cheat", "cl"  : Draw impact debris effects.
tf_inspect_hint_count                    : 0        : , "a", "cl"      :
tf_item_based_forced_holiday             : 0        : , "sv", "rep"    :
tf_item_inspect_model_auto_spin          : 1        : , "a", "cl"      :
tf_item_inspect_model_spin_rate          : 30       : , "a", "cl"      :
tf_item_selection_panel_sort_type        : 0        : , "cl"           : 0 - Sort is off, 1 - Sort is Alphabet (Pub)
tf_listrounds                            : cmd      :                  : List the rounds for the current map
tf_lobby_debug                           : cmd      :                  : Prints local lobby objects
tf_mark                                  : cmd      :                  : Set attribute of selected area.
tf_max_active_zombie                     : 30       : , "sv", "cheat"  :
tf_medieval                              : 0        : , "sv", "nf", "rep" : Enable Medieval Mode.
tf_medieval_autorp                       : 1        : , "sv", "nf", "rep" : Enable Medieval Mode auto-roleplaying.
tf_medieval_cam_idealdist                : 125      : , "cheat", "cl"  :
tf_medieval_cam_idealdistright           : 25       : , "cheat", "cl"  :
tf_medieval_cam_idealdistup              : -10      : , "cheat", "cl"  :
tf_medieval_cam_idealpitch               : 0        : , "cheat", "cl"  :
tf_medieval_thirdperson                  : 0        : , "a", "cl"      : Turns on third-person camera in medieval mode.
tf_medigun_autoheal                      : 0        : , "a", "user", "cl" : Setting this to 1 will cause the Medigun's primary attack to be a toggle instead of needing to be held down.
tf_merasmus_attack_range                 : 200      : , "sv", "cheat"  :
tf_merasmus_bomb_head_duration           : 15       : , "sv", "cheat"  :
tf_merasmus_bomb_head_per_team           : 1        : , "sv", "cheat"  :
tf_merasmus_chase_duration               : 7        : , "sv", "cheat"  :
tf_merasmus_chase_range                  : 2000     : , "sv", "cheat"  :
tf_merasmus_disguise_debug               : 0        : , "sv", "cheat"  :
tf_merasmus_health_base                  : 33750    : , "sv", "cheat"  :
tf_merasmus_health_per_player            : 2500     : , "sv", "cheat"  :
tf_merasmus_health_regen_rate            : 0        : , "sv", "cheat"  : Percentage of Max HP per sec that Merasmus will regenerate while in disguise
tf_merasmus_lifetime                     : 120      : , "sv", "cheat"  :
tf_merasmus_min_player_count             : 10       : , "sv", "cheat"  :
tf_merasmus_min_props_to_reveal          : 0        : , "sv", "cheat"  : Percentage of total fake props players have to destroy before Merasmus reveals himself
tf_merasmus_prop_health                  : 150      : , "sv", "cheat"  :
tf_merasmus_should_disguise_threshold    : 0        : , "sv", "cheat"  :
tf_merasmus_spawn_interval               : 180      : , "sv", "cheat"  : Average interval between boss spawns, in seconds
tf_merasmus_spawn_interval_variation     : 30       : , "sv", "cheat"  : Variation of spawn interval +/-
tf_merasmus_speed                        : 600      : , "sv", "cheat"  :
tf_merasmus_speed_recovery_rate          : 100      : , "sv", "cheat"  : Movement units/second
tf_merasmus_stun_duration                : 2        : , "sv", "cheat"  :
tf_minigame_suddendeath_time             : -1       : , "sv", "cheat"  : Override Sudden Death Time.
tf_mm_accept_match_invite                : cmd      :                  : Accept Nth match invite
tf_mm_custom_ping                        : 100      : , "a", "cl"      : Custom ping tolerance in the matchmaking system.  See also tf_custom_ping_enabled.
tf_mm_custom_ping_enabled                : 0        : , "a", "cl"      : Whether to use a custom ping tolerance when matchmaking
tf_mm_dashboard_slide_panel_step         : 20       : , "a", "cl"      :
tf_mm_dashboard_spew_enabled             : 0        : , "a", "cl"      :
tf_mm_debug_level                        : 4        : , "cl"           :
tf_mm_dump_match_invites                 : cmd      :                  : Show current match invites
tf_mm_match_size_ladder_12v12            : 24       : , "sv", "rep"    : Number of players required to play a 12v12 ladder game.
tf_mm_match_size_ladder_12v12_minimum    : 12       : , "sv", "rep"    : Specifies the minimum number of players needed to launch a 12v12 match. Set to -1 to disable.
tf_mm_match_size_ladder_6v6              : 12       : , "sv", "rep"    : Number of players required to play a 6v6 ladder game.
tf_mm_match_size_ladder_9v9              : 18       : , "sv", "rep"    : Number of players required to play a 9v9 ladder game.
tf_mm_match_size_mvm                     : 6        : , "sv", "rep"    : How many players in an MvM matchmade group?
tf_mm_next_map_result_hold_time          : 7        : , "sv"           :
tf_mm_next_map_vote_time                 : 30       : , "sv", "rep"    :
tf_mm_partyclient_debug                  : 0        : , "cl"           :
tf_mm_servermode                         : 0        : , "sv", "nf"     : Activates / deactivates Lobby-based hosting mode.    0 = not active    1 = Put in matchmaking pool (Lobby will control current map)
tf_mm_strict                             : 0        : , "sv", "nf"     :    0 = Show in server browser, and allow ad-hoc joins    1 = Hide from server browser and only allow joins coordinated through GC matchmaking    2 = Hide from server browser, but allow ad-hoc joins
tf_movement_aircurrent_aircontrol_mult   : 0        : , "sv", "cheat", "rep" : Multiplier on air control when player is in an air current (such as airblast)
tf_movement_aircurrent_friction_mult     : 0        : , "sv", "cheat", "rep" : Friction multiplier when sliding against surfaces while trapped in an air current
tf_movement_lost_footing_friction        : 0        : , "sv", "cheat", "rep" : Ground friction for players who have lost their footing
tf_movement_lost_footing_restick         : 50       : , "sv", "cheat", "rep" : Early escape the lost footing condition if the player is moving slower than this across the ground
tf_mvm_bot_allow_flag_carrier_to_fight   : 1        : , "sv", "cheat"  :
tf_mvm_bot_flag_carrier_health_regen     : 45       : , "sv", "cheat"  :
tf_mvm_bot_flag_carrier_interval_to_1st_upgrade : 5        : , "sv", "cheat"  :
tf_mvm_bot_flag_carrier_interval_to_2nd_upgrade : 15       : , "sv", "cheat"  :
tf_mvm_bot_flag_carrier_interval_to_3rd_upgrade : 15       : , "sv", "cheat"  :
tf_mvm_bot_flag_carrier_movement_penalty : 0        : , "sv", "cheat", "rep" :
tf_mvm_checkpoint                        : cmd      :                  : Save a checkpoint snapshot
tf_mvm_checkpoint_clear                  : cmd      :                  : Clear the saved checkpoint
tf_mvm_debugstats                        : cmd      :                  : Dumpout MvM Data
tf_mvm_disconnect_on_victory             : 0        : , "sv", "rep"    : Enable to Disconnect Players after completing MvM
tf_mvm_engineer_teleporter_uber_duration : 5        : , "sv", "cheat"  :
tf_mvm_force_victory                     : cmd      :                  : Force immediate victory.
tf_mvm_jump_to_wave                      : cmd      :                  : Jumps directly to the given Mann Vs Machine wave number
tf_mvm_min_players_to_start              : 3        : , "sv", "nf", "rep" : Minimum number of players connected to start a countdown timer
tf_mvm_miniboss_scale                    : 1        : , "sv", "cheat", "rep" : Full body scale for minibosses.
tf_mvm_missioncyclefile                  : 0        : , "sv"           : Name of the .res file used to cycle mvm misisons
tf_mvm_nextmission                       : cmd      :                  : Load the next mission
tf_mvm_popfile                           : cmd      :                  : Change to a target popfile for MvM
tf_mvm_respec_credit_goal                : 2000     : , "sv", "cheat", "rep" : When tf_mvm_respec_limit is non-zero, the total amount of money the team must collect to earn a respec credit.
tf_mvm_respec_enabled                    : 1        : , "sv", "cheat", "rep" : Allow players to refund credits spent on player and item upgrades.
tf_mvm_respec_limit                      : 0        : , "sv", "cheat", "rep" : The total number of respecs a player can earn.  Default: 0 (no limit).
tf_mvm_skill                             : 3        : , "sv", "cheat", "rep", "norecord" : Sets the challenge level of the invading bot army. 1 = easiest, 3 = normal, 5 = hardest
tf_mvm_tabs_discovered                   : 0        : , "a", "cl"      : Remember how many times players have clicked tabs.
tf_mvm_tank_health                       : cmd      :                  :
tf_mvm_tank_kill                         : cmd      :                  :
tf_mvm_victory_disconnect_time           : 180      : , "sv", "rep"    : Seconds to wait after MvM victory before kicking players.  (Only used if tf_mvm_disconnect_on_victory is true.)
tf_mvm_victory_reset_time                : 60       : , "sv", "rep"    : Seconds to wait after MvM victory before cycling to the next mission.  (Only used if tf_mvm_disconnect_on_victory is false.)
tf_nav_combat_build_rate                 : 0        : , "sv", "cheat"  : Gunfire/second increase (combat caps at 1.0)
tf_nav_combat_decay_rate                 : 0        : , "sv", "cheat"  : Decay/second toward zero
tf_nav_in_combat_duration                : 30       : , "sv", "cheat"  : How long after gunfire occurs is this area still considered to be 'in combat'
tf_nav_in_combat_range                   : 1000     : , "sv", "cheat"  :
tf_nav_show_bomb_target_distance         : 0        : , "sv", "cheat"  : Display travel distances to bomb target (MvM mode)
tf_nav_show_incursion_distance           : 0        : , "sv", "cheat"  : Display travel distances from current spawn room (1=red, 2=blue)
tf_nav_show_turf_ownership               : 0        : , "sv", "cheat"  : Color nav area by smallest incursion distance
tf_notifications_push_bottom             : 0        : , "a", "cl"      :
tf_overtime_nag                          : 0        : , "sv", "nf"     : Announcer overtime nag.
tf_particles_disable_weather             : 0        : , "a", "cl"      : Disable particles related to weather effects.
tf_party_chat                            : cmd      :                  : Talk to me
tf_party_debug                           : cmd      :                  : Prints local party objects
tf_party_force_update                    : cmd      :                  : Force a party invite now
tf_party_ignore_invites                  : 0        : , "a", "cl"      : If set, ignore incoming party invites
tf_party_incoming_invites_debug          : cmd      :                  : Show current party invite objects
tf_party_invite_user                     : cmd      :                  : Invite the given steamid to join your party, or accept a request to do so
tf_party_join_request_mode               : -1       : , "a", "cl"      : The current mode for incoming party join requests:   -1 - Use default (currently 0),     0 - Open to friends,     1 - Friends can request to join,     2 - Invite only
tf_party_keep_on_same_team               : 0        : , "a", "cl"      :
tf_party_leave                           : cmd      :                  : Leave current party
tf_party_request_join_user               : cmd      :                  : Request to join the given steamid's party, or accept an invite to do so
tf_passtime_ball_damping_scale           : 0        : , "sv", "nf", "rep" :
tf_passtime_ball_drag_coefficient        : 0        : , "sv", "nf", "rep" :
tf_passtime_ball_inertia_scale           : 1        : , "sv", "nf", "rep" :
tf_passtime_ball_mass                    : 1        : , "sv", "nf", "rep" :
tf_passtime_ball_model                   : 0        : , "sv", "nf", "rep" : Needs a model with collision info. Map change required.
tf_passtime_ball_reset_time              : 15       : , "sv", "nf", "rep" : How long the ball can be neutral before being automatically reset
tf_passtime_ball_rotdamping_scale        : 1        : , "sv", "nf", "rep" : Higher values will prevent the ball from rolling on the ground.
tf_passtime_ball_seek_range              : 128      : , "sv", "nf", "rep" : How close players have to be for the ball to be drawn to them.
tf_passtime_ball_seek_speed_factor       : 3        : , "sv", "nf", "rep" : How fast the ball will move toward nearby players as a ratio of that player's max speed.
tf_passtime_ball_sphere_collision        : 1        : , "sv", "nf", "rep" : Boolean value. If nonzero, override mdl collision with a perfect sphere collider.
tf_passtime_ball_sphere_radius           : 7        : , "sv", "nf", "rep" :
tf_passtime_ball_takedamage              : 1        : , "sv", "nf", "rep" : Enables shooting the ball
tf_passtime_ball_takedamage_force        : 800      : , "sv", "nf", "rep" : Controls how much the ball responds to being shot
tf_passtime_experiment_autopass          : 0        : , "sv", "nf", "rep" :
tf_passtime_experiment_instapass         : 0        : , "sv", "nf", "rep" :
tf_passtime_experiment_instapass_charge  : 0        : , "sv", "nf", "rep" :
tf_passtime_experiment_telepass          : 0        : , "sv", "nf", "rep" : None, TeleportToCatcher, SwapWithCatcher, TeleportToCatcherMaintainPossession,
tf_passtime_flinch_boost                 : 0        : , "sv", "nf", "rep" : Intensity of flinch on taking damage while carrying the ball. 0 to use TF defaults.
tf_passtime_mode_homing_lock_sec         : 1        : , "sv", "nf", "rep" : Number of seconds the ball carrier will stay locked on to a teammate after line of sight is broken.
tf_passtime_mode_homing_speed            : 1000     : , "sv", "nf", "rep" : How fast the ball moves during a pass.
tf_passtime_overtime_idle_sec            : 5        : , "sv", "nf", "rep" : How many seconds the ball can be idle in overtime before the round ends.
tf_passtime_pack_hp_per_sec              : 2        : , "sv", "nf", "rep" : How many HP per second pack members are healed.
tf_passtime_pack_range                   : 512      : , "sv", "nf", "rep" : How close players must be to the ball carrier to be included in the pack.
tf_passtime_pack_speed                   : 1        : , "sv", "nf", "rep" : When set to 1, all players near the ball carrier will move the same speed.
tf_passtime_player_reticles_enemies      : 1        : , "sv", "nf", "rep" : Controls HUD reticles for enemies. 0 = never, 1 = when carrying ball, 2 = always.
tf_passtime_player_reticles_friends      : 2        : , "sv", "nf", "rep" : Controls HUD reticles for teammates. 0 = never, 1 = when carrying ball, 2 = always.
tf_passtime_powerball_airtimebonus       : 40       : , "sv", "nf", "rep" : Ball meter points added per second of time a pass is in the air.
tf_passtime_powerball_decay_delay        : 10       : , "sv", "nf", "rep" : Number of seconds between ball reaching full charge and decay beginning.
tf_passtime_powerball_decayamount        : 1        : , "sv", "nf", "rep" : How many points are removed are removed per decay. (must be integer)
tf_passtime_powerball_decaysec           : 4        : , "sv", "nf", "rep" : How many seconds per decay when the ball is held.
tf_passtime_powerball_decaysec_neutral   : 1        : , "sv", "nf", "rep" : How many seconds per decay when the ball is neutral.
tf_passtime_powerball_maxairtimebonus    : 100      : , "sv", "nf", "rep" : Cap on extra points added by tf_passtime_powerball_airtimebonus.
tf_passtime_powerball_passpoints         : 25       : , "sv", "nf", "rep" : How many ball meter points are awarded for a complete pass.
tf_passtime_powerball_threshold          : 80       : , "sv", "nf", "rep" : How many ball meter points it takes to unlock bonus goals.
tf_passtime_save_stats                   : 0        : , "sv", "nf", "rep" :
tf_passtime_score_crit_sec               : 5        : , "sv", "nf", "rep" : How long a scoring team's crits last.
tf_passtime_scores_per_round             : 5        : , "sv", "nf", "rep" : Number of scores it takes to win a round. Similar to tf_flag_caps_per_round.
tf_passtime_speedboost_on_get_ball_time  : 2        : , "sv", "nf", "rep" : How many seconds of speed boost players get when they get the ball.
tf_passtime_steal_on_melee               : 1        : , "sv", "nf", "rep" : Enables melee stealing.
tf_passtime_teammate_steal_time          : 45       : , "sv", "nf", "rep" : How many seconds a player can hold the ball before teammates can steal it.
tf_passtime_throwarc_demoman             : 0        : , "sv", "nf", "rep" :
tf_passtime_throwarc_engineer            : 0        : , "sv", "nf", "rep" :
tf_passtime_throwarc_heavy               : 0        : , "sv", "nf", "rep" :
tf_passtime_throwarc_medic               : 0        : , "sv", "nf", "rep" :
tf_passtime_throwarc_pyro                : 0        : , "sv", "nf", "rep" :
tf_passtime_throwarc_scout               : 0        : , "sv", "nf", "rep" :
tf_passtime_throwarc_sniper              : 0        : , "sv", "nf", "rep" :
tf_passtime_throwarc_soldier             : 0        : , "sv", "nf", "rep" :
tf_passtime_throwarc_spy                 : 0        : , "sv", "nf", "rep" :
tf_passtime_throwspeed_demoman           : 850      : , "sv", "nf", "rep" :
tf_passtime_throwspeed_engineer          : 850      : , "sv", "nf", "rep" :
tf_passtime_throwspeed_heavy             : 850      : , "sv", "nf", "rep" :
tf_passtime_throwspeed_medic             : 900      : , "sv", "nf", "rep" :
tf_passtime_throwspeed_pyro              : 750      : , "sv", "nf", "rep" :
tf_passtime_throwspeed_scout             : 700      : , "sv", "nf", "rep" :
tf_passtime_throwspeed_sniper            : 900      : , "sv", "nf", "rep" :
tf_passtime_throwspeed_soldier           : 800      : , "sv", "nf", "rep" :
tf_passtime_throwspeed_spy               : 900      : , "sv", "nf", "rep" :
tf_passtime_throwspeed_velocity_scale    : 0        : , "sv", "nf", "rep" : How much player velocity to add when tossing (0=none 1=100%)
tf_player_drop_bonus_ducks               : -1       : , "sv", "rep"    : -1 Default (Holiday-based) 0 - Force off 1 - Force on
tf_player_movement_restart_freeze        : 1        : , "sv", "rep"    : When set, prevent player movement during round restart
tf_player_spell_drop_on_death_rate       : 0        : , "sv", "rep"    :
tf_playergib                             : 1        : , "sv", "nf"     : Allow player gibbing. 0: never, 1: normal, 2: always
tf_playround                             : cmd      :                  : Play the selected round  Argument: {round name given by 'tf_listrounds' command}
tf_populator_active_buffer_range         : 3000     : , "sv", "cheat"  : Populate the world this far ahead of lead raider, and this far behind last raider
tf_populator_damage_multiplier           : 1        : , "sv", "cheat", "rep", "norecord" :
tf_populator_debug                       : 0        : , "sv", "cheat"  :
tf_populator_health_multiplier           : 1        : , "sv", "cheat", "rep", "norecord" :
tf_powerup_max_charge_time               : 30       : , "sv", "cheat"  :
tf_powerup_mode                          : 0        : , "sv", "nf"     : Enable/disable powerup mode. Not compatible with Mann Vs Machine mode
tf_powerup_mode_dominant_multiplier      : 3        : , "sv", "cheat"  : The multiple by which a player must exceed the median kills by in order to be considered dominant
tf_powerup_mode_imbalance_consecutive_min_players : 10       : , "sv", "cheat"  : Minimum number of players on the server before consecutive imbalance measures trigger team balancing
tf_powerup_mode_imbalance_consecutive_time : 1200     : , "sv", "cheat"  : Teams are balanced if consecutive imbalance measures for the same team are triggered in less time (seconds)
tf_powerup_mode_imbalance_delta          : 24       : , "sv", "cheat"  : Powerup kill score lead one team must have before imbalance measures are initiated
tf_powerup_mode_killcount_timer_length   : 300      : , "sv", "cheat"  : How long to wait between kill count tests that determine if a player is dominating
tf_preround_push_from_damage_enable      : 0        : , "sv"           : If enabled, this will allow players using certain type of damage to move during pre-round freeze time.
tf_quest_map_intro_viewed                : 0        : , "a", "cl"      :
tf_quest_map_tuner_wobble_magnitude      : 0        : , "cl"           :
tf_quest_notification_line_delay         : 1        : , "a", "cl"      :
tf_quests_spew_trackers                  : cmd      :                  : Spews all currently active quest trackers
tf_queue_spinner_color                   : 0        : , "a", "cl"      :
tf_rd_finale_beep_time                   : 10       : , "a", "cl"      :
tf_rd_max_points_override                : 0        : , "sv"           : When changed, overrides the current max points
tf_rd_return_max_time                    : 90       : , "sv"           :
tf_rd_return_min_time                    : 30       : , "sv"           :
tf_recent_achievements                   : 0        : , "a", "cl"      :
tf_remember_activeweapon                 : 0        : , "a", "user", "cl" : Setting this to 1 will make the active weapon persist between lives.
tf_remember_lastswitched                 : 0        : , "a", "user", "cl" : Setting this to 1 will make the 'last weapon' persist between lives.
tf_replay_pyrovision                     : 0        : , "a", "cl"      : When on, replays will be seen with Pyrovision active
tf_resolve_stuck_players                 : 1        : , "sv", "rep"    :
tf_respawn_on_loadoutchanges             : 1        : , "a", "cl"      : When set to 1, you will automatically respawn whenever you change loadouts inside a respawn zone.
tf_romevision_opt_in                     : 0        : , "a", "cl"      : Enable Romevision in Mann vs. Machine mode when available.
tf_romevision_skip_prompt                : 0        : , "a", "cl"      : If nonzero, skip the prompt about sharing Romevision.
tf_scoreboard_alt_class_icons            : 0        : , "a", "cl"      : Show alternate class icons in the scoreboard.
tf_scoreboard_mouse_mode                 : 0        : , "a", "cl"      :
tf_scoreboard_ping_as_text               : 0        : , "a", "cl"      : Show ping values as text in the scoreboard.
tf_select_ambush_areas                   : cmd      :                  : Add good ambush spots to the selected set. For debugging.
tf_select_ambush_areas_close_range       : 300      : , "sv", "cheat"  :
tf_select_ambush_areas_max_enemy_exposure_area : 500000   : , "sv", "cheat"  :
tf_select_ambush_areas_radius            : 750      : , "sv", "cheat"  :
tf_select_with_attribute                 : cmd      :                  : Selects areas with the given attribute.
tf_server_identity_account_id            : 0        : , "a", "sv"      : Server identity account id, used to authenticate with the TF2 Game Coordinator.
tf_server_identity_disable_quickplay     : 0        : , "a", "sv", "nf" : Disable this server from being chosen by the quickplay matchmaking.
tf_server_identity_token                 : 0        : , "a", "sv", "prot" : Server identity token, used to authenticate with the TF2 Game Coordinator.
tf_server_lobby_debug                    : cmd      :                  : Prints server lobby object
tf_sheen_alpha_firstperson               : 0        : , "cl"           : Set the Alpha Value for first person sheens
tf_show_actor_potential_visibility       : 0        : , "sv", "cheat"  :
tf_show_blocked_areas                    : 0        : , "sv", "cheat"  : Highlight areas that are considered blocked for TF-specific reasons
tf_show_bomb_drop_areas                  : 0        : , "sv", "cheat"  :
tf_show_control_points                   : 0        : , "sv", "cheat"  :
tf_show_enemy_invasion_areas             : 0        : , "sv", "cheat"  : Highlight areas where the enemy team enters the visible environment of the local player
tf_show_gate_defense_areas               : 0        : , "sv", "cheat"  :
tf_show_in_combat_areas                  : 0        : , "sv", "cheat"  :
tf_show_incursion_flow                   : 0        : , "sv", "cheat"  :
tf_show_incursion_flow_gradient          : 0        : , "sv", "cheat"  : 1 = red, 2 = blue
tf_show_incursion_flow_range             : 150      : , "sv", "cheat"  : 1 = red, 2 = blue
tf_show_incursion_range                  : 0        : , "sv", "cheat"  : 1 = red, 2 = blue
tf_show_incursion_range_max              : 0        : , "sv", "cheat"  : Highlight areas with incursion distances between min and max cvar values
tf_show_incursion_range_min              : 0        : , "sv", "cheat"  : Highlight areas with incursion distances between min and max cvar values
tf_show_mesh_decoration                  : 0        : , "sv", "cheat"  : Highlight special areas
tf_show_mesh_decoration_manual           : 0        : , "sv", "cheat"  : Highlight special areas marked by hand
tf_show_point_defense_areas              : 0        : , "sv", "cheat"  :
tf_show_sentry_danger                    : 0        : , "sv", "cheat"  : Show sentry danger areas. 1:Use m_sentryAreas. 2:Check all nav areas.
tf_show_sniper_areas                     : 0        : , "sv", "cheat"  :
tf_show_sniper_areas_safety_range        : 1000     : , "sv", "cheat"  :
tf_show_train_path                       : 0        : , "sv", "cheat"  :
tf_simple_disguise_menu                  : 0        : , "a", "cl"      : Use a more concise disguise selection menu.
tf_skillrating_update_interval           : 180      : , "a", "sv"      : How often to update the GC and OGS.
tf_sniper_fullcharge_bell                : 0        : , "a", "cl"      :
tf_so_tracker_spew_type_toggle           : cmd      :                  :
tf_so_tracker_spew_type_toggle           : cmd      :                  :
tf_soccer_ball_min_speed                 : 30       : , "sv", "cheat"  :
tf_soccer_ball_multiplier                : 4        : , "sv", "cheat"  :
tf_soccer_ball_up_max                    : 350      : , "sv", "cheat"  :
tf_soccer_front_hit_range                : 0        : , "sv", "cheat"  :
tf_spawn_glows_duration                  : 10       : , "sv", "nf", "rep" : How long should teammates glow after respawning
tf_spec_xray                             : 1        : , "sv", "nf", "rep" : Allows spectators to see player glows. 1 = same team, 2 = both teams
tf_spec_xray_disable                     : 0        : , "a", "cl"      : Disable the spectator xray mode.
tf_spectate_pyrovision                   : 0        : , "a", "cl"      : When on, spectator will see the world with Pyrovision active
tf_spectator_target_location             : 0        : , "a", "cl"      : Determines the location of the spectator targetID panel.
tf_spells_enabled                        : 0        : , "sv", "nf", "rep" : Enable to Allow Halloween Spells to be dropped and used by players
tf_stats_nogameplaycheck                 : 0        : , "sv"           : Disable normal check for valid gameplay, send stats regardless.
tf_steam_workshop_import_icon_path       : 0        : , "a", "cl"      : Default location to load backpack icons from
tf_steam_workshop_import_material_path   : 0        : , "a", "cl"      : Default location to load materials from
tf_steam_workshop_import_model_path      : 0        : , "a", "cl"      : Default location to load models from
tf_steam_workshop_page_skip              : 10       : , "a", "cl"      : Number of pages to skip in the Steam Workshop dialog.
tf_steam_workshop_query_timeout          : 10       : , "cl"           : Time in seconds to allow communication with the Steam Workshop server.
tf_taunt_always_show_hint                : 1        : , "cl"           :
tf_taunt_first_person                    : 0        : , "cl"           : 1 = taunts remain first-person
tf_tauntcam_fov_override                 : 0        : , "sv", "cheat"  :
tf_test_hat_bodygroup                    : 0        : , "cl"           : For testing bodygroups on hats.
tf_test_spellindex                       : -1       : , "sv", "cheat", "rep" : Set to index to always get a specific spell
tf_test_teleport_home_fx                 : 0        : , "sv", "cheat"  :
tf_testitem_recent                       : 0        : , "a", "cl"      :
tf_testrr                                : cmd      :                  : Force the player under your crosshair to speak a response rule concept. Format is tf_testrr <concept>, or tf_testrr <player name> <concept>
tf_testvcd                               : cmd      :                  : Run a vcd on the player currently under your crosshair. Optional parameter is the .vcd name (default is 'scenes/heavy_test.vcd')
tf_time_loading_item_panels              : 0        : , "a", "cl"      : The time to spend per frame loading data for item panels
tf_tournament_classchange_allowed        : 1        : , "sv", "rep"    : Allow players to change class while the game is active?.
tf_tournament_classchange_ready_allowed  : 1        : , "sv", "rep"    : Allow players to change class after they are READY?.
tf_tournament_classlimit_demoman         : -1       : , "sv", "rep"    : Tournament mode per-team class limit for Demomenz.
tf_tournament_classlimit_engineer        : -1       : , "sv", "rep"    : Tournament mode per-team class limit for Engineers.
tf_tournament_classlimit_heavy           : -1       : , "sv", "rep"    : Tournament mode per-team class limit for Heavies.
tf_tournament_classlimit_medic           : -1       : , "sv", "rep"    : Tournament mode per-team class limit for Medics.
tf_tournament_classlimit_pyro            : -1       : , "sv", "rep"    : Tournament mode per-team class limit for Pyros.
tf_tournament_classlimit_scout           : -1       : , "sv", "rep"    : Tournament mode per-team class limit for Scouts.
tf_tournament_classlimit_sniper          : -1       : , "sv", "rep"    : Tournament mode per-team class limit for Snipers.
tf_tournament_classlimit_soldier         : -1       : , "sv", "rep"    : Tournament mode per-team class limit for Soldiers.
tf_tournament_classlimit_spy             : -1       : , "sv", "rep"    : Tournament mode per-team class limit for Spies.
tf_tournament_hide_domination_icons      : 0        : , "sv", "rep"    : Tournament mode server convar that forces clients to not display the domination icons above players dominating them.
tf_training_client_message               : 0        : , "sv", "cheat", "rep" : A simple way for the training client to communicate with the server.
tf_training_has_prompted_for_forums      : 0        : , "a", "cl"      : Whether the user has been prompted to view the new user forums.
tf_training_has_prompted_for_loadout     : 0        : , "a", "cl"      : Whether the user has been prompted to equip something in their loadout.
tf_training_has_prompted_for_offline_practice : 0        : , "a", "cl"      : Whether the user has been prompted to try offline practice.
tf_training_has_prompted_for_options     : 0        : , "a", "cl"      : Whether the user has been prompted to view the TF2 advanced options.
tf_training_has_prompted_for_training    : 0        : , "a", "cl"      : Whether the user has been prompted for training
tf_use_fixed_weaponspreads               : 0        : , "sv", "nf", "rep" : If set to 1, weapons that fire multiple pellets per shot will use a non-random pellet distribution.
tf_use_match_hud                         : 1        : , "a", "cl"      :
tf_use_min_viewmodels                    : 0        : , "a", "cl"      : Use minimized viewmodels.
tf_viewmodels_offset_override            : 0        : , "cheat", "cl"  : If set, this will override the position of all viewmodels. Usage 'x y z'
tf_warpaint_explanation_viewed           : 0        : , "a", "cl"      :
tf_weapon_criticals                      : 1        : , "sv", "nf", "rep" : Whether or not random crits are enabled
tf_weapon_criticals_bucket_bottom        : -250     : , "sv", "cheat", "rep" :
tf_weapon_criticals_bucket_cap           : 1000     : , "sv", "cheat", "rep" :
tf_weapon_criticals_bucket_default       : 300      : , "sv", "cheat", "rep" :
tf_weapon_criticals_distance_falloff     : 0        : , "sv", "cheat"  : Critical weapon damage will take distance into account.
tf_weapon_criticals_melee                : 1        : , "sv", "nf", "rep" : Controls random crits for melee weapons. 0 - Melee weapons do not randomly crit. 1 - Melee weapons can randomly crit only if tf_weapon_criticals is also enabled. 2 - Melee weapons can always randomly crit regardless of the tf_weapon_criticals setting.
tf_weapon_criticals_nopred               : 1        : , "sv", "cheat", "rep" :
tf_weapon_minicrits_distance_falloff     : 0        : , "sv", "cheat"  : Mini-crit weapon damage will take distance into account.
tf_weapon_select_demo_start_delay        : 1        : , "a", "cl"      : Delay after spawning to start the weapon bucket demo.
tf_weapon_select_demo_time               : 0        : , "a", "cl"      : Time to pulse each weapon bucket upon spawning as a new class. 0 to turn off.
tf_wipe_attributes                       : cmd      :                  : Clear all TF-specific attributes of selected area.
tf_workshop_map_status                   : cmd      :                  : Print information about workshop maps and their status
tf_workshop_map_sync                     : cmd      :                  : Add a map to the workshop auto-sync list
tf_workshop_refresh                      : cmd      :                  : tf_workshop_refresh
think_limit                              : 10       : , "sv", "rep"    : Maximum think time in milliseconds, warning is printed if this is exceeded.
thirdperson                              : cmd      :                  : Switch to thirdperson camera.
thirdperson_mayamode                     : cmd      :                  : Switch to thirdperson Maya-like camera controls.
thirdperson_platformer                   : 0        : , "cl"           : Player will aim in the direction they are moving.
thirdperson_screenspace                  : 0        : , "cl"           : Movement will be relative to the camera, eg: left means screen-left
threadpool_affinity                      : 1        :                  : Enable setting affinity
timedemo                                 : cmd      :                  : Play a demo and report performance info.
timedemo_runcount                        : 0        :                  : Runs time demo X number of times.
timedemoquit                             : cmd      :                  : Play a demo, report performance info, and then exit
timerefresh                              : cmd      :                  : Profile the renderer.
toggle                                   : cmd      :                  : Toggles a convar on or off, or cycles through a set of values.
toggle_duck                              : cmd      :                  :
toggleconsole                            : cmd      :                  : Show/hide the console.
togglescores                             : cmd      :                  : Toggles score panel
trace_report                             : 0        : , "sv"           :
tracer_extra                             : 1        : , "cl"           :
TrackerAnim                              : cmd      :                  : Test animation of the achievement tracker. Parameter is achievement number on HUD to flash
trackerlistallfiles                      : cmd      :                  : TrackerListAllFiles
trackerlistvpkfiles                      : cmd      :                  : TrackerListVPKFiles
training_can_build_dispenser             : 1        : , "sv", "rep"    : Player can build dispenser as engineer.
training_can_build_sentry                : 1        : , "sv", "rep"    : Player can build sentry as engineer.
training_can_build_tele_entrance         : 1        : , "sv", "rep"    : Player can build teleporter entrance as engineer.
training_can_build_tele_exit             : 1        : , "sv", "rep"    : Player can build teleporter exit as engineer.
training_can_destroy_buildings           : 1        : , "sv", "rep"    : Player can destroy buildings as engineer.
training_can_pickup_dispenser            : 1        : , "sv", "rep"    : Player can pickup dispenser as engineer.
training_can_pickup_sentry               : 1        : , "sv", "rep"    : Player can pickup sentry gun as engineer.
training_can_pickup_tele_entrance        : 1        : , "sv", "rep"    : Player can pickup teleporter entrance as engineer.
training_can_pickup_tele_exit            : 1        : , "sv", "rep"    : Player can pickup teleporter entrance as engineer.
training_can_select_weapon_building      : 1        : , "sv", "rep"    : In training player select building tool.
training_can_select_weapon_item1         : 1        : , "sv", "rep"    : In training player select item 1.
training_can_select_weapon_item2         : 1        : , "sv", "rep"    : In training player select item 2.
training_can_select_weapon_melee         : 1        : , "sv", "rep"    : In training player select melee weapon.
training_can_select_weapon_pda           : 1        : , "sv", "rep"    : In training player select pda.
training_can_select_weapon_primary       : 1        : , "sv", "rep"    : In training player select primary weapon.
training_can_select_weapon_secondary     : 1        : , "sv", "rep"    : In training player select secondary weapon.
training_class                           : 3        : , "sv", "rep"    : Class to use in training.
training_continue                        : cmd      :                  : Tells training that it should continue.
training_map_video                       : 0        : , "cl"           : Video to show for training
training_showdlg                         : cmd      :                  : Displays the training dialog.
tv_allow_camera_man                      : 1        : , "sv"           : Auto director allows spectators to become camera man
tv_allow_static_shots                    : 1        : , "sv"           : Auto director uses fixed level cameras for shots
tv_autorecord                            : 0        :                  : Automatically records all games as SourceTV demos.
tv_autoretry                             : 1        :                  : Relay proxies retry connection after network timeout
tv_chatgroupsize                         : 0        :                  : Set the default chat group size
tv_chattimelimit                         : 8        :                  : Limits spectators to chat only every n seconds
tv_clients                               : cmd      :                  : Shows list of connected SourceTV clients.
tv_debug                                 : 0        :                  : SourceTV debug info.
tv_delay                                 : 30       : , "sv"           : SourceTV broadcast delay in seconds
tv_delaymapchange                        : 0        : , "sv"           : Delays map change until broadcast is complete
tv_delaymapchange_protect                : 1        : , "sv"           : Protect against doing a manual map change if HLTV is broadcasting and has not caught up with a major game event such as round_end
tv_deltacache                            : 2        :                  : Enable delta entity bit stream cache
tv_dispatchmode                          : 1        :                  : Dispatch clients to relay proxies: 0=never, 1=if appropriate, 2=always
tv_enable                                : 0        : , "nf"           : Activates SourceTV on server.
tv_maxclients                            : 128      :                  : Maximum client number on SourceTV server.
tv_maxrate                               : 8000     :                  : Max SourceTV spectator bandwidth rate allowed, 0 == unlimited
tv_msg                                   : cmd      :                  : Send a screen message to all clients.
tv_name                                  : 0        :                  : SourceTV host name
tv_nochat                                : 0        : , "a", "user"    : Don't receive chat messages from other SourceTV spectators
tv_overridemaster                        : 0        :                  : Overrides the SourceTV master root address.
tv_password                              : 0        : , "nf", "prot", "norecord" : SourceTV password for all clients
tv_port                                  : 27020    :                  : Host SourceTV port
tv_record                                : cmd      :                  : Starts SourceTV demo recording.
tv_relay                                 : cmd      :                  : Connect to SourceTV server and relay broadcast.
tv_relaypassword                         : 0        : , "nf", "prot", "norecord" : SourceTV password for relay proxies
tv_relayvoice                            : 1        :                  : Relay voice data: 0=off, 1=on
tv_retry                                 : cmd      :                  : Reconnects the SourceTV relay proxy.
tv_snapshotrate                          : 16       :                  : Snapshots broadcasted per second
tv_status                                : cmd      :                  : Show SourceTV server status.
tv_stop                                  : cmd      :                  : Stops the SourceTV broadcast.
tv_stoprecord                            : cmd      :                  : Stops SourceTV demo recording.
tv_timeout                               : 30       :                  : SourceTV connection timeout in seconds.
tv_title                                 : 0        :                  : Set title for SourceTV spectator UI
tv_transmitall                           : 0        : , "rep"          : Transmit all entities (not only director view)
ui_posedebug_fade_in_time                : 0        : , "cheat", "norecord", "cl" : Time during which a new pose activity layer is shown in green in +posedebug UI
ui_posedebug_fade_out_time               : 0        : , "cheat", "norecord", "cl" : Time to keep a no longer active pose activity layer in red until removing it from +posedebug UI
unbind                                   : cmd      :                  : Unbind a key.
unbind_mac                               : cmd      :                  : Unbind a key on the Mac only.
unbindall                                : cmd      :                  : Unbind all keys.
unpause                                  : cmd      :                  : Unpause the game.
+use                                     : cmd      :                  :
-use                                     : cmd      :                  :
use                                      : cmd      :                  : Use a particular weapon  Arguments: <weapon_name>
+use_action_slot_item                    : cmd      :                  : Use the item in the action slot.
-use_action_slot_item                    : cmd      :                  :
user                                     : cmd      :                  : Show user data.
user_context                             : cmd      :                  : Set a Rich Presence Context: user_context <context id> <context value>
user_context                             : cmd      :                  : Set a Rich Presence Context: user_context <context id> <context value>
user_property                            : cmd      :                  : Set a Rich Presence Property: user_property <property id>
user_property                            : cmd      :                  : Set a Rich Presence Property: user_property <property id>
users                                    : cmd      :                  : Show user info for players on server.
v_centermove                             : 0        : , "cl"           :
v_centerspeed                            : 500      : , "cl"           :
vcollide_wireframe                       : 0        : , "cheat", "cl"  : Render physics collision models in wireframe
vcr_verbose                              : 0        :                  : Write extra information into .vcr file.
vehicle_flushscript                      : cmd      :                  : Flush and reload all vehicle scripts
version                                  : cmd      :                  : Print version info string.
vgui_cache_res_files                     : 1        :                  :
vgui_drawfocus                           : 0        :                  : Report which panel is under the mouse.
vgui_drawtree                            : 0        : , "cheat"        : Draws the vgui panel hiearchy to the specified depth level.
+vgui_drawtree                           : cmd      :                  :
-vgui_drawtree                           : cmd      :                  :
vgui_drawtree_bounds                     : 0        :                  : Show panel bounds.
vgui_drawtree_clear                      : cmd      :                  :
vgui_drawtree_draw_selected              : 0        :                  : Highlight the selected panel
vgui_drawtree_freeze                     : 0        :                  : Set to 1 to stop updating the vgui_drawtree view.
vgui_drawtree_hidden                     : 0        :                  : Draw the hidden panels.
vgui_drawtree_panelalpha                 : 0        :                  : Show the panel alpha values in the vgui_drawtree view.
vgui_drawtree_panelptr                   : 0        :                  : Show the panel pointer values in the vgui_drawtree view.
vgui_drawtree_popupsonly                 : 0        :                  : Draws the vgui popup list in hierarchy(1) or most recently used(2) order.
vgui_drawtree_render_order               : 0        :                  : List the vgui_drawtree panels in render order.
vgui_drawtree_visible                    : 1        :                  : Draw the visible panels.
vgui_message_dialog_modal                : 1        : , "a", "cl"      :
vgui_spew_fonts                          : cmd      :                  :
vgui_togglepanel                         : cmd      :                  : show/hide vgui panel by name.
video_quicktime_decode_gamma             : 0        : , "a"            : QuickTime Video Playback Gamma Target- 0=no gamma adjust  1=platform default gamma  2 = gamma 1.8  3 = gamma 2.2  4 = gamma 2.5
video_quicktime_encode_gamma             : 3        : , "a"            : QuickTime Video Encode Gamma Target- 0=no gamma adjust  1=platform default gamma  2 = gamma 1.8  3 = gamma 2.2  4 = gamma 2.5
viewanim_addkeyframe                     : cmd      :                  :
viewanim_create                          : cmd      :                  : viewanim_create
viewanim_load                            : cmd      :                  : load animation from file
viewanim_reset                           : cmd      :                  : reset view angles!
viewanim_save                            : cmd      :                  : Save current animation to file
viewanim_test                            : cmd      :                  : test view animation
viewmodel_fov                            : 54       : , "a", "cl"      : Sets the field-of-view for the viewmodel.
viewmodel_fov_demo                       : 54       : , "a", "cl"      :
violence_ablood                          : 1        :                  : Draw alien blood
violence_agibs                           : 1        :                  : Show alien gib entities
violence_hblood                          : 1        :                  : Draw human blood
violence_hgibs                           : 1        :                  : Show human gib entities
voice_avggain                            : 0        :                  :
voice_buffer_ms                          : 100      :                  : How many milliseconds of voice to buffer to avoid dropouts due to jitter and frame time differences.
voice_clientdebug                        : 0        : , "cl"           :
voice_debugfeedback                      : 0        :                  :
voice_debugfeedbackfrom                  : 0        :                  :
voice_enable                             : 1        : , "a"            :
voice_fadeouttime                        : 0        :                  :
voice_forcemicrecord                     : 1        : , "a"            :
voice_inputfromfile                      : 0        :                  : Get voice input from 'voice_input.wav' rather than from the microphone.
voice_loopback                           : 0        : , "user"         :
voice_maxgain                            : 10       :                  :
voice_menu_1                             : cmd      :                  : Opens voice menu 1
voice_menu_2                             : cmd      :                  : Opens voice menu 2
voice_menu_3                             : cmd      :                  : Opens voice menu 3
voice_modenable                          : 1        : , "a", "clientcmd_can_execute", "cl" : Enable/disable voice in this mod.
voice_overdrive                          : 2        :                  :
voice_overdrivefadetime                  : 0        :                  :
voice_profile                            : 0        :                  :
voice_recordtofile                       : 0        :                  : Record mic data and decompressed voice data into 'voice_micdata.wav' and 'voice_decompressed.wav'
voice_scale                              : 1        : , "a"            :
voice_serverdebug                        : 0        : , "sv"           :
voice_showchannels                       : 0        :                  :
voice_showincoming                       : 0        :                  :
voice_steal                              : 2        :                  :
voice_writevoices                        : 0        :                  : Saves each speaker's voice data into separate .wav files
+voicerecord                             : cmd      :                  :
-voicerecord                             : cmd      :                  :
volume                                   : 1        : , "a"            : Sound volume
vox_reload                               : cmd      :                  : Reload sentences.txt file
voxeltree_box                            : cmd      :                  : View entities in the voxel-tree inside box <Vector(min), Vector(max)>.
voxeltree_playerview                     : cmd      :                  : View entities in the voxel-tree at the player position.
voxeltree_sphere                         : cmd      :                  : View entities in the voxel-tree inside sphere <Vector(center), float(radius)>.
voxeltree_view                           : cmd      :                  : View entities in the voxel-tree.
vprof                                    : cmd      :                  : Toggle VProf profiler
vprof_adddebuggroup1                     : cmd      :                  : add a new budget group dynamically for debugging
vprof_cachemiss                          : cmd      :                  : Toggle VProf cache miss checking
vprof_cachemiss_off                      : cmd      :                  : Turn off VProf cache miss checking
vprof_cachemiss_on                       : cmd      :                  : Turn on VProf cache miss checking
vprof_child                              : cmd      :                  :
vprof_collapse_all                       : cmd      :                  : Collapse the whole vprof tree
vprof_counters                           : 0        :                  :
vprof_dump_groupnames                    : cmd      :                  : Write the names of all of the vprof groups to the console.
vprof_dump_oninterval                    : 0        :                  : Interval (in seconds) at which vprof will batch up data and dump it to the console.
vprof_dump_spikes                        : 0        :                  : Framerate at which vprof will begin to dump spikes to the console. 0 = disabled, negative to reset after dump
vprof_dump_spikes_budget_group           : 0        :                  : Budget gtNode to start report from when doing a dump spikes
vprof_dump_spikes_node                   : 0        :                  : Node to start report from when doing a dump spikes
vprof_expand_all                         : cmd      :                  : Expand the whole vprof tree
vprof_expand_group                       : cmd      :                  : Expand a budget group in the vprof tree by name
vprof_generate_report                    : cmd      :                  : Generate a report to the console.
vprof_generate_report_AI                 : cmd      :                  : Generate a report to the console.
vprof_generate_report_AI_only            : cmd      :                  : Generate a report to the console.
vprof_generate_report_budget             : cmd      :                  : Generate a report to the console based on budget group.
vprof_generate_report_hierarchy          : cmd      :                  : Generate a report to the console.
vprof_generate_report_map_load           : cmd      :                  : Generate a report to the console.
vprof_graph                              : 0        :                  : Draw the vprof graph.
vprof_graphheight                        : 256      : , "a"            :
vprof_graphwidth                         : 512      : , "a"            :
vprof_nextsibling                        : cmd      :                  :
vprof_off                                : cmd      :                  : Turn off VProf profiler
vprof_on                                 : cmd      :                  : Turn on VProf profiler
vprof_parent                             : cmd      :                  :
vprof_playback_average                   : cmd      :                  : Average the next N frames.
vprof_playback_start                     : cmd      :                  : Start playing back a recorded .vprof file.
vprof_playback_step                      : cmd      :                  : While playing back a .vprof file, step to the next tick.
vprof_playback_stepback                  : cmd      :                  : While playing back a .vprof file, step to the previous tick.
vprof_playback_stop                      : cmd      :                  : Stop playing back a recorded .vprof file.
vprof_prevsibling                        : cmd      :                  :
vprof_record_start                       : cmd      :                  : Start recording vprof data for playback later.
vprof_record_stop                        : cmd      :                  : Stop recording vprof data
vprof_remote_start                       : cmd      :                  : Request a VProf data stream from the remote server (requires authentication)
vprof_remote_stop                        : cmd      :                  : Stop an existing remote VProf data request
vprof_report_oninterval                  : 0        :                  : Interval (in seconds) at which vprof will batch up a full report to the console -- more detailed than vprof_dump_oninterval.
vprof_reset                              : cmd      :                  : Reset the stats in VProf profiler
vprof_reset_peaks                        : cmd      :                  : Reset just the peak time in VProf profiler
vprof_scope                              : 0        :                  : Set a specific scope to start showing vprof tree
vprof_scope_entity_gamephys              : 0        : , "sv"           :
vprof_scope_entity_thinks                : 0        : , "sv"           :
vprof_unaccounted_limit                  : 0        : , "a"            : number of milliseconds that a node must exceed to turn red in the vprof panel
vprof_verbose                            : 1        : , "a"            : Set to one to show average and peak times
vprof_vtrace                             : cmd      :                  : Toggle whether vprof data is sent to VTrace
vprof_vtune_group                        : cmd      :                  : enable vtune for a particular vprof group ('disable' to disable)
vprof_warningmsec                        : 10       : , "a"            : Above this many milliseconds render the label red to indicate slow code.
vr_activate                              : cmd      :                  : Switch to VR mode
vr_activate_default                      : 0        : , "a", "cl"      : If this is true the game will switch to VR mode once startup is complete.
vr_aim_yaw_offset                        : 90       : , "cl"           : This value is added to Yaw when returning the vehicle aim angles to Source.
vr_cycle_aim_move_mode                   : cmd      :                  : Cycle through the aim & move modes.
vr_deactivate                            : cmd      :                  : Switch from VR mode to normal mode
vr_debug_nochromatic                     : 0        :                  :
vr_debug_nodistortion                    : 0        :                  :
vr_debug_remote_cam                      : 0        : , "cl"           :
vr_debug_remote_cam_pos_x                : 150      : , "cl"           :
vr_debug_remote_cam_pos_y                : 0        : , "cl"           :
vr_debug_remote_cam_pos_z                : 0        : , "cl"           :
vr_debug_remote_cam_target_x             : 0        : , "cl"           :
vr_debug_remote_cam_target_y             : 0        : , "cl"           :
vr_debug_remote_cam_target_z             : -50      : , "cl"           :
vr_distortion_enable                     : 1        :                  :
vr_first_person_uses_world_model         : 1        : , "cl"           : Causes the third person model to be drawn instead of the view model
vr_force_windowed                        : 0        : , "a", "cl"      :
vr_hud_axis_lock_to_world                : 0        : , "a", "cl"      : Bitfield - locks HUD axes to the world - 0=pitch, 1=yaw, 2=roll
vr_hud_display_ratio                     : 0        : , "a", "cl"      :
vr_hud_forward                           : 500      : , "a", "cl"      : Apparent distance of the HUD in inches
vr_hud_max_fov                           : 60       : , "a", "cl"      : Max FOV of the HUD
vr_hud_never_overlay                     : 0        : , "cl"           :
vr_moveaim_mode                          : 3        : , "a", "cl"      : 0=move+shoot from face. 1=move with torso. 2,3,4=shoot with face+mouse cursor. 5+ are probably not that useful.
vr_moveaim_mode_zoom                     : 3        : , "a", "cl"      : 0=move+shoot from face. 1=move with torso. 2,3,4=shoot with face+mouse cursor. 5+ are probably not that useful.
vr_moveaim_reticle_pitch_limit           : 30       : , "a", "cl"      : Beyond this number of degrees, the mouse clamps
vr_moveaim_reticle_pitch_limit_zoom      : -1       : , "a", "cl"      : Beyond this number of degrees, the mouse clamps
vr_moveaim_reticle_yaw_limit             : 10       : , "a", "cl"      : Beyond this number of degrees, the mouse drags the torso
vr_moveaim_reticle_yaw_limit_zoom        : 0        : , "a", "cl"      : Beyond this number of degrees, the mouse drags the torso
vr_projection_znear_multiplier           : 0        : , "cl"           : Allows moving the ZNear plane to deal with body clipping
vr_refresh_distortion_texture            : cmd      :                  :
vr_render_hud_in_world                   : 1        : , "cl"           :
vr_reset_home_pos                        : cmd      :                  : Sets the current HMD position as the zero point
vr_stereo_mono_set_eye                   : 0        : , "cl"           : 0=off, Set all eyes to 1=left, 2=right, 3=middle eye
vr_stereo_swap_eyes                      : 0        : , "cl"           : 1=swap eyes.
vr_toggle                                : cmd      :                  : Toggles VR mode
vr_track_reinit                          : cmd      :                  : Reinitializes HMD tracking
vr_translation_limit                     : 10       : , "cl"           : How far the in-game head will translate before being clamped.
vr_use_offscreen_render_target           : 0        :                  : Experimental: Use larger offscreen render target for pre-distorted scene in VR
vr_viewmodel_offset_forward              : -8       : , "cl"           :
vr_viewmodel_offset_forward_large        : -15      : , "cl"           :
vr_viewmodel_translate_with_head         : 0        : , "cl"           : 1=translate the viewmodel with the head motion.
vr_zoom_multiplier                       : 2        : , "a", "cl"      : When zoomed, how big is the scope on your HUD?
vr_zoom_scope_scale                      : 6        : , "cl"           : Something to do with the default scope HUD overlay size.
vtune                                    : cmd      :                  : Controls VTune's sampling.
+walk                                    : cmd      :                  :
-walk                                    : cmd      :                  :
wc_air_edit_further                      : cmd      :                  : When in WC edit mode and editing air nodes,  moves position of air node crosshair and placement location further away from player
wc_air_edit_nearer                       : cmd      :                  : When in WC edit mode and editing air nodes,  moves position of air node crosshair and placement location nearer to from player
wc_air_node_edit                         : cmd      :                  : When in WC edit mode, toggles laying down or air nodes instead of ground nodes
wc_create                                : cmd      :                  : When in WC edit mode, creates a node where the player is looking if a node is allowed at that location for the currently selected hull size (see ai_next_hull)
wc_destroy                               : cmd      :                  : When in WC edit mode, destroys the node that the player is nearest to looking at.  (The node will be highlighted by a red box).
wc_destroy_undo                          : cmd      :                  : When in WC edit mode restores the last deleted node
wc_link_edit                             : cmd      :                  :
weapon_showproficiency                   : 0        : , "sv"           :
windows_speaker_config                   : 4        : , "a"            :
wipe_nav_attributes                      : cmd      :                  : Clear all nav attributes of selected area.
writeid                                  : cmd      :                  : Writes a list of permanently-banned user IDs to banned_user.cfg.
writeip                                  : cmd      :                  : Save the ban list to banned_ip.cfg.
xbox_autothrottle                        : 1        : , "a", "sv"      :
xbox_steering_deadzone                   : 0        : , "sv"           :
xbox_throttlebias                        : 100      : , "a", "sv"      :
xbox_throttlespoof                       : 200      : , "a", "sv"      :
xc_crouch_debounce                       : 0        : , "sv"           :
xload                                    : cmd      :                  : Load a saved game from a 360 storage device.
xlook                                    : cmd      :                  :
xmove                                    : cmd      :                  :
xsave                                    : cmd      :                  : Saves current game to a 360 storage device.
youtube_http_proxy                       : 0        : , "a", "cl"      : HTTP proxy.  Specify if you have have problems uploading to YouTube.
youtube_username                         : 0        : , "a", "cl"      : Username for YouTube.
+zoom                                    : cmd      :                  :
-zoom                                    : cmd      :                  :
zoom_sensitivity_ratio                   : 1        : , "a", "cl"      : Additional mouse sensitivity scale factor applied when FOV is zoomed in.
--------------
3570 total convars/concommands
```
