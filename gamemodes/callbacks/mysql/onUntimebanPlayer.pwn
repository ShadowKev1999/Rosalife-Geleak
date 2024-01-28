/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onUntimebanPlayer(playerid, const _bannedPlayer[MAX_PLAYER_NAME], const _reason[64]);
public onUntimebanPlayer(playerid, const _bannedPlayer[MAX_PLAYER_NAME], const _reason[64])
{
    new rows;
    cache_get_row_count(rows);
    if(rows)
    {
        new query[128];
        mysql_format(sqlHandle, query, sizeof(query), "DELETE FROM `timebans` WHERE `Name` = '%e'", _bannedPlayer);
        mysql_tquery(sqlHandle, query);

        format(query,sizeof(query),"Der auf Zeit gebannte Account '%s' wurde von %s %s entbannt. Grund: %s",_bannedPlayer,AdminName(playerid),SpielerInfo[playerid][sName],_reason);
        SendAdminMessage(COLOR_SUPER,query);
        LogUntban(query);
    }
    else
    {
        SendClientMessage(playerid,COLOR_SORRY,"Der Account-Name wurde in der Datenbank nicht gefunden.");
    }
    return 1;
}