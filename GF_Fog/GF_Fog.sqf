


//________________  Author : GEORGE FLOROS [GR] ___________ 01.11.18 _____________

/*
________________ GF Fog Script ________________



diag_log "//________________ GF_Fog Script initializing ________________";


//________________ Settings ________________
//________________ Set true or false  ________________

GF_Fog_Systemchat_info					= false;		//	Show Systemchat information

//________________	adjust here the FPS Limit	________________	
GF_Fog_FPS_Limit 						= 10;

GF_Fog_Type_1_Enabled					= true;		
GF_Fog_Type_2_Enabled					= true;		
GF_Fog_Type_3_Enabled					= true;		

GF_Fog_Type_1_Vehicle_Enabled			= true;		
GF_Fog_Type_2_Vehicle_Enabled			= true;		
GF_Fog_Type_3_Vehicle_Enabled			= true;		




//________________	Informations about spawn	________________	 
/*
	The code at the end of the script , will spawn a normal fog for player , 
	according the selections above and a large size fog for the vehicles.
	
	It is possible to spawn this at a certain position , object or unit :
	
	name this ex : GF_Fog_3
	
	# These examples are included in the end of the script 
	
	GF_Fog_3 spawn GF_Fog_Type_2;

	or for more object with the same spawn :
	null = {_x spawn GF_Fog_Type_1;}forEach [GF_Fog_1,GF_Fog_2];
*/
//________________	End	________________	 




if (GF_Fog_Systemchat_info) then {
systemchat "GF_Fog initializing";			
};	



//________________ GF_Fog ________________

//________________ GF_Fog_Type_1 ________________

GF_Fog_Type_1 = {

	GF_Fog_Type_1_Particle = "#particlesource" createVehicleLocal [0,0,0];
	//https://community.bistudio.com/wiki/ParticleArray 	
	GF_Fog_Type_1_Particle setParticleParams [
	["\a3\Data_f\ParticleEffects\Universal\Universal", 16, 12, 12, 0],
	"",
	"Billboard",
	2, 
	30 + random 10,	
    [0, 0, -5],
	[0,0,0],
	1, 1.260, 1, 0,
    [10 + random 5,8 + random 5],		
	[[1, 1, 1, 0], 
	[1, 1, 1, 0.05],
	[1, 1, 1, 0.5]], 
	[100], 
	1, 
	0, 
	"", 
	"", 
	GF_Fog_Type_1_Particle
    ];
		
		
	//https://community.bistudio.com/wiki/setParticleRandom
	GF_Fog_Type_1_Particle setParticleRandom [
	1,					
	[75 + random 25, 75 + random 25,1],		
	[0, 0, -0.01 - random - 0.05],	
	2,					
	0.60,							
	[0, 0, 0, 0],		
	0,					
	0,					
	0					
	];
	
	GF_Fog_Type_1_Particle setParticleCircle [
	0.001,
	[0, 0, -0.12]
	];
	
	GF_Fog_Type_1_Particle setDropInterval 0.01;
			
	GF_Fog_Type_1_Particle attachTo [_this,[0,0,0]];
	
	_this setVariable ["Var_GF_Fog",true];
    		
	_this addEventHandler ["Respawn", {
	params ["_unit", "_corpse"];
	deleteVehicle GF_Fog_Type_1_Particle;
	_unit setVariable ["Var_GF_Fog",false];
	}];	

};


//________________ GF_Fog_Type_2 ________________

GF_Fog_Type_2 = {

	GF_Fog_Type_2_Particle = "#particlesource" createVehicleLocal [0,0,0];
	//https://community.bistudio.com/wiki/ParticleArray 	
	GF_Fog_Type_2_Particle setParticleParams [
	["\A3\data_f\cl_basic", 1, 0, 1],
	"",
	"Billboard",
	1, 
	20 + random 10,
    [0, 0, -8],
	[-1, -1, 0],	
	110, 10.15, 7.9, 0.01,
    [10, 10, 20],
	[[1, 1, 1, 0.01], 
	[1, 1, 1, 0.05+random 0.05],
	[1, 1, 1, 0]], 
	[0.10], 
	1, 
	0, 
	"", 
	"", 
	GF_Fog_Type_2_Particle
    ];

		
	//https://community.bistudio.com/wiki/setParticleRandom
	GF_Fog_Type_2_Particle setParticleRandom [
	10,					
	[10 + random 5, 10 + random 5, 0],		
	[1, 1, 0],	
	1,					
	1,							
	[0, 0, 0, 0.1],		
	0,					
	0,					
	0					
	];
	
	GF_Fog_Type_2_Particle setParticleCircle [
	30,
	[3, 3, 0]
	];
	
	GF_Fog_Type_2_Particle setDropInterval 0.01+random 0.1;	
			
	GF_Fog_Type_2_Particle attachTo [_this,[0,0,0]];
	
	_this setVariable ["Var_GF_Fog",true];
    		
	_this addEventHandler ["Respawn", {
	params ["_unit", "_corpse"];
	deleteVehicle GF_Fog_Type_2_Particle;
	_unit setVariable ["Var_GF_Fog",false];
	}];	

};


