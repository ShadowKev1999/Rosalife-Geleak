/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onPlayerSetHitmanContract(playerid, auftragid, Preis);
public onPlayerSetHitmanContract(playerid, auftragid, Preis)
{
    new rows;
    cache_get_row_count(rows);
    if(rows)
    {
        SendClientMessage(playerid,COLOR_SORRY,"Auf den Spieler wurde bereits ein Contract ausgesetzt.");
    }
    else
    {
		new query[256];
        SpielerInfo[auftragid][sContract] = 1;
	    GivePlayerMoneyEx(playerid,-Preis);
		mysql_format(sqlHandle, query, sizeof(query), "INSERT INTO `contracts` (`Name`, `Contract`, `Preis`) VALUES ('%e', '%s', '%d')", SpielerInfo[playerid][sName], SpielerInfo[auftragid][sName], Preis);
  		mysql_tquery(sqlHandle, query);
   		mysql_format(sqlHandle, query,sizeof(query),"UPDATE `accounts` SET `Contract`='1' WHERE `Name`='%s'",SpielerInfo[auftragid][sName]);
		mysql_tquery(sqlHandle, query);

		format(query,sizeof(query),"Du hast erfolgreich ein Contract in Höhe von %d$ auf den Spieler %s ausgesetzt.",Preis, SpielerInfo[auftragid][sName]);
		SendClientMessage(playerid,COLOR_SORRY,query);
		
		foreach(new i : Player)
		{
		    if(SpielerInfo[i][sFraktion] != 19)continue;
		    format(query,sizeof(query),"Spieler %s hat einen Contract in Höhe von %d$ auf den Spieler %s ausgesetzt.",SpielerInfo[playerid][sName], Preis, SpielerInfo[auftragid][sName]);
		    SendClientMessage(i,COLOR_INFO,query);
		}
    }
    return 1;
}