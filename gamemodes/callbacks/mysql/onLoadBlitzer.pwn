/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onLoadBlitzer();
public onLoadBlitzer()
{
    new rows, fc, str[128];
    cache_get_row_count(rows);
    if(rows)
    {
        for(new i = 0; i < rows; i++)
        {
			cache_get_value_name_int(i, "ID", fc);
			cache_get_value_name_int(i, "Geschwindigkeit",Blitzer[fc][Geschwindigkeit]);
			cache_get_value_name_int(i, "Ort",Blitzer[fc][BlitzerOrt]);
			cache_get_value_name_float(i, "PosX",Blitzer[fc][oPosX]);
			cache_get_value_name_float(i, "PosY",Blitzer[fc][oPosY]);
			cache_get_value_name_float(i, "PosZ",Blitzer[fc][oPosZ]);

			Blitzer[fc][Erstellt] = true;
			Blitzer[fc][ID] = CreateDynamicObject(18880,Blitzer[fc][oPosX],Blitzer[fc][oPosY],Blitzer[fc][oPosZ]-2.0,0.0,0.0,10);
			format(str,sizeof(str),"Blitzer {FF0000}%d{FFFFFF}\nRichtgeschwindigkeit: {FF0000}%d{FFFFFF}Km/h",fc,Blitzer[fc][Geschwindigkeit]);
			BlitzerLabel[fc] = CreateDynamic3DTextLabel(str,COLOR_WHITE,Blitzer[fc][oPosX],Blitzer[fc][oPosY],Blitzer[fc][oPosZ],10.0,INVALID_PLAYER_ID,INVALID_VEHICLE_ID,1,0);
		}
	}
    printf("Es wurden %d Blitzer erfolgreich geladen.", rows);
    return 1;
}