// -------------------------------------------------------------------------- //
// Copyright (c) 2019, Jairus Martin.                                         //
// Distributed under the terms of the MIT License.                            //
// The full license is in the file LICENSE, distributed with this software.   //
// -------------------------------------------------------------------------- //

const std = @import("std");

const Timezone = @import("datetime.zig").Timezone;
const create = Timezone.create;

// Timezones
pub const Africa = struct {
    pub const Abidjan = create("Africa/Abidjan", 0);
    pub const Accra = create("Africa/Accra", 0);
    pub const Addis_Ababa = create("Africa/Addis_Ababa", 180);
    pub const Algiers = create("Africa/Algiers", 60);
    pub const Asmara = create("Africa/Asmara", 180);
    pub const Bamako = create("Africa/Bamako", 0);
    pub const Bangui = create("Africa/Bangui", 60);
    pub const Banjul = create("Africa/Banjul", 0);
    pub const Bissau = create("Africa/Bissau", 0);
    pub const Blantyre = create("Africa/Blantyre", 120);
    pub const Brazzaville = create("Africa/Brazzaville", 60);
    pub const Bujumbura = create("Africa/Bujumbura", 120);
    pub const Cairo = create("Africa/Cairo", 120);
    pub const Casablanca = create("Africa/Casablanca", 60);
    pub const Ceuta = create("Africa/Ceuta", 60);
    pub const Conakry = create("Africa/Conakry", 0);
    pub const Dakar = create("Africa/Dakar", 0);
    pub const Dar_es_Salaam = create("Africa/Dar_es_Salaam", 180);
    pub const Djibouti = create("Africa/Djibouti", 180);
    pub const Douala = create("Africa/Douala", 60);
    pub const El_Aaiun = create("Africa/El_Aaiun", 0);
    pub const Freetown = create("Africa/Freetown", 0);
    pub const Gaborone = create("Africa/Gaborone", 120);
    pub const Harare = create("Africa/Harare", 120);
    pub const Johannesburg = create("Africa/Johannesburg", 120);
    pub const Juba = create("Africa/Juba", 180);
    pub const Kampala = create("Africa/Kampala", 180);
    pub const Khartoum = create("Africa/Khartoum", 120);
    pub const Kigali = create("Africa/Kigali", 120);
    pub const Kinshasa = create("Africa/Kinshasa", 60);
    pub const Lagos = create("Africa/Lagos", 60);
    pub const Libreville = create("Africa/Libreville", 60);
    pub const Lome = create("Africa/Lome", 0);
    pub const Luanda = create("Africa/Luanda", 60);
    pub const Lubumbashi = create("Africa/Lubumbashi", 120);
    pub const Lusaka = create("Africa/Lusaka", 120);
    pub const Malabo = create("Africa/Malabo", 60);
    pub const Maputo = create("Africa/Maputo", 120);
    pub const Maseru = create("Africa/Maseru", 120);
    pub const Mbabane = create("Africa/Mbabane", 120);
    pub const Mogadishu = create("Africa/Mogadishu", 180);
    pub const Monrovia = create("Africa/Monrovia", 0);
    pub const Nairobi = create("Africa/Nairobi", 180);
    pub const Ndjamena = create("Africa/Ndjamena", 60);
    pub const Niamey = create("Africa/Niamey", 60);
    pub const Nouakchott = create("Africa/Nouakchott", 0);
    pub const Ouagadougou = create("Africa/Ouagadougou", 0);
    pub const Porto_Novo = create("Africa/Porto-Novo", 60);
    pub const Sao_Tome = create("Africa/Sao_Tome", 0);
    pub const Timbuktu = create("Africa/Timbuktu", 0);
    pub const Tripoli = create("Africa/Tripoli", 120);
    pub const Tunis = create("Africa/Tunis", 60);
    pub const Windhoek = create("Africa/Windhoek", 120);
};

