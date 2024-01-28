/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onLoadPlayerAccount(playerid);
public onLoadPlayerAccount(playerid)
{
    new rows, _helper;
    cache_get_row_count(rows);
    if(rows)
    {
        cache_get_value_name_float(0, "PositionX",SpielerInfo[playerid][sPosX]); 
        cache_get_value_name_float(0, "PositionY",SpielerInfo[playerid][sPosY]);  
        cache_get_value_name_float(0, "PositionZ",SpielerInfo[playerid][sPosZ]); 
        cache_get_value_name_float(0, "PositionA",SpielerInfo[playerid][sPosA]);  
        cache_get_value_name_int(0, "Interior",SpielerInfo[playerid][sInterior]);
        cache_get_value_name_int(0, "VirtualWorld",SpielerInfo[playerid][sVirtualWorld]);
        cache_get_value_name_float(0, "Tot_X",Tot_X[playerid]);  
        cache_get_value_name_float(0, "Tot_Y",Tot_Y[playerid]); 
        cache_get_value_name_float(0, "Tot_Z",Tot_Z[playerid]);
        cache_get_value_name_int(0, "Tot_Int",Tot_Int[playerid]); 
        cache_get_value_name_int(0, "Tot_World",Tot_World[playerid]);
        cache_get_value_name_int(0, "Spawn", SpielerInfo[playerid][sSpawn]); 
        cache_get_value_name_int(0, "Stadt", SpielerInfo[playerid][sStadt]);  
        cache_get_value_name_int(0, "SkinID", _helper); SetPlayerSkin(playerid,_helper);
        cache_get_value_name_int(0, "Admin", SpielerInfo[playerid][sAdmin]);
        cache_get_value_name_int(0, "Fraktion", SpielerInfo[playerid][sFraktion]); 
        cache_get_value_name_int(0, "Team", SpielerInfo[playerid][sTeam]); 
        cache_get_value_name_int(0, "Leader", SpielerInfo[playerid][sLeader]);  
        cache_get_value_name_int(0, "Rank", SpielerInfo[playerid][sRank]); 
        cache_get_value_name(0, "lVerbrechen", SpielerInfo[playerid][sLastCrime]);
        cache_get_value_name_int(0, "Wanteds", _helper); SetPlayerWantedLevelEx(playerid,_helper);
        cache_get_value_name_int(0, "Knastzeit", SpielerInfo[playerid][sKnast]); 
        cache_get_value_name_int(0, "Zelle", SpielerInfo[playerid][sZelle]);  
        cache_get_value_name_int(0, "EXP", SpielerInfo[playerid][sEXP]);
        cache_get_value_name_int(0, "EXPNeeded", SpielerInfo[playerid][sEXPNeeded]);
        cache_get_value_name_int(0, "Level", _helper); SetPlayerScore(playerid,_helper);
        cache_get_value_name_int(0, "Verwarnungen", SpielerInfo[playerid][sWarns]);
        cache_get_value_name_int(0, "Mutezeit", SpielerInfo[playerid][sMuted]);
        cache_get_value_name_int(0, "WerbungSperre", SpielerInfo[playerid][sADSperre]);
        cache_get_value_name_int(0, "Badword", SpielerInfo[playerid][sBadword]); 
        cache_get_value_name_int(0, "Bargeld", _helper); GivePlayerMoneyEx(playerid,_helper);
        cache_get_value_name_int(0, "Perso", SpielerInfo[playerid][sPerso]); 
        cache_get_value_name_int(0, "Stadtplan", SpielerInfo[playerid][sStadtplan]);
        cache_get_value_name_int(0, "BankPIN", SpielerInfo[playerid][sBankPin]);
        cache_get_value_name_int(0, "Bankkonto", SpielerInfo[playerid][sBankkonto]); 
        cache_get_value_name_int(0, "Mission", SpielerInfo[playerid][sMission]); 
        cache_get_value_name_int(0, "MissionComplete", SpielerInfo[playerid][sMissionComp]);  
        cache_get_value_name_int(0, "Tankstelle", SpielerInfo[playerid][sTankstelle]);  
        cache_get_value_name_int(0, "Ammunation", SpielerInfo[playerid][sAmmunation]); 
        cache_get_value_name_int(0, "Store", SpielerInfo[playerid][sStore]);
        cache_get_value_name_int(0, "Haus", SpielerInfo[playerid][sHaus]); 
        cache_get_value_name_int(0, "Gruppenhaus", SpielerInfo[playerid][sGHaus]);
        cache_get_value_name_int(0, "Mieter", SpielerInfo[playerid][sMieter]);
        cache_get_value_name_int(0, "Nebenjob", SpielerInfo[playerid][sNebenjob]);
        cache_get_value_name_int(0, "Geschlecht", SpielerInfo[playerid][sGeschlecht]);
        cache_get_value_name_int(0, "QuitJob", SpielerInfo[playerid][sQuitJob]);
        cache_get_value_name_int(0, "Autoschein", SpielerInfo[playerid][sCarLic]);
        cache_get_value_name_int(0, "Bootschein", SpielerInfo[playerid][sBootLic]);
        cache_get_value_name_int(0, "Waffenschein", SpielerInfo[playerid][sWeaponLic]);
        cache_get_value_name_int(0, "Flugschein", SpielerInfo[playerid][sFlugLic]);  
        cache_get_value_name_int(0, "LKWschein", SpielerInfo[playerid][sTruckLic]); 
        cache_get_value_name_int(0, "Motorradschein", SpielerInfo[playerid][sBikeLic]); 
        cache_get_value_name_int(0, "Krankenhaus", SpielerInfo[playerid][sKrankenhaus]);  
        cache_get_value_name_int(0, "Wiederbeleben", SpielerInfo[playerid][sWiederbeleben]); 
        cache_get_value_name_int(0, "Paket", SpielerInfo[playerid][sPaket]);  
        cache_get_value_name_int(0, "PayDay", SpielerInfo[playerid][sPayDay]); 
        cache_get_value_name_int(0, "Navi", SpielerInfo[playerid][sNavi]); 
        cache_get_value_name_int(0, "Handy", SpielerInfo[playerid][sHandy]); 
        cache_get_value_name_int(0, "Guthaben", SpielerInfo[playerid][sGuthaben]); 
        cache_get_value_name_int(0, "Telefonbuch", SpielerInfo[playerid][sTelefonbuch]);
        cache_get_value_name_int(0, "Repairkit", SpielerInfo[playerid][sRepairkit]); 
        cache_get_value_name_int(0, "MP3Player", SpielerInfo[playerid][sMP3]); 
        cache_get_value_name_int(0, "PBKills", SpielerInfo[playerid][sPBKills]); 
        cache_get_value_name_int(0, "PBTode", SpielerInfo[playerid][sPBTode]); 
        cache_get_value_name_int(0, "Startbonus", SpielerInfo[playerid][sStartbonus]);
        cache_get_value_name_int(0, "Fraksperre", SpielerInfo[playerid][sFrakSperre]);
        cache_get_value_name_int(0, "Handschellen", _helper); SetPVarInt(playerid,"HandschellenLogged",_helper);
        cache_get_value_name_int(0, "icpNachrichten", SpielerInfo[playerid][icpNachrichten]);
        cache_get_value_name_int(0, "icpHitsound", SpielerInfo[playerid][icpHitsound]); 
        cache_get_value_name_int(0, "icpOChat", SpielerInfo[playerid][icpOChat]);
        cache_get_value_name_int(0, "icpCamera", SpielerInfo[playerid][icpCamera]); 
        cache_get_value_name_int(0, "icpHandy", SpielerInfo[playerid][icpHandy]);  
        cache_get_value_name_int(0, "stvoAutoschein", SpielerInfo[playerid][stvoCarLic]);  
        cache_get_value_name_int(0, "stvoMotorradschein", SpielerInfo[playerid][stvoBikeLic]); 
        cache_get_value_name_int(0, "stvoTruckschein", SpielerInfo[playerid][stvoTruckLic]); 
        cache_get_value_name_int(0, "stvoFlugschein", SpielerInfo[playerid][stvoFlugLic]);
        cache_get_value_name_int(0, "stvoBootschein", SpielerInfo[playerid][stvoBootLic]);
        cache_get_value_name_int(0, "TicketsBearbeitet", SpielerInfo[playerid][sTicketsBearbeitet]); 
        cache_get_value_name_int(0, "PayDayGeld", SpielerInfo[playerid][sPayDayGeld]);  
        cache_get_value_name_int(0, "Lotto1", SpielerInfo[playerid][sLotto][0]);
        cache_get_value_name_int(0, "Lotto2", SpielerInfo[playerid][sLotto][1]); 
        cache_get_value_name_int(0, "Lotto3", SpielerInfo[playerid][sLotto][2]); 
        cache_get_value_name_int(0, "TruckerSkill", SpielerInfo[playerid][sJobEXP][0]); 
        cache_get_value_name_int(0, "PizzaboteSkill", SpielerInfo[playerid][sJobEXP][1]); 
        cache_get_value_name_int(0, "KehrmaschinenSkill", SpielerInfo[playerid][sJobEXP][2]);
        cache_get_value_name_int(0, "PilotenSkill", SpielerInfo[playerid][sJobEXP][3]);
        cache_get_value_name_int(0, "BusfahrerSkill", SpielerInfo[playerid][sJobEXP][4]); 
        cache_get_value_name_int(0, "MuellmannSkill", SpielerInfo[playerid][sJobEXP][5]); 
        cache_get_value_name_int(0, "Drogen", SpielerInfo[playerid][sDrogen]);
        cache_get_value_name_int(0, "Tutorial", SpielerInfo[playerid][sTutorial]); 
        cache_get_value_name_int(0, "Quest", SpielerInfo[playerid][sQuest]); 
        cache_get_value_name_int(0, "Contract", SpielerInfo[playerid][sContract]); 
        cache_get_value_name_int(0, "Gruppe", SpielerInfo[playerid][sGruppe]);  
        cache_get_value_name_int(0, "GLeader", SpielerInfo[playerid][sGLeader]);  
        cache_get_value_name_int(0, "GRank", SpielerInfo[playerid][sGRank]); 
        cache_get_value_name_int(0, "sFLeader", SpielerInfo[playerid][sFLeader]); 
        cache_get_value_name_int(0, "sFirma", SpielerInfo[playerid][sFirma]);
        cache_get_value_name_int(0, "sFRank", SpielerInfo[playerid][sFRank]);
        cache_get_value_name_int(0, "sGFirma", SpielerInfo[playerid][sGFirma]); 
        cache_get_value_name_int(0, "Donator", SpielerInfo[playerid][sDonator]);  
        cache_get_value_name_int(0, "Premium", SpielerInfo[playerid][sPremium]);  
        cache_get_value_name_int(0, "Garage", SpielerInfo[playerid][sGarage]);  
        cache_get_value_name_int(0, "GMieter", SpielerInfo[playerid][sGMieter]);
        cache_get_value_name_int(0, "Materialien", SpielerInfo[playerid][sMaterialien]);
        cache_get_value_name_int(0, "Kurrier", SpielerInfo[playerid][sKurrier]);
        cache_get_value_name_int(0, "Bombe", SpielerInfo[playerid][sBombe]);
        cache_get_value_name_int(0, "Pfandflaschen", SpielerInfo[playerid][sPfandflaschen]);
        cache_get_value_name_int(0, "Beutel", SpielerInfo[playerid][sBeutel]);
        cache_get_value_name_int(0, "Kampfstyle", SpielerInfo[playerid][sKampfstyle]);  
        cache_get_value_name_int(0, "Helm", SpielerInfo[playerid][sHelm]); 
        cache_get_value_name_int(0, "DrogenPflanze", SpielerInfo[playerid][sDrogenPflanze]);
        cache_get_value_name_int(0, "C4", SpielerInfo[playerid][sc4]);

        SpielerInfo[playerid][sOnline] = 1;

        //Waffen laden
        new Waffen[13][2];
        cache_get_value_name_int(0, "wpSlot1", Waffen[0][0]); cache_get_value_name_int(0, "wpSlot2", Waffen[1][0]); cache_get_value_name_int(0, "wpSlot3", Waffen[2][0]);
        cache_get_value_name_int(0, "wpSlot4", Waffen[3][0]); cache_get_value_name_int(0, "wpSlot5", Waffen[4][0]); cache_get_value_name_int(0, "wpSlot6", Waffen[5][0]);
        cache_get_value_name_int(0, "wpSlot7", Waffen[6][0]); cache_get_value_name_int(0, "wpSlot8", Waffen[7][0]); cache_get_value_name_int(0, "wpSlot9", Waffen[8][0]);
        cache_get_value_name_int(0, "wpSlot10", Waffen[9][0]); cache_get_value_name_int(0, "wpSlot11", Waffen[10][0]); cache_get_value_name_int(0, "wpSlot12", Waffen[11][0]);

        cache_get_value_name_int(0, "wpSlot1Ammu", Waffen[0][1]); cache_get_value_name_int(0, "wpSlot2Ammu", Waffen[1][1]); cache_get_value_name_int(0, "wpSlot3Ammu", Waffen[2][1]);
        cache_get_value_name_int(0, "wpSlot4Ammu", Waffen[3][1]); cache_get_value_name_int(0, "wpSlot5Ammu", Waffen[4][1]); cache_get_value_name_int(0, "wpSlot6Ammu", Waffen[5][1]);
        cache_get_value_name_int(0, "wpSlot7Ammu", Waffen[6][1]); cache_get_value_name_int(0, "wpSlot8Ammu", Waffen[7][1]); cache_get_value_name_int(0, "wpSlot9Ammu", Waffen[8][1]);
        cache_get_value_name_int(0, "wpSlot10Ammu", Waffen[9][1]); cache_get_value_name_int(0, "wpSlot11Ammu", Waffen[10][1]); cache_get_value_name_int(0, "wpSlot12Ammu", Waffen[11][1]);

        GivePlayerWeapon(playerid,WEAPON:Waffen[0][0],Waffen[0][1]); GivePlayerWeapon(playerid,WEAPON:Waffen[1][0],Waffen[1][1]); GivePlayerWeapon(playerid,WEAPON:Waffen[2][0],Waffen[2][1]); GivePlayerWeapon(playerid,WEAPON:Waffen[3][0],Waffen[3][1]);
        GivePlayerWeapon(playerid,WEAPON:Waffen[4][0],Waffen[4][1]); GivePlayerWeapon(playerid,WEAPON:Waffen[5][0],Waffen[5][1]); GivePlayerWeapon(playerid,WEAPON:Waffen[6][0],Waffen[6][1]); GivePlayerWeapon(playerid,WEAPON:Waffen[7][0],Waffen[7][1]);
        GivePlayerWeapon(playerid,WEAPON:Waffen[8][0],Waffen[8][1]); GivePlayerWeapon(playerid,WEAPON:Waffen[9][0],Waffen[9][1]); GivePlayerWeapon(playerid,WEAPON:Waffen[10][0],Waffen[10][1]); GivePlayerWeapon(playerid,WEAPON:Waffen[11][0],Waffen[11][1]); GivePlayerWeapon(playerid,WEAPON:Waffen[12][0],Waffen[12][1]);

        LoadPrivatCar(playerid);
        SetPlayerHealth(playerid,100);
        SetPlayerArmour(playerid,0);

        new string[128];

        if(SpielerInfo[playerid][sMuted] > 0)
        {
            MutePlayer(playerid,SpielerInfo[playerid][sMuted]);
            format(string,128,"Du bist noch für weitere %d Minuten gemutet. Reiß dich in Zukunft zusammen.",SpielerInfo[playerid][sMuted]);
            SendClientMessage(playerid,COLOR_RED,string);
        }
        if(SpielerInfo[playerid][sADSperre] > 0)
        {
            MutePlayer(playerid,SpielerInfo[playerid][sMuted]);
            format(string,128,"Du bist noch für weitere %d Minuten von der Werbung ausgeschlossen.",SpielerInfo[playerid][sADSperre]);
            SendClientMessage(playerid,COLOR_RED,string);
        }
        if(SpielerInfo[playerid][sAdmin] > 0)
        {
            format(string,128,"%s %s hat sich soeben eingeloggt.",AdminName(playerid),SpielerInfo[playerid][sName]);
            SendAdminMessage(COLOR_BLUE,string);
        }
        TextDrawShowForPlayer(playerid, Time);
        TextDrawShowForPlayer(playerid, Time2);
        if(SpielerInfo[playerid][sKampfstyle] == 1){SetPlayerFightingStyle(playerid,FIGHT_STYLE_NORMAL);}
        else if(SpielerInfo[playerid][sKampfstyle] == 2){SetPlayerFightingStyle(playerid,FIGHT_STYLE_BOXING);}
        else if(SpielerInfo[playerid][sKampfstyle] == 3){SetPlayerFightingStyle(playerid,FIGHT_STYLE_KUNGFU);}
        else if(SpielerInfo[playerid][sKampfstyle] == 4){SetPlayerFightingStyle(playerid,FIGHT_STYLE_KNEEHEAD);}
        else if(SpielerInfo[playerid][sKampfstyle] == 5){SetPlayerFightingStyle(playerid,FIGHT_STYLE_GRABKICK);}
        else if(SpielerInfo[playerid][sKampfstyle] == 6){SetPlayerFightingStyle(playerid,FIGHT_STYLE_ELBOW);}

        PayDayTimer[playerid] = SetTimerEx("PayDay",60000,true,"i",playerid);
		AC_Check[playerid] = SetTimerEx("AC_CheckStatus",1000,true,"i",playerid);
		Afktimer[playerid] = SetTimerEx("Afktimered",60000, true,"i",playerid);
		SetPlayerColor(playerid,0xFFFFFFFF);
		TogglePlayerSpectating(playerid,false);
		SpawnPlayerEx(playerid);
    }
    return 1;
}