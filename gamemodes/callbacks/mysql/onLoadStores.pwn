/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onLoadStores();
public onLoadStores()
{
    new rows, an;
    cache_get_row_count(rows);
    if(rows)
    {
        new Text[224];
        for(new i = 0; i < rows; i++)
        {
            cache_get_value_name_int(i, "ID",an);
            cache_get_value_name(i, "Besitzer",StoreInfo[an][siBesitzer]);
            cache_get_value_name_int(i, "Preis",StoreInfo[an][siPreis]); 
            cache_get_value_name_int(i, "Kasse",StoreInfo[an][siKasse]); 
            cache_get_value_name_int(i, "Navi",StoreInfo[an][siNavi]); 
            cache_get_value_name_int(i, "Handy",StoreInfo[an][siHandy]);  
            cache_get_value_name_int(i, "Telefonbuch",StoreInfo[an][siTelefonbuch]);
            cache_get_value_name_int(i, "Repairkit",StoreInfo[an][siRepairkit]);  
            cache_get_value_name_int(i, "MP3Player",StoreInfo[an][siMP3]); 
            cache_get_value_name_float(i, "Pos_X",StoreInfo[an][siPos_X]);  
            cache_get_value_name_float(i, "Pos_Y",StoreInfo[an][siPos_Y]); 
            cache_get_value_name_float(i, "Pos_Z",StoreInfo[an][siPos_Z]);

            if(strlen(StoreInfo[an][siBesitzer]) < 2)
            {
                format(Text, sizeof(Text), "24/7 'ID: {FF0000}%d{FFFFFF}' zu verkaufen!\nBesitzer: {FF0000}Staat{FFFFFF}\nPreis: {FF0000}%d${FFFFFF}\nBenutze '{FF0000}/kaufen{FFFFFF}'\num dir das 24/7 zu kaufen", an, StoreInfo[an][siPreis]);
                StoreInfo[an][siPickup] = CreatePickup(1273, 23, StoreInfo[an][siPos_X], StoreInfo[an][siPos_Y], StoreInfo[an][siPos_Z], -1);
            }
            else
            {
                format(Text, sizeof(Text), "24/7 'ID: {FF0000}%d{FFFFFF}'\nBesitzer: {FF0000}%s", an, StoreInfo[an][siBesitzer]);
                StoreInfo[an][siPickup] = CreatePickup(1272, 23, StoreInfo[an][siPos_X], StoreInfo[an][siPos_Y], StoreInfo[an][siPos_Z], -1);
            }
            StoreInfo[an][siText] = Create3DTextLabel(Text, COLOR_WHITE, StoreInfo[an][siPos_X], StoreInfo[an][siPos_Y], StoreInfo[an][siPos_Z], 10.0, 0);
            StoreInfo[an][siErstellt] = true;
            
            if(StoreInfo[an][siErstellt] == true)
            {
                BotSTORE[an] = CreateDynamicActor(296, -22.0128,-140.4201,1003.5469,0.5603, .interiorid = 16, .worldid = an);
            }
        }
    }
    printf("Es wurden %d 24/7 erfolgreich geladen und erstellt.", rows);
    return 1;
}