pub const America = struct {
    pub const Adak = create("America/Adak", -600);
    pub const Anchorage = create("America/Anchorage", -540);
    pub const Anguilla = create("America/Anguilla", -240);
    pub const Antigua = create("America/Antigua", -240);
    pub const Araguaina = create("America/Araguaina", -180);
    pub const Argentina = struct {
        pub const Buenos_Aires = create("America/Argentina/Buenos_Aires", -180);
        pub const Catamarca = create("America/Argentina/Catamarca", -180);
        pub const ComodRivadavia = create("America/Argentina/ComodRivadavia", -180);
        pub const Cordoba = create("America/Argentina/Cordoba", -180);
        pub const Jujuy = create("America/Argentina/Jujuy", -180);
        pub const La_Rioja = create("America/Argentina/La_Rioja", -180);
        pub const Mendoza = create("America/Argentina/Mendoza", -180);
        pub const Rio_Gallegos = create("America/Argentina/Rio_Gallegos", -180);
        pub const Salta = create("America/Argentina/Salta", -180);
        pub const San_Juan = create("America/Argentina/San_Juan", -180);
        pub const San_Luis = create("America/Argentina/San_Luis", -180);
        pub const Tucuman = create("America/Argentina/Tucuman", -180);
        pub const Ushuaia = create("America/Argentina/Ushuaia", -180);
    };
    pub const Aruba = create("America/Aruba", -240);
    pub const Asuncion = create("America/Asuncion", -240);
    pub const Atikokan = create("America/Atikokan", -300);
    pub const Atka = create("America/Atka", -600);
    pub const Bahia = create("America/Bahia", -180);
    pub const Bahia_Banderas = create("America/Bahia_Banderas", -360);
    pub const Barbados = create("America/Barbados", -240);
    pub const Belem = create("America/Belem", -180);
    pub const Belize = create("America/Belize", -360);
    pub const Blanc_Sablon = create("America/Blanc-Sablon", -240);
    pub const Boa_Vista = create("America/Boa_Vista", -240);
    pub const Bogota = create("America/Bogota", -300);
    pub const Boise = create("America/Boise", -420);
    pub const Buenos_Aires = create("America/Buenos_Aires", -180);
    pub const Cambridge_Bay = create("America/Cambridge_Bay", -420);
    pub const Campo_Grande = create("America/Campo_Grande", -240);
    pub const Cancun = create("America/Cancun", -300);
    pub const Caracas = create("America/Caracas", -240);
    pub const Catamarca = create("America/Catamarca", -180);
    pub const Cayenne = create("America/Cayenne", -180);
    pub const Cayman = create("America/Cayman", -300);
    pub const Chicago = create("America/Chicago", -360);
    pub const Chihuahua = create("America/Chihuahua", -420);
    pub const Coral_Harbour = create("America/Coral_Harbour", -300);
    pub const Cordoba = create("America/Cordoba", -180);
    pub const Costa_Rica = create("America/Costa_Rica", -360);
    pub const Creston = create("America/Creston", -420);
    pub const Cuiaba = create("America/Cuiaba", -240);
    pub const Curacao = create("America/Curacao", -240);
    pub const Danmarkshavn = create("America/Danmarkshavn", 0);
    pub const Dawson = create("America/Dawson", -480);
    pub const Dawson_Creek = create("America/Dawson_Creek", -420);
    pub const Denver = create("America/Denver", -420);
    pub const Detroit = create("America/Detroit", -300);
    pub const Dominica = create("America/Dominica", -240);
    pub const Edmonton = create("America/Edmonton", -420);
    pub const Eirunepe = create("America/Eirunepe", -300);
    pub const El_Salvador = create("America/El_Salvador", -360);
    pub const Ensenada = create("America/Ensenada", -480);
    pub const Fort_Nelson = create("America/Fort_Nelson", -420);
    pub const Fort_Wayne = create("America/Fort_Wayne", -300);
    pub const Fortaleza = create("America/Fortaleza", -180);
    pub const Glace_Bay = create("America/Glace_Bay", -240);
    pub const Godthab = create("America/Godthab", -180);
    pub const Goose_Bay = create("America/Goose_Bay", -240);
    pub const Grand_Turk = create("America/Grand_Turk", -300);
    pub const Grenada = create("America/Grenada", -240);
    pub const Guadeloupe = create("America/Guadeloupe", -240);
    pub const Guatemala = create("America/Guatemala", -360);
    pub const Guayaquil = create("America/Guayaquil", -300);
    pub const Guyana = create("America/Guyana", -240);
    pub const Halifax = create("America/Halifax", -240);
    pub const Havana = create("America/Havana", -300);
    pub const Hermosillo = create("America/Hermosillo", -420);
    pub const Indiana = struct {
        // FIXME: Name conflict
        pub const Indianapolis_ = create("America/Indiana/Indianapolis", -300);
        pub const Knox = create("America/Indiana/Knox", -360);
        pub const Marengo = create("America/Indiana/Marengo", -300);
        pub const Petersburg = create("America/Indiana/Petersburg", -300);
        pub const Tell_City = create("America/Indiana/Tell_City", -360);
        pub const Vevay = create("America/Indiana/Vevay", -300);
        pub const Vincennes = create("America/Indiana/Vincennes", -300);
        pub const Winamac = create("America/Indiana/Winamac", -300);
    };
    pub const Indianapolis = create("America/Indianapolis", -300);
    pub const Inuvik = create("America/Inuvik", -420);
    pub const Iqaluit = create("America/Iqaluit", -300);
    pub const Jamaica = create("America/Jamaica", -300);
    pub const Jujuy = create("America/Jujuy", -180);
    pub const Juneau = create("America/Juneau", -540);
    pub const Kentucky = struct {
        // FIXME: Name conflict
        pub const Louisville_ = create("America/Kentucky/Louisville", -300);
        pub const Monticello = create("America/Kentucky/Monticello", -300);
    };
    pub const Knox_IN = create("America/Knox_IN", -360);
    pub const Kralendijk = create("America/Kralendijk", -240);
    pub const La_Paz = create("America/La_Paz", -240);
    pub const Lima = create("America/Lima", -300);
    pub const Los_Angeles = create("America/Los_Angeles", -480);
    pub const Louisville = create("America/Louisville", -300);
    pub const Lower_Princes = create("America/Lower_Princes", -240);
    pub const Maceio = create("America/Maceio", -180);
    pub const Managua = create("America/Managua", -360);
    pub const Manaus = create("America/Manaus", -240);
    pub const Marigot = create("America/Marigot", -240);
    pub const Martinique = create("America/Martinique", -240);
    pub const Matamoros = create("America/Matamoros", -360);
    pub const Mazatlan = create("America/Mazatlan", -420);
    pub const Mendoza = create("America/Mendoza", -180);
    pub const Menominee = create("America/Menominee", -360);
    pub const Merida = create("America/Merida", -360);
    pub const Metlakatla = create("America/Metlakatla", -540);
    pub const Mexico_City = create("America/Mexico_City", -360);
    pub const Miquelon = create("America/Miquelon", -180);
    pub const Moncton = create("America/Moncton", -240);
    pub const Monterrey = create("America/Monterrey", -360);
    pub const Montevideo = create("America/Montevideo", -180);
    pub const Montreal = create("America/Montreal", -300);
    pub const Montserrat = create("America/Montserrat", -240);
    pub const Nassau = create("America/Nassau", -300);
    pub const New_York = create("America/New_York", -300);
    pub const Nipigon = create("America/Nipigon", -300);
    pub const Nome = create("America/Nome", -540);
    pub const Noronha = create("America/Noronha", -120);
    pub const North_Dakota = struct {
        pub const Beulah = create("America/North_Dakota/Beulah", -360);
        pub const Center = create("America/North_Dakota/Center", -360);
        pub const New_Salem = create("America/North_Dakota/New_Salem", -360);
    };
    pub const Ojinaga = create("America/Ojinaga", -420);
    pub const Panama = create("America/Panama", -300);
    pub const Pangnirtung = create("America/Pangnirtung", -300);
    pub const Paramaribo = create("America/Paramaribo", -180);
    pub const Phoenix = create("America/Phoenix", -420);
    pub const Port_of_Spain = create("America/Port_of_Spain", -240);
    pub const Port_au_Prince = create("America/Port-au-Prince", -300);
    pub const Porto_Acre = create("America/Porto_Acre", -300);
    pub const Porto_Velho = create("America/Porto_Velho", -240);
    pub const Puerto_Rico = create("America/Puerto_Rico", -240);
    pub const Punta_Arenas = create("America/Punta_Arenas", -180);
    pub const Rainy_River = create("America/Rainy_River", -360);
    pub const Rankin_Inlet = create("America/Rankin_Inlet", -360);
    pub const Recife = create("America/Recife", -180);
    pub const Regina = create("America/Regina", -360);
    pub const Resolute = create("America/Resolute", -360);
    pub const Rio_Branco = create("America/Rio_Branco", -300);
    pub const Rosario = create("America/Rosario", -180);
    pub const Santa_Isabel = create("America/Santa_Isabel", -480);
    pub const Santarem = create("America/Santarem", -180);
    pub const Santiago = create("America/Santiago", -240);
    pub const Santo_Domingo = create("America/Santo_Domingo", -240);
    pub const Sao_Paulo = create("America/Sao_Paulo", -180);
    pub const Scoresbysund = create("America/Scoresbysund", -60);
    pub const Shiprock = create("America/Shiprock", -420);
    pub const Sitka = create("America/Sitka", -540);
    pub const St_Barthelemy = create("America/St_Barthelemy", -240);
    pub const St_Johns = create("America/St_Johns", -210);
    pub const St_Kitts = create("America/St_Kitts", -240);
    pub const St_Lucia = create("America/St_Lucia", -240);
    pub const St_Thomas = create("America/St_Thomas", -240);
    pub const St_Vincent = create("America/St_Vincent", -240);
    pub const Swift_Current = create("America/Swift_Current", -360);
    pub const Tegucigalpa = create("America/Tegucigalpa", -360);
    pub const Thule = create("America/Thule", -240);
    pub const Thunder_Bay = create("America/Thunder_Bay", -300);
    pub const Tijuana = create("America/Tijuana", -480);
    pub const Toronto = create("America/Toronto", -300);
    pub const Tortola = create("America/Tortola", -240);
    pub const Vancouver = create("America/Vancouver", -480);
    pub const Virgin = create("America/Virgin", -240);
    pub const Whitehorse = create("America/Whitehorse", -480);
    pub const Winnipeg = create("America/Winnipeg", -360);
    pub const Yakutat = create("America/Yakutat", -540);
    pub const Yellowknife = create("America/Yellowknife", -420);
};

