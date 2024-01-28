/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onLoadJobInfos();
public onLoadJobInfos()
{
    new rows, ts;
    cache_get_row_count(rows);
    if(rows)
    {
        for(new i = 0; i < rows; i++)
        {
            cache_get_value_name_int(i, "ID", ts);
            cache_get_value_name_int(i, "ID", JobInfo[ts][jiID]); 
            cache_get_value_name_int(i, "Gehalt", JobInfo[ts][jiGehalt]); 
	    }
    }
    printf(" Es wurden %d Jobinformationen erfolgreich geladen.", rows);
    return 1;
}