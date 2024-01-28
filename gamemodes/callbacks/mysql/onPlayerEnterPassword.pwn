/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onPlayerEnterPassword(playerid, const inputtext[]);
public onPlayerEnterPassword(playerid, const inputtext[])
{
    new rows;
    cache_get_row_count(rows);
    if(rows)
    {  
        new _tempPassword[64 + 1];
        cache_get_value_name(0, "Passwort", _tempPassword);
        bcrypt_verify(playerid,"OnPassswordVerify", inputtext, _tempPassword);
    }
    return 1;
}