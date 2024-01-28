/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onFireMissionLoaded();
public onFireMissionLoaded()
{
    new rows;
    cache_get_row_count(rows);
    if(rows)
    {
        for(new i = 0; i < rows; i++)
        {
            cache_get_value_name_float(i, "Pos_X", FeuerInfo[i][oPosX]); FeuerPos[0][i] = 0;
            cache_get_value_name_float(i, "Pos_Y", FeuerInfo[i][oPosY]); FeuerPos[1][i] = 0;
            cache_get_value_name_float(i, "Pos_Z", FeuerInfo[i][oPosZ]); FeuerPos[2][i] = 0;
            FeuerInfo[i][Erstellt] = true;
            FeuerInfo[i][FID] = CreateDynamicObject(18689,FeuerInfo[i][oPosX],FeuerInfo[i][oPosY],FeuerInfo[i][oPosZ],0.0,0.0,0.0);
        }
        FeuerStatusTimer = SetTimer("FeuerStatus",5000,true);
        foreach(new i : Player)
        {
            if(SpielerInfo[i][sFraktion] == 5 || SpielerInfo[i][sFraktion] == 2 || SpielerInfo[i][sFraktion] == 6)
            {
                if(SpielerInfo[i][sFraktion] == 2 || SpielerInfo[i][sFraktion] == 6)
                {
                    SendClientMessage(i,COLOR_BLUE,"ZENTRALE: AN ALLE EINHEITEN !! DAS S.A RETTUNGSDIENST, MELDET EINEN BRAND!");
                    SendClientMessage(i,COLOR_BLUE,"ZENTRALE: AN ALLE EINHEITEN !! DAS FEUER BEFINDET SICH AM ROTEN MARKER.");
                }
                if(SpielerInfo[i][sFraktion] == 5)
                {
                    SendClientMessage(i,COLOR_BLUE,"ZENTRALE: AN ALLE EINHEITEN !! EINE UNBEKANNTE PERSON, MELDET EINEN BRAND!");
                    SendClientMessage(i,COLOR_BLUE,"ZENTRALE: AN ALLE EINHEITEN !! DAS FEUER BEFINDET SICH AM ROTEN MARKER!");
                    SendClientMessage(i,COLOR_YELLOW,"Info: Benutze '/feueralarm' um ihn auszuschalten.");
                    PlayAudioStreamForPlayer(i,"https://rosalife.de/sounds/Feueralarm.mp3");
                    SetPVarInt(i,"Feueralarm",1);
                }
                SetPlayerCheckpoint(i,FeuerInfo[0][oPosX],FeuerInfo[0][oPosY],FeuerInfo[0][oPosZ],2.5);
            }
        }
        Feuerbereit = true;
    }
    return 1;
}