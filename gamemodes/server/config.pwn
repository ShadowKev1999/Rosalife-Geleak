/*==============================================================================
	    Rosalife Reloaded Gamemode

		Copyright (C) 2023 ShadowKev1999 & c0kkie

==============================================================================*/

//#define LOCALHOST //Ausklammern falls nicht Localhost
#if defined LOCALHOST
#define MYSQL_HOST "localhost" //Host / Datenbank IP
#define MYSQL_USER "root" //Benutzername
#define MYSQL_PASS "" //MySQL Passwort
#define MYSQL_DATA "rosalife" //Datenbank Name
#else
#define MYSQL_HOST "localhost" //Host / Datenbank IP
#define MYSQL_USER "admin" //Benutzername
#define MYSQL_PASS "!#22ShadowKev22#!" //MySQL Passwort
#define MYSQL_DATA "rosalife" //Datenbank Name
#endif

#define SERV_NAME "German Rosalife"
#define SERV_SLOG "Reloaded"
#define SERV_MODE "German Rosalife v2.0"
#define SERV_WURL "www.rosalife.de"
#define SERV_STAG "GER"
#define SERV_PASS "test123"
#define SERV_LOAD "Wird geladen"
#define SERV_LANGUAGE "German / Deutsch"

//Allgemeine Settings - German Samplife
#define MAX_FRAKS 				(20)
#define MAX_PCAR                (3)
#define MAX_NAGELBAENDER		(50)
#define MAX_SPERREN    			(50)
#define MAX_SCHILDER    		(50)
#define MAX_FEUER    			(100)
#define MAX_BLITZER 			(50)
#define MAX_GRUPPEN             (50)
#define MAX_FIRMEN              (10)
#define MAX_FIRMENGR    		(10)
#define MAX_LAGER               (10)
#define MAX_TACHOTIME           (200)
#define MAX_GANGZONES           (20)
#define MAX_TSTELLEN            (20)
#define MAX_AMMUS               (15)
#define MAX_STORES              (15)
#define MAX_HAUSER              (150)
#define MAX_DROGEN              (100)
#define MAX_GARAGEN             (50)
#define MAX_ORGANISATIONEN      (25)
#define MAX_JOBS                (11)
#define MAX_BOTS              	(5)
#define MAX_WERBETAFELN         (22)

#define AC_VERSION "v.1.0"