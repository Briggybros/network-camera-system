params ["_unit", "_side"];

// Create an empty vehicle object -- we can't set variables on the camera itself just cus
private _cameraObj = "Helper_Base_F" createVehicleLocal [0,0,0];

// Create the camera entity
private _camera = "camera" camCreate (position _unit);
_cameraObj setVariable ["squadhc_camera", _camera, false];

// Render the camera view to specified r2t
private _r2tName = format ["squadhc_%1_headCam", _side];
_cameraObj setVariable ["squadhc_r2t", _r2tName];
_camera cameraEffect ["internal", "BACK", _r2tName];

// TODO: Make CBA configurable
_camera camSetFov 1;

// Set the side for this camera
_cameraObj setVariable ["squadhc_side", _side, false];

// Setup the headcam on the player
[_cameraObj, _unit] call squadhc_fnc_assignCamera;

_cameraObj;