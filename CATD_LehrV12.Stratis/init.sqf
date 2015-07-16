enableSaving[false,false];
enableDebugConsole = 1;
first_virtualarsenal = 1;
_igiload = execVM "IgiLoad\IgiLoadInit.sqf";
call compile preprocessFileLineNumbers "ShoterAnimation\init.sqf";

// set objects for aga 
_setObjects = execVM "scripts\aga_objects.sqf";

// set objects for sani 
_setObjects = execVM "scripts\sani_objects.sqf";

// KI is not allowed to shoot on teamkillers
if (hasInterface) then {
	player AddRating 99999999;
	player AddMPEventHandler ["MPRespawn", {player addRating 99999999;}];
}
