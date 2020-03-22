


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

GF_AEW_Systemchat_info					= false;		//	Show Systemchat information
GF_AEW_hintsilent_info					= false;		//	Show hint information

_setViewDistance						= true;

_GF_ColorCorrections					= true;		//	Enable GF_ColorCorrections Script
_GF_Fog									= true;		//	Enable GF_Fog Script

_ARMA_3_Environment						= true;		//	ARMA 3 Environment ambientLife, the ambientSound is disabled  
_Delete_Snakes							= true;		//	Delete Snakes , if the 

_GF_AEW_Snow							= true;		//	Enable Snow 
_GF_AEW_Sounds							= true;		//	Enable Sounds


if(_setViewDistance) then {
setViewDistance 800;
};


/*
________________ GF ColorCorrections Script ________________
https://forums.bohemia.net/forums/topic/219908-gf-colorcorrections-script/

0. 	Disabled
1.	Realistic Color Correction theme
2.	Post Apocalyptic theme
3.	Nightstalkers theme
4.	OFP Gamma theme
5.	Golden autumn theme
6.	Africa theme
7.	Afghan theme
8.	Middle East theme
9.	Real Is Brown theme
10. Gray Tone theme
11.	Cold Tone theme
12. Winter Blue theme
13. Winter White theme
14. Mediterranean theme
*/

GF_ColorCorrections 					= 11; 		//	Select 	ColorCorrections 	

[] execVM "GF_ColorCorrections\Credits.sqf";	// Please keep the Credits or add them to your Diary
if(_GF_ColorCorrections) then {
[] execVM "GF_ColorCorrections\GF_ColorCorrections.sqf";
};


/*
________________ GF Fog Script ________________
https://forums.bohemia.net/forums/topic/219946-gf-fog-script/
*/
[] execVM "GF_Fog\Credits.sqf";	// Please keep the Credits or add them to your Diary
if(_GF_Fog) then {
[] execVM "GF_Fog\GF_Fog.sqf";
};


//________________ _GF_AEW_Snow ________________

if (_GF_AEW_Snow) then {
[] execVM "GF_Ambient_Environment_Winter\GF_AEW_Snow\GF_AEW_Snow.sqf";
};


//________________ _GF_AEW_Sounds ________________

if (_GF_AEW_Sounds) then {
[] execVM "GF_Ambient_Environment_Winter\GF_AEW_Sounds\GF_AEW_Sounds_init.sqf";
};


waitUntil {time > 0};


if(_ARMA_3_Environment) then {
//	enableEnvironment [ambientLife, ambientSound]  
enableEnvironment [true, false];	
}else{
enableEnvironment [false, false];
};

	