//________________ GF_Fog_Type_3 ________________

GF_Fog_Type_3 = {

	GF_Fog_Type_3_Particle = "#particlesource" createVehicleLocal [0,0,0];
	//https://community.bistudio.com/wiki/ParticleArray 	
	GF_Fog_Type_3_Particle setParticleParams [
	["\A3\data_f\cl_basic", 1, 0, 1],
	"",
	"Billboard",
	1, 
	10 + random 5,
    [0, 0, -8],
	[-1, -1, 0],
	110, 10.15, 7.9, 0.01,
    [10, 10, 20],
	[[1, 1, 1, 0.01], 
	[1, 1, 1, 0.05+random 0.05],
	[1, 1, 1, 0]], 
	[0.08], 
	1, 
	0, 
	"", 
	"", 
	GF_Fog_Type_3_Particle
    ];
	
		
	//https://community.bistudio.com/wiki/setParticleRandom
	GF_Fog_Type_3_Particle setParticleRandom [	
	0,					
	[0, 0, 0],		
	[0, 0, 0],	
	0,					
	0,							
	[0, 0, 0, 0],		
	0,					
	0,					
	0					
	];
	
	
	GF_Fog_Type_3_Particle setParticleCircle [
	25 + random 10,
	[5 + random 10 , 5 + random 10, 0]
	];
	
	
	GF_Fog_Type_3_Particle setDropInterval 0.01+random 0.1;
			
	GF_Fog_Type_3_Particle attachTo [_this,[0,0,0]];
	
	_this setVariable ["Var_GF_Fog",true];
    		
	_this addEventHandler ["Respawn", {
	params ["_unit", "_corpse"];
	deleteVehicle GF_Fog_Type_3_Particle;
	_unit setVariable ["Var_GF_Fog",false];
	}];	

};




//________________ GF_Fog_Vehicle ________________

//________________ GF_Fog_Type_1_Vehicle ________________

GF_Fog_Type_1_Vehicle = {

	GF_Fog_Type_1_Vehicle_Particle = "#particlesource" createVehicleLocal [0,0,0];
	//https://community.bistudio.com/wiki/ParticleArray 	
	GF_Fog_Type_1_Vehicle_Particle setParticleParams	[
	["\a3\Data_f\ParticleEffects\Universal\Universal", 16, 12, 12, 0],	
	"",
	"Billboard",
	2, 
	30 + random 10,	
    [0, 0, -5],
	[0,0,0],
	1, 1.260, 1, 0,
    [10 + random 5,8 + random 5],		
	[[1, 1, 1, 0], 
	[1, 1, 1, 0.05],
	[1, 1, 1, 0.5]], 
	[100], 
	1, 
	0, 
	"", 
	"", 
	GF_Fog_Type_1_Vehicle_Particle
    ];
		
		
	//https://community.bistudio.com/wiki/setParticleRandom
	GF_Fog_Type_1_Vehicle_Particle setParticleRandom	[
	1,					
	[200 + random 50, 200 + random 50, 15],		
	[0, 0, -0.01 - random - 0.05],	
	2,					
	0.60,							
	[0, 0, 0, 0],		
	0,					
	0,					
	0					
	];
	
	GF_Fog_Type_1_Vehicle_Particle setParticleCircle 
	[
	0.001,
	[0, 0, -0.12]
	];
	
	GF_Fog_Type_1_Vehicle_Particle setDropInterval 0.01;
			
	GF_Fog_Type_1_Vehicle_Particle attachTo [_this,[0,0,0]];

	_this setVariable ["Var_GF_Fog",true];
    		
	_this addEventHandler ["Respawn", {
	params ["_unit", "_corpse"];
	deleteVehicle GF_Fog_Type_1_Vehicle_Particle;
	_unit setVariable ["Var_GF_Fog",false];
	}];	

};


//________________ GF_Fog_Type_2_Vehicle ________________

