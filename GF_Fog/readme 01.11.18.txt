


//________________  Author : GEORGE FLOROS [GR] ___________ 01.11.18 _____________

/*
________________ GF Fog Script ________________

https://forums.bohemia.net/forums/topic/219946-gf-fog-script/

Please keep the Credits or add them to your Diary

https://community.bistudio.com/wiki/SQF_syntax
Don't try to open this with the simple notepad.
For everything that is with comment  //  in front  or between /*
means that it is disabled , so there is no need to delete the extra lines.

You can open this ex:
with notepad++
https://notepad-plus-plus.org/

and also use the extra pluggins
(this way will be better , it will give also some certain colors to be able to detect ex. problems )
http://www.armaholic.com/page.php?id=8680

or use any other program for editing .

For the Compilation List of my GF Scripts , you can search in:
https://forums.bohemia.net/forums/topic/215850-compilation-list-of-my-gf-scripts/
*/


Changelog:

Version 2.1

Script Author :
 
by GEORGE FLOROS [GR]


Description:

GF Fog Script , create your desired , Environment.
You are free to do anything but i would like to give me Credits for this!
Simple and easy to use and adapt .
Have Fun !


Installation / Usage:

For usage instructions and information of how to use the GF Fog Script please refer to the included documentation and/or example mission.
Place in your mission the files . There is everything included , in the initPlayerlocal.sqf , to copy paste in your mission .

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


Notes:

Create your desired , Environment.
The script will spawn a normal fog for player , 
according the selected options and a large size fog for the vehicles.
There are 3 types of Fog for each.
It is possible to spawn this , at a certain position , object or unit :
	
name this ex : GF_Fog_3
	
# These examples are included in the end of the script 
	
GF_Fog_3 spawn GF_Fog_Type_2;

or for more object with the same spawn :

null = {_x spawn GF_Fog_Type_1;}forEach [GF_Fog_1,GF_Fog_2];



Credits and Thanks to :

Thanks to All script contributors
Thanks to everyone who tries to do the best for this game!
Thanks to BIS for such a great platform .
Thanks to BIS Community and BIS Community Forums .
Thanks to Armaholic Community and Forums .


Changelog:

v2.1
Fixed :
an error with GF_Fog_Change_spotDistance.sqf.

v2.0
Added :
GF_Fog_Change_spotDistance.sqf to adjust the AIs spotDistance ,
an initServer.sqf , to run the GF_Fog_Change_spotDistance.sqf ,
an option for an FPS limit.
Fixed :
an error with the fog spawn underwater,
an error with the vehicle fog despawn , when the vehicle is destroyed.

v1.1
Fixed an error with the vehicle fog despawn.

v1.0 

  
Requirements : 

No addons required 


more info in :

Forum topic:
- BI forums https://forums.bohemia.net/forums/topic/219946-gf-fog-script/
- Armaholic forums http://www.armaholic.com/forums.php?m=posts&q=40262


Disclaimer :

I take no responsibility for (im)possible damage to your game/system that may be caused by installation of this Mission.

ALL CONTENT IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND. I MAKE NO WARRANTIES, EXPRESS OR IMPLIED, 
THAT THEY ARE FREE OF ERROR, OR ARE CONSISTENT WITH ANY PARTICULAR STANDARD OF MERCHANTABILITY, OR THAT 
THEY WILL MEET YOUR REQUIREMENTS FOR ANY PARTICULAR APPLICATION. USE AT YOUR OWN RISK. THE AUTHOR AND 
PUBLISHER DISCLAIM ALL LIABILITY FOR DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES RESULTING FROM YOUR 
USE OF THE PROGRAMS.  