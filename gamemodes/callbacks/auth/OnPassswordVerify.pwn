/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward OnPassswordVerify(playerid, bool:success);
public OnPassswordVerify(playerid, bool:success)
{
	if(success)
	{
		KillTimer(CamFahrten[playerid]);
		SetPVarInt(playerid,"LoggedIn",1);
		LoadAccount(playerid);
	}
	else
	{
		new logingstring[340];
		format(logingstring,sizeof(logingstring),"{FFFFFF}Willkommen zur�ck auf "SERV_NAME" {007DFF}%s{FFFFFF}.\nIn unserer Datenbank wurde dein Account gefunden. Bitte logge dich ein indem du das Passwort\neingibst was du bei deiner Registration gew�hlt hattest. Bei Fragen wende dich an unser Team.\n\n{FE0000}Passwort und Accountname stimmen nicht �berein.",SpielerInfo[playerid][sName]);
		ShowPlayerDialog(playerid,DIALOG_LOGIN,DIALOG_STYLE_PASSWORD,"{007DFF}"SERV_NAME" | Einloggen",logingstring,"Weiter","");
	}
	return 1;
}