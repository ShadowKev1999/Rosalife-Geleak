/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onLoadDrogen();
public onLoadDrogen()
{
    new rows, fc;
    cache_get_row_count(rows);
    if(rows)
    {
        new string[256];
        for(new i = 0; i < rows; i++)
        {
            cache_get_value_name_int(i, "ID", fc);
            cache_get_value_name(i, "Besitzer",DrogenInfo[fc][dBesitzer]);
            cache_get_value_name_float(i, "PosX",DrogenInfo[fc][dPos_X]);
            cache_get_value_name_float(i, "PosY",DrogenInfo[fc][dPos_Y]);  
            cache_get_value_name_float(i, "PosZ",DrogenInfo[fc][dPos_Z]);  
            cache_get_value_name_int(i, "Reife",DrogenInfo[fc][dReife]); 
            DrogenInfo[fc][dObject] = CreateObject(19473, DrogenInfo[fc][dPos_X], DrogenInfo[fc][dPos_Y], DrogenInfo[fc][dPos_Z]-1, 0.0, 0.0, 0.0);
            format(string, sizeof(string), "Drogenpflanze von {FF0000}%s{FFFFFF}\nReife: {FF0000}%d{FFFFFF} Prozent",DrogenInfo[fc][dBesitzer],DrogenInfo[fc][dReife]);
            DrogenInfo[fc][dText] = Create3DTextLabel(string, COLOR_WHITE, DrogenInfo[fc][dPos_X], DrogenInfo[fc][dPos_Y], DrogenInfo[fc][dPos_Z], 5.0, 0, false);
            DrogenInfo[fc][dErstellt] = true;
        }
    }
    printf(" Es wurde(n) %d Drogenpflanzen erfolgreich geladen und erstellt.", rows);
    return 1;
}