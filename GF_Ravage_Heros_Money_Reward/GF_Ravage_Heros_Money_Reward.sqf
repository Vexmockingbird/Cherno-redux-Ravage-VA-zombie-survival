


//________________  Author : GEORGE FLOROS [GR] ___________ 26.09.18 _____________

/*
________________ GF Ravage Heros Money Reward Script ________________

https://forums.bohemia.net/forums/topic/219477-gf-ravage-heros-money-reward/?tab=comments#comment-3316004

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


diag_log "//________________ GF Ravage Heros Money Reward init _____________";

systemchat "GF Ravage Heros Money Reward    I n i t i a l i z e d";


GF_Ravage_Heros_Money_Reward_Kills = 0;

addMissionEventHandler ["EntityKilled", 
{
	params ["_killed", "_killer"];	
	if (isNull _instigator) then {_instigator = _killer}; // player driven vehicle road kill
	
	if (_killed isKindOf "CAManBase"  
	
//________________	You can filter the side here	________________

/*	
	&& {(	
		(side group _killed) == east || 
		(side group _killed) == independent ||
		(side group _killed) == civilian ||  		
		(side group _killed) == west)	
		}
*/
		
	) then {
		
if (isPlayer _killer) then { 


//________________ Settings ________________
//________________ Set true or false  ________________

_Systemchat_Enabled					= false;			//	Show Systemchat notification
_Play_Notification_Sound			= true;
_Show_Kills							= true;
 	
_1_Add_the_money_in_uniform			= true; 		
_2_Add_the_money_in_vest			= false; 
_3_Add_the_money_in_backpack		= false; 


//________________ Kill notification ________________	

GF_Ravage_Heros_Money_Reward_Kills = GF_Ravage_Heros_Money_Reward_Kills + 1;
//or
//	GF_Ravage_Heros_Money_Reward_Kills = score player; //Returns the person's score in MP. 

_Distance = _killer distance _killed;
_Bonus 	= 10;
_Distance_Bonus = (floor (_Distance / _Bonus));


		
//________________	BIS_fnc_textTiles	________________		
//	https://community.bistudio.com/wiki/BIS_fnc_textTiles
//	[content, position, tileSize, duration, fadeInOutTime, tileTransparency]			

if (_Show_Kills) then {
//________________	Show Kills	________________
[parseText format
["
<t shadow='2' shadowColor='#000000' font='PuristaBold' size='1.8'>%2 m</t>
<br />									
<t shadow='2' shadowColor='#000000' font='PuristaBold' size='1.8'>%3 $</t>
<br />									
<t shadow='2' shadowColor='#000000' font='PuristaBold' size='1.8'>%4 KILLS
</t>",
		"%",				// 1				
		floor _Distance,	// 2	
		_Distance_Bonus,	// 3
		GF_Ravage_Heros_Money_Reward_Kills
		], 
		[0.7,0,1,1], 	// position
		nil,				// tileSize
		4, 					// duration
		0.7,				// fadeInOutTime
		0					// tileTransparency
] spawn BIS_fnc_textTiles;	

}else{

[parseText format
["
<t shadow='2' shadowColor='#000000' font='PuristaBold' size='1.8'>%2 m</t>
<br />									
<t shadow='2' shadowColor='#000000' font='PuristaBold' size='1.8'>%3 $
</t>",
		"%",				// 1				
		floor _Distance,	// 2	
		_Distance_Bonus		// 3
		], 
		[0.7,0.16,1,1], 	// position
		nil,				// tileSize
		4, 					// duration
		0.7,				// fadeInOutTime
		0					// tileTransparency
] spawn BIS_fnc_textTiles;	

};


//________________	Select the money	________________

/*
	Ravage
	_Money = "rvg_money";	

or

Heros	
	_Money = "herl_o_Money_10";	
	
or
	"herl_o_Money_5"
	"herl_o_Money_10"
	"herl_o_Money_15"
	"herl_o_Money_20"
	"herl_o_Money_25"
	"herl_o_Money_50"
	"herl_o_Money_100"
*/


_Money = "rvg_money";	
					
//________________	uniform	________________

if (_1_Add_the_money_in_uniform) then {

if (_Systemchat_Enabled) then {
systemchat "_1_Add_the_money_in_uniform";
};

_uniform	= uniformContainer _killer;
_uniform addItemCargoGlobal [_Money, _Distance_Bonus];	
};


//________________	vest	________________

if (_2_Add_the_money_in_vest) then {

if (_Systemchat_Enabled) then {
systemchat "_2_Add_the_money_in_vest";
};

_vest		= vestContainer _killer;
_vest addItemCargoGlobal [_Money, _Distance_Bonus];
};

//________________	Backpack	________________

if (_3_Add_the_money_in_backpack) then {

if (_Systemchat_Enabled) then {
systemchat "_3_Add_the_money_in_backpack";
};

_backpack	= BackpackContainer _killer;
_backpack addItemCargoGlobal [_Money, _Distance_Bonus];
};


//________________	playSound notification 	________________ 
if (_Play_Notification_Sound) then {
playSound "Notification_1";	
};

};


	
};}];