pub const Antarctica = struct {
    pub const Casey = create("Antarctica/Casey", 660);
    pub const Davis = create("Antarctica/Davis", 420);
    pub const DumontDUrville = create("Antarctica/DumontDUrville", 600);
    pub const Macquarie = create("Antarctica/Macquarie", 660);
    pub const Mawson = create("Antarctica/Mawson", 300);
    pub const McMurdo = create("Antarctica/McMurdo", 720);
    pub const Palmer = create("Antarctica/Palmer", -180);
    pub const Rothera = create("Antarctica/Rothera", -180);
    pub const South_Pole = create("Antarctica/South_Pole", 720);
    pub const Syowa = create("Antarctica/Syowa", 180);
    pub const Troll = create("Antarctica/Troll", 0);
    pub const Vostok = create("Antarctica/Vostok", 360);
};

pub const Arctic = struct {
    pub const Longyearbyen = create("Arctic/Longyearbyen", 60);
};

pub const Asia = struct {
    pub const Aden = create("Asia/Aden", 180);
    pub const Almaty = create("Asia/Almaty", 360);
    pub const Amman = create("Asia/Amman", 120);
    pub const Anadyr = create("Asia/Anadyr", 720);
    pub const Aqtau = create("Asia/Aqtau", 300);
    pub const Aqtobe = create("Asia/Aqtobe", 300);
    pub const Ashgabat = create("Asia/Ashgabat", 300);
    pub const Ashkhabad = create("Asia/Ashkhabad", 300);
    pub const Atyrau = create("Asia/Atyrau", 300);
    pub const Baghdad = create("Asia/Baghdad", 180);
    pub const Bahrain = create("Asia/Bahrain", 180);
    pub const Baku = create("Asia/Baku", 240);
    pub const Bangkok = create("Asia/Bangkok", 420);
    pub const Barnaul = create("Asia/Barnaul", 420);
    pub const Beirut = create("Asia/Beirut", 120);
    pub const Bishkek = create("Asia/Bishkek", 360);
    pub const Brunei = create("Asia/Brunei", 480);
    pub const Calcutta = create("Asia/Calcutta", 330);
    pub const Chita = create("Asia/Chita", 540);
    pub const Choibalsan = create("Asia/Choibalsan", 480);
    pub const Chongqing = create("Asia/Chongqing", 480);
    pub const Chungking = create("Asia/Chungking", 480);
    pub const Colombo = create("Asia/Colombo", 330);
    pub const Dacca = create("Asia/Dacca", 360);
    pub const Damascus = create("Asia/Damascus", 120);
    pub const Dhaka = create("Asia/Dhaka", 360);
    pub const Dili = create("Asia/Dili", 540);
    pub const Dubai = create("Asia/Dubai", 240);
    pub const Dushanbe = create("Asia/Dushanbe", 300);
    pub const Famagusta = create("Asia/Famagusta", 120);
    pub const Gaza = create("Asia/Gaza", 120);
    pub const Harbin = create("Asia/Harbin", 480);
    pub const Hebron = create("Asia/Hebron", 120);
    pub const Ho_Chi_Minh = create("Asia/Ho_Chi_Minh", 420);
    pub const Hong_Kong = create("Asia/Hong_Kong", 480);
    pub const Hovd = create("Asia/Hovd", 420);
    pub const Irkutsk = create("Asia/Irkutsk", 480);
    pub const Istanbul = create("Asia/Istanbul", 180);
    pub const Jakarta = create("Asia/Jakarta", 420);
    pub const Jayapura = create("Asia/Jayapura", 540);
    pub const Jerusalem = create("Asia/Jerusalem", 120);
    pub const Kabul = create("Asia/Kabul", 270);
    pub const Kamchatka = create("Asia/Kamchatka", 720);
    pub const Karachi = create("Asia/Karachi", 300);
    pub const Kashgar = create("Asia/Kashgar", 360);
    pub const Kathmandu = create("Asia/Kathmandu", 345);
    pub const Katmandu = create("Asia/Katmandu", 345);
    pub const Khandyga = create("Asia/Khandyga", 540);
    pub const Kolkata = create("Asia/Kolkata", 330);
    pub const Krasnoyarsk = create("Asia/Krasnoyarsk", 420);
    pub const Kuala_Lumpur = create("Asia/Kuala_Lumpur", 480);
    pub const Kuching = create("Asia/Kuching", 480);
    pub const Kuwait = create("Asia/Kuwait", 180);
    pub const Macao = create("Asia/Macao", 480);
    pub const Macau = create("Asia/Macau", 480);
    pub const Magadan = create("Asia/Magadan", 660);
    pub const Makassar = create("Asia/Makassar", 480);
    pub const Manila = create("Asia/Manila", 480);
    pub const Muscat = create("Asia/Muscat", 240);
    pub const Nicosia = create("Asia/Nicosia", 120);
    pub const Novokuznetsk = create("Asia/Novokuznetsk", 420);
    pub const Novosibirsk = create("Asia/Novosibirsk", 420);
    pub const Omsk = create("Asia/Omsk", 360);
    pub const Oral = create("Asia/Oral", 300);
    pub const Phnom_Penh = create("Asia/Phnom_Penh", 420);
    pub const Pontianak = create("Asia/Pontianak", 420);
    pub const Pyongyang = create("Asia/Pyongyang", 540);
    pub const Qatar = create("Asia/Qatar", 180);
    pub const Qyzylorda = create("Asia/Qyzylorda", 300);
    pub const Rangoon = create("Asia/Rangoon", 390);
    pub const Riyadh = create("Asia/Riyadh", 180);
    pub const Saigon = create("Asia/Saigon", 420);
    pub const Sakhalin = create("Asia/Sakhalin", 660);
    pub const Samarkand = create("Asia/Samarkand", 300);
    pub const Seoul = create("Asia/Seoul", 540);
    pub const Shanghai = create("Asia/Shanghai", 480);
    pub const Singapore = create("Asia/Singapore", 480);
    pub const Srednekolymsk = create("Asia/Srednekolymsk", 660);
    pub const Taipei = create("Asia/Taipei", 480);
    pub const Tashkent = create("Asia/Tashkent", 300);
    pub const Tbilisi = create("Asia/Tbilisi", 240);
    pub const Tehran = create("Asia/Tehran", 210);
    pub const Tel_Aviv = create("Asia/Tel_Aviv", 120);
    pub const Thimbu = create("Asia/Thimbu", 360);
    pub const Thimphu = create("Asia/Thimphu", 360);
    pub const Tokyo = create("Asia/Tokyo", 540);
    pub const Tomsk = create("Asia/Tomsk", 420);
    pub const Ujung_Pandang = create("Asia/Ujung_Pandang", 480);
    pub const Ulaanbaatar = create("Asia/Ulaanbaatar", 480);
    pub const Ulan_Bator = create("Asia/Ulan_Bator", 480);
    pub const Urumqi = create("Asia/Urumqi", 360);
    pub const Ust_Nera = create("Asia/Ust-Nera", 600);
    pub const Vientiane = create("Asia/Vientiane", 420);
    pub const Vladivostok = create("Asia/Vladivostok", 600);
    pub const Yakutsk = create("Asia/Yakutsk", 540);
    pub const Yangon = create("Asia/Yangon", 390);
    pub const Yekaterinburg = create("Asia/Yekaterinburg", 300);
    pub const Yerevan = create("Asia/Yerevan", 240);
};

