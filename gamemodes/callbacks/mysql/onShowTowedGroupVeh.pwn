/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onShowTowedGroupVeh(playerid);
public onShowTowedGroupVeh(playerid)
{
    new rows;
    cache_get_row_count(rows);
    if(rows)
    {
        new vstelledialog[340];
        for(new i = 0; i < rows; i++)
        {
            cache_get_value_name_int(i, "ModelID",FreikaufModelID[playerid][i]);
            cache_get_value_name_int(i, "ID",FreikaufDatabaseID[playerid][i]);
            new str[4], iValue = FreikaufModelID[playerid][i];
            valstr(str,iValue);
            new Freikaufpreis = mysql_GetInt("carinfos", "Freikaufpreis", "ModelID", str);
            format(vstelledialog,sizeof vstelledialog,"%s\n%s		| Kosten: {D70000}%d$",vstelledialog,FahrzeugName[FreikaufModelID[playerid][i]-400],Freikaufpreis);
        }
        ShowPlayerDialog(playerid,DIALOG_FREIKAUFEN_FAHRZEUG,DIALOG_STYLE_LIST,"{007DFF}"SERV_NAME" | Verwahrstelle",vstelledialog,"Freikaufen","Abbrechen");
    }
    else
    {
        SendClientMessage(playerid,COLOR_GREY,"Es befindet sich kein Gruppenfahrzeug in der Verwahrstelle.");
    }
    return 1;
}
		    			