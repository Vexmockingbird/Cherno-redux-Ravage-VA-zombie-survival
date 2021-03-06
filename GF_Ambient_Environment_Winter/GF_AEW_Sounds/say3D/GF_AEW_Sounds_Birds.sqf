


//________________  Author : GEORGE FLOROS [GR] ___________ 02.11.18 _____________

/*
________________ GF Ambient Environment Winter Script ________________

https://forums.bohemia.net/forums/topic/220062-gf-ambient-environment-winter-script/

Please keep the Credits or add them to your Diary

https://community.bistudio.com/wiki/SQF_syntax
Don't try to open this with the simple notepad.
For everything that is with comment  //  in front  or between /*
means that it is disabled , so there is no need to delete the extra lines.

You can open this ex:
with notepad++
https://notepad-plus-plus.org/

and also use the extra pluggins
(this way will be better , it will give also some certain colours to be able to detect ex. problems )
http://www.armaholic.com/page.php?id=8680

or use any other program for editing .

For the Compilation List of my GF Scripts , you can search in:
https://forums.bohemia.net/forums/topic/215850-compilation-list-of-my-gf-scripts/
*/
	

diag_log "//________________ GF_AEW_Sounds_Birds initialized ________________";


if (GF_AEW_Systemchat_info) then {
systemchat "GF_AEW_3D_Sounds_Birds initialized";			
};	


//________________ GF_AEW_Sounds_Birds ________________

GF_AEW_Sounds_Birds_Spawn = {


if (GF_AEW_Systemchat_info) then {
systemchat "GF_AEW_Sounds_Birds";			
};	

[] spawn {
	while {true} do {
	
	//________________	daytime and nighttime	________________
	
	if ((date select 3) < 6 or (date select 3) > 19) then {
	
if (GF_AEW_hintsilent_info) then {
hintsilent "nightime";		
};	

	sleep GF_AEW_Sounds_Birds_Loop;
		
	//________________	nighttime	________________
	
	if ((!(surfaceIsWater getPos player)) && (!(vehicle player != player))) then {
	
	_Player_Pos = getpos player;	
	_Pos = [[[_Player_Pos, (20)],[]],[]] call BIS_fnc_randomPos;	
	_Sound = "#particlesource" createVehicleLocal _Pos;	
			
	_array = selectRandom[	
	"Birds_night_1",
	"Birds_night_2",
	"Birds_night_3",
	"Birds_night_4",
	"Birds_night_5",
	"Birds_night_6",
	"Birds_night_7",
	"Birds_night_8",
	"Birds_night_9",
	"Birds_night_10",
	"Birds_night_11",
	"Birds_night_12",
	"Birds_night_13",
	"Birds_night_14",
	"Birds_night_15",
	"Birds_night_16",
	"Birds_night_17",
	"Birds_night_18",
	"Birds_night_19",
	"Birds_night_20",
	"Birds_night_21",
	"Birds_night_22"
	];
	
	_Sound say3D [_array, 100, 1];	
			
if (GF_AEW_hintsilent_info) then {
hintsilent "GF_AEW_Sounds_Birds";	
};	

	sleep GF_AEW_Sounds_Birds_Loop;
	
	}else{

	//________________	surfaceIsWater	________________
	
if (GF_AEW_hintsilent_info) then {
hintsilent "surfaceIsWater or inside vehicle";		
};	

	sleep 3;
	};	

	} else {

if (GF_AEW_hintsilent_info) then {
hintsilent "daytime";	
};	

	sleep GF_AEW_Sounds_Birds_Loop;
		
	//________________	daytime	________________
	
	if ((!(surfaceIsWater getPos player)) && (!(vehicle player != player))) then {
	
	_Player_Pos = getpos player;	
	_Pos = [[[_Player_Pos, (20)],[]],[]] call BIS_fnc_randomPos;	
	_Sound = "#particlesource" createVehicleLocal _Pos;	
	
	
	_array = selectRandom[	
	"Birds_day_1",
	"Birds_day_2",
	"Birds_day_3",
	"Birds_day_4",
	"Birds_day_5",
	"Birds_day_6",
	"Birds_day_7",
	"Birds_day_8",
	"Birds_day_9",
	"Birds_day_10"
	];
	
	_Sound say3D [_array, 100, 1];	
			
if (GF_AEW_hintsilent_info) then {
hintsilent "GF_AEW_Sounds_Birds";	
};	

	sleep GF_AEW_Sounds_Birds_Loop;

	}else{

if (GF_AEW_hintsilent_info) then {
hintsilent "surfaceIsWater or inside vehicle";	
};	
	sleep 3;
	};		
};	
};
};
};


//________________ Change the number of Spawned loops at the same time in GF_Ambient_Environment_Sounds_init.sqf	 ________________
_x = 0;

for "_x" from 0 to GF_AEW_Sounds_Birds_Spawn_x_Number do {
[]spawn GF_AEW_Sounds_Birds_Spawn;
};