pub const Atlantic = struct {
    pub const Azores = create("Atlantic/Azores", -60);
    pub const Bermuda = create("Atlantic/Bermuda", -240);
    pub const Canary = create("Atlantic/Canary", 0);
    pub const Cape_Verde = create("Atlantic/Cape_Verde", -60);
    pub const Faeroe = create("Atlantic/Faeroe", 0);
    pub const Faroe = create("Atlantic/Faroe", 0);
    pub const Jan_Mayen = create("Atlantic/Jan_Mayen", 60);
    pub const Madeira = create("Atlantic/Madeira", 0);
    pub const Reykjavik = create("Atlantic/Reykjavik", 0);
    pub const South_Georgia = create("Atlantic/South_Georgia", -120);
    pub const St_Helena = create("Atlantic/St_Helena", 0);
    pub const Stanley = create("Atlantic/Stanley", -180);
};

pub const Australia = struct {
    pub const ACT = create("Australia/ACT", 600);
    pub const Adelaide = create("Australia/Adelaide", 570);
    pub const Brisbane = create("Australia/Brisbane", 600);
    pub const Broken_Hill = create("Australia/Broken_Hill", 570);
    pub const Canberra = create("Australia/Canberra", 600);
    pub const Currie = create("Australia/Currie", 600);
    pub const Darwin = create("Australia/Darwin", 570);
    pub const Eucla = create("Australia/Eucla", 525);
    pub const Hobart = create("Australia/Hobart", 600);
    pub const LHI = create("Australia/LHI", 630);
    pub const Lindeman = create("Australia/Lindeman", 600);
    pub const Lord_Howe = create("Australia/Lord_Howe", 630);
    pub const Melbourne = create("Australia/Melbourne", 600);
    pub const North = create("Australia/North", 570);
    pub const NSW = create("Australia/NSW", 600);
    pub const Perth = create("Australia/Perth", 480);
    pub const Queensland = create("Australia/Queensland", 600);
    pub const South = create("Australia/South", 570);
    pub const Sydney = create("Australia/Sydney", 600);
    pub const Tasmania = create("Australia/Tasmania", 600);
    pub const Victoria = create("Australia/Victoria", 600);
    pub const West = create("Australia/West", 480);
    pub const Yancowinna = create("Australia/Yancowinna", 570);
};

