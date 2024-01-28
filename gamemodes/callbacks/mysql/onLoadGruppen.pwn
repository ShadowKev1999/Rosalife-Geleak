/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onLoadGruppen();
public onLoadGruppen()
{
    new rows, ts;
    cache_get_row_count(rows);
    if(rows)
    {
        for(new i = 0; i < rows; i++)
        {
            cache_get_value_name_int(i, "ID",ts);
            cache_get_value_name(i, "Name",GruppenInfo[ts][gName]);
            cache_get_value_name(i, "Kennzeichen",GruppenInfo[ts][gSchild]);
            cache_get_value_name_int(i, "Kasse",GruppenInfo[ts][gKasse]);
            cache_get_value_name_int(i, "GehaltUpgrade",GruppenInfo[ts][gUpgrade][0]);
            GruppenInfo[ts][gErstellt] = true;
        }
    }
    printf(" Es wurden %d Gruppen erfolgreich geladen.", rows);
    return 1;
}