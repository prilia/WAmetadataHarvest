-- Adminer 3.6.1 MySQL dump

SET NAMES utf8;
SET foreign_key_checks = 0;
SET time_zone = 'SYSTEM';
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

CREATE TABLE `harvest` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(36) NOT NULL,
  `directory` varchar(2024) NOT NULL,
  `status` enum('discovered','pending','processed') NOT NULL,
  `setting` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  `form` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;


CREATE TABLE `translation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(1024) NOT NULL,
  `value` varchar(1024) NOT NULL,
  `count` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `locale` char(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2434 DEFAULT CHARSET=utf8;

INSERT INTO `translation` (`id`, `key`, `value`, `count`, `locale`) VALUES
(1739,	'Sign In',	'Přihlášení',	0,	'cs_CZ'),
(1740,	'Username',	'Jméno',	0,	'cs_CZ'),
(1742,	'Password',	'Heslo',	0,	'cs_CZ'),
(1744,	'Remember',	'Zapamatovat',	0,	'cs_CZ'),
(1745,	'Cannot access your account?',	'Obnovení hesla',	0,	'cs_CZ'),
(1746,	'Account Recovery',	'Obnovení hesla',	0,	'cs_CZ'),
(1747,	'Email',	'Email',	0,	'cs_CZ'),
(1748,	'You must enter valid email address.',	'Musíte zadat platnou emailovou adresu.',	0,	'cs_CZ'),
(1749,	'Recover Account',	'Obnovení hesla',	0,	'cs_CZ'),
(1750,	'Sign in',	'Přihlášení',	0,	'cs_CZ'),
(1751,	'You must enter username.',	'Musíte zadat jméno.',	0,	'cs_CZ'),
(1752,	'You must enter password.',	'Musíte zadat heslo.',	0,	'cs_CZ'),
(1753,	'cs_CZ',	'Česky',	0,	'cs_CZ'),
(1791,	'Sign up',	'Registrace',	0,	'cs_CZ'),
(1794,	'You have been successfully signed in.',	'Přihlášení bylo úspěšně.',	0,	'cs_CZ'),
(1795,	'Settings',	'Nastavení',	0,	'cs_CZ'),
(1796,	'Sign out',	'Odhlásit',	0,	'cs_CZ'),
(1797,	'You have been signed out.',	'Odhlášení bylo úspěšně.',	0,	'cs_CZ'),
(1798,	'User: <strong>%s</strong>',	'Uživatel: <strong>%s</strong>',	0,	'cs_CZ'),
(1799,	'Statistics',	'Statistiky',	0,	'cs_CZ'),
(1801,	'Home',	'Domů',	0,	'cs_CZ'),
(1813,	'Sign Up',	'Registrace',	0,	'cs_CZ'),
(1818,	'Only a-z, 0-9 and _ are allowed.',	'Jen a-z, 0-9 a _ jsou povolené.',	0,	'cs_CZ'),
(1822,	'Re-Enter Password',	'Heslo (pro kontrolu)',	0,	'cs_CZ'),
(1823,	'Passwords don\'t match.',	'Hesla nesouhlasí.',	0,	'cs_CZ'),
(1824,	'At least %d characters long.',	'Alespoň %d znaků dlouhé.',	0,	'cs_CZ'),
(1825,	'Maximal length of username is %d.',	'Maximální délka uživatelského jména je %d.',	0,	'cs_CZ'),
(1826,	'You must enter email.',	'Musíte zadat email.',	0,	'cs_CZ'),
(1827,	'Password must be at least %s characters long.',	'Heslo musí být dlouhé alespoň %s znaků.',	0,	'cs_CZ'),
(1829,	'%d up to %d characters of a-z, 0-9 and _.',	'%d až %d znaků složených z a-z, 0-9 a _.',	0,	'cs_CZ'),
(1863,	'Please enter a numeric value.',	'Prosím vložte číselnou hodnotu.',	0,	'cs_CZ'),
(1991,	'View',	'Zobrazit',	0,	'cs_CZ'),
(1992,	'Edit',	'Upravit',	0,	'cs_CZ'),
(2027,	'Close',	'Zavřít',	0,	'cs_CZ'),
(2030,	'Cancel',	'Storno',	0,	'cs_CZ'),
(2044,	'or',	'nebo',	0,	'cs_CZ'),
(2130,	'Prosím vyplňte povinné pole.',	'Prosím vyplňte povinné pole.',	0,	'cs_CZ'),
(2133,	'Not authorized',	'Not authorized',	0,	'cs_CZ'),
(2134,	'You must be logged in to proceed.',	'Pro dokončení akce se musíte přihlásit.',	0,	'cs_CZ'),
(2190,	'Musíte zadat platnou emailovou adresu.',	'Musíte zadat platnou emailovou adresu.',	0,	'cs_CZ'),
(2194,	'Hello,\nyou or someone else tried to recover your password.\nIf it is not the case please just ignore this email.',	'Zdravím,\r\nVy nebo někdo jiný se pokusil obnovit Vaše heslo.\r\nPokud tomu tak není prosím ignorujte tento email.',	0,	'cs_CZ'),
(2195,	'You can <a href=\"%s\">set new password</a>\nLink will expire in few hours.',	'Můžete <a href=\"%s\">nastavit nové heslo</a>\r\nOdkaz vyprší za pár hodin.',	0,	'cs_CZ'),
(2196,	'You can always try to <a href=\"%s\">recover your password</a> again.',	'Vždy můžete znovu <a href=\"%s\">zažádat o obnovení hesla</a>.',	0,	'cs_CZ'),
(2197,	'With wish of sunny day\n%s %s',	'S přáním pěkného dne\r\n%s %s',	0,	'cs_CZ'),
(2198,	'You can set new password via this url %s\nIt will expire in few hours.',	'Můžete nastavit nové heslo navštívením této url %s\r\nVyprší za pár hodin.',	0,	'cs_CZ'),
(2199,	'You can always try to recover your password again using this url %s',	'Vždy si můžete zažádat o obnovení hesla pomocí této url %s',	0,	'cs_CZ'),
(2200,	'Instructions how to recover your password were sent on your email.',	'Instrukce jak obnovit Vaše heslo byly odeslány na Váš email.',	0,	'cs_CZ'),
(2203,	'Can\'t access your account?',	'Nedaří se vám přihlásit se ke svému účtu?',	0,	'cs_CZ'),
(2204,	'Account Recovery - %s',	'Obnovení hesla - %s',	0,	'cs_CZ'),
(2205,	'in charge of automated tasks',	'stará se o automatizované úkoly',	0,	'cs_CZ'),
(2206,	'With wish of sunny day\n%s &mdash; <em>%s</em>',	'S přáním pěkného dne\r\n%s &mdash; <em>%s</em>',	0,	'cs_CZ'),
(2207,	'With wish of sunny day\n%s - %s',	'S přáním pěkného dne\r\n%s - %s',	0,	'cs_CZ'),
(2208,	'Set Password',	'Nastavit heslo',	0,	'cs_CZ'),
(2210,	'Change Password',	'Změnit heslo',	0,	'cs_CZ'),
(2211,	'Old Password',	'Staré heslo',	0,	'cs_CZ'),
(2212,	'You must enter your current password',	'You must enter your current password',	0,	'cs_CZ'),
(2214,	'Password must be at least %s characters long',	'Password must be at least %s characters long',	0,	'cs_CZ'),
(2215,	'You must enter new password',	'You must enter new password',	0,	'cs_CZ'),
(2216,	'Change',	'Změnit',	0,	'cs_CZ'),
(2218,	'Change Email',	'Změnit email',	0,	'cs_CZ'),
(2219,	'You must enter valid email',	'You must enter valid email',	0,	'cs_CZ'),
(2220,	'Your email was set to %s.',	'Your email was set to %s.',	0,	'cs_CZ'),
(2221,	'Set',	'Nastavit',	0,	'cs_CZ'),
(2222,	'Jen a-z, 0-9 a _ jsou povolené.',	'Jen a-z, 0-9 a _ jsou povolené.',	0,	'cs_CZ'),
(2225,	'No account?',	'Nemáte účet?',	0,	'cs_CZ'),
(2226,	'Sign up!',	'Zaregistrujte se!',	0,	'cs_CZ'),
(2256,	'Account not found.',	'Account not found.',	0,	'cs_CZ'),
(2257,	'Bad Username or Password.',	'Bad Username or Password.',	0,	'cs_CZ'),
(2258,	'Change password',	'Change password',	0,	'cs_CZ'),
(2259,	'Your password was updated. You can <a href=\"%s\" class=\"sign-in\">sign in</a> with new password.',	'Your password was updated. You can <a href=\"%s\" class=\"sign-in\">sign in</a> with new password.',	0,	'cs_CZ'),
(2260,	'Harvests',	'Sklizně',	0,	'cs_CZ'),
(2262,	'N/A',	'N/A',	0,	'cs_CZ'),
(2264,	'Path: ',	'Cesta: ',	0,	'cs_CZ'),
(2265,	'Process',	'Zpracovat',	0,	'cs_CZ'),
(2273,	'Generate',	'Generovat',	0,	'cs_CZ'),
(2274,	'This harvest was just discovered!',	'Tato sklizeň byla právě objevena!',	0,	'cs_CZ'),
(2275,	'UUID',	'UUID',	0,	'cs_CZ'),
(2276,	'Created',	'Vytvořeno',	0,	'cs_CZ'),
(2277,	'Updated',	'Aktualizováno',	0,	'cs_CZ'),
(2278,	'Re-generate',	'Přegenerovat',	0,	'cs_CZ'),
(2279,	'Download',	'Stáhnout',	0,	'cs_CZ'),
(2281,	'Setting',	'Nastavení',	0,	'cs_CZ'),
(2282,	'Name',	'Jméno',	0,	'cs_CZ'),
(2283,	'Type',	'Typ',	0,	'cs_CZ'),
(2284,	'Size',	'Velikost',	0,	'cs_CZ'),
(2285,	'directory',	'adresář',	0,	'cs_CZ'),
(2286,	'This harvest was already processed.',	'Tato sklizeň už byla zpracována.',	0,	'cs_CZ'),
(2287,	'Highlighted',	'Zvýrazněné',	0,	'cs_CZ'),
(2289,	'Plain',	'Čisté',	0,	'cs_CZ'),
(2299,	'Directory',	'Adresář',	0,	'cs_CZ'),
(2300,	'XML',	'XML',	0,	'cs_CZ'),
(2301,	'Users',	'Uživatelé',	0,	'cs_CZ'),
(2302,	'Add',	'Přidat',	0,	'cs_CZ'),
(2303,	'Action',	'Akce',	0,	'cs_CZ'),
(2305,	'Admin: <strong>%s</strong>',	'Administrátor: <strong>%s</strong>',	0,	'cs_CZ'),
(2306,	'Administration',	'Administrace',	0,	'cs_CZ'),
(2307,	'Demote to User',	'Ponížit na uživatele',	0,	'cs_CZ'),
(2308,	'Group',	'Skupina',	0,	'cs_CZ'),
(2309,	'group-admin',	'Administrátor',	0,	'cs_CZ'),
(2310,	'Welcome to Administration!',	'Vítejte v administraci!',	0,	'cs_CZ'),
(2313,	'Add User',	'Přidat uživatele',	0,	'cs_CZ'),
(2314,	'Please pick from sections in menu.',	'Prosím vyberte si ze sekcí v menu.',	0,	'cs_CZ'),
(2316,	'Edit User',	'Upravit uživatele',	0,	'cs_CZ'),
(2317,	'Create User',	'Vytvořit uživatele',	0,	'cs_CZ'),
(2318,	'Create',	'Vytvořit',	0,	'cs_CZ'),
(2321,	'group-user',	'Uživatel',	0,	'cs_CZ'),
(2322,	'User was successfully created.',	'Uživatel byl úspěšně vytvořen.',	0,	'cs_CZ'),
(2323,	'Username is taken please pick another.',	'Uživatelské jméno je zabrané prosím vyberte si jiné.',	0,	'cs_CZ'),
(2324,	'Email is taken please pick another.',	'Email je zabraný prosím vyberte si jiný.',	0,	'cs_CZ'),
(2326,	'Save',	'Uložit',	0,	'cs_CZ'),
(2327,	'User was successfully updated.',	'Uživatel byl úspěšně upraven.',	0,	'cs_CZ'),
(2328,	'Delete',	'Smazat',	0,	'cs_CZ'),
(2329,	'Warning!',	'Varování!',	0,	'cs_CZ'),
(2330,	'You are about to delete user %s from system. Do you want to proceed?',	'Chystáte se vymazat uživatele %s ze systému. Chcete pokračovat?',	0,	'cs_CZ'),
(2331,	'Please submit this form again (security token has expired).',	'Prosím odešlete tento formulář znovu (bezpečnostní klíč vypršel).',	0,	'cs_CZ'),
(2332,	'User was successfully deleted.',	'Uživatel byl úspěšně smazán.',	0,	'cs_CZ'),
(2377,	'You are about to purge cache of stuff related to harvests. This may seriously slow down your life! Do you want to proceed?',	'Chystáte se vyprázdnit mezipaměť dat souvisejících se sklizněmi. Následovat bude ztráta Vašeho času! Chcete pokračovat?',	0,	'cs_CZ'),
(2378,	'Purge Cache',	'Vyprázdnit mezipamět',	0,	'cs_CZ'),
(2383,	'Ain\'t nobody got time for that!',	'Na to nemám čas!',	0,	'cs_CZ'),
(2384,	'en_US',	'English (Anglicky)',	0,	'cs_CZ'),
(2385,	'Harvests',	'Harvests',	0,	'en_US'),
(2386,	'Administration',	'Administration',	0,	'en_US'),
(2387,	'Users',	'Users',	0,	'en_US'),
(2388,	'Warning!',	'Warning!',	0,	'en_US'),
(2389,	'You are about to purge cache of stuff related to harvests. This may seriously slow down your life! Do you want to proceed?',	'You are about to purge cache of stuff related to harvests. This may seriously slow down your life! Do you want to proceed?',	0,	'en_US'),
(2390,	'Ain\'t nobody got time for that!',	'Ain\'t nobody got time for that!',	0,	'en_US'),
(2391,	'Purge Cache',	'Purge Cache',	0,	'en_US'),
(2392,	'Please submit this form again (security token has expired).',	'Please submit this form again (security token has expired).',	0,	'en_US'),
(2393,	'Admin: <strong>%s</strong>',	'Admin: <strong>%s</strong>',	0,	'en_US'),
(2394,	'Settings',	'Settings',	0,	'en_US'),
(2395,	'Sign out',	'Sign out',	0,	'en_US'),
(2396,	'en_US',	'English',	0,	'en_US'),
(2397,	'cs_CZ',	'Česky (Czech)',	0,	'en_US'),
(2398,	'Add User',	'Add User',	0,	'en_US'),
(2399,	'Username',	'Username',	0,	'en_US'),
(2400,	'Group',	'Group',	0,	'en_US'),
(2401,	'Email',	'Email',	0,	'en_US'),
(2402,	'group-admin',	'group-admin',	0,	'en_US'),
(2403,	'Edit',	'Edit',	0,	'en_US'),
(2404,	'group-user',	'group-user',	0,	'en_US'),
(2405,	'Delete',	'Delete',	0,	'en_US'),
(2406,	'Name',	'Name',	0,	'en_US'),
(2407,	'Type',	'Type',	0,	'en_US'),
(2408,	'Size',	'Size',	0,	'en_US'),
(2409,	'directory',	'directory',	0,	'en_US'),
(2410,	'This harvest was just discovered!',	'This harvest was just discovered!',	0,	'en_US'),
(2411,	'Generate',	'Generate',	0,	'en_US'),
(2412,	'UUID',	'UUID',	0,	'en_US'),
(2413,	'Created',	'Created',	0,	'en_US'),
(2414,	'Setting',	'Setting',	0,	'en_US'),
(2415,	'XML',	'XML',	0,	'en_US'),
(2416,	'View',	'View',	0,	'en_US'),
(2417,	'Welcome to Administration!',	'Welcome to Administration!',	0,	'en_US'),
(2418,	'Please pick from sections in menu.',	'Please pick from sections in menu.',	0,	'en_US'),
(2419,	'Cache was successfully purged.',	'Mezipaměť byla úspěšně vyprázdněna.',	0,	'cs_CZ'),
(2420,	'XML was successfully generated!',	'XML bylo úspěšně vygenerováno!',	0,	'cs_CZ'),
(2421,	'View XML',	'Zobrazit XML',	0,	'cs_CZ'),
(2422,	'Description',	'Popis',	0,	'cs_CZ'),
(2423,	'Operator',	'Operátor',	0,	'cs_CZ'),
(2424,	'Organization',	'Organizace',	0,	'cs_CZ'),
(2425,	'Audience',	'Publikum',	0,	'cs_CZ'),
(2426,	'Note',	'Poznámka',	0,	'cs_CZ'),
(2427,	'Status',	'Status',	0,	'cs_CZ'),
(2428,	'Processed',	'Zpracována',	0,	'cs_CZ'),
(2429,	'Update',	'Upravit',	0,	'cs_CZ'),
(2430,	'Values were loaded from XML.',	'Hodnoty byly načteny z XML.',	0,	'cs_CZ'),
(2431,	'Reload form from XML',	'Reload form from XML',	0,	'cs_CZ'),
(2432,	'Load values from XML',	'Načíst hodnoty z XML',	0,	'cs_CZ'),
(2433,	'Discovered',	'Discovered',	0,	'cs_CZ');

CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_czech_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `email` varchar(400) COLLATE utf8_czech_ci NOT NULL,
  `tries` int(11) NOT NULL DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `last_try` datetime DEFAULT NULL,
  `group` enum('user','admin') COLLATE utf8_czech_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id_uk` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

INSERT INTO `user` (`id`, `username`, `password`, `email`, `tries`, `last_login`, `last_try`, `group`) VALUES
(5,	'admin',	'$6$rounds=10000$e9e43008ffb4260c$sqHcSih/VzS/KeFv72n4GCEp7ifyjWrI0vTv.q1Z.OkitQsGfnQ3JqccwTatch4SR5hfFa6S7QUXNgq3Ic0fB/',	'admin@local.host',	0,	'2012-12-13 09:37:05',	'2012-12-13 09:37:05',	'admin');

CREATE TABLE `user_accountrecovery_ticket` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `expires_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `used` timestamp NULL DEFAULT NULL,
  `hash` char(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hash` (`hash`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_accountrecovery_ticket_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;


-- 2012-12-13 10:16:47
