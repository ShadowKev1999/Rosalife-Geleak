/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onCheckGroupExists(playerid, const inputtext[]);
public onCheckGroupExists(playerid, const inputtext[])
{
    new rows, query[256];
    cache_get_row_count(rows);
    if(rows)
    {
        new GruppenName[24];
		GetPVarString(playerid, "GruppenName", GruppenName, sizeof(GruppenName));
        DeletePVar(playerid,"GruppenName");
        format(query, sizeof(query), "{FFFFFF}Der Gruppenname: {FF0000}%s{FFFFFF} ist bereits vergeben.\nBitte gib unten ein neuen Gruppenamen an.", GruppenName);
        ShowPlayerDialog(playerid,DIALOG_CREATE_GRUPPE,DIALOG_STYLE_INPUT,"{007DFF}"SERV_NAME" - Gruppe erstellen",query,"Weiter","Abbrechen");
    }
    else
    {
        mysql_format(sqlHandle, query, sizeof(query), "SELECT `Kennzeichen` FROM `gruppen` WHERE `Kennzeichen` = '%s'", inputtext);
        mysql_tquery(sqlHandle, query, "onCheckGroupNumberplate", "is", playerid, inputtext);
    }
    return 1;
}