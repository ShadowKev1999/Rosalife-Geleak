/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onLoadTankstellen();
public onLoadTankstellen()
{
    new rows, ts;
    cache_get_row_count(rows);
    if(rows)
    {
        new Text[224], itxt[128], ioID;
        for(new i = 0; i < rows; i++)
        {
            cache_get_value_name_int(i, "ID", ts);
            cache_get_value_name(i, "Besitzer",TankstellenInfo[ts][tsBesitzer]);
            cache_get_value_name(i, "Beschreibung",TankstellenInfo[ts][tsBeschreibung]);
            cache_get_value_name_int(i, "Preis",TankstellenInfo[ts][tsPreis]); 
            cache_get_value_name_int(i, "Kasse",TankstellenInfo[ts][tsKasse]);  
            cache_get_value_name_int(i, "Benzin",TankstellenInfo[ts][tsBenzin]);  
            cache_get_value_name_int(i, "Benzin Preis",TankstellenInfo[ts][tsBenzinPreis]);  
            cache_get_value_name_int(i, "Diesel",TankstellenInfo[ts][tsDiesel]);  
            cache_get_value_name_int(i, "Diesel Preis",TankstellenInfo[ts][tsDieselPreis]); 
            cache_get_value_name_int(i, "Kerosin",TankstellenInfo[ts][tsKerosin]); 
            cache_get_value_name_int(i, "Kerosin Preis",TankstellenInfo[ts][tsKerosinPreis]); 
            cache_get_value_name_int(i, "Benzin Liter",TankstellenInfo[ts][tsBenzinLiter]); 
            cache_get_value_name_int(i, "Diesel Liter",TankstellenInfo[ts][tsDieselLiter]);  
            cache_get_value_name_int(i, "Kerosin Liter",TankstellenInfo[ts][tsKerosinLiter]);
            cache_get_value_name_float(i, "TPos_X1",TankstellenInfo[ts][tsPos_X][0]);
            cache_get_value_name_float(i, "TPos_Y1",TankstellenInfo[ts][tsPos_Y][0]); 
            cache_get_value_name_float(i, "TPos_Z1",TankstellenInfo[ts][tsPos_Z][0]); 
            cache_get_value_name_float(i, "TPos_X2",TankstellenInfo[ts][tsPos_X][1]); 
            cache_get_value_name_float(i, "TPos_Y2",TankstellenInfo[ts][tsPos_Y][1]);  
            cache_get_value_name_float(i, "TPos_Z2",TankstellenInfo[ts][tsPos_Z][1]);
            cache_get_value_name_float(i, "EPos_X",TankstellenInfo[ts][tsEPos_X]); 
            cache_get_value_name_float(i, "EPos_Y",TankstellenInfo[ts][tsEPos_Y]);  
            cache_get_value_name_float(i, "EPos_Z",TankstellenInfo[ts][tsEPos_Z]); 
            cache_get_value_name_float(i, "S_PosX",TankstellenInfo[ts][tsTPos_X]);
            cache_get_value_name_float(i, "S_PosY",TankstellenInfo[ts][tsTPos_Y]);  
            cache_get_value_name_float(i, "S_PosZ",TankstellenInfo[ts][tsTPos_Z]); 
            cache_get_value_name_float(i, "S_PosR",TankstellenInfo[ts][tsTPos_R]);  
					
            if(TankstellenInfo[ts][tsTPos_X] > 0)
            {
                ioID = CreateDynamicObject(5811, TankstellenInfo[ts][tsTPos_X], TankstellenInfo[ts][tsTPos_Y], TankstellenInfo[ts][tsTPos_Z], 0.000, 0.000, TankstellenInfo[ts][tsTPos_R]);
                TankstellenInfo[ts][tsTafel] = ioID;
            }
            
            new pdisel,pbenzien,pkerosin;
            
            if(strlen(TankstellenInfo[ts][tsBesitzer]) < 2)
            {
                if(TankstellenInfo[ts][tsTPos_X] > 0)
                {
                    format(itxt, 128, "\
                    {D8D8D8}Petrol Station\n\
                    {FF8000}———————————————");
                    SetDynamicObjectMaterialText(ioID, 5, itxt, 90, "Tahoma", 35, 0, -32256, -16777216, 1);
                    
                    format(itxt, 128, "\
                    Besitzer:\n\
                    {FFFFFF}Staat");
                    SetDynamicObjectMaterialText(ioID, 1, itxt, 90, "Tahoma", 40, 0,  -32256, -16777216, 1);

                    pdisel = 3;
                    pbenzien = 5;
                    pkerosin = 10;
                }
                if(TankstellenInfo[ts][tsEPos_X] > 0)
                {
                    format(Text, sizeof(Text), "Tankstelle 'ID: {FF0000}%d{FFFFFF}' zu verkaufen!\nBesitzer: {FF0000}Staat{FFFFFF}\nPreis: {FF0000}%d${FFFFFF}\nBenutze '{FF0000}/kaufen{FFFFFF}'\num dir die Tankstelle zu kaufen", ts, TankstellenInfo[ts][tsPreis]);
                    TankstellenInfo[ts][tsPickup][0] = CreatePickup(1273, 23, TankstellenInfo[ts][tsEPos_X], TankstellenInfo[ts][tsEPos_Y], TankstellenInfo[ts][tsEPos_Z], -1);
                }
            }
            else
            {
                if(TankstellenInfo[ts][tsTPos_X] > 0)
                {
                    format(itxt, 128, "\
                    {D8D8D8}%s\n\
                    {FF8000}———————————————",TankstellenInfo[ts][tsBeschreibung]);
                    SetDynamicObjectMaterialText(ioID, 5, itxt, 90, "Tahoma", 35, 0, -32256, -16777216, 1);

                    format(itxt, 128, "\
                    Besitzer:\n\
                    {FFFFFF}%s",TankstellenInfo[ts][tsBesitzer]);
                    SetDynamicObjectMaterialText(TankstellenInfo[ts][tsTafel], 1, itxt, 90, "Tahoma", 40, 0,  -32256, -16777216, 1);

                    pdisel = TankstellenInfo[ts][tsDieselPreis];
                    pbenzien = TankstellenInfo[ts][tsBenzinPreis];
                    pkerosin = TankstellenInfo[ts][tsKerosinPreis];
                }
            
                if(TankstellenInfo[ts][tsEPos_X] > 0)
                {
                    format(Text, sizeof(Text), "Tankstelle 'ID: {FF0000}%d{FFFFFF}'\nBesitzer: {FF0000}%s", ts, TankstellenInfo[ts][tsBesitzer]);
                    TankstellenInfo[ts][tsPickup][0] = CreatePickup(1272, 23, TankstellenInfo[ts][tsEPos_X], TankstellenInfo[ts][tsEPos_Y], TankstellenInfo[ts][tsEPos_Z], -1);
                }
            }
            if(strlen(TankstellenInfo[ts][tsBesitzer]) > 2 && TankstellenInfo[ts][tsBenzin] > 0 || strlen(TankstellenInfo[ts][tsBesitzer]) < 2)
            {
                if(TankstellenInfo[ts][tsTPos_X] > 0)
                {
                    format(itxt, 128, "\
                    \n\
                    {FFFFFF}Benzin {FF8000} $%d\n\
                    {FF8000}———————————————",pbenzien);
                    SetDynamicObjectMaterialText(ioID, 4, itxt, 90, "Tahoma", 40, 0,  -32256, -16777216, 1);
                }
            }
            else
            {
                if(TankstellenInfo[ts][tsTPos_X] > 0)
                {
                    format(itxt, 128, "\
                    \n\
                    {FFFFFF}Benzin {FF8000} $---\n\
                    {FF8000}———————————————");
                    SetDynamicObjectMaterialText(ioID, 4, itxt, 90, "Tahoma", 40, 0,  -32256, -16777216, 1);
                }
            }

            if(strlen(TankstellenInfo[ts][tsBesitzer]) > 2 && TankstellenInfo[ts][tsDiesel] > 0 || strlen(TankstellenInfo[ts][tsBesitzer]) < 2)
            {
                if(TankstellenInfo[ts][tsTPos_X] > 0)
                {
                    format(itxt, 128,"\
                    \n\
                    {FFFFFF}Diesel {FF8000} $%d\n\
                    {FF8000}———————————————",pdisel);
                    SetDynamicObjectMaterialText(ioID, 3, itxt, 90, "Tahoma", 40, 0,  -32256, -16777216, 1);
                }
            }
            else
            {
                if(TankstellenInfo[ts][tsTPos_X] > 0)
                {
                    format(itxt, 128,"\
                    \n\
                    {FFFFFF}Diesel {FF8000} $---\n\
                    {FF8000}———————————————");
                    SetDynamicObjectMaterialText(ioID, 3, itxt, 90, "Tahoma", 40, 0,  -32256, -16777216, 1);
                }
            }

            if(strlen(TankstellenInfo[ts][tsBesitzer]) > 2 && TankstellenInfo[ts][tsKerosin] > 0 || strlen(TankstellenInfo[ts][tsBesitzer]) < 2)
            {
                if(TankstellenInfo[ts][tsTPos_X] > 0)
                {
                    format(itxt, 128,"\
                    \n\
                    {FFFFFF}Kerosin {FF8000} $%d\n\
                    {FF8000}———————————————",pkerosin);
                    SetDynamicObjectMaterialText(ioID, 2, itxt, 90, "Tahoma", 40, 0,  -32256, -16777216, 1);
                }
            }
            else
            {
                if(TankstellenInfo[ts][tsTPos_X] > 0)
                {
                    format(itxt, 128,"\
                    \n\
                    {FFFFFF}Kerosin {FF8000} $---\n\
                    {FF8000}———————————————");
                    SetDynamicObjectMaterialText(ioID, 2, itxt, 90, "Tahoma", 40, 0,  -32256, -16777216, 1);
                }
            }
            
            if(TankstellenInfo[ts][tsEPos_X] > 0)
            {
                TankstellenInfo[ts][tsText][0] = Create3DTextLabel(Text, COLOR_WHITE, TankstellenInfo[ts][tsEPos_X], TankstellenInfo[ts][tsEPos_Y], TankstellenInfo[ts][tsEPos_Z], 10.0, 0);
            }
            if(TankstellenInfo[ts][tsPos_X][0] > 0)
            {
                TankstellenInfo[ts][tsPickup][1] = CreatePickup(1650, 23, TankstellenInfo[ts][tsPos_X][0], TankstellenInfo[ts][tsPos_Y][0], TankstellenInfo[ts][tsPos_Z][0], -1);
                format(Text, sizeof(Text), "Tankstelle 'ID: {FF0000}%d{FFFFFF}'\nBenutze '{FF0000}/tanken{FFFFFF}'\num dein Fahrzeug zu betanken", ts);
                TankstellenInfo[ts][tsText][1] = Create3DTextLabel(Text, COLOR_WHITE, TankstellenInfo[ts][tsPos_X][0], TankstellenInfo[ts][tsPos_Y][0], TankstellenInfo[ts][tsPos_Z][0], 10.0, 0);
            }
            if(TankstellenInfo[ts][tsPos_X][1] > 0)
            {
                TankstellenInfo[ts][tsPickup][2] = CreatePickup(1650, 23, TankstellenInfo[ts][tsPos_X][1], TankstellenInfo[ts][tsPos_Y][1], TankstellenInfo[ts][tsPos_Z][1], -1);
                format(Text, sizeof(Text), "Tankstelle 'ID: {FF0000}%d{FFFFFF}'\nBenutze '{FF0000}/tanken{FFFFFF}'\num dein Fahrzeug zu betanken", ts);
                TankstellenInfo[ts][tsText][2] = Create3DTextLabel(Text, COLOR_WHITE, TankstellenInfo[ts][tsPos_X][1], TankstellenInfo[ts][tsPos_Y][1], TankstellenInfo[ts][tsPos_Z][1], 10.0, 0);
            }

            TankstellenInfo[ts][tsErstellt] = true;
        }
    }
    printf(" Es wurden %d Tankstellen erfolgreich geladen und erstellt.", rows);
    return 1;
}