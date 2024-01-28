/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

//Schnell Defines - German Samplife
#define NichtBerechtigt SendClientMessage(playerid,0xFF0041FF,"Du bist dazu nicht berechtigt.");
#define KeinPerso SendClientMessage(playerid,0xFF0041FF,"Du benötigst einen Personalausweis.");
#define AdminDienst SendClientMessage(playerid,0xFF0041FF,"Du bist nicht im Support-Dienst.");
#define NichtOnline SendClientMessage(playerid,0xFF0041FF,"Der angegebene Spieler ist nicht online.");
#define KeineFunktion ShowPlayerDialog(playerid,9992,DIALOG_STYLE_MSGBOX,"{007DFF}"SERV_NAME" - Error 404","Diese Funktion wurde noch nicht fertiggestellt.\nSie wird in späteren Updates verfügbar sein.","Weiter","");
#define NichtNahe SendClientMessage(playerid,COLOR_GREY,"{FFFFFF}Der angegebene Spieler ist {007DFF}nicht{FFFFFF} nah genug.");
#define GTFP(%0,%1,%2,%3) GameTextForPlayer(%0,%1,%2,%3)