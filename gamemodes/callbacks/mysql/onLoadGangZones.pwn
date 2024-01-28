/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onLoadGangZones();
public onLoadGangZones()
{
    new rows, fc;
    cache_get_row_count(rows);
    if(rows)
    {
        new str[224];
        for(new i = 0; i < rows; i++)
        {
            cache_get_value_name_int(i, "GID",fc);
            cache_get_value_name_float(i, "GangzoneX1",GangZoneInfo[fc][gzX1]);
            cache_get_value_name_float(i, "GangzoneY1",GangZoneInfo[fc][gzY1]); 
            cache_get_value_name_float(i, "GangzoneX2",GangZoneInfo[fc][gzX2]); 
            cache_get_value_name_float(i, "GangzoneY2",GangZoneInfo[fc][gzY2]); 
            cache_get_value_name_float(i, "CTFX",GangZoneInfo[fc][gzCTFX]); 
            cache_get_value_name_float(i, "CTFY",GangZoneInfo[fc][gzCTFY]); 
            cache_get_value_name_float(i, "CTFZ",GangZoneInfo[fc][gzCTFZ]);
            cache_get_value_name_int(i, "Attacker",GangZoneInfo[fc][gzAttacker]); 
            cache_get_value_name_int(i, "Type",GangZoneInfo[fc][gzType]);
            cache_get_value_name_int(i, "Value",GangZoneInfo[fc][gzValue]); 
            cache_get_value_name_int(i, "Owner",GangZoneInfo[fc][gzOwner]);
            cache_get_value_name_int(i, "OwnerPunkte",GangZoneInfo[fc][gzOwnerPunkte]); 
            cache_get_value_name_int(i, "AttackerPunkte",GangZoneInfo[fc][gzAttackerPunkte]);
            cache_get_value_name_int(i, "LastFight",GangZoneInfo[fc][gzLastFight]); 
            cache_get_value_name_int(i, "FightTime",GangZoneInfo[fc][gzFightTime]); 
            cache_get_value_name_int(i, "Gebiet",GangZoneInfo[fc][gzGebiet]);
            GangZoneInfo[fc][gzID] = GangZoneCreate(GangZoneInfo[fc][gzX1],GangZoneInfo[fc][gzY1],GangZoneInfo[fc][gzX2],GangZoneInfo[fc][gzY2]);
            CreateObject(964, GangZoneInfo[fc][gzCTFX], GangZoneInfo[fc][gzCTFY], GangZoneInfo[fc][gzCTFZ], 0, 0, 0);
            if(GangZoneInfo[fc][gzFightTime] > 0){GangZoneInfo[fc][gzTimer] = SetTimerEx("GangfightTime",60000, false,"i",fc);}
            if(GangZoneInfo[fc][gzLastFight] > 0){GangZoneInfo[fc][gzTimerLast] = SetTimerEx("LastGangFightZone",60000, true,"i",fc);}
            GangZoneInfo[fc][gzTimerWert] = SetTimerEx("WertGangFightZone",600000, true,"i",fc);
            format(str,sizeof(str),"Gangzone der %s [ID:%d]\nTyp: %s | Wert: %d",FrakName(GangZoneInfo[fc][gzOwner]),fc,GangZoneTyp(GangZoneInfo[fc][gzType]),GangZoneInfo[fc][gzValue]);
            GangZoneInfo[fc][gzLabel] = Create3DTextLabel(str, 0xFFC800FF, GangZoneInfo[fc][gzCTFX], GangZoneInfo[fc][gzCTFY], GangZoneInfo[fc][gzCTFZ], 15.0, 0, false);
            GangZoneInfo[fc][gzErstellt] = true;
        }
    }
    printf(" Es wurde(n) %d Gangzonen erfolgreich geladen und erstellt.", rows);
    return 1;
}