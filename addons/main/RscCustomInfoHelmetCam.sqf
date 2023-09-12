#include "ids.hpp"

params ["_mode", "_params", "_class"];

private _display = _params select 0;
private _idd = ctrlIDD _display;

switch _mode do {
	case "onLoad": {
		switch _idd do {
			case LEFT_PANEL_IDD: {
				uiNamespace setVariable ["squadhc_left_HeadCamPanel", _display];
			};
			case RIGHT_PANEL_IDD: {
				uiNamespace setVariable ["squadhc_right_HeadCamPanel", _display];
			};
		};
	};
};
