Config = {}


--░█████╗░░██████╗░░██╗░░░░░░░██╗███████╗██████╗░  ░██████╗██╗░░░██╗███╗░░██╗░█████╗░██████╗░
--██╔══██╗██╔═══██╗░██║░░██╗░░██║██╔════╝██╔══██╗  ██╔════╝██║░░░██║████╗░██║██╔══██╗██╔══██╗
--██║░░╚═╝██║██╗██║░╚██╗████╗██╔╝█████╗░░██████╔╝  ╚█████╗░██║░░░██║██╔██╗██║███████║██████╔╝
--██║░░██╗╚██████╔╝░░████╔═████║░██╔══╝░░██╔══██╗  ░╚═══██╗██║░░░██║██║╚████║██╔══██║██╔══██╗
--╚█████╔╝░╚═██╔═╝░░░╚██╔╝░╚██╔╝░███████╗██║░░██║  ██████╔╝╚██████╔╝██║░╚███║██║░░██║██║░░██║
--░╚════╝░░░░╚═╝░░░░░░╚═╝░░░╚═╝░░╚══════╝╚═╝░░╚═╝  ╚═════╝░░╚═════╝░╚═╝░░╚══╝╚═╝░░╚═╝╚═╝░░╚═╝
-- cqweryazilim.tebex.io
-- discord = .cqwer
-- http://cqweryazilim.com/



Config.Framework = "qbcore" -- ya "qbcore" ya da "esx" 





--██████╗░░█████╗░██╗░░░░░░██████╗░███████╗██╗░░░░░███████╗██████╗░
--██╔══██╗██╔══██╗██║░░░░░██╔════╝░██╔════╝██║░░░░░██╔════╝██╔══██╗
--██████╦╝██║░░██║██║░░░░░██║░░██╗░█████╗░░██║░░░░░█████╗░░██████╔╝
--██╔══██╗██║░░██║██║░░░░░██║░░╚██╗██╔══╝░░██║░░░░░██╔══╝░░██╔══██╗
--██████╦╝╚█████╔╝███████╗╚██████╔╝███████╗███████╗███████╗██║░░██║
--╚═════╝░░╚════╝░╚══════╝░╚═════╝░╚══════╝╚══════╝╚══════╝╚═╝░░╚═╝



Config.Bolgeler = {

    ["Motel"] = {

        location = vector3(312.06, -191.24, 61.58), 

        size = 30.0 -- GENİŞLİK

    },

    ["Banka"] = {

        location = vector3(150.0, -1035.0, 29.0),

        size = 50.0  -- GENİŞLİK

    }

}




--███╗░░██╗░█████╗░████████╗██╗███████╗██╗░░░██╗
--████╗░██║██╔══██╗╚══██╔══╝██║██╔════╝╚██╗░██╔╝
--██╔██╗██║██║░░██║░░░██║░░░██║█████╗░░░╚████╔╝░
--██║╚████║██║░░██║░░░██║░░░██║██╔══╝░░░░╚██╔╝░░
--██║░╚███║╚█████╔╝░░░██║░░░██║██║░░░░░░░░██║░░░
--╚═╝░░╚══╝░╚════╝░░░░╚═╝░░░╚═╝╚═╝░░░░░░░░╚═╝░░░

Config.NotifyMessages = {

    enter = "Safezone'12321321a girdiniz!", -- Giriş bildirimi

    exit = "Safezone'dan çıktınız!" -- Çıkış bildirimi

}


--░██████╗███████╗████████╗████████╗██╗███╗░░██╗░██████╗░░██████╗
--██╔════╝██╔════╝╚══██╔══╝╚══██╔══╝██║████╗░██║██╔════╝░██╔════╝
--╚█████╗░█████╗░░░░░██║░░░░░░██║░░░██║██╔██╗██║██║░░██╗░╚█████╗░
--░╚═══██╗██╔══╝░░░░░██║░░░░░░██║░░░██║██║╚████║██║░░╚██╗░╚═══██╗
--██████╔╝███████╗░░░██║░░░░░░██║░░░██║██║░╚███║╚██████╔╝██████╔╝
--╚═════╝░╚══════╝░░░╚═╝░░░░░░╚═╝░░░╚═╝╚═╝░░╚══╝░╚═════╝░╚═════╝░
Config.AntiVDM = true -- Vdm engeli

Config.DisableDriveBy = true -- Driveby engel

Config.DisablePunching = true -- yumruk engel

Config.DisableFreeAim = true -- sağ tık odaklanma engel


Config.DisableShooting = true -- sıkma engel

Config.DisableDrawWeapon = true -- silah çekme engel




--░██╗░░░░░░░██╗██╗░░██╗██╗████████╗███████╗██╗░░░░░██╗░██████╗████████╗
--░██║░░██╗░░██║██║░░██║██║╚══██╔══╝██╔════╝██║░░░░░██║██╔════╝╚══██╔══╝
--░╚██╗████╗██╔╝███████║██║░░░██║░░░█████╗░░██║░░░░░██║╚█████╗░░░░██║░░░
--░░████╔═████║░██╔══██║██║░░░██║░░░██╔══╝░░██║░░░░░██║░╚═══██╗░░░██║░░░
--░░╚██╔╝░╚██╔╝░██║░░██║██║░░░██║░░░███████╗███████╗██║██████╔╝░░░██║░░░
--░░░╚═╝░░░╚═╝░░╚═╝░░╚═╝╚═╝░░░╚═╝░░░╚══════╝╚══════╝╚═╝╚═════╝░░░░╚═╝░░░

Config.WhitelistedJobs = {"police", "ambulance"} -- silah çekebilen meslekler

