# Hidden console variables

```
sm_cvarlist /unlisted
--------------
__screenshot_internal                    : cmd      : , "norecord", "matsys" : Internal command to take a screenshot without renumbering or notifying Steam.
anim_showstate                           : -1       : , "sv", "cheat", "rep", "launcher" : Show the (client) animation state for the specified entity (-1 for none).
anim_showstatelog                        : 0        : , "sv", "cheat", "rep", "launcher" : 1 to output anim_showstate to Msg(). 2 to store in AnimState.log. 3 for both.
cl_clanid                                : 0        : , "a", "user", "matsys" : Current clan ID for name decoration
cl_cloud_settings                        : 1        : , "matsys"       : Cloud enabled from (from HKCU\Software\Valve\Steam\Apps\appid\Cloud)
cl_connectmethod                         :          : , "user", "matsys" : Method by which we connected to the current server.
cl_interpolate                           : 1.0      : , "user", "launcher", "notconnected" : Interpolate entities on the client.
cl_savescreenshotstosteam                : 0        : , "matsys"       : Saves screenshots to the Steam's screenshot library
cl_screenshotlocation                    :          : , "matsys"       : Location to tag the screenshot with
cl_screenshotusertag                     :          : , "matsys"       : User to tag in the screenshot
cl_simulate_no_quicktime                 : 0        : , "matsys"       :
CreatePredictionError                    : cmd      : , "sv", "cheat", "launcher" : Create a prediction error
dbg_demofile                             : 0        : , "matsys", "launcher" :
dev_loadtime_map_elapsed                 : 0.0      : , "matsys"       :
dev_loadtime_map_start                   : 7.425997 : , "matsys"       :
host_competitive_ever_enabled            : 0        : , "matsys"       : Has competitive ever been enabled this run?
item_enable_content_streaming            : 1        : , "sv", "rep", "launcher" :
item_quality_chance_common               : 1.0      : , "sv", "rep", "launcher" : Percentage chance that a random item is common.
item_quality_chance_rare                 : 0.5      : , "sv", "rep", "launcher" : Percentage chance that a random item is a rare.
item_quality_chance_unique               : 0.1      : , "sv", "rep", "launcher" : Percentage chance that a random item is unique.
joy_xcontroller_found                    : 0        : , "matsys"       : Automatically set to 1 if an xcontroller has been detected.
mat_forcemanagedtextureintohardware      : 1        : , "matsys"       :
mat_lodin_hidden_pop                     : 1        : , "launcher"     :
mat_lodin_time                           : 5.0      : , "launcher"     :
mat_parallaxmap                          : 1        : , "matsys"       :
mat_requires_rt_alloc_first              : 1        : , "matsys"       :
mat_spewalloc                            : 0        : , "a", "launcher" :
mat_supportflashlight                    : -1       : , "matsys"       : 0 - do not support flashlight (don't load flashlight shader combos), 1 - flashlight is supported
mod_dynamicloadpause                     : 0        : , "cheat", "norecord", "matsys" :
mod_dynamicloadspew                      : 0        : , "norecord", "matsys" :
mod_dynamicloadthrottle                  : 0        : , "cheat", "norecord", "matsys" :
mod_dynamicmodeldebug                    : cmd      : , "norecord", "matsys" : debug spew for dynamic model loading
mod_dynamicunloadtex                     : 1        : , "norecord", "matsys" :
mod_dynamicunloadtime                    : 150      : , "norecord", "matsys" :
mp_blockstyle                            : 1        : , "sv", "rep", "launcher" : Sets the style of capture point blocking used. 0 = Blocks break captures completely. 1 = Blocks only pause captures.
mp_capdeteriorate_time                   : 60.0     : , "sv", "rep", "launcher" : Time it takes for a full capture point to deteriorate.
mp_capstyle                              : 1        : , "sv", "rep", "launcher" : Sets the style of capture points used. 0 = Fixed players required to cap. 1 = More players cap faster, but longer cap times.
mp_facefronttime                         : 3        : , "sv", "rep", "launcher" : After this amount of time of standing in place but aiming to one side, go ahead and move feet to face upper body.
mp_feetyawrate                           : 720      : , "sv", "rep", "launcher" : How many degrees per second that we can turn our feet or upper body.
mp_forceactivityset                      : -1       : , "sv", "cheat", "rep", "launcher" :
mp_ik                                    : 1        : , "sv", "rep", "launcher" : Use IK on in-place turns.
mp_showcleanedupents                     : 0        : , "sv", "cheat", "launcher" : Show entities that are removed on round respawn.
mp_showgestureslots                      : -1       : , "sv", "cheat", "rep", "launcher" : Show multiplayer client/server gesture slot information for the specified player index (-1 for no one).
mp_showroundtransitions                  : 0        : , "sv", "cheat", "launcher" : Show gamestate round transitions.
mp_slammoveyaw                           : 0        : , "sv", "rep", "launcher" : Force movement yaw along an animation path.
mp_tournament_blueteamname               : BLU      : , "sv", "rep", "matsys" :
mp_tournament_redteamname                : RED      : , "sv", "rep", "matsys" :
mp_waitingforplayers_time                : 30       : , "sv", "launcher" : WaitingForPlayers time length in seconds
nav_analyze_scripted                     : cmd      : , "sv", "cheat", "matsys" : commandline hook to run a nav_analyze and then quit.
obj_child_damage_factor                  : 0.25     : , "sv", "cheat", "launcher" : Factor applied to damage done to objects that are built on a buildpoint
obj_damage_factor                        : 1.3      : , "sv", "cheat", "launcher" : Factor applied to all damage done to objects
object_verbose                           : 0        : , "sv", "cheat", "launcher" : Debug object system.
r_entity                                 : -1       : , "cheat", "launcher" :
r_flashlight_version2                    : 0        : , "cheat", "launcher" :
r_portalscloseall                        : 0        : , "cheat", "launcher" :
replay_confirmquit                       : cmd      : , "norecord", "cl", "matsys" : Make sure all replays are rendered before quitting
replay_dodiskcleanup                     : 1        : , "a", "cl", "matsys" : If 1, cleanup unneeded recording session blocks.
replay_recording                         : 1        : , "rep", "norecord", "cl", "matsys" :
rpt_vprof_time                           : 0.25     : , "norecord", "matsys" :
steamworks_sessionid_server              : 2297541314652 : , "sv", "rep", "matsys" : The server session ID for the new steamworks gamestats.
sv_accelerate                            : 10       : , "sv", "nf", "rep", "launcher" :
sv_airaccelerate                         : 10       : , "sv", "nf", "rep", "launcher" :
sv_backspeed                             : 0.6      : , "a", "sv", "rep", "launcher" : How much to slow down backwards motion
sv_bounce                                : 0        : , "sv", "nf", "rep", "launcher" : Bounce multiplier for when physically simulated objects collide with other objects.
sv_creationtickcheck                     : 1        : , "cheat", "launcher" : Do extended check for encoding of timestamps against tickcount
sv_debug_stuck_particles                 : cmd      : , "sv", "launcher" : Debugs particles attached to the player under your crosshair.
sv_findsoundname                         : cmd      : , "sv", "launcher" : Find sound names which reference the specified wave files.
sv_footsteps                             : 1        : , "sv", "nf", "rep", "launcher" : Play footstep sound for players
sv_force_transmit_ents                   : 1        : , "sv", "cheat", "launcher" : Will transmit all entities to client, regardless of PVS conditions (will still skip based on transmit flags, however).
sv_friction                              : 4        : , "sv", "nf", "rep", "launcher" : World friction.
sv_ignore_hitboxes                       : 1        : , "sv", "rep", "launcher" : Disable hitboxes
sv_instancebaselines                     : 1        : , "launcher"     : Enable instanced baselines. Saves network overhead.
sv_lagcompensation_teleport_dist         : 64       : , "sv", "cheat", "launcher" : How far a player got moved by game code before we can't lag compensate their position back
sv_lagflushbonecache                     : 1        : , "sv", "launcher" : Flushes entity bone cache on lag compensation
sv_maxspeed                              : 6063     : , "sv", "nf", "rep", "launcher" :
sv_maxunlag                              : 1.0      : , "sv", "launcher" : Maximum lag compensation in seconds
sv_maxvelocity                           : 3500     : , "sv", "rep", "launcher" : Maximum speed any ballistically moving object is allowed to attain per axis.
sv_netvisdist                            : 10000    : , "sv", "cheat", "launcher" : Test networking visibility distance
sv_optimizedmovement                     : 1        : , "sv", "rep", "launcher" :
sv_proj_stunball_damage                  : 15       : , "sv", "launcher" :
sv_pushaway_clientside                   : 0        : , "sv", "rep", "launcher" : Clientside physics push away (0=off, 1=only localplayer, 1=all players)
sv_pushaway_clientside_size              : 15       : , "sv", "rep", "launcher" : Minimum size of pushback objects
sv_pushaway_force                        : 30000    : , "sv", "rep", "launcher" : How hard physics objects are pushed away from the players on the server.
sv_pushaway_max_force                    : 1000     : , "sv", "rep", "launcher" : Maximum amount of force applied to physics objects by players.
sv_pushaway_max_player_force             : 10000    : , "sv", "cheat", "rep", "launcher" : Maximum of how hard the player is pushed away from physics objects.
sv_pushaway_min_player_speed             : 75       : , "sv", "rep", "launcher" : If a player is moving slower than this, don't push away physics objects (enables ducking behind things).
sv_pushaway_player_force                 : 200000   : , "sv", "cheat", "rep", "launcher" : How hard the player is pushed away from physics objects (falls off with inverse square of distance).
sv_registration_message                  : No account specified : , "sv", "nf", "norecord", "matsys" : Error message of other status text
sv_registration_successful               : 0        : , "sv", "nf", "norecord", "matsys" : Nonzero if we were able to login OK
sv_rollangle                             : 0        : , "sv", "nf", "rep", "launcher" : Max view roll angle
sv_rollspeed                             : 200      : , "sv", "nf", "rep", "launcher" :
sv_sendtables                            : 0        : , "launcher"     : Force full sendtable sending path.
sv_showanimstate                         : -1       : , "sv", "cheat", "launcher" : Show the (server) animation state for the specified entity (-1 for none).
sv_showanimstate_log                     : 0        : , "sv", "cheat", "launcher" : 1 to output sv_showanimstate to Msg(). 2 to store in AnimStateServer.log. 3 for both.
sv_soundemitter_filecheck                : cmd      : , "sv", "launcher" : Report missing wave files for sounds and game_sounds files.
sv_soundemitter_flush                    : cmd      : , "sv", "launcher" : Flushes the sounds.txt system (server only)
sv_soundscape_printdebuginfo             : cmd      : , "sv", "launcher" : print soundscapes
sv_stepsize                              : 18       : , "sv", "nf", "rep", "launcher" :
sv_stopspeed                             : 100      : , "sv", "nf", "rep", "launcher" : Minimum stopping speed when on ground.
sv_stressbots                            : 0        : , "launcher"     : If set to 1, the server calculates data and fills packets to bots. Used for perf testing.
sv_suppress_viewpunch                    : 0        : , "sv", "cheat", "rep", "launcher" :
sv_unlag                                 : 1        : , "sv", "launcher" : Enables player lag compensation
sv_unlag_debug                           : 0        : , "sv", "launcher" :
sv_unlag_fixstuck                        : 0        : , "sv", "launcher" : Disallow backtracking a player for lag compensation if it will cause them to become stuck
sv_use_steam_voice                       : 0        : , "rep", "matsys" : Deprecated - placeholder convar for handling old network streams that had an incomplete SVC_VoiceInit packet.  Use "sv_voicecodec steam"
sv_useexplicitdelete                     : 1        : , "launcher"     : Explicitly delete dormant client entities caused by AllowImmediateReuse().
sv_vote_command_delay                    : 2        : , "sv", "launcher" : How long after a vote passes until the action happens
sv_vote_issue_kick_limit_mvm             : 0        : , "sv", "matsys" : The maximum number of kick votes a player can call during an MvM mission started by matchmaking. (0 = disabled)
sv_vote_issue_pause_game_allowed         : 0        : , "sv", "matsys" : Can players call votes to pause the game?
sv_vote_issue_pause_game_cooldown        : 1200     : , "sv", "matsys" : Minimum time before another pause vote can occur (in seconds).
sv_vote_issue_pause_game_timer           : 120      : , "sv", "matsys" : How long to pause the game for when this vote passes (in seconds).
sv_vote_timer_duration                   : 15       : , "sv", "launcher" : How long to allow voting on an issue
sv_wateraccelerate                       : 10       : , "sv", "nf", "rep", "launcher" :
sv_waterdist                             : 12       : , "sv", "rep", "launcher" : Vertical view fixup when eyes are near water plane.
sv_waterfriction                         : 1        : , "sv", "nf", "rep", "launcher" :
tf_allow_all_team_partner_taunt          : 1        : , "sv", "rep", "launcher" :
tf_arena_change_limit                    : 1        : , "sv", "cheat", "nf", "rep", "launcher" : Number of times players can change their class when mp_force_random_class is being used.
tf_arena_force_class                     : 0        : , "sv", "cheat", "nf", "rep", "launcher" : Forces players to play a random class each time they spawn.
tf_attack_defend_map                     : 0        : , "sv", "rep", "launcher" :
tf_avoidteammates                        : 1        : , "sv", "cheat", "rep", "launcher" : Controls how teammates interact when colliding.   0: Teammates block each other   1: Teammates pass through each other, but push each other away (default)
tf_beta_content                          : 0        : , "sv", "nf", "rep", "launcher" :
tf_bonuspack_score                       : 1        : , "sv", "rep", "launcher" :
tf_boost_drain_time                      : 10.0     : , "sv", "launcher" : Time is takes for a full health boost to drain away from a player.
tf_bot_count                             : 0        : , "sv", "nf", "launcher" :
tf_caplinear                             : 1        : , "sv", "rep", "launcher" : If set to 1, teams must capture control points linearly.
tf_cart_duck_drop_rate                   : 10       : , "sv", "launcher" :
tf_cart_soul_drop_rate                   : 10       : , "sv", "launcher" :
tf_cheapobjects                          : 0        : , "sv", "cheat", "rep", "launcher" : Set to 1 and all objects will cost 0
tf_clamp_back_speed                      : 0.9      : , "sv", "rep", "launcher" :
tf_clamp_back_speed_min                  : 100      : , "sv", "rep", "launcher" :
tf_competitive_abandon_method            : 0        : , "sv", "matsys" :
tf_competitive_preround_countdown_duration : 10.5     : , "sv", "matsys" : How long we stay in countdown when in competitive games.
tf_competitive_required_late_join_confirm_timeout : 30       : , "sv", "launcher" : How long to wait for the GC to confirm we're in the late join pool before canceling the match
tf_competitive_required_late_join_timeout : 120      : , "sv", "launcher" : How long to wait for late joiners in matches requiring full player counts before canceling the match
tf_construction_build_rate_multiplier    : 1.6f     : , "sv", "rep", "launcher" :
tf_damage_events_track_for               : 30       : , "sv", "launcher" :
tf_damage_range                          : 0.0      : , "sv", "launcher" :
tf_damageforcescale_other                : 6.0      : , "sv", "cheat", "launcher" :
tf_damageforcescale_pyro_jump            : 8.5      : , "sv", "cheat", "launcher" :
tf_damageforcescale_self_soldier_badrj   : 5.0      : , "sv", "cheat", "launcher" :
tf_damageforcescale_self_soldier_rj      : 10.0     : , "sv", "cheat", "launcher" :
tf_damagescale_self_soldier              : 0.60     : , "sv", "cheat", "launcher" :
tf_debug_tabcontainer                    : 0        : , "matsys"       : Spew TabContainer dimensions.
tf_demoman_charge_drain_time             : 1.5      : , "sv", "rep", "launcher" :
tf_demoman_charge_regen_rate             : 8.3      : , "sv", "rep", "launcher" :
tf_deploying_bomb_delay_time             : 0.0      : , "sv", "cheat", "launcher" : Time to delay before deploying bomb.
tf_deploying_bomb_time                   : 1.0      : , "sv", "cheat", "launcher" : Time to deploy bomb before the point of no return.
tf_dev_health_on_damage_recover_percentage : 0.3      : , "sv", "launcher" :
tf_dev_marked_for_death_lifetime         : 15.0     : , "sv", "launcher" :
tf_double_donk_window                    : 0.5      : , "sv", "cheat", "rep", "launcher" : How long after an impact from a cannonball that an explosion will count as a double-donk.
tf_duck_allow_team_pickup                : 1        : , "sv", "rep", "launcher" :
tf_duck_debug_spew                       : 0        : , "sv", "rep", "launcher" :
tf_dumpplayerstats                       : cmd      : , "sv", "launcher" : Dumps current player stats
tf_fastbuild                             : 0        : , "sv", "cheat", "launcher" :
tf_feign_death_activate_damage_scale     : 0.25     : , "sv", "cheat", "launcher" :
tf_feign_death_damage_scale              : 0.35     : , "sv", "cheat", "launcher" :
tf_feign_death_duration                  : 3.0      : , "sv", "cheat", "rep", "launcher" : Time that feign death buffs last.
tf_feign_death_speed_duration            : 3.0      : , "sv", "cheat", "rep", "launcher" : Time that feign death speed boost last.
tf_flame_dmg_mode_dist                   : 0        : , "sv", "cheat", "rep", "matsys", "launcher" :
tf_flamethrower_burst_zvelocity          : 350      : , "sv", "cheat", "launcher" :
tf_flamethrower_burstammo                : 20       : , "sv", "cheat", "rep", "launcher" : How much ammo does the air burst use per shot.
tf_flamethrower_drag                     : 0.87     : , "sv", "cheat", "launcher" : Air drag of flame damage entities.
tf_flamethrower_flametime                : 0.5      : , "sv", "cheat", "rep", "launcher" : Time to live of flame damage entities.
tf_flamethrower_float                    : 50.0     : , "sv", "cheat", "launcher" : Upward float velocity of flame damage entities.
tf_flamethrower_maxdamagedist            : 350.0    : , "sv", "cheat", "launcher" : Maximum damage distance for flamethrower.
tf_flamethrower_new_flame_offset         : 40 5 0   : , "sv", "cheat", "launcher" : Starting position relative to the flamethrower.
tf_flamethrower_shortrangedamagemultiplier : 1.2      : , "sv", "cheat", "launcher" : Damage multiplier for close-in flamethrower damage.
tf_flamethrower_vecrand                  : 0.05     : , "sv", "cheat", "launcher" : Random vector added to initial velocity of flame damage entities.
tf_flamethrower_velocity                 : 2300.0   : , "sv", "cheat", "launcher" : Initial velocity of flame damage entities.
tf_flamethrower_velocityfadeend          : .5       : , "sv", "cheat", "launcher" : Time at which attacker's velocity contribution finishes fading.
tf_flamethrower_velocityfadestart        : .3       : , "sv", "cheat", "launcher" : Time at which attacker's velocity contribution starts to fade.
tf_force_holidays_off                    : 1        : , "sv", "nf", "rep", "launcher" :
tf_gamemode_arena                        : 0        : , "sv", "nf", "rep", "launcher" :
tf_gamemode_cp                           : 1        : , "sv", "nf", "rep", "launcher" :
tf_gamemode_ctf                          : 0        : , "sv", "nf", "rep", "launcher" :
tf_gamemode_misc                         : 0        : , "sv", "nf", "rep", "launcher" :
tf_gamemode_mvm                          : 0        : , "sv", "nf", "rep", "launcher" :
tf_gamemode_passtime                     : 0        : , "sv", "nf", "rep", "launcher" :
tf_gamemode_payload                      : 0        : , "sv", "nf", "rep", "launcher" :
tf_gamemode_pd                           : 0        : , "sv", "nf", "rep", "launcher" :
tf_gamemode_rd                           : 0        : , "sv", "nf", "rep", "launcher" :
tf_gamemode_sd                           : 0        : , "sv", "nf", "rep", "launcher" :
tf_gamemode_tc                           : 0        : , "sv", "nf", "rep", "launcher" :
tf_grenade_force_sleeptime               : 1.0      : , "sv", "cheat", "launcher" :
tf_grenade_forcefrom_blast               : 0.15     : , "sv", "cheat", "launcher" :
tf_grenade_forcefrom_buckshot            : 0.75     : , "sv", "cheat", "launcher" :
tf_grenade_forcefrom_bullet              : 2.0      : , "sv", "cheat", "launcher" :
tf_grenadelauncher_chargescale           : 1.0      : , "sv", "cheat", "rep", "launcher" :
tf_grenadelauncher_livetime              : 0.8      : , "sv", "cheat", "rep", "launcher" :
tf_grenadelauncher_min_contact_speed     : 100      : , "sv", "launcher" :
tf_helpme_range                          : 150      : , "sv", "launcher" :
tf_highfive_height_tolerance             : 12       : , "sv", "cheat", "launcher" : The maximum height difference allowed for two high-fivers.
tf_highfive_max_range                    : 150      : , "sv", "cheat", "launcher" : The farthest away a high five partner can be
tf_highfive_separation_forward           : 0        : , "sv", "cheat", "launcher" : Forward distance between high five partners
tf_highfive_separation_right             : 0        : , "sv", "cheat", "launcher" : Right distance between high five partners
tf_ignite_player                         : cmd      : , "sv", "cheat", "launcher" : Sets you on fire
tf_invuln_time                           : 0.5      : , "sv", "rep", "launcher" : Time it takes for invulnerability to wear off.
tf_max_charge_speed                      : 750      : , "sv", "cheat", "nf", "rep", "launcher" :
tf_max_health_boost                      : 1.3      : , "sv", "rep", "launcher" : Max health factor that players can be boosted to by healers.
tf_max_voice_speak_delay                 : 1.5      : , "sv", "launcher" : Max time after a voice command until player can do another one
tf_maxhealth_drain_deploy_cost           : 20       : , "sv", "launcher" :
tf_maxhealth_drain_hp_min                : 100      : , "sv", "launcher" :
tf_medigun_lagcomp                       : 1        : , "sv", "launcher" :
tf_meleeattackforcescale                 : 80.0     : , "sv", "cheat", "launcher" :
tf_mm_abandoned_players_per_team_max     : 1        : , "sv", "launcher" :
tf_mm_player_disconnect_time_before_abandon : 180      : , "sv", "launcher" :
tf_mm_player_disconnect_time_forgive_ratio : 10       : , "sv", "launcher" :
tf_mm_player_disconnect_time_minimum_penalty : 90       : , "sv", "launcher" :
tf_mm_trusted                            : 0        : , "sv", "nf", "matsys" : Set to 1 on Valve servers to requested trusted status.  (Yes, it is authenticated on the backend, and attempts by non-valve servers are logged.)
tf_mvm_allow_abandon_after_seconds       : 600      : , "sv", "launcher" :
tf_mvm_allow_abandon_below_players       : 5        : , "sv", "launcher" :
tf_mvm_bot_sniper_target_by_dps          : 1        : , "sv", "cheat", "launcher" : If set, Snipers in MvM mode target the victim that has the highest DPS
tf_mvm_buybacks_method                   : 0        : , "sv", "rep", "matsys" : When set to 0, use the traditional, currency-based system.  When set to 1, use finite, charge-based system.
tf_mvm_buybacks_per_wave                 : 3        : , "sv", "rep", "matsys" : The fixed number of buybacks players can use per-wave.
tf_mvm_currency_bonus_ratio_max          : 1.f      : , "sv", "matsys" : The highest percentage of wave money players must collect in order to qualify for max bonus - 0.1 to 1.0.  Half the bonus amount will be awarded when reaching min ratio, and half when reaching max.
tf_mvm_currency_bonus_ratio_min          : 0.95f    : , "sv", "matsys" : The minimum percentage of wave money players must collect in order to qualify for min bonus - 0.1 to 1.0.  Half the bonus amount will be awarded when reaching min ratio, and half when reaching max.
tf_mvm_death_penalty                     : 0        : , "sv", "cheat", "nf", "launcher" : How much currency players lose when dying
tf_mvm_default_sentry_buster_damage_dealt_threshold : 3000     : , "sv", "cheat", "launcher" :
tf_mvm_default_sentry_buster_kill_threshold : 15       : , "sv", "cheat", "launcher" :
tf_mvm_endless_bomb_reset                : 5        : , "sv", "cheat", "rep", "norecord", "launcher" : Number of Waves to Complete before bomb reset
tf_mvm_endless_bot_cash                  : 120      : , "sv", "cheat", "rep", "norecord", "launcher" : In Endless, number of credits bots get per wave
tf_mvm_endless_force_on                  : 0        : , "sv", "cheat", "rep", "norecord", "launcher" : Force MvM Endless mode on
tf_mvm_endless_tank_boost                : 0.2      : , "sv", "cheat", "rep", "norecord", "launcher" : In Endless, amount of extra health for the tank per wave
tf_mvm_endless_wait_time                 : 5.0f     : , "sv", "cheat", "rep", "norecord", "launcher" :
tf_mvm_notice_sapped_squadmates_delay    : 1        : , "sv", "cheat", "launcher" : How long it takes for a squad leader to notice his squadmate was sapped
tf_obj_build_rotation_speed              : 400      : , "sv", "cheat", "rep", "launcher" : Degrees per second to rotate building when player alt-fires during placement.
tf_obj_damage_tank_achievement_amount    : 2000     : , "sv", "cheat", "launcher" :
tf_obj_gib_maxspeed                      : 800      : , "sv", "cheat", "launcher" :
tf_obj_gib_velocity_max                  : 450      : , "sv", "cheat", "launcher" :
tf_obj_gib_velocity_min                  : 100      : , "sv", "cheat", "launcher" :
tf_obj_ground_clearance                  : 32       : , "sv", "cheat", "launcher" : Object corners can be this high above the ground
tf_obj_max_attach_dist                   : 160      : , "sv", "cheat", "rep", "launcher" :
tf_obj_upgrade_per_hit                   : 25       : , "sv", "cheat", "launcher" :
tf_parachute_aircontrol                  : 2.5f     : , "sv", "rep", "launcher" : Multiplier for how much air control players have when Parachute is deployed
tf_parachute_deploy_toggle_allowed       : 0        : , "sv", "rep", "launcher" :
tf_parachute_gravity                     : 0.2f     : , "sv", "rep", "launcher" : Gravity while parachute is deployed
tf_parachute_maxspeed_onfire_z           : 10.0f    : , "sv", "rep", "launcher" : Max Z Speed when on Fire and Parachute is deployed
tf_parachute_maxspeed_xy                 : 300.0f   : , "sv", "rep", "launcher" : Max XY Speed while Parachute is deployed
tf_parachute_maxspeed_z                  : -100.0f  : , "sv", "rep", "launcher" : Max Z Speed while Parachute is deployed
tf_pipebomb_deflect_reset_time           : 10.0     : , "sv", "cheat", "launcher" :
tf_pipebomb_force_to_move                : 1500.0   : , "sv", "cheat", "launcher" :
tf_playerstatetransitions                : -2       : , "sv", "cheat", "launcher" : tf_playerstatetransitions <ent index or -1 for all>. Show player state transitions.
tf_raid_engineer_infinte_metal           : 1        : , "sv", "cheat", "launcher" :
tf_rd_min_points_to_steal                : 25       : , "sv", "rep", "launcher" :
tf_rd_points_approach_interval           : 0.1f     : , "sv", "rep", "launcher" :
tf_rd_points_per_approach                : 5        : , "sv", "rep", "launcher" :
tf_rd_points_per_steal                   : 5        : , "sv", "rep", "launcher" :
tf_rd_robot_attack_notification_cooldown : 10       : , "sv", "rep", "launcher" :
tf_rd_robot_repair_rate                  : 60       : , "sv", "rep", "launcher" :
tf_rd_steal_rate                         : 0.5      : , "sv", "rep", "launcher" :
tf_rocketpack_airborne_launch_absvelocity_preserved : 1        : , "sv", "cheat", "rep", "matsys" :
tf_rocketpack_cost                       : 50       : , "sv", "cheat", "rep", "matsys" :
tf_rocketpack_delay_launch               : 0        : , "sv", "cheat", "rep", "matsys" :
tf_rocketpack_impact_push_max            : 300      : , "sv", "cheat", "rep", "matsys" :
tf_rocketpack_impact_push_min            : 100      : , "sv", "cheat", "rep", "matsys" :
tf_rocketpack_launch_absvelocity_preserved : 1        : , "sv", "cheat", "rep", "matsys" :
tf_rocketpack_launch_delay               : 0.1      : , "sv", "cheat", "rep", "matsys" :
tf_rocketpack_launch_push                : 250      : , "sv", "cheat", "rep", "matsys" :
tf_rocketpack_refire_delay               : 1.2      : , "sv", "cheat", "rep", "matsys" :
tf_rocketpack_toggle_duration            : 0.2      : , "sv", "cheat", "rep", "matsys" :
tf_scout_air_dash_count                  : 30       : , "sv", "cheat", "rep", "launcher" :
tf_scout_bat_launch_delay                : 0.1      : , "sv", "rep", "launcher" :
tf_scout_energydrink_activation          : 1.0      : , "sv", "rep", "launcher" : how long it takes for the energy buff to become active
tf_scout_energydrink_consume_rate        : 25.0     : , "sv", "rep", "launcher" : energy drink to use per second while boosted, from 100 max
tf_scout_energydrink_regen_rate          : 1        : , "sv", "rep", "launcher" : energy drink regen per second, up to 100 max
tf_scout_hype_mod                        : 55       : , "sv", "cheat", "rep", "launcher" :
tf_scout_hype_pep_max                    : 99.0     : , "sv", "cheat", "rep", "launcher" :
tf_scout_hype_pep_min_damage             : 5.0      : , "sv", "cheat", "rep", "launcher" :
tf_scout_hype_pep_mod                    : 1.0      : , "sv", "cheat", "rep", "launcher" :
tf_scout_stunball_base_duration          : 6.0      : , "sv", "launcher" :
tf_scout_stunball_base_speed             : 3000     : , "sv", "launcher" :
tf_sentrygun_ammocheat                   : 0        : , "sv", "cheat", "launcher" :
tf_sentrygun_damage                      : 16       : , "sv", "cheat", "launcher" :
tf_sentrygun_kill_after_redeploy_time_achievement : 10       : , "sv", "cheat", "launcher" :
tf_sentrygun_max_absorbed_damage_while_controlled_for_achievement : 500      : , "sv", "cheat", "launcher" :
tf_sentrygun_metal_per_rocket            : 4        : , "sv", "cheat", "launcher" :
tf_sentrygun_metal_per_shell             : 2        : , "sv", "cheat", "launcher" :
tf_sentrygun_mini_damage                 : 8        : , "sv", "cheat", "launcher" :
tf_sentrygun_newtarget_dist              : 200      : , "sv", "cheat", "launcher" :
tf_sentrygun_notarget                    : 0        : , "sv", "cheat", "launcher" :
tf_showspeed                             : 0        : , "sv", "rep", "launcher" :
tf_solidobjects                          : 1        : , "sv", "cheat", "rep", "launcher" :
tf_spy_cloak_consume_rate                : 10.0     : , "sv", "rep", "launcher" : cloak to use per second while cloaked, from 100 max )
tf_spy_cloak_no_attack_time              : 1.0      : , "sv", "rep", "launcher" : time after uncloaking that the spy is prohibited from attacking
tf_spy_cloak_regen_rate                  : 3.3      : , "sv", "rep", "launcher" : cloak to regen per second, up to 100 max
tf_spy_invis_time                        : 1.0      : , "sv", "rep", "launcher" : Transition time in and out of spy invisibility
tf_spy_invis_unstealth_time              : 1.0      : , "sv", "rep", "launcher" : Transition time in and out of spy invisibility
tf_spy_max_cloaked_speed                 : 999      : , "sv", "rep", "launcher" :
tf_stalematechangeclasstime              : 20       : , "sv", "rep", "launcher" : Amount of time that players are allowed to change class in stalemates.
tf_stealth_damage_reduction              : 0.5      : , "sv", "cheat", "launcher" :
tf_sticky_airdet_radius                  : 0.85     : , "sv", "cheat", "rep", "launcher" : Radius Scale if detonated in the air
tf_sticky_radius_ramp_time               : 2.0      : , "sv", "cheat", "rep", "launcher" : Amount of time to get full radius after arming
tf_target_dummy_bullet_mult              : 0.1f     : , "sv", "launcher" :
tf_target_dummy_health                   : 200      : , "sv", "launcher" :
tf_target_dummy_lifetime                 : 30.0f    : , "sv", "launcher" :
tf_target_dummy_melee_mult               : 3.0f     : , "sv", "launcher" :
tf_target_dummy_other_mult               : 0.2f     : , "sv", "launcher" :
tf_teleporter_fov_start                  : 90       : , "sv", "cheat", "launcher" : Starting FOV for teleporter zoom.
tf_teleporter_fov_time                   : 0.5      : , "sv", "cheat", "launcher" : How quickly to restore FOV after teleport.
tf_test_special_ducks                    : 1        : , "sv", "launcher" :
tf_useparticletracers                    : 1        : , "sv", "rep", "launcher" : Use particle tracers instead of old style ones.
tf_vaccinator_uber_charge_rate_modifier  : 0.5      : , "sv", "cheat", "rep", "launcher" : Vaccinator uber charge rate.
tf_weapon_ragdoll_maxspeed               : 300      : , "sv", "cheat", "launcher" :
tf_weapon_ragdoll_velocity_max           : 150      : , "sv", "cheat", "launcher" :
tf_weapon_ragdoll_velocity_min           : 100      : , "sv", "cheat", "launcher" :
tf_whip_speed_increase                   : 50       : , "sv", "rep", "launcher" :
vgui_nav_lock                            : 0        : , "launcher"     :
vgui_nav_lock_default_button             : 0        : , "launcher"     :
vortex_book_offset                       : 5.0      : , "sv", "cheat", "rep", "matsys" :
vortex_fade_fraction_denom               : 10.0     : , "sv", "cheat", "rep", "matsys" :
vortex_float_amp                         : 5.0      : , "sv", "cheat", "rep", "matsys" :
vortex_float_osc_speed                   : 2.0      : , "sv", "cheat", "rep", "matsys" :
weapon_medigun_charge_rate               : 40       : , "sv", "cheat", "rep", "launcher" : Amount of time healing it takes to fully charge the medigun.
weapon_medigun_chargerelease_rate        : 8        : , "sv", "cheat", "rep", "launcher" : Amount of time it takes the a full charge of the medigun to be released.
weapon_medigun_construction_rate         : 10       : , "sv", "cheat", "rep", "launcher" : Constructing object health healed per second by the medigun.
weapon_medigun_damage_modifier           : 1.5      : , "sv", "cheat", "rep", "launcher" : Scales the damage a player does while being healed with the medigun.
weapon_medigun_resist_num_chunks         : 2        : , "sv", "cheat", "rep", "launcher" : How many uber bar chunks the vaccinator has.
--------------
317 total convars/concommands
```
