
#include "script_component.hpp"

class CfgPatches {
	class ADDON {
		name = CSTRING(component);
		author = "117Briggy";
		url = "https://github.com/Briggybros/squad-helmet-cams";
		requiredVersion = 2; 
		requiredAddons[] = {
			"cba_main",
			"A3_Data_F",
            "A3_Functions_F",
            "A3_UiFonts_F"
		};
		units[] = {};
		weapons[] = {};
		VERSION_CONFIG;
	};
};

#include "CfgScriptPaths.hpp"
#include "RscCustomInfoHelmetCam.hpp"
#include "CfgVehicles.hpp"
#include "CfgFunctions.hpp"
#include "CfgEventhandlers.hpp"