pub const Brazil = struct {
    pub const Acre = create("Brazil/Acre", -300);
    pub const DeNoronha = create("Brazil/DeNoronha", -120);
    pub const East = create("Brazil/East", -180);
    pub const West = create("Brazil/West", -240);
};

pub const Canada = struct {
    pub const Atlantic = create("Canada/Atlantic", -240);
    pub const Central = create("Canada/Central", -360);
    pub const Eastern = create("Canada/Eastern", -300);
    pub const Mountain = create("Canada/Mountain", -420);
    pub const Newfoundland = create("Canada/Newfoundland", -210);
    pub const Pacific = create("Canada/Pacific", -480);
    pub const Saskatchewan = create("Canada/Saskatchewan", -360);
    pub const Yukon = create("Canada/Yukon", -480);
};
pub const CET = create("CET", 60);

pub const Chile = struct {
    pub const Continental = create("Chile/Continental", -240);
    pub const EasterIsland = create("Chile/EasterIsland", -360);
};
pub const CST6CDT = create("CST6CDT", -360);
pub const Cuba = create("Cuba", -300);
pub const EET = create("EET", 120);
pub const Egypt = create("Egypt", 120);
pub const Eire = create("Eire", 0);
pub const EST = create("EST", -300);
pub const EST5EDT = create("EST5EDT", -300);

