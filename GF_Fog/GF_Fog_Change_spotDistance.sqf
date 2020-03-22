


//________________  Author : GEORGE FLOROS [GR] ___________ 01.11.18 _____________

/*
________________ GF Fog Script ________________



diag_log "//________________ GF_Fog_Change_spotDistance.sqf _____________";

systemchat "GF_Fog_Change_spotDistance";
//________________ Settings ________________
//________________ Set true or false  ________________

GF_Fog_Change_spotDistance				= true;		//	Change AI spotDistance


if (GF_Fog_Change_spotDistance) then {

[] spawn {
	while {true} do {
{		
if (
	((alive _x)) 
	&& (!(_x getVariable ["Var_GF_Fog_Change_spotDistance",false]))
	) then {
	_x setSkill ["spotDistance", 0.05 + (random 0.05)];
	};						
	_x setVariable ["Var_GF_Fog_Change_spotDistance",true];
	{waitUntil {!alive _x};
	_x setVariable ["Var_GF_Fog_Change_spotDistance",false];		 
	};
}forEach allUnits;
sleep 15;
};
};

};