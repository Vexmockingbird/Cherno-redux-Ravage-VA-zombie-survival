



///////////////// SOUNDS ////////////////

_Player = _this select 0;

_Player execVM "GF_Ambient_Environment_Sounds\Credits.sqf";	// Please keep the Credits or add them to your Diary
_Player execVM "GF_Ambient_Environment_Sounds\GF_AES_init.sqf";

////////////////////////__SNOW____/////////////////

[] execVM "GF_Ambient_Environment_Winter\Credits.sqf";	// Please keep the Credits or add them to your Diary
[] execVM "GF_Ambient_Environment_Winter\GF_AEW_init.sqf";



///////////////////////_3RD_PERSON_CAM_VEH/////////////////



/////////////////////////////_CUSTOM_BUILDING_ITEMS_//////////////////////////////////////

sleep 10;
//VABB_ObjectsBP pushback "classname";//

VABB_ObjectsBP append ["Land_Mil_WallBig_4m_F","Land_Gate_IndVar2_5","Land_WoodenRamp","Land_Podesta_1_stairs4","Land_ConcreteRamp","Box_NATO_Equip_F","I_supplyCrate_F",
"Land_HBarrier_01_line_5_green_F","Land_CHR_WoodWall","Land_Podesta_5","Land_Podesta_10"];




