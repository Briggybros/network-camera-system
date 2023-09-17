params ["_side"];

// Get camera
private _cameraObj = localNamespace getVariable (format ["squadhc_%1_cameraObj", _side]);
private _currentSelected = _cameraObj getVariable "squadhc_unit";

// Find the next unit in the squad
private _nextUnit = [_currentSelected] call squadhc_fnc_getNextUnitInGroup;

// Set the headcam to the next unit
[_cameraObj, _nextUnit] call squadhc_fnc_assignCamera;