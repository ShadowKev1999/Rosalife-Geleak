/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onPlayerSellGroupHouse(playerid);
public onPlayerSellGroupHouse(playerid)
{
    new rows, query2[128], _name[MAX_PLAYER_NAME];
    cache_get_row_count(rows);
    if(rows)
    {
        for(new i = 0; i < rows; i++)
        {
            cache_get_value_name(i, "Name", _name);
            mysql_format(sqlHandle, query2, sizeof(query2), "UPDATE `accounts` SET `Spawn` = '0', `Gruppenhaus` = '0' WHERE `Name`='%e'", _name);
            mysql_tquery(sqlHandle, query2);
        }
    }
    return 1;
}