GF_Fog_Type_2_Vehicle = {

	GF_Fog_Type_2_Vehicle_Particle = "#particlesource" createVehicleLocal [0,0,0];
	//https://community.bistudio.com/wiki/ParticleArray 	
	GF_Fog_Type_2_Vehicle_Particle setParticleParams [
	["\A3\data_f\cl_basic", 1, 0, 1],
	"",
	"Billboard",
	1, 
	20 + random 10,
    [0, 0, -8],
	[-1, -1, 0],	
	110, 10.15, 7.9, 0.01,
    [10, 10, 20],
	[[1, 1, 1, 0.01], 
	[1, 1, 1, 0.05+random 0.05],
	[1, 1, 1, 0]], 
	[0.10], 
	1, 
	0, 
	"", 
	"", 
	GF_Fog_Type_2_Vehicle_Particle
    ];

		
	//https://community.bistudio.com/wiki/setParticleRandom
	GF_Fog_Type_2_Vehicle_Particle setParticleRandom [
	10,					
	[150 + random 50, 150 + random 50, 0],		
	[1, 1, 0],	
	1,					
	1,							
	[0, 0, 0, 0.1],		
	0,					
	0,					
	0					
	];
	
	GF_Fog_Type_2_Vehicle_Particle setParticleCircle [
	30,
	[3, 3, 0]
	];
	
	GF_Fog_Type_2_Vehicle_Particle setDropInterval 0.01+random 0.1;	
			
	GF_Fog_Type_2_Vehicle_Particle attachTo [_this,[0,0,0]];
	
	_this setVariable ["Var_GF_Fog",true];
    		
	_this addEventHandler ["Respawn", {
	params ["_unit", "_corpse"];
	deleteVehicle GF_Fog_Type_2_Vehicle_Particle;
	_unit setVariable ["Var_GF_Fog",false];
	}];	

};


//________________ GF_Fog_Type_3_Vehicle ________________

GF_Fog_Type_3_Vehicle = {

	GF_Fog_Type_3_Vehicle_Particle = "#particlesource" createVehicleLocal [0,0,0];
	//https://community.bistudio.com/wiki/ParticleArray 	
	GF_Fog_Type_3_Vehicle_Particle setParticleParams [
	["\A3\data_f\cl_basic", 1, 0, 1],
	"",
	"Billboard",
	1, 
	10 + random 5,
    [0, 0, -8],
	[-1, -1, 0],
	110, 10.15, 7.9, 0.01,
    [10, 10, 20],
	[[1, 1, 1, 0.01], 
	[1, 1, 1, 0.05+random 0.05],
	[1, 1, 1, 0]], 
	[0.08], 
	1, 
	0, 
	"", 
	"", 
	GF_Fog_Type_3_Vehicle_Particle
    ];
	
		
	//https://community.bistudio.com/wiki/setParticleRandom
	GF_Fog_Type_3_Vehicle_Particle setParticleRandom [	
	0,					
	[0, 0, 0],		
	[0, 0, 0],	
	0,					
	0,							
	[0, 0, 0, 0],		
	0,					
	0,					
	0					
	];
	
	
	GF_Fog_Type_3_Vehicle_Particle setParticleCircle [
	25 + random 10,
	[5 + random 10 , 5 + random 10, 0]
	];
	
	
	GF_Fog_Type_3_Vehicle_Particle setDropInterval 0.01+random 0.1;
			
	GF_Fog_Type_3_Vehicle_Particle attachTo [_this,[0,0,0]];
	
	_this setVariable ["Var_GF_Fog",true];
    		
	_this addEventHandler ["Respawn", {
	params ["_unit", "_corpse"];
	deleteVehicle GF_Fog_Type_3_Vehicle_Particle;
	_unit setVariable ["Var_GF_Fog",false];
	}];	

};




//________________	Informations about spawn	________________	 
/*
	The code at the end of the script , will spawn a normal fog for player , 
	according the selections above and a large size fog for the vehicles.
	
	It is possible to spawn this at a certain position , object or unit :
	
	name this ex : GF_Fog_3
	
	# These examples are included in the end of the script 

//________________	examples	________________	

GF_Fog_3 spawn GF_Fog_Type_2;

null = {_x spawn GF_Fog_Type_1;}forEach [GF_Fog_1,GF_Fog_2];

*/
//________________	End	________________	




