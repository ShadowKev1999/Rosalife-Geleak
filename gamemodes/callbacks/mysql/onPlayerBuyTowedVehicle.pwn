/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onPlayerBuyTowedVehicle(playerid, listitem);
public onPlayerBuyTowedVehicle(playerid, listitem)
{
    new rows;
    cache_get_row_count(rows);
    if(rows)
    {
        new query[364];
        new ModelID = FreikaufModelID[playerid][listitem];
        new Database = FreikaufDatabaseID[playerid][listitem];
        new fkstring[4];
        valstr(fkstring,ModelID);
        new Freikaufpreis = mysql_GetInt("carinfos", "Freikaufpreis", "ModelID", fkstring);
        new Float:Position[4], Color[2], Schild[10], Float:Tank, Besitzer[24], Fraktion, Gruppe, Firma,
            loadKilometer, Preis, JobEXP, Tuning[14], Paintjob, Panels, Doors, Lights, Tires;
        //Hauptvariablen
        cache_get_value_name_float(0, "PositionX",Position[0]);
        cache_get_value_name_float(0, "PositionY",Position[1]); 
        cache_get_value_name_float(0, "PositionZ",Position[2]); 
        cache_get_value_name_float(0, "PositionA",Position[3]); 
        cache_get_value_name_int(0, "Farbe1",Color[0]);
        cache_get_value_name_int(0, "Farbe2",Color[1]); 
        cache_get_value_name_int(0, "Paintjob",Paintjob);

        //Nebenvariablen
        cache_get_value_name(0, "Kennzeichen",Schild);
        cache_get_value_name_int(0, "Kilometer",loadKilometer); 
        cache_get_value_name_float(0, "Tank",Tank); 
        cache_get_value_name_int(0, "Preis",Preis); 
        cache_get_value_name(0, "Besitzer",Besitzer);
        cache_get_value_name_int(0, "Fraktion",Fraktion); 
        cache_get_value_name_int(0, "Gruppe",Gruppe);
        cache_get_value_name_int(0, "Firma",Firma); 
        cache_get_value_name_int(0, "JobEXP",JobEXP);

        //Tuningvariablen
        cache_get_value_name_int(0, "Spoiler",Tuning[0]); 
        cache_get_value_name_int(0, "Hood",Tuning[1]); 
        cache_get_value_name_int(0, "Roof",Tuning[2]); 
        cache_get_value_name_int(0, "Sideskirt",Tuning[3]); 
        cache_get_value_name_int(0, "Lamps",Tuning[4]); 
        cache_get_value_name_int(0, "Nitro",Tuning[5]); 
        cache_get_value_name_int(0, "Exhaust",Tuning[6]); 
        cache_get_value_name_int(0, "Wheels",Tuning[7]); 
        cache_get_value_name_int(0, "Stereo",Tuning[8]); 
        cache_get_value_name_int(0, "Hydraulics",Tuning[9]); 
        cache_get_value_name_int(0, "Front Bumper",Tuning[10]); 
        cache_get_value_name_int(0, "Rear Bumper",Tuning[11]); 
        cache_get_value_name_int(0, "Vent Right",Tuning[12]); 
        cache_get_value_name_int(0, "Vent Left",Tuning[13]);

        //Damagevariablen
        cache_get_value_name_int(0, "Panels",Panels); 
        cache_get_value_name_int(0, "Doors",Doors); 
        cache_get_value_name_int(0, "Lights",Lights);
        cache_get_value_name_int(0, "Tires",Tires);
    
        new rand = random(5), vehicleid;
        if(rand == 0)//Parkplatz1
        {
            vehicleid = CreateVehicle(ModelID,1605.2670,-1615.3347,13.2272,358.2629,Color[0],Color[1],-1);
            SetPlayerCheckpoint(playerid,1605.2670,-1615.3347,13.2272,5.0);
        }
        else if(rand == 1)//Parkplatz2
        {
            vehicleid = CreateVehicle(ModelID,1601.7065,-1615.2393,13.1892,0.1023,Color[0],Color[1],-1);
            SetPlayerCheckpoint(playerid,1601.7065,-1615.2393,13.1892,5.0);
        }
        else if(rand == 2)//Parkplatz3
        {
            vehicleid = CreateVehicle(ModelID,1598.1907,-1615.2983,13.1503,358.4632,Color[0],Color[1],-1);
            SetPlayerCheckpoint(playerid,1598.1907,-1615.2983,13.1503,5.0);
        }
        else if(rand == 3)//Parkplatz4
        {
            vehicleid = CreateVehicle(ModelID,1594.8024,-1615.2908,13.1112,359.5935,Color[0],Color[1],-1);
            SetPlayerCheckpoint(playerid,1594.8024,-1615.2908,13.1112,5.0);
        }
        else if(rand == 4)//Parkplatz5
        {
            vehicleid = CreateVehicle(ModelID,1591.2031,-1615.2533,13.0876,359.6936,Color[0],Color[1],-1);
            SetPlayerCheckpoint(playerid,1591.2031,-1615.2533,13.0876,5.0);
        }
        
        if(strlen(Besitzer) != 0)
        {
            format(FahrzeugInfo[vehicleid][fBesitzer], MAX_PLAYER_NAME, SpielerInfo[playerid][sName]);
            format(FahrzeugInfo[vehicleid][fKennzeichen], 10, Schild);
            SetVehicleNumberPlate(vehicleid,Schild);
            FahrzeugInfo[vehicleid][fBesitzerID] = playerid;
        }
        else if(Fraktion > 0)
        {
            CreateFrakNummernSchild(vehicleid,Fraktion);
        }
        else if(Gruppe > 0)
        {
            format(FahrzeugInfo[vehicleid][fKennzeichen], 5, Schild);
            SetVehicleNumberPlate(vehicleid,Schild);
        }
        
        SetVehicleNumberPlate(vehicleid,Schild);
        GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);
        SetVehicleParamsEx(vehicleid, false, false, false, true, false, false, false);
        
        //Fahrzeughauptvariablen
        FahrzeugInfo[vehicleid][fErstellt] = true;
        FahrzeugInfo[vehicleid][fModelID] = ModelID;
        FahrzeugInfo[vehicleid][fColor][0] = Color[0];
        FahrzeugInfo[vehicleid][fColor][1] = Color[1];
        FahrzeugInfo[vehicleid][fPaintjob] = Paintjob;
        FahrzeugInfo[vehicleid][fPosition][0] = Position[0];
        FahrzeugInfo[vehicleid][fPosition][1] = Position[1];
        FahrzeugInfo[vehicleid][fPosition][2] = Position[2];
        FahrzeugInfo[vehicleid][fPosition][3] = Position[3];

        //Fahrzeugteilvergabe
        UpdateVehicleDamageStatus(vehicleid, VEHICLE_PANEL_STATUS:Panels, VEHICLE_DOOR_STATUS:Doors, VEHICLE_LIGHT_STATUS:Lights, VEHICLE_TYRE_STATUS:Tires);

        //Fahrzeugparameter
        Motor[vehicleid] = false;
        Licht[vehicleid] = false;
        DOOR[vehicleid] = true;
        Motorhaube[vehicleid] = false;
        Kofferraum[vehicleid] = false;

        //Nebenvariablenvergabe
        FahrzeugInfo[vehicleid][fFraktion] = Fraktion;
        FahrzeugInfo[vehicleid][fGruppe] = Gruppe;
        FahrzeugInfo[vehicleid][fFirma] = Firma;
        FahrzeugInfo[vehicleid][fAutohaus] = 0;
        FahrzeugInfo[vehicleid][fNebenjob] = 0;
        FahrzeugInfo[vehicleid][fGarage] = 0;
        FahrzeugInfo[vehicleid][fGPark] = 0;
        FahrzeugInfo[vehicleid][fFahrschule] = 0;
        FahrzeugInfo[vehicleid][fSupmobil] = 0;
        FahrzeugInfo[vehicleid][fZiviroller] = 0;
        FahrzeugInfo[vehicleid][fImportCar] = 0;
        FahrzeugInfo[vehicleid][fKurrierCar] = 0;
        FahrzeugInfo[vehicleid][fDatabaseID] = Database;
        FahrzeugInfo[vehicleid][fAbgeschleppt] = 0;
        FahrzeugInfo[vehicleid][fParkkralle] = 0;
        FahrzeugInfo[vehicleid][fKilometer] = loadKilometer;
        FahrzeugInfo[vehicleid][fRang] = 0,
        FahrzeugInfo[vehicleid][fPreis] = Preis;
        FahrzeugInfo[vehicleid][fTank] = Tank;
        FahrzeugInfo[vehicleid][fJobEXP] = JobEXP;

        //Fahrzeugtuningvariablen
        FahrzeugInfo[vehicleid][fTuning][0] = Tuning[0]; FahrzeugInfo[vehicleid][fTuning][1] = Tuning[1]; FahrzeugInfo[vehicleid][fTuning][2] = Tuning[2];
        FahrzeugInfo[vehicleid][fTuning][3] = Tuning[3]; FahrzeugInfo[vehicleid][fTuning][4] = Tuning[4]; FahrzeugInfo[vehicleid][fTuning][5] = Tuning[5];
        FahrzeugInfo[vehicleid][fTuning][6] = Tuning[6]; FahrzeugInfo[vehicleid][fTuning][7] = Tuning[7]; FahrzeugInfo[vehicleid][fTuning][8] = Tuning[8];
        FahrzeugInfo[vehicleid][fTuning][9] = Tuning[9]; FahrzeugInfo[vehicleid][fTuning][10] = Tuning[10]; FahrzeugInfo[vehicleid][fTuning][11] = Tuning[11];
        FahrzeugInfo[vehicleid][fTuning][12] = Tuning[12]; FahrzeugInfo[vehicleid][fTuning][13] = Tuning[13];

        AddTuning(vehicleid);
            
        format(query,sizeof(query),"Du hast den %s für %d$ freigekauft.",FahrzeugName[ModelID-400],Freikaufpreis);
        SendClientMessage(playerid,COLOR_SUPER,query);
        SendClientMessage(playerid,COLOR_INFO,"Das Fahrzeug befindet sich in der Verwahrstelle vom LSPD. (Roter Marker)");
        SendClientMessage(playerid,COLOR_INFO,"Du hast für 3 Minuten einen Schlüssel zur LSPD-Schranke erhalten.");
        SetPVarInt(playerid,"FreikaufSchluessel",1);
        FreikaufKey[playerid] = SetTimerEx("FreikaufKeyWeg",180000,false,"i",playerid);
        GivePlayerMoneyEx(playerid,-Freikaufpreis);
    }
    return 1;
}