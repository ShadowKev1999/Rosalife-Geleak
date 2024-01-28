/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onPlayerInputBetaykey(playerid, const inputtext[]);
public onPlayerInputBetaykey(playerid, const inputtext[])
{
    new rows;
    cache_get_row_count(rows);
    if(rows)
    {
        new _betaKey[12 + 1];
        cache_get_value_name(0, "Key", _betaKey);
        if(!strcmp(inputtext, _betaKey, true))
        {
            SendClientMessage(playerid,COLOR_SUPER,"Dein Account wurde aktiviert. Viel Spaß bei der Closed Beta.");
            mysql_SetInt("beta", "Aktiviert", 1, "Name", SpielerInfo[playerid][sName]);
            CheckedAccount(playerid);
        }
    }
    ShowPlayerDialog(playerid,DIALOG_BETA_KEY,DIALOG_STYLE_INPUT,"{007DFF}"SERV_NAME" | Beta Key","{FFFFFF}Bitte gib unten dein gültigen Beta Key an.\n\n{FF0000}(Ungültiger Beta Key)","Weiter","Abbrechen");
    return 1;
}