[] spawn {
	while {true} do {			
	
			//________________ GF_Fog ________________
			
				
		if (
			((alive player))
			&& (!isNull player)
			&& (!(underwater player) or ((getPosASLW player select 2) > -1.5))
			&& diag_fps > GF_Fog_FPS_Limit	
			&& (!(player getVariable ["Var_GF_Fog",false]))
			) then {
			
			if (GF_Fog_Type_1_Enabled) then {			
			player spawn GF_Fog_Type_1;
			};
			
			if (GF_Fog_Type_2_Enabled) then {			
			player spawn GF_Fog_Type_2;
			};
			
			if (GF_Fog_Type_3_Enabled) then {			
			player spawn GF_Fog_Type_3;
			};
			
			};						
			player setVariable ["Var_GF_Fog",true];
								
			{waitUntil {!alive player};
			player setVariable ["Var_GF_Fog",false];		 
			};
			
						
			//________________ GF_Fog_Vehicle ________________
				
		{		
		if (
			((alive _x))
			&& (!(underwater _x) or ((getPosASLW _x select 2) > -1.5))
			&& (!(_x getVariable ["Var_GF_Fog_Vehicle",false]))
			) then {
			
			_x addEventHandler ["GetIn", {
			params ["_vehicle", "_role", "_unit", "_turret"];
			
			if (GF_Fog_Type_1_Vehicle_Enabled) then {			
			_vehicle spawn GF_Fog_Type_1_Vehicle;
			};
			
			if (GF_Fog_Type_2_Vehicle_Enabled) then {			
			_vehicle spawn GF_Fog_Type_2_Vehicle;
			};
			
			if (GF_Fog_Type_3_Vehicle_Enabled) then {			
			_vehicle spawn GF_Fog_Type_3_Vehicle;
			};
			
			
			//________________ destroyed Vehicles underwater ________________
			
			if (
			(!(alive _vehicle))
			or ((underwater _vehicle) or ((getPosASLW _vehicle select 2) > -1.5))
			&& ((_vehicle getVariable ["Var_GF_Fog_Vehicle",true]))
			) then {
			
			if (GF_Fog_Type_1_Vehicle_Enabled) then {			
			deleteVehicle GF_Fog_Type_1_Vehicle_Particle;
			_vehicle setVariable ["Var_GF_Fog_Vehicle",false];
			};
			
			if (GF_Fog_Type_2_Vehicle_Enabled) then {			
			deleteVehicle GF_Fog_Type_2_Vehicle_Particle;
			_vehicle setVariable ["Var_GF_Fog_Vehicle",false];
			};
			
			if (GF_Fog_Type_3_Vehicle_Enabled) then {			
			deleteVehicle GF_Fog_Type_3_Vehicle_Particle;
			_vehicle setVariable ["Var_GF_Fog_Vehicle",false];
			};
			
			};
			
			}];

			
			_x addEventHandler ["GetOut", {
			params ["_vehicle", "_role", "_unit", "_turret"];
			
			if (GF_Fog_Type_1_Vehicle_Enabled) then {			
			deleteVehicle GF_Fog_Type_1_Vehicle_Particle;
			_vehicle setVariable ["Var_GF_Fog_Vehicle",false];
			};
			
			if (GF_Fog_Type_2_Vehicle_Enabled) then {			
			deleteVehicle GF_Fog_Type_2_Vehicle_Particle;
			_vehicle setVariable ["Var_GF_Fog_Vehicle",false];
			};
			
			if (GF_Fog_Type_3_Vehicle_Enabled) then {			
			deleteVehicle GF_Fog_Type_3_Vehicle_Particle;
			_vehicle setVariable ["Var_GF_Fog_Vehicle",false];
			};
		
			}];		
			
			};
			
			_x setVariable ["Var_GF_Fog_Vehicle",true];
			
			{waitUntil {!alive _x};
			_x setVariable ["Var_GF_Fog_Vehicle",false];			
			};
		}forEach vehicles;
		sleep 10;
			
			
			//________________ player underwater ________________
			
			if (
			((alive player))
			&& (!isNull player)
			&& ((underwater player) or ((getPosASLW player select 2) > -1.5))
			&& diag_fps > GF_Fog_FPS_Limit	
			&& (player getVariable ["Var_GF_Fog",true])
			) then {
			
			sleep 3;
			
			if (GF_Fog_Type_1_Enabled) then {			
			deleteVehicle GF_Fog_Type_1_Particle;
			};
			
			if (GF_Fog_Type_2_Enabled) then {			
			deleteVehicle GF_Fog_Type_2_Particle;
			};
			
			if (GF_Fog_Type_3_Enabled) then {			
			deleteVehicle GF_Fog_Type_3_Particle;
			};
			
			player setVariable ["Var_GF_Fog",false];		 
			};	
						
	};
};	


diag_log "//________________ GF Fog Script initialized ________________";

if (GF_Fog_Systemchat_info) then {
systemchat "GF_Fog initialized";			
};	