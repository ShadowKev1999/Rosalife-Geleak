/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward checkCompanyExists(playerid, const inputtext[]);
public checkCompanyExists(playerid, const inputtext[])
{
    new rows, query[256];
    cache_get_row_count(rows);
    if(rows)
    {
        new FirmaName[24];
		GetPVarString(playerid, "FirmaName", FirmaName, sizeof(FirmaName));
        DeletePVar(playerid,"FirmaName");
        format(query, sizeof(query), "{FFFFFF}Der Firmenname: {FF0000}%s{FFFFFF} ist bereits vergeben.\nBitte gib unten ein neuen Firmennamen an.", FirmaName);
        ShowPlayerDialog(playerid,DIALOG_CREATE_FIRMA,DIALOG_STYLE_INPUT,"{007DFF}"SERV_NAME" - Firma erstellen",query,"Weiter","Abbrechen");
    }
    else
    {
        mysql_format(sqlHandle, query, sizeof(query), "SELECT `Kennzeichen` FROM `firmen` WHERE `Kennzeichen` = '%s'", inputtext);
        mysql_tquery(sqlHandle, query, "onCheckCompanyNumberplate", "is", playerid, inputtext);
    }
    return 1;
}