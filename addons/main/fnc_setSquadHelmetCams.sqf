disableSerialization;

with localNamespace do {
	// Start with the current player
	private _currentSelected = player;

	// Create the camera and render to p2p texture "squadhc_headCam"
	private _camera = "camera" camCreate (position player);
	_camera cameraEffect ["internal", "BACK", "squadhc_headCam"];

	// TODO: Make CBA configurable
	_camera camSetFov 1;

	// Get the UI ctrl that shows the cam's player name
	private _headCamUI = uiNamespace getVariable "squadhc_HeadCamPanel";
	private _camOwner_UICtrl = _headCamUI displayCtrl 104;

	// Fnc to set camera to a unit
	// params:
	// - _unit: the unit to attach the camera to
	// - _cam: the camera object to move
	// - _camOwner_UICtrl: A UI text field to set to the units name
	private _fnc_setHeadCam = {
		params ["_unit", "_cam", "_camOwner_UICtrl"];
		_cam attachTo [_unit, [0.18,-0.15,0.17], "head", true];
		_cam setVectorDir (eyeDirection _unit);
		_cam camCommit 0;

		_camOwner_UICtrl ctrlSetText (name _unit);
	};

	// Fnc to find the next unit in a squad
	// params:
	// - _currentUnit: the unit to find the next unit from
	private _fnc_findNextUnitInSquad = {
		params ["_currentUnit"];
		private _units = units _currentUnit;
		private _nextUnit = _units select 0;
		private _next = false;

		{
			if (_next) then {
				_nextUnit = _x;
				break;
			};

			if (_x == _currentUnit) then {
				_next = true;
			};
		} foreach _units;

		_nextUnit;
	};

	// Setup the headcam on the player
	[_currentSelected, _camera, _camOwner_UICtrl] call _fnc_setHeadCam;

	localNamespace setVariable ["squadhc_currentSelected", _currentSelected];
	localNamespace setVariable ["squadhc_camera", _camera];
	localNamespace setVariable ["squadhc_camOwner_UICtrl", _camOwner_UICtrl];
	localNamespace setVariable ["squadhc_fnc_setHeadCam", _fnc_setHeadCam];
	localNamespace setVariable ["squadhc_fnc_findNextUnitInSquad", _fnc_findNextUnitInSquad];
};

// When the user changes mode on the left info panel
addUserActionEventHandler ["NextModeLeftVehicleDisplay", "Activate", {
	infoPanel "left" params ["_componentClass", "_componentType"];
	if (_componentClass isEqualTo "squadhc_HelmetCamDisplay") then {
		
		with localNamespace do {
			private _currentSelected = localNamespace getVariable "squadhc_currentSelected";
			private _camera = localNamespace getVariable "squadhc_camera";
			private _camOwner_UICtrl = localNamespace getVariable "squadhc_camOwner_UICtrl";
			private _fnc_setHeadCam = localNamespace getVariable "squadhc_fnc_setHeadCam";
			private _fnc_findNextUnitInSquad = localNamespace getVariable "squadhc_fnc_findNextUnitInSquad";

			// Find the next unit in the squad
			private _nextUnit = [_currentSelected] call _fnc_findNextUnitInSquad;
			// Set the headcam to the next unit
			[_nextUnit, _camera, _camOwner_UICtrl] call _fnc_setHeadCam;
			// Update the current unit to the new one
			localNamespace setVariable ["squadhc_currentSelected", _nextUnit];
		};
	};
}];

// When the user changes mode on the right info panel
addUserActionEventHandler ["NextModeRightVehicleDisplay", "Activate", {
	infoPanel "right" params ["_componentClass", "_componentType"];
	if (_componentClass == "squadhc_HelmetCamDisplay") then {

		with localNamespace do {
			private _currentSelected = localNamespace getVariable "squadhc_currentSelected";
			private _camera = localNamespace getVariable "squadhc_camera";
			private _camOwner_UICtrl = localNamespace getVariable "squadhc_camOwner_UICtrl";
			private _fnc_setHeadCam = localNamespace getVariable "squadhc_fnc_setHeadCam";
			private _fnc_findNextUnitInSquad = localNamespace getVariable "squadhc_fnc_findNextUnitInSquad";

			// Find the next unit in the squad
			private _nextUnit = [_currentSelected] call _fnc_findNextUnitInSquad;	
			// Set the headcam to the next unit
			[_nextUnit, _camera, _camOwner_UICtrl] call _fnc_setHeadCam;
			// Update the current unit to the new one
			localNamespace setVariable ["squadhc_currentSelected", _nextUnit];
		};
	};
}];