pub const Etc = struct {
    // NOTE: The signs are intentionally inverted. See the Etc area description.
    pub const GMT = create("Etc/GMT", 0);
    pub const GMTp0 = create("Etc/GMT+0", 0);
    pub const GMTp1 = create("Etc/GMT+1", -60);
    pub const GMTp10 = create("Etc/GMT+10", -600);
    pub const GMTp11 = create("Etc/GMT+11", -660);
    pub const GMTp12 = create("Etc/GMT+12", -720);
    pub const GMTp2 = create("Etc/GMT+2", -120);
    pub const GMTp3 = create("Etc/GMT+3", -180);
    pub const GMTp4 = create("Etc/GMT+4", -240);
    pub const GMTp5 = create("Etc/GMT+5", -300);
    pub const GMTp6 = create("Etc/GMT+6", -360);
    pub const GMTp7 = create("Etc/GMT+7", -420);
    pub const GMTp8 = create("Etc/GMT+8", -480);
    pub const GMTp9 = create("Etc/GMT+9", -540);
    pub const GMT0 = create("Etc/GMT0", 0);
    pub const GMTm0 = create("Etc/GMT-0", 0);
    pub const GMTm1 = create("Etc/GMT-1", 60);
    pub const GMTm10 = create("Etc/GMT-10", 600);
    pub const GMTm11 = create("Etc/GMT-11", 660);
    pub const GMTm12 = create("Etc/GMT-12", 720);
    pub const GMTm13 = create("Etc/GMT-13", 780);
    pub const GMTm14 = create("Etc/GMT-14", 840);
    pub const GMTm2 = create("Etc/GMT-2", 120);
    pub const GMTm3 = create("Etc/GMT-3", 180);
    pub const GMTm4 = create("Etc/GMT-4", 240);
    pub const GMTm5 = create("Etc/GMT-5", 300);
    pub const GMTm6 = create("Etc/GMT-6", 360);
    pub const GMTm7 = create("Etc/GMT-7", 420);
    pub const GMTm8 = create("Etc/GMT-8", 480);
    pub const GMTm9 = create("Etc/GMT-9", 540);
    pub const Greenwich = create("Etc/Greenwich", 0);
    pub const UCT = create("Etc/UCT", 0);
    pub const Universal = create("Etc/Universal", 0);
    pub const UTC = create("Etc/UTC", 0);
    pub const Zulu = create("Etc/Zulu", 0);
};

