/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onCheckPlayerBanned(playerid);
public onCheckPlayerBanned(playerid)
{
    new rows, query[256];
    cache_get_row_count(rows);
    if(rows)
    {
		new teamler[MAX_PLAYER_NAME], Bgrund[64], UhrZeit[16], DaTum[16], bannedgstring[400];
        DeletePVar(playerid,"LoggedIn");
        cache_get_value_name(0, "Teammitglied", teamler);
		cache_get_value_name(0, "Bangrund", Bgrund);
		cache_get_value_name(0, "Uhrzeit", UhrZeit);
		cache_get_value_name(0, "Datum", DaTum);
		format(bannedgstring,sizeof(bannedgstring),"{FFFFFF}Dein Account wurde gesperrt!\nGesperrt von: %s\nGrundangabe: %s\nUhrzeit: %s\nDatum: %s\n\nWenn du glaubst zu Unrecht gebannt wurden zu sein, kannst du mit {007DFF}'F8'{FFFFFF} einen Screenshot\nvon diesem Dialog machen, und dich im Forum melden. Erstelle einen Entbanantrag indem du die Vorlage dort ausfüllst.",teamler,Bgrund,UhrZeit,DaTum);
		ShowPlayerDialog(playerid,9992,DIALOG_STYLE_MSGBOX,"{007DFF}"SERV_NAME" - Benutzerverwaltung",bannedgstring,"Schliessen","");
		KickPlayer(playerid,"");
        return 1;
    }
    mysql_format(sqlHandle, query, sizeof(query), "SELECT `Name` FROM `timebans` WHERE `Name` = '%e'", SpielerInfo[playerid][sName]);
    mysql_tquery(sqlHandle, query, "onCheckPlayerTimebanned", "i", playerid);
    return 1;
}