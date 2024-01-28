/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onLoadHauser();
public onLoadHauser()
{
    new rows, hs;
    cache_get_row_count(rows);
    if(rows)
    {
        new Text[224];
        for(new i = 0; i < rows; i++)
        {
            cache_get_value_name_int(i, "ID", hs);
            cache_get_value_name(i, "Besitzer",HausInfo[hs][hsBesitzer]);
            cache_get_value_name_int(i, "Preis",HausInfo[hs][hsPreis]);  
            cache_get_value_name_int(i, "Ort",HausInfo[hs][hsOrt]);  
            cache_get_value_name_int(i, "Typ",HausInfo[hs][hsTyp]);  
            cache_get_value_name_int(i, "Interior",HausInfo[hs][hsInterior]);  
            cache_get_value_name_int(i, "Locked",HausInfo[hs][hsLocked]);  
            cache_get_value_name_int(i, "Mietbar",HausInfo[hs][hsMietbar]); 
            cache_get_value_name_int(i, "Miete",HausInfo[hs][hsMiete]);  
            cache_get_value_name_int(i, "Health",HausInfo[hs][hsHealth]);  
            cache_get_value_name_float(i, "Pos_X",HausInfo[hs][hsPos_X]);  
            cache_get_value_name_float(i, "Pos_Y",HausInfo[hs][hsPos_Y]); 
            cache_get_value_name_float(i, "Pos_Z",HausInfo[hs][hsPos_Z]);  
            cache_get_value_name_float(i, "IPos_X",HausInfo[hs][hsIPos_X]); 
            cache_get_value_name_float(i, "IPos_Y",HausInfo[hs][hsIPos_Y]);  
            cache_get_value_name_float(i, "IPos_Z",HausInfo[hs][hsIPos_Z]);
            if(strlen(HausInfo[hs][hsBesitzer]) < 2)
            {
                if(HausInfo[hs][hsTyp] == 1)//Appartment
                {
                    format(Text, sizeof(Text), "Appartment 'ID: {FF0000}%d{FFFFFF}' zu verkaufen!\nBesitzer: {FF0000}Staat{FFFFFF}\nPreis: {FF0000}%d${FFFFFF}\nBenutze '{FF0000}/kaufen{FFFFFF}'\num dir das Appartment zu kaufen", hs, HausInfo[hs][hsPreis]);
                }
                else if(HausInfo[hs][hsTyp] == 2)//Haus
                {
                    format(Text, sizeof(Text), "Haus 'ID: {FF0000}%d{FFFFFF}' zu verkaufen!\nBesitzer: {FF0000}Staat{FFFFFF}\nPreis: {FF0000}%d${FFFFFF}\nBenutze '{FF0000}/kaufen{FFFFFF}'\num dir das Haus zu kaufen", hs, HausInfo[hs][hsPreis]);
                }
                else if(HausInfo[hs][hsTyp] == 3)//Villa
                {
                    format(Text, sizeof(Text), "Villa 'ID: {FF0000}%d{FFFFFF}' zu verkaufen!\nBesitzer: {FF0000}Staat{FFFFFF}\nPreis: {FF0000}%d${FFFFFF}\nBenutze '{FF0000}/kaufen{FFFFFF}'\num dir die Villa zu kaufen", hs, HausInfo[hs][hsPreis]);
                }
                HausInfo[hs][hsPickup] = CreatePickup(1273, 23, HausInfo[hs][hsPos_X], HausInfo[hs][hsPos_Y], HausInfo[hs][hsPos_Z], -1);
            }
            else
            {
                if(HausInfo[hs][hsMietbar] == 0)
                {
                    if(HausInfo[hs][hsTyp] == 1)//Appartment
                    {
                        format(Text, sizeof(Text), "Appartment 'ID: {FF0000}%d{FFFFFF}'\nBesitzer: {FF0000}%s", hs, HausInfo[hs][hsBesitzer]);
                    }
                    else if(HausInfo[hs][hsTyp] == 2)//Haus
                    {
                        format(Text, sizeof(Text), "Haus 'ID: {FF0000}%d{FFFFFF}'\nBesitzer: {FF0000}%s", hs, HausInfo[hs][hsBesitzer]);
                    }
                    else if(HausInfo[hs][hsTyp] == 3)//Villa
                    {
                        format(Text, sizeof(Text), "Villa 'ID: {FF0000}%d{FFFFFF}'\nBesitzer: {FF0000}%s", hs, HausInfo[hs][hsBesitzer]);
                    }
                }
                else
                {
                    if(HausInfo[hs][hsTyp] == 1)//Appartment
                    {
                        format(Text, sizeof(Text), "Appartment 'ID: {FF0000}%d{FFFFFF}'\nBesitzer: {FF0000}%s{FFFFFF}\nMiete: {FF0000}%d${FFFFFF}\nBenutze '{FF0000}/mieten{FFFFFF}' um\ndich hier einzumieten", hs, HausInfo[hs][hsBesitzer], HausInfo[hs][hsMiete]);
                    }
                    else if(HausInfo[hs][hsTyp] == 2)//Haus
                    {
                        format(Text, sizeof(Text), "Haus 'ID: {FF0000}%d{FFFFFF}'\nBesitzer: {FF0000}%s{FFFFFF}\nMiete:	{FF0000}%d${FFFFFF}\nBenutze '{FF0000}/mieten{FFFFFF}' um\ndich hier einzumieten", hs, HausInfo[hs][hsBesitzer], HausInfo[hs][hsMiete]);
                    }
                    else if(HausInfo[hs][hsTyp] == 3)//Villa
                    {
                        format(Text, sizeof(Text), "Villa 'ID: {FF0000}%d{FFFFFF}'\nBesitzer: {FF0000}%s{FFFFFF}\nMiete: {FF0000}%d${FFFFFF}\nBenutze '{FF0000}/mieten{FFFFFF}' um\ndich hier einzumieten", hs, HausInfo[hs][hsBesitzer], HausInfo[hs][hsMiete]);
                    }
                }
                HausInfo[hs][hsPickup] = CreatePickup(1272, 23, HausInfo[hs][hsPos_X], HausInfo[hs][hsPos_Y], HausInfo[hs][hsPos_Z], -1);
            }
            HausInfo[hs][hsText] = Create3DTextLabel(Text, COLOR_WHITE, HausInfo[hs][hsPos_X], HausInfo[hs][hsPos_Y], HausInfo[hs][hsPos_Z], 10.0, 0);
            HausInfo[hs][hsErstellt] = true;
        }
    }
    printf(" Es wurden %d Haeuser erfolgreich geladen und erstellt.", rows);
    return 1;
}