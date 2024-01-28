/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onLoadFirmaLager();
public onLoadFirmaLager()
{
    new rows, ts;
    cache_get_row_count(rows);
    if(rows)
    {
        new Text[224];
        for(new i = 0; i < rows; i++)
        {
            cache_get_value_name_int(i, "firmenlid", ts);
            cache_get_value_name(i, "firmenname",FirmaLagerInfo[ts][firmenname]);
            cache_get_value_name_int(i, "firmenid",FirmaLagerInfo[ts][firmid]);  
            cache_get_value_name_float(i, "posx",FirmaLagerInfo[ts][flposx]);  
            cache_get_value_name_float(i, "posy",FirmaLagerInfo[ts][flposy]);  
            cache_get_value_name_float(i, "posz",FirmaLagerInfo[ts][flposz]);

            format(Text, sizeof(Text),"Lager 'ID: {FF0000}%d{FFFFFF}'\nBesitzer: {FF0000}%s",
            ts, FirmaLagerInfo[ts][firmenname]);
            FirmaLagerInfo[ts][flLabel] = Create3DTextLabel(Text, COLOR_WHITE, FirmaLagerInfo[ts][flposx], FirmaLagerInfo[ts][flposy], FirmaLagerInfo[ts][flposz], 10.0, 0);
            FirmaLagerInfo[ts][flPickup] = CreatePickup(1272,1,FirmaLagerInfo[ts][flposx],FirmaLagerInfo[ts][flposy],FirmaLagerInfo[ts][flposz]);
        }
    }
    printf(" Es wurden %d Firmen-Lager erfolgreich geladen.", rows);
    return 1;
}