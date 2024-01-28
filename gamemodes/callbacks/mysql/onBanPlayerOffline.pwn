/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onBanPlayerOffline(playerid, const _bannedPlayer[MAX_PLAYER_NAME], const reason[64]);
public onBanPlayerOffline(playerid, const _bannedPlayer[MAX_PLAYER_NAME], const reason[64])
{
    new rows;
    cache_get_row_count(rows);
    if(rows)
    {
        new Uhrzeit[16], Datum[16], query[256];
        gettime(Hour, Minute, Second);
        getdate(Year, Month, Day);
        format(Uhrzeit,sizeof(Uhrzeit),"%02d:%02d:%02d",Hour,Minute,Second);
        format(Datum,sizeof(Datum),"%d/%02d/%02d",Day,Month,Year);
        mysql_format(sqlHandle, query, sizeof(query), "INSERT INTO `accbans` (`Name`, `Teammitglied`, `Bangrund`, `Uhrzeit`, `Datum`) VALUES ('%e', '%e', '%s', '%s', '%s')", _bannedPlayer, SpielerInfo[playerid][sName] , reason, Uhrzeit, Datum);
        mysql_tquery(sqlHandle, query);
        format(query,sizeof(query),"Der Account '%s' wurde von %s %s Offline gebannt. Grund: %s",_bannedPlayer,AdminName(playerid),SpielerInfo[playerid][sName],reason);
        SendClientMessageToAll(COLOR_KICK,query);
    }
    else
    {
        SendClientMessage(playerid,COLOR_SORRY,"Der Account-Name wurde in der Datenbank nicht gefunden.");
    }
    return 1;
}