/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onLoadStuff();
public onLoadStuff()
{
    new rows;
    cache_get_row_count(rows);
    if(rows)
    {
 	    cache_get_value_name(0, "motd",sachen[Motd]);
	    TextDrawSetString(Logindraw[11],sachen[Motd]);
	    printf("Message of the Day: %s",sachen[Motd]);
    }
    return 1;
}