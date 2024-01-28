/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onShowHitmanContracts(playerid);
public onShowHitmanContracts(playerid)
{
    new rows;
    cache_get_row_count(rows);
    if(rows)
    {
        for(new i = 0; i < rows; i++)
        {
            new _Name[MAX_PLAYER_NAME], Preis, str[128], Auftrag[MAX_PLAYER_NAME];
            cache_get_value_name(i, "Contract", _Name);
            cache_get_value_name_int(i, "Preis", Preis);
            cache_get_value_name(i, "Auftrag", Auftrag);
            format(str, sizeof(str), "Auftraggeber: {FF0000}%s{FFFFFF} | Contract auf: {FF0000}%s{FFFFFF} | Belohnung: {FF0000}%d$", Auftrag, _Name, Preis);
	    	SendClientMessage(playerid,COLOR_WHITE,str);
        }
    }
    else
    {
        SendClientMessage(playerid,COLOR_SORRY,"Keine Aufträge vorhanden.");
    }
    return 1;
}