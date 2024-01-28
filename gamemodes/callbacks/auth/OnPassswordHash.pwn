/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

forward OnPassswordHash(playerid);
public OnPassswordHash(playerid)
{
	new hash[BCRYPT_HASH_LENGTH];
	bcrypt_get_hash(hash);
	CreateAccount(playerid, hash);
	SetPVarString(playerid,"Passwort",hash);
	SetPVarInt(playerid,"LoggedIn",1);
	ShowPlayerDialog(playerid,DIALOG_REGSTEP2,DIALOG_STYLE_INPUT,"{007DFF}"SERV_NAME" | Account erstellen 2/4","{FFFFFF}Bitte gebe in der unteren Box eine gültige E-Mail Adresse ein. Du erhälst Mails von "SERV_NAME". Unter anderem\nwird auch ein Forum Account auf {FE0000}"SERV_WURL"{FFFFFF} für dich mit dieser Email-Adresse angelegt.","Absenden","");
	return 1;
}