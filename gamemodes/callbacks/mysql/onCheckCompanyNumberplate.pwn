/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward onCheckCompanyNumberplate(playerid, const inputtext[]);
public onCheckCompanyNumberplate(playerid, const inputtext[])
{
    new rows, query[256];
    cache_get_row_count(rows);
    if(rows)
    {
        format(query, sizeof(query), "{FFFFFF}Dein Wunschkennzeichen: {FF0000}%s{FFFFFF} ist bereits vergeben.\nBitte gib unten ein neuen Wunschkennzeichen an.", inputtext);
        ShowPlayerDialog(playerid,DIALOG_CREATE_FIRMA3,DIALOG_STYLE_INPUT,"{007DFF}"SERV_NAME" - Firma erstellen",query,"Weiter","Abbrechen");
    }
    else
    {
        new FirmaName[24];
		GetPVarString(playerid, "FirmaName", FirmaName, sizeof(FirmaName));

        for(new mf=1;mf<MAX_FIRMEN;mf++)
        {
            if(FirmenInfo[mf][fErstellt] == true)continue;
            format(FirmenInfo[mf][fName], 24, FirmaName);
            format(FirmenInfo[mf][fSchild], 5, inputtext);
            format(FirmenInfo[mf][fOwner], MAX_PLAYER_NAME, SpielerInfo[playerid][sName]);
            FirmenInfo[mf][fErstellt] = true;
            FirmenInfo[mf][fKasse] = 250000;
            FirmenInfo[mf][geburen] = 0;
            FirmenInfo[mf][geburenLS] = 0;
            FirmenInfo[mf][geburenSF] = 0;
            FirmenInfo[mf][geburenLV] = 0;

            GivePlayerMoneyEx(playerid,-300000);
            SpielerInfo[playerid][sFirma] = mf;
            SpielerInfo[playerid][sFLeader] = mf;
            SpielerInfo[playerid][sFRank] = 7;

            format(query, sizeof(query), "Du hast die Firma %s erfolgreich gegründet.", FirmaName);
            SendClientMessage(playerid,COLOR_SUPER,query);
            mysql_format(sqlHandle, query, sizeof(query), "INSERT INTO `firmen` (`ID`, `Name`, `Kennzeichen`, `Kasse`) VALUES ('%d', '%s', '%s', '200000')", mf, FirmaName, inputtext);
            mysql_tquery(sqlHandle, query);

            mysql_format(sqlHandle, query, sizeof(query), "INSERT INTO `frangnamen` (`fid`) VALUES ('%d')", mf);
            mysql_tquery(sqlHandle, query);
            break;
        }
    }
    return 1;
}