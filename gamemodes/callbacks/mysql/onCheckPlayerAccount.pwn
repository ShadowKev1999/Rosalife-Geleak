/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onCheckPlayerAccount(playerid);
public onCheckPlayerAccount(playerid)
{
    new rows, query[256];
    cache_get_row_count(rows);
    if(rows)
    {
        mysql_format(sqlHandle, query, sizeof(query), "SELECT `Name` FROM `accbans` WHERE `Name` = '%e'", SpielerInfo[playerid][sName]);
		mysql_tquery(sqlHandle, query, "onCheckPlayerBanned", "i", playerid);
    }
    else
    {
        ShowRegisterTextdraw(playerid);
    }
    return 1;
}