params ["_cameraObj"];

private _unit = _cameraObj getVariable "squadhc_unit";
private _side = _cameraObj getVariable "squadhc_side";

systemChat format ["Reiniting %1 camera on %2", _side, name _unit];

[_cameraObj] call squadhc_fnc_destroyCamera;
private _newCameraObj = [_unit, _side] call squadhc_fnc_setupCamera;

localNamespace setVariable [format ["squadhc_%1_cameraObj", _side], _newCameraObj];