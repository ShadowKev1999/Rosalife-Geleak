/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onLoadVehicles();
public onLoadVehicles()
{
    new rows;
    cache_get_row_count(rows);
    if(rows)
    {
        new vehicleid, ModelID, Float:Position[4], Color[2], Besitzer[24], Schild[5],
        Database, Abgeschleppt, Parkkralle, loadKilometer, Rang, Preis, Tuning[14], Fraktion, loadAutohaus, Nebenjob, JobEXP, Gruppe,
        Garage, Firma, GPark, Fahrschule, Panels, Doors, Lights, Tires, Paintjob;
        for(new i = 0; i < rows; i++)
        {
            //Hauptvariablen
            cache_get_value_name_int(i, "ID",Database); 
            cache_get_value_name_int(i, "ModelID",ModelID);
            cache_get_value_name_float(i, "PositionX",Position[0]);
            cache_get_value_name_float(i, "PositionY",Position[1]);
            cache_get_value_name_float(i, "PositionZ",Position[2]);
            cache_get_value_name_float(i, "PositionA",Position[3]); 
            cache_get_value_name_int(i, "Farbe1",Color[0]);
            cache_get_value_name_int(i, "Farbe2",Color[1]);
            cache_get_value_name_int(i, "Paintjob",Paintjob); 

            //Zugehörigkeitsvariablen
            cache_get_value_name(i, "Kennzeichen",Schild);
            cache_get_value_name_int(i, "Fraktion",Fraktion);
            cache_get_value_name_int(i, "Gruppe",Gruppe);
            cache_get_value_name_int(i, "Autohaus",loadAutohaus); 
            cache_get_value_name_int(i, "Firma",Firma); 
            cache_get_value_name_int(i, "Nebenjob",Nebenjob); 
            cache_get_value_name_int(i, "Fahrschule",Fahrschule); 
            cache_get_value_name_int(i, "Garage",Garage); 
            cache_get_value_name_int(i, "GPark",GPark);
            cache_get_value_name(i, "Besitzer",Besitzer);

            //Nebenvariablen
            cache_get_value_name_int(i, "Abgeschleppt",Abgeschleppt); 
            cache_get_value_name_int(i, "Parkkralle",Parkkralle); 
            cache_get_value_name_int(i, "Kilometer",loadKilometer); 
            cache_get_value_name_int(i, "Rang",Rang); 
            cache_get_value_name_int(i, "Preis",Preis); 
            cache_get_value_name_int(i, "JobEXP",JobEXP);

            //Tuningvariablen
            cache_get_value_name_int(i, "Spoiler",Tuning[0]); 
            cache_get_value_name_int(i, "Hood",Tuning[1]); 
            cache_get_value_name_int(i, "Roof",Tuning[2]); 
            cache_get_value_name_int(i, "Sideskirt",Tuning[3]);
            cache_get_value_name_int(i, "Lamps",Tuning[4]); 
            cache_get_value_name_int(i, "Nitro",Tuning[5]); 
            cache_get_value_name_int(i, "Exhaust",Tuning[6]); 
            cache_get_value_name_int(i, "Wheels",Tuning[7]); 
            cache_get_value_name_int(i, "Stereo",Tuning[8]); 
            cache_get_value_name_int(i, "Hydraulics",Tuning[9]); 
            cache_get_value_name_int(i, "Front Bumper",Tuning[10]); 
            cache_get_value_name_int(i, "Rear Bumper",Tuning[11]); 
            cache_get_value_name_int(i, "Vent Right",Tuning[12]);
            cache_get_value_name_int(i, "Vent Left",Tuning[13]);

            //Damagevariablen
            cache_get_value_name_int(i, "Panels",Panels); 
            cache_get_value_name_int(i, "Doors",Doors); 
            cache_get_value_name_int(i, "Lights",Lights); 
            cache_get_value_name_int(i, "Tires",Tires);
                    
            //Fahrzeugerstellung
            if(Abgeschleppt == 0)
            {
                if(strlen(Besitzer) == 0)
                {
                    if(Nebenjob > 0)
                    {
                        if(Nebenjob == 2)//Pizzabote
                        {
                            vehicleid = CreateVehicle(ModelID,Position[0],Position[1],Position[2],Position[3],Color[0],Color[1],600);
                        }
                        else if(Nebenjob == 7)//Landwirt
                        {
                            vehicleid = CreateVehicle(ModelID,Position[0],Position[1],Position[2],Position[3],Color[0],Color[1],600);
                        }
                        else if(Nebenjob == 10)//Holzfäller
                        {
                            vehicleid = CreateVehicle(ModelID,Position[0],Position[1],Position[2],Position[3],Color[0],Color[1],600);
                        }
                        else
                        {
                            vehicleid = CreateVehicle(ModelID,Position[0],Position[1],Position[2],Position[3],Color[0],Color[1],180);
                        }
                        format(FahrzeugInfo[vehicleid][fKennzeichen], 0, "Nebenjob");
                        SetVehicleNumberPlate(vehicleid,"Nebenjob");
                    }
                    else if(loadAutohaus > 0)
                    {
                        vehicleid = CreateVehicle(ModelID,Position[0],Position[1],Position[2],Position[3],Color[0],Color[1],180);
                        format(FahrzeugInfo[vehicleid][fKennzeichen], 0, "Autohaus");
                        SetVehicleNumberPlate(vehicleid,"Autohaus");
                        GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);
                        SetVehicleParamsEx(vehicleid, false, false, false, true, false, false, false);
                    }
                    else if(Fraktion > 0)
                    {
                        vehicleid = CreateVehicle(ModelID,Position[0],Position[1],Position[2],Position[3],Color[0],Color[1],-1);
                        CreateFrakNummernSchild(vehicleid,Fraktion);
                        GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);
                        SetVehicleParamsEx(vehicleid, false, false, false, true, false, false, false);
                    }
                    else if(Gruppe > 0)
                    {
                        if(GPark == 0)
                        {
                            vehicleid = CreateVehicle(ModelID,Position[0],Position[1],Position[2],Position[3],Color[0],Color[1],-1);
                        }
                        else
                        {
                            if(GPark == 1)
                            {
                                vehicleid = CreateVehicle(ModelID,2405.1667,2826.0759,-47.9936,269.1802,Color[0],Color[1],-1);
                                SetVehicleVirtualWorld(vehicleid,Garage);
                            }
                            else if(GPark == 2)
                            {
                                vehicleid = CreateVehicle(ModelID,2405.3621,2830.8975,-47.9936,269.5629,Color[0],Color[1],-1);
                                SetVehicleVirtualWorld(vehicleid,Garage);
                            }
                            else if(GPark == 3)
                            {
                                vehicleid = CreateVehicle(ModelID,2405.5627,2835.4319,-47.9936,270.1735,Color[0],Color[1],-1);
                                SetVehicleVirtualWorld(vehicleid,Garage);
                            }
                            else if(GPark == 4)
                            {
                                vehicleid = CreateVehicle(ModelID,2405.7219,2839.9592,-47.9936,269.2777,Color[0],Color[1],-1);
                                SetVehicleVirtualWorld(vehicleid,Garage);
                            }
                            else if(GPark == 5)
                            {
                                vehicleid = CreateVehicle(ModelID,2405.8633,2844.2336,-47.9936,270.2021,Color[0],Color[1],-1);
                                SetVehicleVirtualWorld(vehicleid,Garage);
                            }
                            else if(GPark == 6)
                            {
                                vehicleid = CreateVehicle(ModelID,2422.6580,2826.0208,-47.9936,89.9365,Color[0],Color[1],-1);
                                SetVehicleVirtualWorld(vehicleid,Garage);
                            }
                            else if(GPark == 7)
                            {
                                vehicleid = CreateVehicle(ModelID,2422.6277,2830.5173,-47.9936,89.4820,Color[0],Color[1],-1);
                                SetVehicleVirtualWorld(vehicleid,Garage);
                            }
                            else if(GPark == 8)
                            {
                                vehicleid = CreateVehicle(ModelID,2422.6326,2835.1450,-47.9936,89.6107,Color[0],Color[1],-1);
                                SetVehicleVirtualWorld(vehicleid,Garage);
                            }
                            else if(GPark == 9)
                            {
                                vehicleid = CreateVehicle(ModelID,2422.6853,2839.8669,-47.9936,89.6220,Color[0],Color[1],-1);
                                SetVehicleVirtualWorld(vehicleid,Garage);
                            }
                            else if(GPark == 10)
                            {
                                vehicleid = CreateVehicle(ModelID,2422.7322,2844.5952,-47.9936,89.1004,Color[0],Color[1],-1);
                                SetVehicleVirtualWorld(vehicleid,Garage);
                            }
                        }
                        format(FahrzeugInfo[vehicleid][fKennzeichen], 5, Schild);
                        SetVehicleNumberPlate(vehicleid,Schild);
                        GetVehicleParamsEx(vehicleid, engine, lights, alarm, doors, bonnet, boot, objective);
                        SetVehicleParamsEx(vehicleid, false, false, false, true, false, false, false);
                    }
                    else if(Fahrschule > 0)
                    {
                        vehicleid = CreateVehicle(ModelID,Position[0],Position[1],Position[2],Position[3],Color[0],Color[1],180);
                        format(FahrzeugInfo[vehicleid][fKennzeichen], 0, "Fahrschule");
                        SetVehicleNumberPlate(vehicleid,"Fahrschule");
                    }
                    FahrzeugInfo[vehicleid][fTank] = VehicleData[GetVehicleModel(vehicleid)-400][vehLiter];

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
                    FahrzeugInfo[vehicleid][fBesitzer] = Besitzer;

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
                    FahrzeugInfo[vehicleid][fAutohaus] = loadAutohaus;
                    FahrzeugInfo[vehicleid][fNebenjob] = Nebenjob;
                    FahrzeugInfo[vehicleid][fGarage] = Garage;
                    FahrzeugInfo[vehicleid][fGPark] = GPark;
                    FahrzeugInfo[vehicleid][fFahrschule] = Fahrschule;
                    FahrzeugInfo[vehicleid][fDatabaseID] = Database;
                    FahrzeugInfo[vehicleid][fAbgeschleppt] = Abgeschleppt;
                    FahrzeugInfo[vehicleid][fParkkralle] = Parkkralle;
                    FahrzeugInfo[vehicleid][fKilometer] = loadKilometer;
                    FahrzeugInfo[vehicleid][fRang] = Rang,
                    FahrzeugInfo[vehicleid][fPreis] = Preis;
                    FahrzeugInfo[vehicleid][fJobEXP] = JobEXP;
                    FahrzeugInfo[vehicleid][fBesitzerID] = -1;

                    //Fahrzeugtuningvariablen
                    FahrzeugInfo[vehicleid][fTuning][0] = Tuning[0]; FahrzeugInfo[vehicleid][fTuning][1] = Tuning[1]; FahrzeugInfo[vehicleid][fTuning][2] = Tuning[2];
                    FahrzeugInfo[vehicleid][fTuning][3] = Tuning[3]; FahrzeugInfo[vehicleid][fTuning][4] = Tuning[4]; FahrzeugInfo[vehicleid][fTuning][5] = Tuning[5];
                    FahrzeugInfo[vehicleid][fTuning][6] = Tuning[6]; FahrzeugInfo[vehicleid][fTuning][7] = Tuning[7]; FahrzeugInfo[vehicleid][fTuning][8] = Tuning[8];
                    FahrzeugInfo[vehicleid][fTuning][9] = Tuning[9]; FahrzeugInfo[vehicleid][fTuning][10] = Tuning[10]; FahrzeugInfo[vehicleid][fTuning][11] = Tuning[11];
                    FahrzeugInfo[vehicleid][fTuning][12] = Tuning[12]; FahrzeugInfo[vehicleid][fTuning][13] = Tuning[13];

                    AddVehicleTuning(vehicleid);

                    //Labelerstellung
                    AddOther(vehicleid);
                }
            }
        }
    }
    printf("MYSQL: Es wurden '%d' Fahrzeuge geladen und erstellt.", rows);
    return 1;
}