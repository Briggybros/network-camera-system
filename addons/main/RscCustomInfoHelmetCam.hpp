class RscCustomInfoUAVFeed;
class RscIGUIText;
class RscPicture;

class RscCustomInfoHelmetCam : RscCustomInfoUAVFeed {
	idd = 599;
	scriptName = "RscCustomInfoHelmetCam";
	scriptPath = "squadhc";
	onLoad = "[""onLoad"",_this,""RscCustomInfoHelmetCam"",'squadhc'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')";
	onUnload = "[""onUnload"",_this,""RscCustomInfoHelmetCam"",'squadhc'] call 	(uinamespace getvariable 'BIS_fnc_initDisplay')";
	class controls
	{
		class Title: RscIGUIText
		{
			colorBackground[] = {"(profilenamespace getvariable ['IGUI_BCG_RGB_R',0])","(profilenamespace getvariable ['IGUI_BCG_RGB_G',1])","(profilenamespace getvariable ['IGUI_BCG_RGB_B',1])","(profilenamespace getvariable ['IGUI_BCG_RGB_A',0.8])"};
			IDC = 103;
			text = "CAM";
			x = "0 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y = "0 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			h = "1 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w = "(profilenamespace getvariable [""IGUI_GRID_CUSTOMINFORIGHT_W"",		(10 * 			(			((safezoneW / safezoneH) min 1.2) / 40))])";
			sizeEx = "0.8 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};
		class Source: RscIGUIText
		{
			IDC = 104;
			text = "";
			style = 2;
			x = "0.2 * 		(profilenamespace getvariable [""IGUI_GRID_CUSTOMINFORIGHT_W"",		(10 * 			(			((safezoneW / safezoneH) min 1.2) / 40))])";
			y = 0;
			h = "1 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w = "0.3 * 		(profilenamespace getvariable [""IGUI_GRID_CUSTOMINFORIGHT_W"",		(10 * 			(			((safezoneW / safezoneH) min 1.2) / 40))])";
			sizeEx = "0.8 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};
		class CamMode: RscIGUIText
		{
			IDC = 105;
			text = "MODE";
			style = 1;
			x = "0.6 * 		(profilenamespace getvariable [""IGUI_GRID_CUSTOMINFORIGHT_W"",		(10 * 			(			((safezoneW / safezoneH) min 1.2) / 40))])";
			y = 0;
			w = "0.4 * 		(profilenamespace getvariable [""IGUI_GRID_CUSTOMINFORIGHT_W"",		(10 * 			(			((safezoneW / safezoneH) min 1.2) / 40))])";
			h = "1 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			sizeEx = "0.8 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};
		class CameraPictureSingleView: RscPicture
		{
			idc = 102;
			text = "#(argb,512,512,1)r2t(squadhc_headCam,1.0)";
			x = "0.125 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			y = "1.125 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
			w = "(profilenamespace getvariable [""IGUI_GRID_CUSTOMINFORIGHT_W"",		(10 * 			(			((safezoneW / safezoneH) min 1.2) / 40))]) - 0.25 * 			(			((safezoneW / safezoneH) min 1.2) / 40)";
			h = "(profilenamespace getvariable [""IGUI_GRID_CUSTOMINFORIGHT_H"",		(10 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25))]) - 1.25 * 			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25)";
		};
	};
};
