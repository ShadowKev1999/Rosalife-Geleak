/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onLoadFrakInfo();
public onLoadFrakInfo()
{
    new rows, fc;
    cache_get_row_count(rows);
    if(rows)
    {
        for(new i = 0; i < rows; i++)
        {
            cache_get_value_name_int(i, "FID", fc);
            cache_get_value_name_int(i, "Members",FrakInfo[fc][fiFrakMembers]); 
            cache_get_value_name_int(i, "Kasse",FrakInfo[fc][fiFrakKasse]); 
            cache_get_value_name_int(i, "Mats",FrakInfo[fc][fiMats]);  
            cache_get_value_name_int(i, "Bomben",FrakInfo[fc][fiBomb]);  
            cache_get_value_name_int(i, "GVerbrecher",FrakInfo[fc][fiFrakGVerbrecher]); 
            cache_get_value_name_int(i, "WarGegner",FrakInfo[fc][fiWarGegner]);  
            cache_get_value_name_int(i, "WarPoints",FrakInfo[fc][fiWarPoints]);
        }
    }
    printf(" Es wurden %d Fraktioninfos erfolgreich geladen.", rows);
    return 1;
}