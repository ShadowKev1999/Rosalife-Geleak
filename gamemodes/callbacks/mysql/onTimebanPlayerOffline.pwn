/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onTimebanPlayerOffline(playerid, const _banPlayer[MAX_PLAYER_NAME], _minutes, const _reason[64]);
public onTimebanPlayerOffline(playerid, const _banPlayer[MAX_PLAYER_NAME], _minutes, const _reason[64])
{
    new rows;
    cache_get_row_count(rows);
    if(rows)
    {
        new query[128], timestamp, Uhrzeit[16], Datum[16];
        format(query, sizeof(query), "%s %s hat den %s für %d Minuten Offline gebannt. Grund: %s",AdminName(playerid),SpielerInfo[playerid][sName],_banPlayer,_minutes,_reason);
        SendClientMessageToAll(COLOR_KICK,query);
        timestamp = gettime();
        timestamp += _minutes * 60;
        gettime(Hour, Minute, Second);
        getdate(Year, Month, Day);
        format(Uhrzeit,sizeof(Uhrzeit),"%02d:%02d:%02d",Hour,Minute,Second);
        format(Datum,sizeof(Datum),"%d/%02d/%02d",Day,Month,Year);
        mysql_format(sqlHandle, query, sizeof(query), "INSERT INTO `timebans` (`Name`, `Teammitglied`, `Bangrund`, `Uhrzeit`, `Datum`, `serv_Data`) VALUES ('%e', '%e', '%s', '%s', '%s', '%i')", _banPlayer, SpielerInfo[playerid][sName] , _reason , Uhrzeit, Datum, timestamp);
        mysql_tquery(sqlHandle, query);
    }
    else
    {
        SendClientMessage(playerid,COLOR_SORRY,"Der Account-Name wurde in der Datenbank nicht gefunden.");
    }
    return 1;
}