


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
	

diag_log "//________________ GF_AEW_Sounds_Man initialized ________________";


if (GF_AEW_Systemchat_info) then {
systemchat "GF_AEW_Sounds_Man initialized";			
};	


//________________ GF_AEW_Sounds_Man ________________

GF_AEW_Sounds_Man_Spawn = {


if (GF_AEW_Systemchat_info) then {
systemchat "GF_AEW_Sounds_Man";			
};	

	
[] spawn {
	while {true} do {
		
	if (
	(alive player) 
	&& (!(underwater player) or ((getPosASLW player select 2) > -1.5))
	) then {
	
	sleep GF_AEW_Sounds_Man_Loop;
				
	enableCamShake true;
	addCamShake [random 0.7,random 16,random 22];
	
	_Pos = getpos player;
	_Sound = "#particlesource" createVehicle _Pos;	
	//	_Sound = "#particlesource" createVehicleLocal _Pos;	
		
	_array = selectRandom[	
	"Man_1",
	"Man_2",
	"Man_3",
	"Man_4",
	"Man_5"
	];
	
	sleep 0.1;
	
	[_Sound,[_array, 50, 1]] remoteExec ["say3d",0,true];
	//	_Sound say3D [_array, 50, 1];	
	
	sleep random 2;
	enableCamShake false;
			
if (GF_AEW_hintsilent_info) then {
hintsilent "GF_AEW_Sounds_Man";	
};	

	sleep GF_AEW_Sounds_Man_Loop;
	
	};
	sleep 5;
	};	
	};	
};




//________________ Change the number of Spawned loops at the same time in GF_Ambient_Environment_Sounds_init.sqf	 ________________
_x = 0;

for "_x" from 0 to GF_AEW_Sounds_Man_Spawn_x_Number do {
[] spawn GF_AEW_Sounds_Man_Spawn;
};