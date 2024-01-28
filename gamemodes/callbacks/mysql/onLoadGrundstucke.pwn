/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onLoadGrundstucke();
public onLoadGrundstucke()
{
    new rows, ts;
    cache_get_row_count(rows);
    if(rows)
    {
        new Text[224];
        for(new i = 0; i < rows; i++)
        {
            cache_get_value_name_int(i, "firmengrid", ts);
            cache_get_value_name_int(i, "create",GFirmaInfo[ts][firmengrcreate]);
            cache_get_value_name(i, "firmenname",GFirmaInfo[ts][firmenname]);
            cache_get_value_name_int(i, "firmenid",GFirmaInfo[ts][firmenid]); 
            cache_get_value_name_float(i, "posx",GFirmaInfo[ts][fgposx]);  
            cache_get_value_name_float(i, "posy",GFirmaInfo[ts][fgposy]);  
            cache_get_value_name_float(i, "posx2",GFirmaInfo[ts][fgposx2]); 
            cache_get_value_name_float(i, "posy2",GFirmaInfo[ts][fgposy2]); 
            cache_get_value_name_float(i, "iposx",GFirmaInfo[ts][iposx]);  
            cache_get_value_name_float(i, "iposy",GFirmaInfo[ts][iposy]);
            cache_get_value_name_float(i, "iposz",GFirmaInfo[ts][iposz]); 
            cache_get_value_name_int(i, "preis",GFirmaInfo[ts][fgrpreis]);  
            cache_get_value_name_int(i, "igekauft",GFirmaInfo[ts][igekauft]);

            if(GFirmaInfo[ts][igekauft] == 0)
            {
                format(Text, sizeof(Text), "Grundstück 'ID: {FF0000}%d{FFFFFF}' zu verkaufen!\nBesitzer: {FF0000}Staat{FFFFFF}\nPreis: {FF0000}%d${FFFFFF}\nBenutze '{FF0000}/kaufen{FFFFFF}'\num dir das Grundstück zu kaufen",
                ts, GFirmaInfo[ts][fgrpreis]);
                GFirmaInfo[ts][iPickup] = CreatePickup(1273,1,GFirmaInfo[ts][iposx],GFirmaInfo[ts][iposy],GFirmaInfo[ts][iposz]);
            }
            if(GFirmaInfo[ts][igekauft] == 1)
            {
                format(Text, sizeof(Text),"Grundstück 'ID: {FF0000}%d{FFFFFF}'\nBesitzer: {FF0000}%s",
                ts, GFirmaInfo[ts][firmenname]);
                GFirmaInfo[ts][iPickup] = CreatePickup(1272,1,GFirmaInfo[ts][iposx],GFirmaInfo[ts][iposy],GFirmaInfo[ts][iposz]);
            }
            GFirmaInfo[ts][iLabel] = Create3DTextLabel(Text, COLOR_WHITE, GFirmaInfo[ts][iposx], GFirmaInfo[ts][iposy], GFirmaInfo[ts][iposz], 10.0, 0);
        }
    }
    printf(" Es wurden %d Firmen-Grundstuecke erfolgreich geladen.", rows);
    return 1;
}
	