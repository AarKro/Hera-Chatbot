INSERT INTO `binding_type` (`type`) VALUES ('Music');
INSERT INTO `binding_type` (`type`) VALUES ('Announcement');
INSERT INTO `binding_type` (`type`) VALUES ('Report');

INSERT INTO `snowflake_type` (`type`) VALUES ('Guild');
INSERT INTO `snowflake_type` (`type`) VALUES ('Channel');
INSERT INTO `snowflake_type` (`type`) VALUES ('User');

INSERT INTO `user` (`id`) VALUES (178581372284305409);
INSERT INTO `user` (`id`) VALUES (245597003323670528);
INSERT INTO `user` (`id`) VALUES (248116143020048384);
INSERT INTO `user` (`id`) VALUES (340585395899203585);
INSERT INTO `user` (`id`) VALUES (442711068737929216);

INSERT INTO `owner` (`id`) VALUES (178581372284305409);
INSERT INTO `owner` (`id`) VALUES (245597003323670528);
INSERT INTO `owner` (`id`) VALUES (248116143020048384);
INSERT INTO `owner` (`id`) VALUES (340585395899203585);
INSERT INTO `owner` (`id`) VALUES (442711068737929216);

INSERT INTO `command` (`name`, `description`, `paramCount`, `optionalParams`, `level`) VALUES ('UPTIME', 'Checks how long Hera has been up and running', 0, 0, 0);
INSERT INTO `command` (`name`, `description`, `paramCount`, `optionalParams`, `level`) VALUES ('VERSION', 'Displays current version number', 0, 0, 0);
INSERT INTO `command` (`name`, `description`, `paramCount`, `optionalParams`, `level`) VALUES ('HELP', 'Shows this Help page', 0, 1, 0);
INSERT INTO `command` (`name`, `description`, `paramCount`, `optionalParams`, `level`) VALUES ('DELETEMESSAGES', 'Deletes the newest channel messages', 1, 0, 1);
INSERT INTO `command` (`name`, `description`, `paramCount`, `optionalParams`, `level`) VALUES ('ALIAS', 'Creates an alias for a command that works in only the current guild.', 2, 0, 1);
INSERT INTO `command` (`name`, `description`, `paramCount`, `optionalParams`, `level`) VALUES ('PREFIX', 'Sets command prefix', 1, 0, 1);
INSERT INTO `command` (`name`, `description`, `paramCount`, `optionalParams`, `level`) VALUES ('JOIN', 'Makes Hera join the voice channel you are currently connected to', 0, 0, 0);
INSERT INTO `command` (`name`, `description`, `paramCount`, `optionalParams`, `level`) VALUES ('LEAVE', 'Makes Hera leave the voice channel she is currently connected to', 0, 0, 0);
INSERT INTO `command` (`name`, `description`, `paramCount`, `optionalParams`, `level`) VALUES ('PLAY', 'Plays/Queues a song from a link / a few keywords to search on YouTube', 1, -1, 0);
INSERT INTO `command` (`name`, `description`, `paramCount`, `optionalParams`, `level`) VALUES ('QUEUE', 'Display the songs currently in the queue', 0, 0, 0);
INSERT INTO `command` (`name`, `description`, `paramCount`, `optionalParams`, `level`) VALUES ('SKIP', 'Skip the current song', 0, 0, 0);
INSERT INTO `command` (`name`, `description`, `paramCount`, `optionalParams`, `level`) VALUES ('LOOPQUEUE', 'Toggle loop queue mode', 0, 0, 0);
INSERT INTO `command` (`name`, `description`, `paramCount`, `optionalParams`, `level`) VALUES ('NOWPLAYING', 'Display the currently playing song', 0, 0, 0);
INSERT INTO `command` (`name`, `description`, `paramCount`, `optionalParams`, `level`) VALUES ('CLEAR', 'Clear the music queue', 0, 0, 0);
INSERT INTO `command` (`name`, `description`, `paramCount`, `optionalParams`, `level`) VALUES ('RESUME', 'Resume the music player', 0, 0, 0);
INSERT INTO `command` (`name`, `description`, `paramCount`, `optionalParams`, `level`) VALUES ('PAUSE', 'Pause the music player', 0, 0, 0);
INSERT INTO `command` (`name`, `description`, `paramCount`, `optionalParams`, `level`) VALUES ('VOLUME', 'Sets volume for music player', 1, 0, 1);
INSERT INTO `command` (`name`, `description`, `paramCount`, `optionalParams`, `level`) VALUES ('TOGGLECOMMAND', 'Toggles if a command is enabled or not', 1, 0, 1);
INSERT INTO `command` (`name`, `description`, `paramCount`, `optionalParams`, `level`) VALUES ('SHUFFLE', 'Shuffles the queue', 0, 0, 0);
INSERT INTO `command` (`name`, `description`, `paramCount`, `optionalParams`, `level`) VALUES ('REMOVE', 'Removes a song from the queue', 1, 0, 0);
INSERT INTO `command` (`name`, `description`, `paramCount`, `optionalParams`, `level`) VALUES ('MOVE', 'Move a song to a new queue index', 2, 0, 0);
INSERT INTO `command` (`name`, `description`, `paramCount`, `optionalParams`, `level`) VALUES ('JUMPTO', 'Jump to an index of the queue', 1, 0, 0);
INSERT INTO `command` (`name`, `description`, `paramCount`, `optionalParams`, `level`) VALUES ('ONJOINROLE', 'Sets a role to use on join', 1, 0, 1);
INSERT INTO `command` (`name`, `description`, `paramCount`, `optionalParams`, `level`) VALUES ('FLIP', 'Flips a coin', 0, 0, 0);
INSERT INTO `command` (`name`, `description`, `paramCount`, `optionalParams`, `level`) VALUES ('TEAMS', 'Makes teams from the specified parameters', 3, -1, 0);
INSERT INTO `command` (`name`, `description`, `paramCount`, `optionalParams`, `level`) VALUES ('UPDATEYTTOKEN', 'Sets the youtube tokens to a new value', 2, 0, 2);
INSERT INTO `command` (`name`, `description`, `paramCount`, `optionalParams`, `level`) VALUES ('VOTE', 'Start a guild wide vote', 1, -1, 0);

