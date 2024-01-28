/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onHitmanContractSucces(playerid, killerid);
public onHitmanContractSucces(playerid, killerid)
{
    new rows;
    cache_get_row_count(rows);
    if(rows)
    {
        new str[128], Auftrag[24], Preis;
        cache_get_value_name_int(0, "Preis", Preis);
        cache_get_value_name(0, "Name", Auftrag);
        format(str, sizeof(str), "%s %s hat den Auftrag von %s erfolgreich ausgeführt.", RangName(killerid), SpielerInfo[killerid][sName], Auftrag);
        foreach(new i : Player)
		{
		    if(SpielerInfo[i][sFraktion] != 19)continue;
		    SendClientMessage(i,COLOR_INFO,str);
		}
        new Geld = Preis/2;
		FrakInfo[19][fiFrakKasse] += Geld;
		GivePlayerMoneyEx(killerid,Geld);
		mysql_format(sqlHandle, str, sizeof(str), "DELETE FROM `contracts` WHERE `Name` = '%e' ", Auftrag);
		mysql_tquery(sqlHandle, str);
    }
    return 1;
}