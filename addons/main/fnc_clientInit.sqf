// Create the cameras
private _left_cameraObj = [player, "left"] call squadhc_fnc_setupCamera;
private _right_cameraObj = [player, "right"] call squadhc_fnc_setupCamera;

// Store cameras in local namespace
localNamespace setVariable ["squadhc_left_cameraObj", _left_cameraObj];
localNamespace setVariable ["squadhc_right_cameraObj", _right_cameraObj];

// When the user changes mode on the left info panel
addUserActionEventHandler ["NextModeLeftVehicleDisplay", "Activate", {
	infoPanel "left" params ["_componentClass", "_componentType"];
	if (_componentClass isEqualTo "squadhc_HelmetCamDisplayLeft") then {
		["left"] call squadhc_fnc_cycleUnits;
	};
}];

// When the user changes mode on the right info panel
addUserActionEventHandler ["NextModeRightVehicleDisplay", "Activate", {
	infoPanel "right" params ["_componentClass", "_componentType"];
	if (_componentClass == "squadhc_HelmetCamDisplayRight") then {
		["right"] call squadhc_fnc_cycleUnits;
	};
}];