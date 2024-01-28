/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onLoadGaragen();
public onLoadGaragen()
{
    new rows, hs;
    cache_get_row_count(rows);
    if(rows)
    {
        new Text[224];
        for(new i = 0; i < rows; i++)
        {
            cache_get_value_name_int(i, "ID", hs);
            cache_get_value_name(i, "Besitzer",GaragenInfo[hs][giBesitzer]);
            cache_get_value_name_int(i, "Preis",GaragenInfo[hs][giPreis]);
            cache_get_value_name_int(i, "Ort",GaragenInfo[hs][giOrt]);  
            cache_get_value_name_int(i, "Locked",GaragenInfo[hs][giLocked]); 
            cache_get_value_name_int(i, "Mietbar",GaragenInfo[hs][giMietbar]); 
            cache_get_value_name_int(i, "Miete",GaragenInfo[hs][giMiete]);
            cache_get_value_name_float(i, "Pos_X",GaragenInfo[hs][giPos_X]);  
            cache_get_value_name_float(i, "Pos_Y",GaragenInfo[hs][giPos_Y]);
            cache_get_value_name_float(i, "Pos_Z",GaragenInfo[hs][giPos_Z]); 
            cache_get_value_name_float(i, "OPos_X",GaragenInfo[hs][giOPos_X]); 
            cache_get_value_name_float(i, "OPos_Y",GaragenInfo[hs][giOPos_Y]); 
            cache_get_value_name_float(i, "OPos_Z",GaragenInfo[hs][giOPos_Z]);
            cache_get_value_name_float(i, "OPos_A",GaragenInfo[hs][giOPos_A]);
            cache_get_value_name_int(i, "Fahrzeug1",GaragenInfo[hs][giFahrzeug][0]);
            cache_get_value_name_int(i, "Fahrzeug2",GaragenInfo[hs][giFahrzeug][1]);
            cache_get_value_name_int(i, "Fahrzeug3",GaragenInfo[hs][giFahrzeug][2]); 
            cache_get_value_name_int(i, "Fahrzeug4",GaragenInfo[hs][giFahrzeug][3]); 
            cache_get_value_name_int(i, "Fahrzeug5",GaragenInfo[hs][giFahrzeug][4]); 
            cache_get_value_name_int(i, "Fahrzeug6",GaragenInfo[hs][giFahrzeug][5]); 
            cache_get_value_name_int(i, "Fahrzeug7",GaragenInfo[hs][giFahrzeug][6]);
            cache_get_value_name_int(i, "Fahrzeug8",GaragenInfo[hs][giFahrzeug][7]); 
            cache_get_value_name_int(i, "Fahrzeug9",GaragenInfo[hs][giFahrzeug][8]);
            cache_get_value_name_int(i, "Fahrzeug10",GaragenInfo[hs][giFahrzeug][9]);

            if(strlen(GaragenInfo[hs][giBesitzer]) < 2)
            {
                format(Text, sizeof(Text), "Garage 'ID: {FF0000}%d{FFFFFF}' zu verkaufen!\nBesitzer: {FF0000}Staat{FFFFFF}\nPreis: {FF0000}%d${FFFFFF}\nBenutze '{FF0000}/kaufen{FFFFFF}'\num dir die Garage zu kaufen", hs, GaragenInfo[hs][giPreis]);
                GaragenInfo[hs][giPickup] = CreatePickup(1273, 23, GaragenInfo[hs][giPos_X], GaragenInfo[hs][giPos_Y], GaragenInfo[hs][giPos_Z], -1);
            }
            else
            {
                if(GaragenInfo[hs][giMietbar] == 0)
                {
                    format(Text, sizeof(Text), "Garage 'ID: {FF0000}%d{FFFFFF}'\nBesitzer: {FF0000}%s", hs, GaragenInfo[hs][giBesitzer]);
                }
                else
                {
                    format(Text, sizeof(Text), "Garage 'ID: {FF0000}%d{FFFFFF}'\nBesitzer: {FF0000}%s{FFFFFF}\nMiete:	{FF0000}%d${FFFFFF}\nBenutze '{FF0000}/mieten{FFFFFF}' um\ndich hier einzumieten", hs, GaragenInfo[hs][giBesitzer], GaragenInfo[hs][giMiete]);
                }
                GaragenInfo[hs][giPickup] = CreatePickup(1272, 23, GaragenInfo[hs][giPos_X], GaragenInfo[hs][giPos_Y], GaragenInfo[hs][giPos_Z], -1);
            }
            GaragenInfo[hs][giText] = Create3DTextLabel(Text, COLOR_WHITE, GaragenInfo[hs][giPos_X], GaragenInfo[hs][giPos_Y], GaragenInfo[hs][giPos_Z], 10.0, 0);
            GaragenInfo[hs][giErstellt] = true;
        }
    }
    printf("Es wurden %d Garagen erfolgreich geladen und erstellt.", rows);
    return 1;
}