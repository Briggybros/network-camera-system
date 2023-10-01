#include "ids.hpp"

// Fnc to set camera to a unit
// params:
// - _cameraObj: the wrapped camera object to assign
// - _unit: the unit to attach the camera to

params ["_cameraObj", "_unit"];

private _camera = _cameraObj getVariable "squadhc_camera";

// Remove this camera from the previous unit
private _previousUnit = _cameraObj getVariable ["squadhc_unit", false];
if (_previousUnit != false) then {
	private _unitCameras = _previousUnit getVariable ["squadhc_cameras", []];
	_unitCameras = _unitCameras - [_cameraObj];
	_previousUnit setVariable ["squadhc_cameras", _unitCameras];
};

// Move and attach camera to the new unit
_camera attachTo [_unit, [0.18,-0.15,0.17], "head", true];
_camera setVectorDir (eyeDirection _unit);
private _r2tName = _cameraObj getVariable "squadhc_r2t";
_camera cameraEffect ["internal", "BACK", _r2tName];
_camera camCommit 0;

// Set the followed unit on the camera obj
_cameraObj setVariable ["squadhc_unit", _unit, false];

// Add the camera to the units cameras
private _unitCameras = _unit getVariable ["squadhc_cameras", []];
_unitCameras pushBackUnique _cameraObj;
_unit setVariable ["squadhc_cameras", _unitCameras];

// Update the UI with the new units name
private _panelSide = _cameraObj getVariable "squadhc_side";
private _panelUI = uiNamespace getVariable (format ["squadhc_%1_HeadCamPanel", _panelSide]);
private _unitname_ui = _panelUI displayCtrl NAME_CTRL_IDC;
_unitname_ui ctrlSetText (name _unit);
