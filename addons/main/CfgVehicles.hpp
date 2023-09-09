class Components;
class DefaultVehicleSystemsDisplayManagerLeft;
class DefaultVehicleSystemsDisplayManagerRight;

class CfgVehicles
{
    class Man;
    class CAManBase : Man 
    {
        class Components: Components
        {
            class VehicleSystemsDisplayManagerComponentLeft: DefaultVehicleSystemsDisplayManagerLeft
            {
                class Components : Components
                {
                    class squadhc_HelmetCamDisplay
                    {
                        componentType = "CustomDisplayComponent";
                        // TODO: Support different cams on different sides?
                        resource = "RscCustomInfoHelmetCam";
                    };
                };
            };
            class VehicleSystemsDisplayManagerComponentRight: DefaultVehicleSystemsDisplayManagerRight
            {
                class Components : Components
                {
                    class squadhc_HelmetCamDisplay
                    {
                        componentType = "CustomDisplayComponent";
                        // TODO: Support different cams on different sides?
                        resource = "RscCustomInfoHelmetCam";
                    };
                };
            };
        };
    };
};