pub const Europe = struct {
    pub const Amsterdam = create("Europe/Amsterdam", 60);
    pub const Andorra = create("Europe/Andorra", 60);
    pub const Astrakhan = create("Europe/Astrakhan", 240);
    pub const Athens = create("Europe/Athens", 120);
    pub const Belfast = create("Europe/Belfast", 0);
    pub const Belgrade = create("Europe/Belgrade", 60);
    pub const Berlin = create("Europe/Berlin", 60);
    pub const Bratislava = create("Europe/Bratislava", 60);
    pub const Brussels = create("Europe/Brussels", 60);
    pub const Bucharest = create("Europe/Bucharest", 120);
    pub const Budapest = create("Europe/Budapest", 60);
    pub const Busingen = create("Europe/Busingen", 60);
    pub const Chisinau = create("Europe/Chisinau", 120);
    pub const Copenhagen = create("Europe/Copenhagen", 60);
    pub const Dublin = create("Europe/Dublin", 0);
    pub const Gibraltar = create("Europe/Gibraltar", 60);
    pub const Guernsey = create("Europe/Guernsey", 0);
    pub const Helsinki = create("Europe/Helsinki", 120);
    pub const Isle_of_Man = create("Europe/Isle_of_Man", 0);
    pub const Istanbul = create("Europe/Istanbul", 180);
    pub const Jersey = create("Europe/Jersey", 0);
    pub const Kaliningrad = create("Europe/Kaliningrad", 120);
    pub const Kiev = create("Europe/Kiev", 120);
    pub const Kirov = create("Europe/Kirov", 180);
    pub const Lisbon = create("Europe/Lisbon", 0);
    pub const Ljubljana = create("Europe/Ljubljana", 60);
    pub const London = create("Europe/London", 0);
    pub const Luxembourg = create("Europe/Luxembourg", 60);
    pub const Madrid = create("Europe/Madrid", 60);
    pub const Malta = create("Europe/Malta", 60);
    pub const Mariehamn = create("Europe/Mariehamn", 120);
    pub const Minsk = create("Europe/Minsk", 180);
    pub const Monaco = create("Europe/Monaco", 60);
    pub const Moscow = create("Europe/Moscow", 180);
    pub const Oslo = create("Europe/Oslo", 60);
    pub const Paris = create("Europe/Paris", 60);
    pub const Podgorica = create("Europe/Podgorica", 60);
    pub const Prague = create("Europe/Prague", 60);
    pub const Riga = create("Europe/Riga", 120);
    pub const Rome = create("Europe/Rome", 60);
    pub const Samara = create("Europe/Samara", 240);
    pub const San_Marino = create("Europe/San_Marino", 60);
    pub const Sarajevo = create("Europe/Sarajevo", 60);
    pub const Saratov = create("Europe/Saratov", 240);
    pub const Simferopol = create("Europe/Simferopol", 180);
    pub const Skopje = create("Europe/Skopje", 60);
    pub const Sofia = create("Europe/Sofia", 120);
    pub const Stockholm = create("Europe/Stockholm", 60);
    pub const Tallinn = create("Europe/Tallinn", 120);
    pub const Tirane = create("Europe/Tirane", 60);
    pub const Tiraspol = create("Europe/Tiraspol", 120);
    pub const Ulyanovsk = create("Europe/Ulyanovsk", 240);
    pub const Uzhgorod = create("Europe/Uzhgorod", 120);
    pub const Vaduz = create("Europe/Vaduz", 60);
    pub const Vatican = create("Europe/Vatican", 60);
    pub const Vienna = create("Europe/Vienna", 60);
    pub const Vilnius = create("Europe/Vilnius", 120);
    pub const Volgograd = create("Europe/Volgograd", 240);
    pub const Warsaw = create("Europe/Warsaw", 60);
    pub const Zagreb = create("Europe/Zagreb", 60);
    pub const Zaporozhye = create("Europe/Zaporozhye", 120);
    pub const Zurich = create("Europe/Zurich", 60);
};
pub const GB = create("GB", 0);
pub const GB_Eire = create("GB-Eire", 0);
pub const GMT = create("GMT", 0);
pub const GMTp0 = create("GMT+0", 0);
pub const GMT0 = create("GMT0", 0);
pub const GMTm0 = create("GMT-0", 0);
pub const Greenwich = create("Greenwich", 0);
pub const Hongkong = create("Hongkong", 480);
pub const HST = create("HST", -600);
pub const Iceland = create("Iceland", 0);

pub const Indian = struct {
    pub const Antananarivo = create("Indian/Antananarivo", 180);
    pub const Chagos = create("Indian/Chagos", 360);
    pub const Christmas = create("Indian/Christmas", 420);
    pub const Cocos = create("Indian/Cocos", 390);
    pub const Comoro = create("Indian/Comoro", 180);
    pub const Kerguelen = create("Indian/Kerguelen", 300);
    pub const Mahe = create("Indian/Mahe", 240);
    pub const Maldives = create("Indian/Maldives", 300);
    pub const Mauritius = create("Indian/Mauritius", 240);
    pub const Mayotte = create("Indian/Mayotte", 180);
    pub const Reunion = create("Indian/Reunion", 240);
};
pub const Iran = create("Iran", 210);
pub const Israel = create("Israel", 120);
pub const Jamaica = create("Jamaica", -300);
pub const Japan = create("Japan", 540);
pub const Kwajalein = create("Kwajalein", 720);
pub const Libya = create("Libya", 120);
pub const MET = create("MET", 60);

pub const Mexico = struct {
    pub const BajaNorte = create("Mexico/BajaNorte", -480);
    pub const BajaSur = create("Mexico/BajaSur", -420);
    pub const General = create("Mexico/General", -360);
};
pub const MST = create("MST", -420);
pub const MST7MDT = create("MST7MDT", -420);
pub const Navajo = create("Navajo", -420);
pub const NZ = create("NZ", 720);
pub const NZ_CHAT = create("NZ-CHAT", 765);

