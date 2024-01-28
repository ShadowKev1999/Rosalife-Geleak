/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/
forward onUnbanPlayer(playerid, const _bannedPlayer[MAX_PLAYER_NAME], const _reason[64]);
public onUnbanPlayer(playerid, const _bannedPlayer[MAX_PLAYER_NAME], const _reason[64])
{
    new rows, query[128];
    cache_get_row_count(rows);
    if(rows)
    {
        mysql_format(sqlHandle, query, sizeof(query), "DELETE FROM `accbans` WHERE `Name` = '%e'", _bannedPlayer);
        mysql_tquery(sqlHandle, query);
		format(query,sizeof(query),"Der Account '%s' wurde von %s %s entbannt. Grund: %s",_bannedPlayer,AdminName(playerid),SpielerInfo[playerid][sName],_reason);
		SendAdminMessage(COLOR_SUPER,query);
		LogUnban(query);
    }
    else
    {
        SendClientMessage(playerid,COLOR_SORRY,"Der Account-Name wurde in der Datenbank nicht gefunden.");
    }
    return 1;
}