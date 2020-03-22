


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
	

diag_log "//________________ GF Ambient Environment Winter Script ________________";


//________________ Settings ________________
//________________ Set true or false  ________________

GF_AEW_Systemchat_info					= false;			//	Show Systemchat information
GF_AEW_hintsilent_info					= false;			//	Show hint information


GF_AEW_Sounds_Weather					= true;			//	Ambiance Sounds


//________________ say3D ________________

GF_AEW_Sounds_Animals					= true;			//	Animals Sounds
GF_AEW_Sounds_Birds						= true;			//	Birds Sounds
GF_AEW_Sounds_Man						= true;			//	Man Sounds
GF_AEW_Sounds_SFX_Forest				= true;			//	SFX Forest Sounds
GF_AEW_Sounds_Wind						= true;			//	Wind Sounds


//________________ number of Spawns ________________

GF_AEW_Sounds_Animals_Spawn_x_Number	= 2;			//	Change the number of Spawned loops at the same time 
GF_AEW_Sounds_Birds_Spawn_x_Number		= 2;			//	Change the number of Spawned loops at the same time 
GF_AEW_Sounds_Man_Spawn_x_Number		= 1;			//	Change the number of Spawned loops at the same time
GF_AEW_Sounds_SFX_Forest_Spawn_x_Number	= 1;			//	Change the number of Spawned loops at the same time
GF_AEW_Sounds_Wind_Spawn_x_Number		= 1;			//	Change the number of Spawned loops at the same time


//________________ seconds to loop ________________

GF_AEW_Sounds_Animals_Loop				= random 400;	//  Set the seconds to loop sounds
GF_AEW_Sounds_Birds_Loop				= random 200;	//  Set the seconds to loop sounds
GF_AEW_Sounds_Man_Loop					= random 200;	//  Set the seconds to loop sounds
GF_AEW_Sounds_SFX_Forest_Loop			= random 300;	//  Set the seconds to loop sounds
GF_AEW_Sounds_Wind_Loop					= random 200;	//  Set the seconds to loop sounds




if (GF_AEW_Systemchat_info) then {
systemchat "GF Ambient Environment Winter Script initialized";			
};	



//________________ GF_AEW_Sounds_Weather	playSound	 ________________

if (GF_AEW_Sounds_Weather) then {
[] execVM "GF_Ambient_Environment_Winter\GF_AEW_Sounds\GF_AEW_Sounds_Weather.sqf";
};


//________________ say3D ________________

//________________ GF_AEW_Sounds_Animals ________________

if (GF_AEW_Sounds_Animals) then {
[] execVM "GF_Ambient_Environment_Winter\GF_AEW_Sounds\say3D\GF_AEW_Sounds_Animals.sqf";
};

//________________ GF_AEW_Sounds_Birds ________________

if (GF_AEW_Sounds_Birds) then {
[] execVM "GF_Ambient_Environment_Winter\GF_AEW_Sounds\say3D\GF_AEW_Sounds_Birds.sqf";
};

//________________ GF_AEW_Sounds_Man ________________

if (GF_AEW_Sounds_Man) then {
[] execVM "GF_Ambient_Environment_Winter\GF_AEW_Sounds\say3D\GF_AEW_Sounds_Man.sqf";
};

//________________ GF_AEW_Sounds_SFX_Forest ________________

if (GF_AEW_Sounds_SFX_Forest) then {
[] execVM "GF_Ambient_Environment_Winter\GF_AEW_Sounds\say3D\GF_AEW_Sounds_SFX_Forest.sqf";
};

//________________ GF_AEW_Sounds_Wind ________________

if (GF_AEW_Sounds_Wind) then {
[] execVM "GF_Ambient_Environment_Winter\GF_AEW_Sounds\say3D\GF_AEW_Sounds_Wind.sqf";
};