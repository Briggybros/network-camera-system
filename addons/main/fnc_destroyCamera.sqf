params ["_cameraObj"];

private _camera = _cameraObj getVariable "squadhc_camera";
_camera cameraEffect ["TERMINATE", "BACK"];
camDestroy _camera;
deleteVehicle _cameraObj;
