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
                    class squadhc_HelmetCamDisplayLeft
                    {
                        componentType = "CustomDisplayComponent";
                        resource = "RscCustomInfoHelmetCamLeft";
                    };
                };
            };
            class VehicleSystemsDisplayManagerComponentRight: DefaultVehicleSystemsDisplayManagerRight
            {
                class Components : Components
                {
                    class squadhc_HelmetCamDisplayRight
                    {
                        componentType = "CustomDisplayComponent";
                        resource = "RscCustomInfoHelmetCamRight";
                    };
                };
            };
        };
    };
};