INSERT INTO `token` (`token`, `name`, `description`) VALUES ('#DISCORD_LOGIN_TOKEN', 'DISCORD_LOGIN', 'Discord bot token for Hera login');
INSERT INTO `token` (`token`, `name`, `description`) VALUES ('#YOUTUBE_API_TOKEN', 'YOUTUBE_API_TOKEN', 'YouTube API token for the YouTube Data v3 API');
INSERT INTO `token` (`token`, `name`, `description`) VALUES ('#YOUTUBE_API_APP_NAME', 'YOUTUBE_API_APP_NAME', 'YouTube API application name for the YouTube Data v3 API');

INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_VERSION', 'I am running on version %s');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_HELP', 'Commands');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_PREFIX', 'Prefix set to: %s');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_PLAY_TITLE', 'Added to queue');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_RESUMED', 'Player resumed');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_RESUMED_ERROR', 'Player is already resumed');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_PAUSED', 'Player paused');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_PAUSED_ERROR', 'Player is already paused');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_QUEUE_TITLE', 'Current queue');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_QUEUE_EMPTY', 'looks like it\'s empty');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_QUEUE_FOOTER', 'Page: %s of %s | Total songs: %s | Total duration: %s | Loop queue: %s');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMON_ENABLED', 'enabled');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMON_DISABLED', 'disabled');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_NOWPLAYING', 'Author: %s');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_NOWPLAYING_NO_SONG', 'No song is playing right now...');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_NOWPLAYING_TITLE', 'Now playing');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_JOIN', 'You need to be in a voice channel to use this command');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_LOOPQUEUE', 'Loop queue %s');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_VOLUME', 'Volume set to %d');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_VOLUME_ERROR', 'Volume can only be set to a number between 0 and 100');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_VOLUME_MUTE', 'I am now muted');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'PLAYLIST_LOADED', 'Total songs: %s | Total duration: %s');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_CLEAR', 'Queue cleared');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_TOGGLE_ON', 'Command %s is now on');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_TOGGLE_OFF', 'Command %s is now off');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_FLIP_HEADS', 'Heads');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_FLIP_TAILS', 'Tails');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'ERROR_NOT_REAL_COMMAND', 'Command %s doesn\'t exist');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_SHUFFLE', 'Queue shuffled');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_TEAM_TEAM', 'Team');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_REMOVE', 'Removed from queue');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_REMOVE_ERROR', 'There is nothing at queue index %s');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_MOVE', 'Moved %s to %s');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_MOVE_ERROR', 'Could not move a song with indexes %s and %s');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_JUMPTO', 'Jumped to %s');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_JUMPTO_ERROR', 'Can not jump to queue index %s');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_ON_JOIN_ROLE', 'On join role set to %s');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_ON_JOIN_ROLE_ERROR', 'Can\'t set on join role to %s');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_VOTE_START_TITLE', '%s started a vote');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_VOTE_START_FOOTER', '%s, react with %s to end the vote');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_VOTE_END_TITLE', 'Vote ended');
INSERT INTO `localisation` (`language`, `name`, `value`) VALUES ('en', 'COMMAND_VOTE_END_DESC', '> %s\n\nNumber of votes: %s\n\nYes: %s | %s%\nNo: %s | %s%');

INSERT INTO `global_setting` (`name`, `value`) VALUES ('VERSION', '2.0.0-alpha.2');

INSERT INTO `alias` (`commandFK`, `alias`) VALUES ((SELECT `id` FROM `command` WHERE `name` = 'PLAY'), 'P');
INSERT INTO `alias` (`commandFK`, `alias`) VALUES ((SELECT `id` FROM `command` WHERE `name` = 'QUEUE'), 'Q');
INSERT INTO `alias` (`commandFK`, `alias`) VALUES ((SELECT `id` FROM `command` WHERE `name` = 'NOWPLAYING'), 'NP');
INSERT INTO `alias` (`commandFK`, `alias`) VALUES ((SELECT `id` FROM `command` WHERE `name` = 'LOOPQUEUE'), 'LQ');
INSERT INTO `alias` (`commandFK`, `alias`) VALUES ((SELECT `id` FROM `command` WHERE `name` = 'CLEAR'), 'CLR');
INSERT INTO `alias` (`commandFK`, `alias`) VALUES ((SELECT `id` FROM `command` WHERE `name` = 'DELETEMESSAGES'), 'DELMSG');