


///////////////////////////_TIME_CYCLE_///////////////////////////////////////////////



if (isDedicated) exitWith {};
while {true} do
{
  
    if (daytime >= 17.40 || daytime < 6) then
    {
        setTimeMultiplier 16 //for night time
    }
    else
    {
        setTimeMultiplier 4 //for day time
    };
    uiSleep 120;
};


///////////////////////////////////////////////////////////

[] execVM "GF_Gunlights\Credits.sqf";	// Please keep the Credits or add them to your Diary
[] execVM "GF_Gunlights\GF_Gunlights.sqf";

////////////////////////////////////


////////////////////////////___WEATHER SCRIPT___////////////////

[] execVM "GF_Weather\Credits.sqf";	// Please keep the Credits or add them to your Diary
[] execVM "GF_Weather\GF_Weather.sqf";

//////////////////////__FOG__//////////////////////////////////////////

[] execVM "GF_Fog\GF_Fog_Change_spotDistance.sqf";


///////////////////////////EARTHQUAKE_SCRIPT___////////

[] execVM "GF_Earthquakes\Credits.sqf";	// Please keep the Credits or add them to your Diary
[] execVM "GF_Earthquakes\GF_Earthquakes.sqf";

/////////////////___SOUNDS___/////


_Player execVM "GF_Ambient_Environment_Sounds\GF_AES_init.sqf";

////////////////////////__CLEANUP_DEBUG__///


_Debug_info = false;


if (_Debug_info) then {
[] spawn {
	while {true} do {
    _time = diag_tickTime + 5;	//	every  50 second
    _i = 0;
    waitUntil {
	sleep 1;
    _i = _i + 1;		
    diag_tickTime >= _time
    };	
	
diag_log format ["FPS : %1    ||    Objects : %2    ||    allUnits : %3",round diag_fps,count allMissionObjects "All",count allUnits,{count _x;}];
systemchat format ["FPS : %1    ||    Objects : %2    ||    allUnits : %3",round diag_fps,count allMissionObjects "All",count allUnits,{count _x;}];	

	};
};
};