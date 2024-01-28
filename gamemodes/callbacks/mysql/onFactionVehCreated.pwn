/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onFactionVehCreated(vehicleid);
public onFactionVehCreated(vehicleid)
{
    FahrzeugInfo[vehicleid][fDatabaseID] = cache_insert_id();
    return 1;
}