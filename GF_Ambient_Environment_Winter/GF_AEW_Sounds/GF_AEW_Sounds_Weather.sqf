


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
	

diag_log "//________________ GF_AEW_Sounds_Weather initialized ________________";

if (GF_AEW_Systemchat_info) then {
systemchat "GF_AEW_Sounds_Weather initialized";			
};	



GF_AEW_Sounds_Weather = {

while {true} do {		

	
	if (
	(alive player) 
	&& (!(underwater player) or ((getPosASLW player select 2) > -1.5))
	) then {
	
	//________________	Overcast_0_to_4	________________
	
	if (
	((overcastForecast >= 0) && (overcastForecast < 0.4))
	) then {
	
if (GF_AEW_Systemchat_info) then {
systemchat "Overcast_0_to_4";	
};	
			
	playSound "Overcast_0_to_4";	
	sleep 158;	
	};

	
	//________________	Overcast_4_to_6	________________
	
	if (
	((overcastForecast >= 0.4) && (overcastForecast < 0.6))
	) then {
	
if (GF_AEW_Systemchat_info) then {
systemchat "Overcast_4_to_6";	
};	
			
	playSound "Overcast_4_to_6";	
	sleep 55;	
	};
	
	
	//________________	Overcast_6_to_8	________________
	
	if (
	(overcastForecast >= 0.6)
	) then {
	
if (GF_AEW_Systemchat_info) then {
systemchat "Overcast_6_to_8";	
};	
			
	playSound "Overcast_6_to_8";	
	sleep 55;	
	};
	
		
}else{
sleep 2;	
};
};
};


[] spawn GF_AEW_Sounds_Weather;