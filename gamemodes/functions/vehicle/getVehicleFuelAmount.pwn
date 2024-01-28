/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

getVehicleFuelAmount(modelId)
{
    for(new i = 0; i < 212; i++)
    {
        if(VehicleData[i][vehModelID] == modelId) return VehicleData[i][vehLiter];
    }
    return 0;
}