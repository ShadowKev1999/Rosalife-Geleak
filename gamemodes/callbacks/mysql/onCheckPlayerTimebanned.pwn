/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onCheckPlayerTimebanned(playerid);
public onCheckPlayerTimebanned(playerid)
{
	new rows;
	cache_get_row_count(rows);
	if(rows)
	{
		new unban, query[256];
		DeletePVar(playerid,"LoggedIn");
		cache_get_value_name_int(0, "serv_Data", unban);
		if(gettime() < unban)
		{
			new differenz = unban - gettime();
			new minuten = differenz / 60;
			new bannedgstring[370], Teamler[MAX_PLAYER_NAME], Bgrund[64], UhrZeit[16], DaTum[16];

			cache_get_value_name(0, "Teammitglied", Teamler);
			cache_get_value_name(0, "Bangrund", Bgrund);
			cache_get_value_name(0, "Uhrzeit", UhrZeit);
			cache_get_value_name(0, "Datum", DaTum);

			format(bannedgstring,sizeof(bannedgstring),"{FFFFFF}Dein Account wurde auf Zeit gesperrt!\nGesperrt von: %s\nGrundangabe: %s\nUhrzeit: %s \nDatum: %s\nNoch gebannt: %i Minuten\n\nWenn du glaubst zu Unrecht gebannt wurden zu sein, kannst du mit {007DFF}'F8'{FFFFFF} einen Screenshot\nvon diesem Dialog machen, und dich im Forum melden. Erstelle einen Entbanantrag indem du die Vorlage dort ausfüllst.",Teamler,Bgrund,UhrZeit,DaTum,minuten);
			ShowPlayerDialog(playerid,9992,DIALOG_STYLE_MSGBOX,"{007DFF}"SERV_NAME" - Benutzerverwaltung",bannedgstring,"Schliessen","");
			KickPlayer(playerid,"");
			return 1;
		}
		else
		{
			mysql_format(sqlHandle, query, sizeof(query), "DELETE FROM `timebans` WHERE `Name` = '%e'", SpielerInfo[playerid][sName]);
			mysql_tquery(sqlHandle, query);
			ShowLoginTextdraw(playerid);
		}
	}
	else
	{
		ShowLoginTextdraw(playerid);
	}
    return 1;
}