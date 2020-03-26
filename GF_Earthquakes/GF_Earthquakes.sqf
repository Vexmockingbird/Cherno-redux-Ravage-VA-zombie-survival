


//________________	Author : GEORGE FLOROS [GR]	___________	10.04.19	___________


/*
________________	GF Earthquakes Script - Mod	________________




GF_EQ_Distance_Check_Loaded = false;

//________________	GF_Distance_Check.sqf	________________
[] execVM "GF_Earthquakes\GF_Distance_Check.sqf";

waituntil{GF_EQ_Distance_Check_Loaded};



//________________ Settings _____________
//________________ Set true or false  _____________

GF_EQ_Systemchat_info					= true;		
GF_EQ_diag_log_info						= true;

GF_EQ_Loop								= 500;		//	How much time to wait for the next earthquake
GF_EQ_Loop_random						= 1500;		//	+ random
GF_EQ_Destructive_Radius				= 500;		//	Set here the radious
GF_EQ_Destructive_Radius_random			= 700;		//	+ random

GF_EQ_Blacklist_Zone_distance			= 1000;		//	Add here the distance from the Blacklist Zones




if (GF_EQ_Systemchat_info) then {
systemchat "GF Earthquakes Script initializing";			
};	


if (GF_EQ_diag_log_info) then {
diag_log "//________________	GF Earthquakes Script initializing	________________";
};



[]spawn{
	while {true} do {
		
		uisleep GF_EQ_Loop + random GF_EQ_Loop_random;	
		
		if(isMultiplayer)then{

			GF_EQ_allPlayers = [];
			{if(alive _x && isPlayer _x) then{GF_EQ_allPlayers pushBack _x;};}forEach allUnits;
			GF_EQ_allPlayer = selectrandom GF_EQ_allPlayers;
		}else{

			GF_EQ_allPlayer = player;		
		};

		_nearestObjects = nearestObjects [GF_EQ_allPlayer, ["Static","NonStrategic"], GF_EQ_Destructive_Radius + GF_EQ_Destructive_Radius_random];
		
		
		_pos = getPos GF_EQ_allPlayer;

		GF_EQ_Distance_Check_initialized = false;
		GF_EQ_Distance_Check_Ok = false;

		[_pos] call GF_EQ_Distance_Check;	
		waituntil{GF_EQ_Distance_Check_initialized};
		
		if (GF_EQ_Distance_Check_Ok isEqualTo true)then {


		//________________ earthquakes list _____________
		
		_earthquake_1 = { 
		
			if (GF_EQ_Systemchat_info) then {
				systemchat "_earthquake_1";			
			};	
			
			[1] call bis_fnc_earthquake;
			};
		  
		  
		_earthquake_2 = { 
			
			if (GF_EQ_Systemchat_info) then {
				systemchat "_earthquake_2";			
			};
			
			[2] call bis_fnc_earthquake;
			};

			
		_earthquake_3 = { 

			if (GF_EQ_Systemchat_info) then {
				systemchat "_earthquake_3";			
			};
			
			[3] call bis_fnc_earthquake;
			};

			
		_earthquake_4 = { 
		
			if (GF_EQ_Systemchat_info) then {
				systemchat "_earthquake_4";			
			};
			
			[4] call bis_fnc_earthquake;
			};

		_earthquake_5 = {

			if (GF_EQ_Systemchat_info) then {
				systemchat "_earthquake_5";			
			};
			
			{
			if(random 10 < 2) then{
				_x setDamage 1
			};
			}forEach _nearestObjects;
			[3] call bis_fnc_earthquake;
			};
			
			
		_earthquake_6 = {
			
			if (GF_EQ_Systemchat_info) then {
				systemchat "_earthquake_6";			
			};
			
			[2] call bis_fnc_earthquake;
			uisleep 5 +  random 10;
			
			{
			if(random 10 < 5) then{
				_x setDamage 1
			};
			}forEach _nearestObjects;
			[3] call bis_fnc_earthquake;
			};

			
		_earthquake_7 = {
			
			if (GF_EQ_Systemchat_info) then {
				systemchat "_earthquake_7";			
			};
			
			[3] call bis_fnc_earthquake;
			uisleep 5 +  random 10;
			
			{_x setDamage 1}forEach _nearestObjects;
			[4] call bis_fnc_earthquake;
			};
			
			
		_earthquake_8 = { 
			
			if (GF_EQ_Systemchat_info) then {
				systemchat "_earthquake_8";			
			};
			
			[3] call bis_fnc_earthquake;
			uisleep 20 + random 80;
			
			[2] call bis_fnc_earthquake;
			uisleep 20 + random 80;
			
			uisleep 20 + random 80;
			{
			if(random 10 < 2) then{
				_x setDamage 1
			};
			}forEach _nearestObjects;
			[4] call bis_fnc_earthquake;
			
			[3] call bis_fnc_earthquake;
			uisleep 20 + random 80;
			
			uisleep 20 + random 80;
			{_x setDamage 1}forEach _nearestObjects;
			[4] call bis_fnc_earthquake;
			
			[1] call bis_fnc_earthquake;
			uisleep 20 + random 80;
			
			[3] call bis_fnc_earthquake;
			uisleep 20 + random 80;
			};
			
			
		_earthquake_9 = {
			
			if (GF_EQ_Systemchat_info) then {
				systemchat "_earthquake_9";			
			};
		
			{
			if(random 10 < 5) then{
				_x setDamage 1
			};
			}forEach _nearestObjects;
			[3] call bis_fnc_earthquake;
			uisleep 20 + random 80;
			
			[2] call bis_fnc_earthquake;	
			uisleep 20 + random 80;
			
			[2] call bis_fnc_earthquake;
			uisleep 20 + random 80;
			
			[4] call bis_fnc_earthquake;
			uisleep 20 + random 80;
			{_x setDamage 1}forEach _nearestObjects;
			
			[3] call bis_fnc_earthquake;
			uisleep 20 + random 80;
			
			[2] call bis_fnc_earthquake;
			uisleep 20 + random 80;
			
			[4] call bis_fnc_earthquake;
			uisleep 20 + random 80;
			{_x setDamage 1}forEach _nearestObjects;
			};

		
			_list = selectRandom[    
					_earthquake_1, 
					_earthquake_2, 
					_earthquake_3,
					_earthquake_4,
					_earthquake_5,
					_earthquake_6,
					_earthquake_7,
					_earthquake_8,
					_earthquake_9
					];
	
		[] call _list;
		};
	};
};	
	
	
if (GF_EQ_Systemchat_info) then {
systemchat "GF Earthquakes Script initialized";			
};	


if (GF_EQ_diag_log_info) then {
diag_log "//________________	GF Earthquakes Script initialized	________________";
};