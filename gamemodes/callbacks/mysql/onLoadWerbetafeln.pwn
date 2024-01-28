/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onLoadWerbetafeln();
public onLoadWerbetafeln()
{
    new rows, ts;
    cache_get_row_count(rows);
    if(rows)
    {
        for(new i = 0; i < rows; i++)
        {
            cache_get_value_name_int(i, "ID",ts);
            cache_get_value_name(i, "Text",Werbetafeln[ts][wtafeltext]);
            Werbetafelobject[ts] = CreateDynamicObject(Werbetafeln[ts][wtafelobjectid],Werbetafeln[ts][wtafelx],Werbetafeln[ts][wtafely],Werbetafeln[ts][wtafelz],Werbetafeln[ts][wtafelxrot],Werbetafeln[ts][wtafelyrot],Werbetafeln[ts][wtafelzrot]);
            SetDynamicObjectMaterialText(Werbetafelobject[ts],Werbetafeln[ts][wtafeltmindex],Werbetafeln[ts][wtafeltext],Werbetafeln[ts][wtafeltmsize],Werbetafeln[ts][wtafeltfonts],Werbetafeln[ts][wtafeltfontsize],Werbetafeln[ts][wtafeltbold],Werbetafeln[ts][wtafeltfontcolor],Werbetafeln[ts][wtafeltbackcolor],Werbetafeln[ts][wtafeltaligment]);
        }
    }
    printf(" Es wurden %d Werbetafeln erfolgreich geladen.", rows);
    return 1;
}