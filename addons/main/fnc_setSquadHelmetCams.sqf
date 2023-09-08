private _headCam = "camera" camCreate (position player);
_headCam hideObjectGlobal true;
_headCam attachTo [player, [0.18,-0.15,0.17], "head",true];
_headCam cameraEffect ["internal", "BACK", "headCam"];

disableSerialization;
private _headCamUI = uiNamespace getVariable "squadhc_HeadCamPanel";
private _ctrl = _headCamUI displayCtrl 104;
_ctrl ctrlSetText (name player);