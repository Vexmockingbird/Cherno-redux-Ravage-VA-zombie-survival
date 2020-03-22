//Get event params
params ["_oldUnit", "_killer", "_respawn", "_respawnDelay"];

//If a player had a map before death, we keep it, otherwise give temp map
if (!("ItemMap" in assignedItems _oldUnit)) then {
	waitUntil {
		if (isNull _oldUnit) exitWith {true};
		sleep 1;
		visibleMap
	};
	
	if(!isNull _oldUnit) then {
		_oldUnit linkItem "ItemMap";
		
		waitUntil {
			if (isNull _oldUnit) exitWith {true};
			sleep 1;
			not visibleMap
		};
		
		if(!isNull _oldUnit) then {
			_oldUnit unlinkItem "ItemMap";
		};		
	};
};

/*
	Problem 1: This allows players to loot the "free" map until player respawns
	Solution 1: Need to make the map unlootable.
*/