pub const Pacific = struct {
    pub const Apia = create("Pacific/Apia", 780);
    pub const Auckland = create("Pacific/Auckland", 720);
    pub const Bougainville = create("Pacific/Bougainville", 660);
    pub const Chatham = create("Pacific/Chatham", 765);
    pub const Chuuk = create("Pacific/Chuuk", 600);
    pub const Easter = create("Pacific/Easter", -360);
    pub const Efate = create("Pacific/Efate", 660);
    pub const Enderbury = create("Pacific/Enderbury", 780);
    pub const Fakaofo = create("Pacific/Fakaofo", 780);
    pub const Fiji = create("Pacific/Fiji", 720);
    pub const Funafuti = create("Pacific/Funafuti", 720);
    pub const Galapagos = create("Pacific/Galapagos", -360);
    pub const Gambier = create("Pacific/Gambier", -540);
    pub const Guadalcanal = create("Pacific/Guadalcanal", 660);
    pub const Guam = create("Pacific/Guam", 600);
    pub const Honolulu = create("Pacific/Honolulu", -600);
    pub const Johnston = create("Pacific/Johnston", -600);
    pub const Kiritimati = create("Pacific/Kiritimati", 840);
    pub const Kosrae = create("Pacific/Kosrae", 660);
    pub const Kwajalein = create("Pacific/Kwajalein", 720);
    pub const Majuro = create("Pacific/Majuro", 720);
    pub const Marquesas = create("Pacific/Marquesas", -570);
    pub const Midway = create("Pacific/Midway", -660);
    pub const Nauru = create("Pacific/Nauru", 720);
    pub const Niue = create("Pacific/Niue", -660);
    pub const Norfolk = create("Pacific/Norfolk", 660);
    pub const Noumea = create("Pacific/Noumea", 660);
    pub const Pago_Pago = create("Pacific/Pago_Pago", -660);
    pub const Palau = create("Pacific/Palau", 540);
    pub const Pitcairn = create("Pacific/Pitcairn", -480);
    pub const Pohnpei = create("Pacific/Pohnpei", 660);
    pub const Ponape = create("Pacific/Ponape", 660);
    pub const Port_Moresby = create("Pacific/Port_Moresby", 600);
    pub const Rarotonga = create("Pacific/Rarotonga", -600);
    pub const Saipan = create("Pacific/Saipan", 600);
    pub const Samoa = create("Pacific/Samoa", -660);
    pub const Tahiti = create("Pacific/Tahiti", -600);
    pub const Tarawa = create("Pacific/Tarawa", 720);
    pub const Tongatapu = create("Pacific/Tongatapu", 780);
    pub const Truk = create("Pacific/Truk", 600);
    pub const Wake = create("Pacific/Wake", 720);
    pub const Wallis = create("Pacific/Wallis", 720);
    pub const Yap = create("Pacific/Yap", 600);
};
pub const Poland = create("Poland", 60);
pub const Portugal = create("Portugal", 0);
pub const PRC = create("PRC", 480);
pub const PST8PDT = create("PST8PDT", -480);
pub const ROC = create("ROC", 480);
pub const ROK = create("ROK", 540);
pub const Singapore = create("Singapore", 480);
pub const Turkey = create("Turkey", 180);
pub const UCT = create("UCT", 0);
pub const Universal = create("Universal", 0);

pub const US = struct {
    pub const Alaska = create("US/Alaska", -540);
    pub const Aleutian = create("US/Aleutian", -600);
    pub const Arizona = create("US/Arizona", -420);
    pub const Central = create("US/Central", -360);
    pub const Eastern = create("US/Eastern", -300);
    pub const East_Indiana = create("US/East-Indiana", -300);
    pub const Hawaii = create("US/Hawaii", -600);
    pub const Indiana_Starke = create("US/Indiana-Starke", -360);
    pub const Michigan = create("US/Michigan", -300);
    pub const Mountain = create("US/Mountain", -420);
    pub const Pacific = create("US/Pacific", -480);
    pub const Pacific_New = create("US/Pacific-New", -480);
    pub const Samoa = create("US/Samoa", -660);
};
pub const UTC = create("UTC", 0);
pub const WET = create("WET", 0);
pub const W_SU = create("W-SU", 180);
pub const Zulu = create("Zulu", 0);

fn findWithinTimezones(comptime Type: type, timezone: []const u8) ?Timezone {
    inline for (comptime @typeInfo(Type).@"struct".decls) |T| {
        const it = @field(Type, T.name);
        if (@TypeOf(it) == Timezone and std.mem.eql(u8, it.name, timezone)) {
            return it;
        }

        if (@TypeOf(it) == type) {
            const Info = @typeInfo(it);
            if (@hasDecl(@TypeOf(Info), "Struct")) {
                const found = findWithinTimezones(it, timezone);
                if (found != null)
                    return found;
            }
        }
    }

    return null;
}

pub fn getByName(timezone: []const u8) !Timezone {
    return findWithinTimezones(@This(), timezone) orelse
        error.InvalidTimeZone;
}

test "timezone-get" {
    const testing = std.testing;
    //try testing.expect(get("America/New_York").? == America.New_York);
    try testing.expect(America.New_York.offset == -300);
}

test "timezone-get-by-name" {
    const testing = std.testing;
    try testing.expectEqual(America.Argentina.Buenos_Aires, getByName("America/Argentina/Buenos_Aires"));
    try testing.expectEqual(Asia.Nicosia, getByName("Asia/Nicosia"));
    try testing.expectError(error.InvalidTimeZone, getByName("Europe/Invalid"));
}
