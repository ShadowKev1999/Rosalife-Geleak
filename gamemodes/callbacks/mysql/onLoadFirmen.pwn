/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onLoadFirmen();
public onLoadFirmen()
{
    new rows, ts;
    cache_get_row_count(rows);
    if(rows)
    {
        for(new i = 0; i < rows; i++)
        {
            cache_get_value_name_int(i, "ID",ts);
            cache_get_value_name(i, "Name",FirmenInfo[ts][fName]);
            cache_get_value_name(i, "fOwner",FirmenInfo[ts][fOwner]);
            cache_get_value_name(i, "Kennzeichen",FirmenInfo[ts][fSchild]);
            cache_get_value_name_int(i, "Kasse",FirmenInfo[ts][fKasse]); 
            cache_get_value_name_int(i, "GehaltUpgrade",FirmenInfo[ts][fUpgrade][0]);  
            cache_get_value_name_int(i, "geburen",FirmenInfo[ts][geburen]); 
            cache_get_value_name_int(i, "geburenLS",FirmenInfo[ts][geburenLS]); 
            cache_get_value_name_int(i, "geburenSF",FirmenInfo[ts][geburenSF]);  
            cache_get_value_name_int(i, "geburenLV",FirmenInfo[ts][geburenLV]);  
            FirmenInfo[ts][fErstellt] = true;
        }
    }
    printf(" Es wurden %d Firmen erfolgreich geladen.", rows);
    return 1;
}