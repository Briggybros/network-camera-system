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
                    class TestDisplay
                    {
                        componentType = "CustomDisplayComponent";
                        resource = "RscCustomInfoHelmetCam";
                    };
                };
            };
            class VehicleSystemsDisplayManagerComponentRight: DefaultVehicleSystemsDisplayManagerRight
            {
                class Components : Components
                {
                    class TestDisplay
                    {
                        componentType = "CustomDisplayComponent";
                        resource = "RscCustomInfoHelmetCam";
                    };
                };
            };
        };
    };
};