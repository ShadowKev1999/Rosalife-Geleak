/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onPlayerBuyGroupHouse(playerid);
public onPlayerBuyGroupHouse(playerid)
{
	new rows, _name[MAX_PLAYER_NAME];
	cache_get_row_count(rows);
	if(rows)
	{
		new query2[128];
		for(new i = 0; i < rows; i++)
		{
			cache_get_value_name(i, "Name", _name);
			mysql_format(sqlHandle, query2, sizeof(query2), "UPDATE `accounts` SET `Gruppenhaus`='%d' WHERE `Name`='%e'", SpielerInfo[playerid][sGHaus], _name);
			mysql_tquery(sqlHandle, query2);
		}
	}
	return 1;
}