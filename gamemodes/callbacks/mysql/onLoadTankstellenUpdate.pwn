/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onLoadTankstellenUpdate(itankid);
public onLoadTankstellenUpdate(itankid)
{
    new rows;
    cache_get_row_count(rows);
    if(rows)
    {
        new itxt[128];
        new ioID;

        cache_get_value_name_float(0, "S_PosX",TankstellenInfo[itankid][tsTPos_X]);
        cache_get_value_name_float(0, "S_PosY",TankstellenInfo[itankid][tsTPos_Y]);
        cache_get_value_name_float(0, "S_PosZ",TankstellenInfo[itankid][tsTPos_Z]);
        cache_get_value_name_float(0, "S_PosR",TankstellenInfo[itankid][tsTPos_R]);

        ioID = CreateDynamicObject(5811, TankstellenInfo[itankid][tsTPos_X], TankstellenInfo[itankid][tsTPos_Y], TankstellenInfo[itankid][tsTPos_Z], 0.000, 0.000, TankstellenInfo[itankid][tsTPos_R]);

        TankstellenInfo[itankid][tsTafel] = ioID;

        new pdisel,pbenzien,pkerosin;
        
        if(strlen(TankstellenInfo[itankid][tsBesitzer]) > 2)
        {
            
            format(itxt, 128, "\
            {D8D8D8}%s\n\
            {FF8000}———————————————",TankstellenInfo[itankid][tsBeschreibung]);
            SetDynamicObjectMaterialText(ioID, 5, itxt, 90, "Tahoma", 35, 0, -32256, -16777216, 1);
                
            format(itxt, 128, "\
            Besitzer:\n\
            {FFFFFF}%s",TankstellenInfo[itankid][tsBesitzer]);
            SetDynamicObjectMaterialText(TankstellenInfo[itankid][tsTafel], 1, itxt, 90, "Tahoma", 40, 0,  -32256, -16777216, 1);

            pdisel = TankstellenInfo[itankid][tsDieselPreis];
            pbenzien = TankstellenInfo[itankid][tsBenzinPreis];
            pkerosin = TankstellenInfo[itankid][tsKerosinPreis];
        }
        else
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


        if(strlen(TankstellenInfo[itankid][tsBesitzer]) > 2 && TankstellenInfo[itankid][tsBenzin] > 0 || strlen(TankstellenInfo[itankid][tsBesitzer]) < 2)
        {
            format(itxt, 128, "\
            \n\
            {FFFFFF}Benzin {FF8000} $%d\n\
            {FF8000}———————————————",pbenzien);
            SetDynamicObjectMaterialText(ioID, 4, itxt, 90, "Tahoma", 40, 0,  -32256, -16777216, 1);
        }
        else
        {
            format(itxt, 128, "\
            \n\
            {FFFFFF}Benzin {FF8000} $---\n\
            {FF8000}———————————————");
            SetDynamicObjectMaterialText(ioID, 4, itxt, 90, "Tahoma", 40, 0,  -32256, -16777216, 1);
        }

        if(strlen(TankstellenInfo[itankid][tsBesitzer]) > 2 && TankstellenInfo[itankid][tsDiesel] > 0 || strlen(TankstellenInfo[itankid][tsBesitzer]) < 2)
        {
            format(itxt, 128,"\
            \n\
            {FFFFFF}Diesel {FF8000} $%d\n\
            {FF8000}———————————————",pdisel);
            SetDynamicObjectMaterialText(ioID, 3, itxt, 90, "Tahoma", 40, 0,  -32256, -16777216, 1);
        }
        else
        {
            format(itxt, 128,"\
            \n\
            {FFFFFF}Diesel {FF8000} $---\n\
            {FF8000}———————————————");
            SetDynamicObjectMaterialText(ioID, 3, itxt, 90, "Tahoma", 40, 0,  -32256, -16777216, 1);
        }

        if(strlen(TankstellenInfo[itankid][tsBesitzer]) > 2 && TankstellenInfo[itankid][tsKerosin] > 0 || strlen(TankstellenInfo[itankid][tsBesitzer]) < 2)
        {
            format(itxt, 128,"\
            \n\
            {FFFFFF}Kerosin {FF8000} $%d\n\
            {FF8000}———————————————",pkerosin);
            SetDynamicObjectMaterialText(ioID, 2, itxt, 90, "Tahoma", 40, 0,  -32256, -16777216, 1);
        }
        else
        {
            format(itxt, 128,"\
            \n\
            {FFFFFF}Kerosin {FF8000} $---\n\
            {FF8000}———————————————");
            SetDynamicObjectMaterialText(ioID, 2, itxt, 90, "Tahoma", 40, 0,  -32256, -16777216, 1);
        }
    }
    return 1;
}