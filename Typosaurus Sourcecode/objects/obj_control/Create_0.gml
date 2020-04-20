/// @description CREATION VARIABLES

s_saveroute = "nothing/score.json";
s_screenroute = "nothing/lastdeath.png";

set_globals();

wd = room_width/12;
hd = room_height/12;

do_game_start[R_START] = control_start_initial;
do_game_start[R_LEVEL] = control_level_initial;
do_game_start[R_LOSER] = control_loser_initial;

do_game_step[R_START] = control_start_step;
do_game_step[R_LEVEL] = control_level_step;
do_game_step[R_LOSER] = control_loser_step;

string_difficulty[D_BEGINEER] = S_BEGINEER;
string_difficulty[D_APPRENTICE] = S_APPRENTICE;
string_difficulty[D_MASTER] = S_MASTER;
string_difficulty[D_HARDCORE] = S_HARDCORE;
