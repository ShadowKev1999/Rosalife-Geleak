/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onLoadAmmunations();
public onLoadAmmunations()
{
    new rows, an;
    cache_get_row_count(rows);
    if(rows)
    {
        new Text[224];
        for(new i = 0; i < rows; i++)
        {
            cache_get_value_name_int(i, "ID",an);
            cache_get_value_name(i, "Besitzer",AmmunationInfo[an][amBesitzer]);
            cache_get_value_name_int(i, "Preis",AmmunationInfo[an][amPreis]);
            cache_get_value_name_int(i, "Kasse",AmmunationInfo[an][amKasse]);
            cache_get_value_name_float(i, "Pos_X",AmmunationInfo[an][amPos_X]);
            cache_get_value_name_float(i, "Pos_Y",AmmunationInfo[an][amPos_Y]);
            cache_get_value_name_float(i, "Pos_Z",AmmunationInfo[an][amPos_Z]);
            cache_get_value_name_int(i, "Armour",AmmunationInfo[an][amArmour]);
            cache_get_value_name_int(i, "Schlagring",AmmunationInfo[an][amSchlagring]);
            cache_get_value_name_int(i, "Messer",AmmunationInfo[an][amMesser]);
            cache_get_value_name_int(i, "Baseball",AmmunationInfo[an][amBaseball]);  
            cache_get_value_name_int(i, "Deagle",AmmunationInfo[an][amDeagle]); 
            cache_get_value_name_int(i, "MP5",AmmunationInfo[an][amMP5]);  
            cache_get_value_name_int(i, "AK",AmmunationInfo[an][amAK]);
            cache_get_value_name_int(i, "M4",AmmunationInfo[an][amM4]);  
            cache_get_value_name_int(i, "Sniper",AmmunationInfo[an][amSniper]);  
            cache_get_value_name_int(i, "Fallschirm",AmmunationInfo[an][amFallschirm]);

            if(strlen(AmmunationInfo[an][amBesitzer]) < 2)
            {
                format(Text, sizeof(Text), "Ammunation 'ID: {FF0000}%d{FFFFFF}' zu verkaufen!\nBesitzer: {FF0000}Staat{FFFFFF}\nPreis: {FF0000}%d${FFFFFF}\nBenutze '{FF0000}/kaufen{FFFFFF}'\num dir das Ammunation zu kaufen", an, AmmunationInfo[an][amPreis]);
                AmmunationInfo[an][amPickup] = CreatePickup(1273, 23, AmmunationInfo[an][amPos_X], AmmunationInfo[an][amPos_Y], AmmunationInfo[an][amPos_Z], -1);
            }
            else
            {
                format(Text, sizeof(Text), "Ammunation 'ID: {FF0000}%d{FFFFFF}'\nBesitzer: {FF0000}%s", an, AmmunationInfo[an][amBesitzer]);
                AmmunationInfo[an][amPickup] = CreatePickup(1272, 23, AmmunationInfo[an][amPos_X], AmmunationInfo[an][amPos_Y], AmmunationInfo[an][amPos_Z], -1);
            }
            AmmunationInfo[an][amText] = Create3DTextLabel(Text, COLOR_WHITE, AmmunationInfo[an][amPos_X], AmmunationInfo[an][amPos_Y], AmmunationInfo[an][amPos_Z], 10.0, 0);
            AmmunationInfo[an][amErstellt] = true;
            
            if(AmmunationInfo[an][amErstellt] == true)
            {
                BotAMMU[an] = CreateDynamicActor(179, 295.9016,-40.3705,1001.5156,0.2470, .interiorid = 1, .worldid = an);
            }
        }
    }
    printf("Es wurden %d Ammunations erfolgreich geladen und erstellt.",rows);
    return 1;
}