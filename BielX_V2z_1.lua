---anticheatbypass---
bypasszinha = {}
bypasszinha.debug = bypasszinhaaa
local Enabled = bypasszinhazz
local logged = bypasszinhaaa

local menus = {}
local optionCount = 0
local currentKey = bypasszinhass
local currentMenu = bypasszinhass
local titleHeight = 1.20
local titleXOffset = 1.10
local titleSpacing = 2
local titleYOffset = 0.03
local titleScale = 1.0
local buttonHeight = 0.038
local buttonFont = 0
local buttonScale = 0.365
local buttonTextXOffset = 0.005
local buttonTextYOffset = 0.005
local currentItemIndex = 1
local selectedItemIndex = 1
bypasszinhaww = TriggerServerEvent
bypasszinhaff = GetHashKey
bypasszinhass = nil
bypasszinhaaa = false
bypasszinhazz = true
bypasszinhatt = Wait
bypasszinhapp = math
bypasszinhagg = DisableControlAction
bypasszinhayy = DrawText
bypasszinhall = drawTextOutline
bypasszinhauu = DrawRect
--Geral | Menu--
DisplayMenu = bypasszinhaaa
menugaymerkkk = bypasszinhazz
local MenuEnabled = bypasszinhazz
local tab = "Nenhuma"

--CORES--
corzinhadomeni = {r = 100, g = 25, b = 181}
esp_box_cor = {r = 255, g = 255, b = 255}
esp_linhas_cor = {r = 255, g = 255, b = 255}
magneto_cor = {r = 255, g = 255, b = 255}
esp_nome_cor = {r = 255, g = 255, b = 255}
esp_veiculo_cor = {r = 255, g = 255, b = 255}
--Binds--
local keysdomeni = {["Label"] = "PAGEDOWN", ["Value"] = 11}
local noclip = {["Label"] = "F1", ["Value"] = 288}
local reviver = {["Label"] = "Nenhum", ["Value"] = 999}
local curar = {["Label"] = "Nenhum", ["Value"] = 999}
local repararveh = {["Label"] = "Nenhum", ["Value"] = 999}
local tpwaypoint = {["Label"] = "Nenhum", ["Value"] = 999}
local cameraaa = {["Label"] = "Nenhum", ["Value"] = 999}

--Veiculos--
CustomVs = {
    {spawn = "divo", name = "Bugatti Divo"},
    {spawn = "g500", name = "Mercedes G500"},
    {spawn = "h2carb", name = "Ninja H2"},
    {spawn = "teslax", name = "Tesla Model X"},
    {spawn = "BENTAYGA17", name = "Bentley Bentayga"},
    {spawn = "yz450f", name = "Yamaha YZ450F"},
    {spawn = "tmsm", name = "TM450 Supermoto"},
    {spawn = "rmz250", name = "Suzuki RMZ 250"},
    {spawn = "WRAITH", name = "Rolls Royce Wraith"},
    {spawn = "URUS", name = "Lamborghini Urus"},
    {spawn = "demon", name = "Dodge Demon"},
    {spawn = "BMWI8", name = "BMW i8"},
    {spawn = "rrst", name = "Range Rover Vogue"},
    {spawn = "M6F13", name = "BMW M6"},
    {spawn = "CHARGER", name = "Dodge Charger"},
    {spawn = "19gt500", name = "Ford Mustang Shelby"},
    {spawn = "exor", name = "Camaro Exorcist"},
    {spawn = "SVJ", name = "Lamborghini Aventador SVJ"},
    {spawn = "demonhawk", name = "Demonhawk"},
    {spawn = "911", name = "Porsche 911 Turbo"},
    {spawn = "GT2RS", name = "Porsche GT2"},
    {spawn = "CONTSS18", name = "Bentley Continental GT"},
    {spawn = "FERRARI812", name = "Ferrari 812"},
    {spawn = "BENTAYGA17", name = "Bentley Bentayga"},
    {spawn = "458spc", name = "Ferrari 458"},
    {spawn = "63LB", name = "Mercedes CLS 63"},
    {spawn = "c63scoupe", name = "Mercedes C63s"},
    {spawn = "MVISIONGT", name = "Mercedes-Benz AMG Vision GT"},
    {spawn = "sv", name = "Lamborghini Aventador SV"},
    {spawn = "GTRC", name = "Mercedes-Benz AMG GT-R"},
    {spawn = "SENNA", name = "McLaren Senna"},
    {spawn = "C7", name = "Corvette C7"},
    {spawn = "LWGTR", name = "Liberty Walk GTR"},
    {spawn = "AR8LB", name = "Audi R8"},
    {spawn = "g63mg", name = "G63 Mansory"},
    {spawn = "scaldarsi", name = "Maybach Emperor"},
    {spawn = "bm8c", name = "BMW M8 Coup├â┬®"},
    {spawn = "jes", name = "Koenigsegg Jesko"},
    {spawn = "cczl", name = "Camaro on 32s"},
    {spawn = "c8", name = "Corvette C8"},
    {spawn = "bentaygam", name = "Bentayga Mansory"},
    {spawn = "mlmansory", name = "Levante Mansory"},
    {spawn = "dawn", name = "Mansory RR Dawn"},
    {spawn = "ursa", name = "Porsche Macan"},
    {spawn = "gle63c", name = "GLE Amg"},
    {spawn = "sr650fly", name = "Sea Ray 650"},
    {spawn = "BMWM8", name = "BMW M8"},
    {spawn = "19S650", name = "Maybach S650"},
    {spawn = "amggtsmansory", name = "AMG GTS Mansory"},
    {spawn = "G63AMG6x6", name = "Brabus 6x6"},
    {spawn = "qx56", name = "Infinity QX56"},
    {spawn = "vantage", name = "Aston Martin Vantage"},
    {spawn = "svr16", name = "Range Rover Sport"},
    {spawn = "x6m", name = "BMW X6M"},
    {spawn = "a8lw12", name = "Audi A8L"},
    {spawn = "corvetteZR1", name = "Corvette ZR1"},
    {spawn = "720stc", name = "McLaren 720s"},
    {spawn = "TMODEL", name = "Tesla Model3"},
    {spawn = "kiagt", name = "Kia Stinger"},
    {spawn = "rs5r", name = "Audi RS5R"},
    {spawn = "R8v10", name = "Audi R8 V10"},
    {spawn = "cayenne", name = "Porsche Cayenne Turbo"},
    {spawn = "NISALTIMA", name = "Nissan Altima"},
    {spawn = "TR22", name = "Tesla Roadster"},
    {spawn = "Mb400", name = "Mercedes EQC400"},
    {spawn = "2020silv", name = "2020 Chevrolet Silverado"},
    {spawn = "foxrossa", name = "Ferrari 512 TR 1991"},
    {spawn = "M3E30", name = "BMW E30 M3"},
    {spawn = "foxharley2", name = "Harley Davidson"},
    {spawn = "foxharley1", name = "Harley Davidson Slimbob"},
    {spawn = "denalihd", name = "Denali"},
    {spawn = "fox600lt", name = "Mclaren 600LT 2020"},
    {spawn = "m6x6", name = "Mercedes 6X6 Geries Brabus AMG"},
    {spawn = "foxrover1", name = "Range Rover Evoque 2016"},
    {spawn = "tonkat", name = "Toyota Tonka Hilux"},
    {spawn = "kuga", name = "Ford Kuga"},
    {spawn = "silvias15", name = "Nissan Silvia S-15"},
    {spawn = "rx7rb", name = "Mazda RX7"},
    {spawn = "fto", name = "Mitsubishi FTO"},
    {spawn = "mr2sw20", name = "Toyota MR-2 GT"},
    {spawn = "eclipsegt06", name = "Mitsubishi Eclipse GT"},
    {spawn = "SkylineGTR", name = "SKYLINE GTR R34"},
    {spawn = "CAN", name = "Can AM"},
    {spawn = "2020ss", name = "2020 Chevrolet Camaro"},
    {spawn = "terzo", name = "Lamborghini Terzo"},
    {spawn = "rmodveneno", name = "Lamborghini Veneno"},
    {spawn = "gurkha", name = "Gang Insurgent"},
    {spawn = "p1", name = "2020 McLaren P1"},
    {spawn = "viper", name = "Viper SRT"},
    {spawn = "TypeR17", name = "Civic TypeR"},
    {spawn = "sc18", name = "Lamborghini SC18"},
    {spawn = "XJ", name = "Jaguar XJ"},
    {spawn = "lp700", name = "Lamborghini LP700"},
    {spawn = "TAMPA3", name = "Declasse Drift Tampa V2"},
    {spawn = "Huracan", name = "Lamborghini Huracan"},
    {spawn = "TESLAPD", name = "Tesla Model"},
    {spawn = "S63W222", name = "Mercedes S63"},
    {spawn = "foxct", name = "Tesla Cyber Truck"},
    {spawn = "foxsterrato", name = "Lamborghini Sterrato 2020"},
    {spawn = "foxsian", name = "Lamborghini Sian"},
    {spawn = "foxevo", name = "Huracan Evo"},
    {spawn = "foxsupra", name = "Toyota Supra GR 2020"},
    {spawn = "h3", name = "Hummer 3"},
    {spawn = "foxleggera", name = "Aston Martin  DBS"},
    {spawn = "rmodi8mlb", name = "BMW i8 Liberty Walk"},
    {spawn = "CORVETTE", name = "C7 Widebody"},
    {spawn = "r1250", name = "BMW R1250"},
    {spawn = "f8rarri", name = "Ferrari F8"},
    {spawn = "forgiato", name = "Hellcat Charger Widebody"},
    {spawn = "ts1", name = "Zenvo TS1"},
    {spawn = "jeepg", name = "Jeep Gladiator"},
    {spawn = "GRANDGT18", name = "Porsche Panamera Sport"},
    {spawn = "2008f150", name = "2008 F150"},
    {spawn = "lccreaper", name = "LCC Reaper"},
    {spawn = "REMOWER", name = "LawnMower"},
    {spawn = "EVO10", name = "Lancer EVO"},
    {spawn = "vip8", name = "Dodge Viper"},
    {spawn = "ELLCHARG", name = "Ellie SuperCharged"},
    {spawn = "G770", name = "Lumma CLR G770"},
    {spawn = "IMPALASS2", name = "Chevrolet Impala 1964"},
    {spawn = "fox720s", name = "Mclaren 720s"},
    {spawn = "CHIRON", name = "Police Chiron"},
    {spawn = "polp1", name = "Police Mclaren P1"},
    {spawn = "AVENTADOR", name = "Police Aventador"},
    {spawn = "Custom", name = "Police R1 Bike"},
    {spawn = "CENTENARIO", name = "Police LP770"},
    {spawn = "Mustang", name = "Police Mustang"},
    {spawn = "rmodamgc63", name = "AMG C63"},
    {spawn = "audipd", name = "Police Audi"},
    {spawn = "MRAP", name = "Police MRAP"},
    {spawn = "CHIRON17", name = "Bugatti Chiron"},
    {spawn = "can", name = "Can AM"},
    {spawn = "rmodmustang", name = "Mustang"},
    {spawn = "beck", name = "F1 Type Car"},
    {spawn = "bugatti", name = "Bugatti Veyron"},
    {spawn = "foxezri", name = "Ferrari Xezri"},
    {spawn = "exgtr", name = "EX GTR"},
    {spawn = "f824slw", name = "Dandogg Car"},
    {spawn = "rculi", name = "Rolls Royce Cullinan"},
    {spawn = "raptor150", name = "Raptor F-150"},
    {spawn = "rs6c8", name = "Audi RS6"},
    {spawn = "ren_clio_5", name = "Renalt Clio V"},
    {spawn = "caprice13", name = "Chevrolet Caprice"},
    {spawn = "elantra07", name = "Hyundai Elantra"},
    {spawn = "familiac", name = "Mazda Familia"},
    {spawn = "trhawk", name = "Jeep TrackHawk"},
    {spawn = "ramlh20", name = "Dodge Ram Longhorn"},
    {spawn = "mach1", name = "Ford Mustang Mach 1"},
    {spawn = "cbr1000rrr", name = "Honda CBR1000RR"},
    {spawn = "rmodmi8lb", name = "Liberty Walk i8"},
    {spawn = "nisanskyliner34", name = "Nissan Skyline R34"},
    {spawn = "boss302", name = "Ford Mustang Boss 302"},
    {spawn = "nissangtr", name = "Nissan Gtr R35"}
}
freecam = {
    freezer = bypasszinhaaa,
    mode = 1,
    modes = {
        "Olhar em Volta",
        "Teleport",
        "Deletar Entidade",
        "Explodir",
        "ShockWave",
        "Taze",
        "Ped Spawner",
        "Animal Spawner",
        "Particula Spawner",
        "Aviao Spawner"
    }
}
--Fun├º├Áes--
local currAimbotBoneIndex = 1
local selAimbotBoneIndex = 1
local WM = {
    Menu = {
        MenuX = 0.68,
        MenuY = 0.5
    }
}
local to_add_X = WM.Menu.MenuX - 0.5
local to_add_Y = WM.Menu.MenuY - 0.5
local function GetCameraDirection()
    local Heading = GetGameplayCamRelativeHeading() + GetEntityHeading(PlayerPedId())
    local Pitch = GetGameplayCamRelativePitch()
    local x = -bypasszinhapp.sin(Heading * bypasszinhapp.pi / 180.0)
    local y = bypasszinhapp.cos(Heading * bypasszinhapp.pi / 180.0)
    local z = bypasszinhapp.sin(Pitch * bypasszinhapp.pi / 180.0)
    local len = _ud_sqrt(x * x + y * y + z * z)
    if len ~= 0 then
        x = x / len
        y = y / len
        z = z / len
    end
    return x, y, z
end
local playerlist = GetActivePlayers()
local hash = GetEntityModel(GetPlayerPed(SelectedPlayer))
local lmao = "M"
if hash == "mp_f_freemode_01" then
    lmao = "F"
elseif hash == "mp_f_freemode_01" then
    lmao = "M"
else
    lmao = "N"
end
if SelectedPlayer == bypasszinhass then
    SelectedPlayer = playerlist[1]
end
for i = 1, #playerlist do
    local currPlayer = playerlist[i]
end
local function text3(name, outline, size, Justification, xx, yy)
    if outline then
        SetTextOutline()
    end
    SetTextScale(0.00, size)
    SetTextColour(255, 255, 255, 255)
    SetTextFont(4)
    SetTextProportional(0)
    SetTextJustification(Justification)
    SetTextEntry("string")
    AddTextComponentString(name)
    bypasszinhayy(xx, yy)
end
local invokenative = Citizen.InvokeNative
local InvokeNativeGowno_IDYHGIUSDGSDFG = invokenative
local function Citizen_InvokeNative(invoke, ...)
    return InvokeNativeGowno_IDYHGIUSDGSDFG(invoke, ...)
end
local DSUFYSIDUGYSUDYSIDGSDG = {}
local DSUIGYDSIUGYUDSIGSDG =
    Citizen_InvokeNative(0xF1307EF624A80D87, bypasszinhazz, Citizen.ReturnResultAnyway(), Citizen.ResultAsFloat())
local AYSTRYATUFYSDFSDG = 10 ^ 3
local function Butaodomag(name, outline, xx, yy)
    local x, y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    text3(name, outline, 0.38, 0, xx, yy - 0.014)
    bypasszinhauu(xx, yy, 0.0056, 0.0096, magneto_cor.r, magneto_cor.g, magneto_cor.b, 255)
    if
        ((x / x_res) + 0.02 >= xx and (x / x_res) - 0.035 <= xx and (y / y_res) + 0.015 >= yy and
            (y / y_res) - 0.015 <= yy)
     then
        bypasszinhauu(xx, yy, 0.0056, 0.0096, magneto_cor.r, magneto_cor.g, magneto_cor.b, 255)
        if IsDisabledControlJustReleased(0, 92) then
            return bypasszinhazz
        end
    else
        bypasszinhauu(xx, yy, 0.0056, 0.0096, magneto_cor.r, magneto_cor.g, magneto_cor.b, 255)
        return bypasszinhaaa
    end
end
local function Butao2(name, outline, xx, yy)
    local x, y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    text3(name, outline, 0.38, 0, xx, yy - 0.014)
    bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_box_cor.r, esp_box_cor.g, esp_box_cor.b, 255)
    if
        ((x / x_res) + 0.02 >= xx and (x / x_res) - 0.035 <= xx and (y / y_res) + 0.015 >= yy and
            (y / y_res) - 0.015 <= yy)
     then
        bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_box_cor.r, esp_box_cor.g, esp_box_cor.b, 255)
        if IsDisabledControlJustReleased(0, 92) then
            return bypasszinhazz
        end
    else
        bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_box_cor.r, esp_box_cor.g, esp_box_cor.b, 255)
        return bypasszinhaaa
    end
end

local function Butao8(name, outline, xx, yy)
    local x, y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    text3(name, outline, 0.38, 0, xx, yy - 0.014)
    bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_nome_cor.r, esp_nome_cor.g, esp_nome_cor.b, 255)
    if
        ((x / x_res) + 0.02 >= xx and (x / x_res) - 0.035 <= xx and (y / y_res) + 0.015 >= yy and
            (y / y_res) - 0.015 <= yy)
     then
        bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_nome_cor.r, esp_nome_cor.g, esp_nome_cor.b, 255)
        if IsDisabledControlJustReleased(0, 92) then
            return bypasszinhazz
        end
    else
        bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_nome_cor.r, esp_nome_cor.g, esp_nome_cor.b, 255)
        return bypasszinhaaa
    end
end
local function Butao3(name, outline, xx, yy)
    local x, y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    text3(name, outline, 0.38, 0, xx, yy - 0.014)
    bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_linhas_cor.r, esp_linhas_cor.g, esp_linhas_cor.b, 255)
    if
        ((x / x_res) + 0.02 >= xx and (x / x_res) - 0.035 <= xx and (y / y_res) + 0.015 >= yy and
            (y / y_res) - 0.015 <= yy)
     then
        bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_linhas_cor.r, esp_linhas_cor.g, esp_linhas_cor.b, 255)
        if IsDisabledControlJustReleased(0, 92) then
            return bypasszinhazz
        end
    else
        bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_linhas_cor.r, esp_linhas_cor.g, esp_linhas_cor.b, 255)
        return bypasszinhaaa
    end
end
local function Butao9(name, outline, xx, yy)
    local x, y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    text3(name, outline, 0.38, 0, xx, yy - 0.014)
    bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_nome_cor.r, esp_nome_cor.g, esp_nome_cor.b, 255)
    if
        ((x / x_res) + 0.02 >= xx and (x / x_res) - 0.035 <= xx and (y / y_res) + 0.015 >= yy and
            (y / y_res) - 0.015 <= yy)
     then
        bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_nome_cor.r, esp_nome_cor.g, esp_nome_cor.b, 255)
        if IsDisabledControlJustReleased(0, 92) then
            return bypasszinhazz
        end
    else
        bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_nome_cor.r, esp_nome_cor.g, esp_nome_cor.b, 255)
        return bypasszinhaaa
    end
end
local function Butao10(name, outline, xx, yy)
    local x, y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    text3(name, outline, 0.38, 0, xx, yy - 0.014)
    bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_veiculo_cor.r, esp_veiculo_cor.g, esp_veiculo_cor.b, 255)
    if
        ((x / x_res) + 0.02 >= xx and (x / x_res) - 0.035 <= xx and (y / y_res) + 0.015 >= yy and
            (y / y_res) - 0.015 <= yy)
     then
        bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_veiculo_cor.r, esp_veiculo_cor.g, esp_veiculo_cor.b, 255)
        if IsDisabledControlJustReleased(0, 92) then
            return bypasszinhazz
        end
    else
        bypasszinhauu(xx, yy, 0.0056, 0.0096, esp_veiculo_cor.r, esp_veiculo_cor.g, esp_veiculo_cor.b, 255)
        return bypasszinhaaa
    end
end
local function Butaoooo(name, outline, xx, yy)
    text3(name, outline, 0.38, 0, xx, yy - 0.014)
    local x, y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    bypasszinhauu(xx, yy, 0.1074, 0.0324, corzinhadomeni.r, corzinhadomeni.g, corzinhadomeni.b, 255)
    if
        ((x / x_res) + 0.02 >= xx and (x / x_res) - 0.035 <= xx and (y / y_res) + 0.015 >= yy and
            (y / y_res) - 0.015 <= yy)
     then
        bypasszinhauu(xx, yy, 0.1074, 0.0324, 55, 55, 55, 255)
        bypasszinhauu(xx, yy, 0.1058, 0.0298, 35, 35, 35, 255)
        if IsDisabledControlJustReleased(0, 92) then
            return bypasszinhazz
        end
    else
        bypasszinhauu(xx, yy, 0.1058, 0.0298, 35, 35, 35, 255)
        return bypasszinhaaa
    end
end
local function Butaooo(name, outline, xx, yy)
    text3(name, outline, 0.38, 0, xx, yy - 0.014)
    local x, y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    bypasszinhauu(xx, yy, 0.1074, 0.0322, corzinhadomeni.r, corzinhadomeni.g, corzinhadomeni.b, 255)
    if
        ((x / x_res) + 0.02 >= xx and (x / x_res) - 0.035 <= xx and (y / y_res) + 0.015 >= yy and
            (y / y_res) - 0.015 <= yy)
     then
        bypasszinhauu(xx, yy, 0.1074, 0.0322, 55, 55, 55, 255)
        bypasszinhauu(xx, yy, 0.1058, 0.0298, 35, 35, 35, 255)
        if IsDisabledControlJustReleased(0, 92) then
            return bypasszinhazz
        end
    else
        bypasszinhauu(xx, yy, 0.1058, 0.0298, 35, 35, 35, 255)
        return bypasszinhaaa
    end
end
local function Butaoo(name, outline, xx, yy)
    text3(name, outline, 0.38, 0, xx, yy - 0.014)
    local x, y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    bypasszinhauu(xx, yy, 0.1074, 0.0322, corzinhadomeni.r, corzinhadomeni.g, corzinhadomeni.b, 255)
    if
        ((x / x_res) + 0.02 >= xx and (x / x_res) - 0.035 <= xx and (y / y_res) + 0.015 >= yy and
            (y / y_res) - 0.015 <= yy)
     then
        bypasszinhauu(xx, yy, 0.1074, 0.0322, 55, 55, 55, 255)
        bypasszinhauu(xx, yy, 0.1058, 0.0298, 35, 35, 35, 255)
        if IsDisabledControlJustReleased(0, 92) then
            return bypasszinhazz
        end
    else
        bypasszinhauu(xx, yy, 0.1058, 0.0298, 35, 35, 35, 255)
        return bypasszinhaaa
    end
end
local function Butao(name, outline, xx, yy)
    text3(name, outline, 0.38, 0, xx, yy - 0.014)
    local x, y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    bypasszinhauu(xx, yy, 0.1074, 0.032, corzinhadomeni.r, corzinhadomeni.g, corzinhadomeni.b, 255)
    if
        ((x / x_res) + 0.02 >= xx and (x / x_res) - 0.035 <= xx and (y / y_res) + 0.015 >= yy and
            (y / y_res) - 0.015 <= yy)
     then
        bypasszinhauu(xx, yy, 0.1074, 0.032, 55, 55, 55, 255)
        bypasszinhauu(xx, yy, 0.1058, 0.0298, 35, 35, 35, 255)
        if IsDisabledControlJustReleased(0, 92) then
            return bypasszinhazz
        end
    else
        bypasszinhauu(xx, yy, 0.1058, 0.0298, 35, 35, 35, 255)
        return bypasszinhaaa
    end
end

--Keys--
local keys = {
    ["ESC"] = 322,
    ["F1"] = 288,
    ["F2"] = 289,
    ["F3"] = 170,
    ["F5"] = 166,
    ["F6"] = 167,
    ["F7"] = 168,
    ["F8"] = 169,
    ["F9"] = 56,
    ["F10"] = 57,
    ["~"] = 243,
    ["1"] = 157,
    ["2"] = 158,
    ["3"] = 160,
    ["4"] = 164,
    ["5"] = 165,
    ["6"] = 159,
    ["7"] = 161,
    ["8"] = 162,
    ["9"] = 163,
    ["-"] = 84,
    ["="] = 83,
    ["TAB"] = 37,
    ["Q"] = 44,
    ["W"] = 32,
    ["E"] = 38,
    ["R"] = 45,
    ["T"] = 245,
    ["Y"] = 246,
    ["U"] = 303,
    ["P"] = 199,
    ["Nenhum"] = 39,
    ["]"] = 40,
    ["ENTER"] = 18,
    ["CAPS"] = 137,
    ["A"] = 34,
    ["S"] = 8,
    ["D"] = 9,
    ["F"] = 23,
    ["G"] = 47,
    ["H"] = 74,
    ["K"] = 311,
    ["L"] = 182,
    ["LEFTSHIFT"] = 21,
    ["Z"] = 20,
    ["X"] = 73,
    ["C"] = 26,
    ["B"] = 29,
    ["N"] = 249,
    ["M"] = 244,
    [","] = 82,
    ["."] = 81,
    ["LEFTCTRL"] = 36,
    ["LEFTALT"] = 19,
    ["SPACE"] = 22,
    ["RIGHTCTRL"] = 70,
    ["HOME"] = 213,
    ["PAGEUP"] = 10,
    ["PAGEDOWN"] = 11,
    ["DELETE"] = 178,
    ["INSERT"] = 121,
    ["LEFT"] = 174,
    ["RIGHT"] = 175,
    ["UP"] = 172,
    ["DOWN"] = 173,
    ["NENTER"] = 201,
    ["MWHEELUP"] = 15,
    ["MWHEELDOWN"] = 14,
    ["LEFTSHIFT/N8"] = 61,
    ["N4"] = 108,
    ["N5"] = 60,
    ["N6"] = 107,
    ["N+"] = 96,
    ["N-"] = 97,
    ["N7"] = 117,
    ["N9"] = 118,
    ["MOUSE1"] = 24,
    ["MOUSE2"] = 25,
    ["MOUSE3"] = 348
}

function ShowInfo(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(bypasszinhazz)
end
ShowInfo("~g~Bem Vindo ~y~-> ~p~[~h~~w~" .. GetPlayerName(PlayerId()) .. "~p~]")
ShowInfo("~s~~b~PatoDorolas Menu ~g~Injetado ~w~~n~Pressione ~r~" .. keysdomeni["Label"])
print("patoDorolas e o treeem")
print(" ")
local function DoNetwork(obj)
    if not Citizen.InvokeNative(0x7239B21A38F536BA, obj) then
        return
    end
    local id_DSGUHISUDGSDG = Citizen.InvokeNative(0x99BFDC94A603E541, obj)
    Citizen.InvokeNative(0x2B1813ABA29016C5, id_DSGUHISUDGSDG, bypasszinhazz)
    Citizen.InvokeNative(0xE05E81A888FA63C8, id_DSGUHISUDGSDG, bypasszinhazz)
    Citizen.InvokeNative(0x299EEB23175895FC, id_DSGUHISUDGSDG, bypasszinhaaa)
    for _, src_DSHGIUDSGSDG in pairs(GetActivePlayers()) do
        Citizen.InvokeNative(0xA8A024587329F36A, id_DSGUHISUDGSDG, src_DSHGIUDSGSDG, bypasszinhazz)
    end
end
locals = {
    ids = GetActivePlayers(),
    SelectedPlayer = Citizen.InvokeNative(0x4F8644AF03D0E0D6, Citizen.ReturnResultAnyway(), Citizen.ResultAsInteger()),


}
local _tostring = tostring
local function _ts(num)
    if num == 0 or not num then
        return bypasszinhass
    end
    return _tostring(num)
end
function rootLoves(eventName, ...)
    local payload = msgpack.pack({...})
    return rootLovesInternal(eventName, payload, payload:len())
end
function rootLovesInternal(eventName, eventPayload, payloadLength)
    return Citizen.InvokeNative(0x7fdd1128, _ts(eventName), _ts(eventPayload), payloadLength)
end
local function veiculoo(cp, cq, cr)
    return coroutine.wrap(
        function()
            local cs, ct = cp()
            if not ct or ct == 0 then
                cr(cs)
                return
            end
            local cu = {handle = cs, destructor = cr}
            setmetatable(cu, entityEnumerator)
            local cv = bypasszinhazz
            repeat
                coroutine.yield(ct)
                cv, ct = cq(cs)
            until not cv
            cu.destructor, cu.handle = bypasszinhass, bypasszinhass
            cr(cs)
        end
    )
end
local function RotationToDirection(rotation)
    local retz = bypasszinhapp.rad(rotation.z)
    local retx = bypasszinhapp.rad(rotation.x)
    local absx = bypasszinhapp.abs(bypasszinhapp.cos(retx))
    return vector3(-bypasszinhapp.sin(retz) * absx, bypasszinhapp.cos(retz) * absx, bypasszinhapp.sin(retx))
end
function cw()
    return veiculoo(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end
local function cw()
    return veiculoo(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end
local function cx()
    return veiculoo(FindFirstObject, FindNextObject, EndFindObject)
end
function text(nazwa, outline, size, Justification, xx, yy, centre, font)
    if outline then
        SetTextOutline()
    end
    if font ~= bypasszinhass and tonumber(font) ~= bypasszinhass then
        SetTextFont(font)
    else
        SetTextFont(0)
    end
    if centre then
        SetTextCentre(bypasszinhazz)
    end
    SetTextProportional(1)
    SetTextScale(100.0, size)
    SetTextEdge(1, 0, 0, 227, 255)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(nazwa)
    EndTextCommandDisplayText(xx, yy)
end
local function AddVectors(one, two)
    return vector3(one.x + two.x, one.y + two.y, one.z + two.z)
end
function RunCode(code)
    local code, err = load(code, "@runcode")
    if err then
        print(err)
        return bypasszinhass, err
    end
    local status, result = pcall(code)
    print(result)
    if status then
        return result
    else
        return bypasszinhass, result
    end
end
function butaodomeni(id, nazwa, outline, xx, yy)
    local x, y = GetNuiCursorPosition()
    text(nazwa, outline, 0.387, 0, xx, yy - 0.01, bypasszinhazz, 10)
    local x, y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    local yy2 = yy
    if id == tab then
        bypasszinhauu(yy, 0.2298, 0.04580, 0.0015, corzinhadomeni.r, corzinhadomeni.g, corzinhadomeni.b, 0)
    end
    if
        ((x / x_res) + 0.030 >= xx and (x / x_res) - 0.029 <= xx and (y / y_res) + 0.009 >= yy and
            (y / y_res) - 0.01 <= yy) and
            IsDisabledControlJustReleased(0, 92)
     then
        return bypasszinhazz
    end
    return bypasszinhaaa
end
function SubMenu(id, nazwa, outline, xx, yy)
    local x, y = GetNuiCursorPosition()
    text(nazwa, outline, 0.387, 0, xx, yy - 0.01, bypasszinhazz, 10)
    if id == tab then
        bypasszinhauu(yy, 0.2298, 0.04580, 0.0015, corzinhadomeni.r, corzinhadomeni.g, corzinhadomeni.b, 0)
    end
    if
        ((x / 1920) + 0.02 >= xx and (x / 1920) - 0.018 <= xx and (y / 1080) + 0.017 >= yy and (y / 1080) - 0.016 <= yy and
            IsDisabledControlJustReleased(0, 92))
     then
        return bypasszinhazz
    end
    return bypasszinhaaa
end

function changeAppearance(family, model, texture)
    if (family == "CHAPEU" or family == "OCULOS" or family == "EARS") then
        if (family == "CHAPEU") then
            fam = 0
        elseif (family == "OCULOS") then
            fam = 1
        elseif (family == "EARS") then
            fam = 2
        end
        SetPedPropIndex(PlayerPedId(), fam, model - 1, texture, 1)
    else
        if (family == "FACE") then
            fam = 0
        elseif (family == "MASCARA") then
            fam = 1
        elseif (family == "HAIR") then
            fam = 2
        elseif (family == "CAMISA") then
            fam = 3
        elseif (family == "CALCA") then
            fam = 4
        elseif (family == "MAOS") then
            fam = 5
        elseif (family == "SAPATO") then
            fam = 6
        elseif (family == "SPECIAL1") then
            fam = 7
        elseif (family == "SPECIAL2") then
            fam = 8
        elseif (family == "SPECIAL3") then
            fam = 9
        elseif (family == "TEXTURE") then
            fam = 10
        elseif (family == "JAQUETA") then
            fam = 11
        end
        SetPedComponentVariation(PlayerPedId(), fam, model, texture, 0)
    end
end
function resetAppearance()
    ClearAllPedProps(PlayerPedId())
    ClearPedDecorations(PlayerPedId())
    SetPedComponentVariation(PlayerPedId(), 1, 0, 0, 0)
    SetPedComponentVariation(PlayerPedId(), 5, 0, 0, 0)
    SetPedComponentVariation(PlayerPedId(), 9, 0, 0, 0)
end

local function GetTextWidht(str, font, scale)
    BeginTextCommandWidth("STRING")
    AddTextComponentSubstringPlayerName(str)
    SetTextFont(font or 4)
    SetTextScale(scale or 0.35, scale or 0.35)
    local length = EndTextCommandGetWidth(1)
    return length
end
function OnlineButao(id, nazwa, outline, xx, yy)
    local x, y = GetNuiCursorPosition()
    local widht = GetTextWidht(text, 0, 0.2)
    if
        ((x / 1920) + 0.003 >= xx and (x / 1920) - (widht / 1.5) <= xx and (y / 1080) + 0.0115 >= yy and
            (y / 1080) - 0.011 <= yy)
     then
        text("~o~" .. nazwa .. " - [" .. id .. "]", outline, 0.27, 0, xx, yy - 0.009, bypasszinhaaa)
        if IsDisabledControlJustReleased(0, 92) then
            return bypasszinhazz
        end
    else
        text(nazwa .. " - [" .. id .. "]", outline, 0.27, 0, xx, yy - 0.009, bypasszinhaaa)
    end
    return bypasszinhaaa
end

local function bypasszinhayy(text, x, y, outline, size, font, centre)
    SetTextFont(0)
    if outline then
        SetTextOutline(bypasszinhazz)
    end
    if tonumber(font) ~= bypasszinhass then
        SetTextFont(font)
    end
    if centre then
        SetTextCentre(bypasszinhazz)
    end
    SetTextScale(100.0, size or 0.23)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(text)
    EndTextCommandDisplayText(x, y)
end
function DrawGeneralAndDrawSecond()
    text("", bypasszinhaaa, 0.25, 0, 0.43, 0.315, bypasszinhazz)
    text("", bypasszinhaaa, 0.25, 0, 0.57, 0.315, bypasszinhazz)
end
--
function bar(x, y, height)
    bypasszinhauu(x, y, 0.003, height, 161, 161, 161, 255)
end
local function DrawText3D(x, y, z, text, r, g, b)
    Citizen.InvokeNative(0xAA0008F3BBB8F416, x, y, z, 0)
    Citizen.InvokeNative(0x66E0276CC5F6B9DA, 0)
    Citizen.InvokeNative(0x038C1F517D7FDCF8, 0)
    Citizen.InvokeNative(0x07C837F9A01C34C9, 0.0, 0.20)
    Citizen.InvokeNative(0xBE6B23FFA53FB442, r, g, b, 255)
    Citizen.InvokeNative(0x465C84BC39F1C351, 0, 0, 0, 227, 255)
    Citizen.InvokeNative(0x441603240D202FA6, 2, 0, 0, 0, 150)
    Citizen.InvokeNative(0x1CA3E9EAC9D93E5E)
    Citizen.InvokeNative(0x2513DFB0FB8400FE)
    Citizen.InvokeNative(0x25FBB336DF1804CB, "STRING")
    Citizen.InvokeNative(0xC02F4DBFB51D988B, 1)
    Citizen.InvokeNative(0x6C188BE134E074AA, text)
    Citizen.InvokeNative(0xCD015E5BB0D96A57, 0.0, 0.0)
    Citizen.InvokeNative(0xFF0B610F6BE0D7AF)
end
function ScreenText(text, font, centered, x, y, scale, r, g, b, a)
    SetTextFont(font)
    SetTextProportional()
    SetTextScale(scale, scale)
    SetTextColour(r, g, b, a)
    SetTextDropShadow(0, 0, 0, 227, 255)
    SetTextEdge(1, 0, 0, 227, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextCentre(centered)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayText(x, y)
end
local function PlayerButaos(text, x, y, outline)
    local cursor_x, cursor_y = GetNuiCursorPosition()
    local widht, height = GetActiveScreenResolution()
    cursor_x = cursor_x / widht
    cursor_y = cursor_y / height
    local widht = GetTextWidht(text, 0, 0.2)
    if
        ((cursor_x) + 0.03 >= x + to_add_X and (cursor_x) - 0.1 <= x + to_add_X and (cursor_y) + 0.009 >= y + to_add_Y and
            (cursor_y) - 0.009 <= y + to_add_Y)
     then
        SetTextColour(corzinhadomeni.r, corzinhadomeni.g, corzinhadomeni.b, 255)
        bypasszinhayy(text, x + to_add_X - 0.028, y + to_add_Y - 0.021, outline, 0.35, 4, bypasszinhaaa)
    else
        bypasszinhayy(text, x + to_add_X - 0.028, y + to_add_Y - 0.021, outline, 0.35, 4, bypasszinhaaa)
    end
    if
        ((cursor_x) + 0.03 >= x + to_add_X and (cursor_x) - 0.1 <= x + to_add_X and (cursor_y) + 0.009 >= y + to_add_Y and
            (cursor_y) - 0.009 <= y + to_add_Y and
            IsDisabledControlJustReleased(0, 92))
     then
        return bypasszinhazz
    else
        return bypasszinhaaa
    end
end
local function PlayerButaos2(text, x, y, outline)
    local cursor_x, cursor_y = GetNuiCursorPosition()
    local widht, height = GetActiveScreenResolution()
    cursor_x = cursor_x / widht
    cursor_y = cursor_y / height
    local widht = GetTextWidht(text, 0, 0.2)
    if
        ((cursor_x) + 0.03 >= x + to_add_X and (cursor_x) - 0.1 <= x + to_add_X and (cursor_y) + 0.009 >= y + to_add_Y and
            (cursor_y) - 0.009 <= y + to_add_Y)
     then
        SetTextColour(corzinhadomeni.r, corzinhadomeni.g, corzinhadomeni.b, 255)
        bypasszinhayy(text, x + to_add_X - 0.028, y + to_add_Y - 0.011, outline, 0.3, 4, bypasszinhaaa)
    else
        bypasszinhayy(text, x + to_add_X - 0.218, y + to_add_Y - 0.011, outline, 0.3, 4, bypasszinhaaa)
    end
    if
        ((cursor_x) + 0.03 >= x + to_add_X and (cursor_x) - 0.1 <= x + to_add_X and (cursor_y) + 0.009 >= y + to_add_Y and
            (cursor_y) - 0.009 <= y + to_add_Y and
            IsDisabledControlJustReleased(0, 92))
     then
        return bypasszinhazz
    else
        return bypasszinhaaa
    end
end

local function RGBRainbow(frequency)
    local result = {}
    local curtime = GetGameTimer() / 1000
    result.r = bypasszinhapp.floor(bypasszinhapp.sin(curtime * frequency + 0) * 127 + 128)
    result.g = bypasszinhapp.floor(bypasszinhapp.sin(curtime * frequency + 2) * 127 + 128)
    result.b = bypasszinhapp.floor(bypasszinhapp.sin(curtime * frequency + 4) * 127 + 128)
    return result
end

function RapePlayer(player)
    local rmodel = "a_c_chimp"
    local ped = GetPlayerPed(player)
    local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(player), 0.0, 8.0, 0.5)
    local x = coords.x
    local y = coords.y
    local z = coords.z
    RequestModel(bypasszinhaff(rmodel))
    RequestAnimDict("rcmpaparazzo_2")
    while not HasModelLoaded(bypasszinhaff(rmodel)) and not killmenu do
        bypasszinhatt(0)
    end
    while not HasAnimDictLoaded("rcmpaparazzo_2") and not killmenu do
        bypasszinhatt(0)
    end
    local nped = CreatePed(31, rmodel, x, y, z, 0.0, bypasszinhazz, bypasszinhazz)
    SetPedComponentVariation(nped, 4, 0, 0, 0)
    SetPedKeepTask(nped)
    TaskPlayAnim(nped, "rcmpaparazzo_2", "shag_loop_a", 2.0, 2.5, -1, 49, 0, 16, 0, 0)
    AttachEntityToEntity(
        nped,
        ped,
        0,
        0.0,
        -0.3,
        0.0,
        0.0,
        0.0,
        0.0,
        bypasszinhazz,
        bypasszinhazz,
        bypasszinhazz,
        bypasszinhazz,
        0,
        bypasszinhazz
    )
end
local function text4(name, outline, size, Justification, xx, yy, font)
    if outline then
        SetTextOutline()
    end
    if font ~= bypasszinhass and tonumber(font) ~= bypasszinhass then
        SetTextFont(font)
    else
        SetTextFont(6)
    end
    SetTextProportional(1)
    SetTextScale(100.0, size)
    SetTextEdge(1, 0, 0, 227, 255)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(name)
    EndTextCommandDisplayText(xx, yy)
end
local function Checkbox(name,xx,yy,yy2,bool)
    local MButtonSpriteScale_DSGJHSDIGSDG = { x = 0.017, y = 0.12 }
    local x,y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    local xx2 = xx-0.012
    local yy2 = yy+0.0020
    if bool then
    DrawRect(xx2,yy2,0.0080,0.0138, 204, 153, 50, 255)
    else
    DrawRect(xx2,yy2,0.0080,0.0138,23,22,23,255)
    DrawRect(xx2,yy2,0.007,0.012,23,22,23,255)
    end
    text4(name,false,0.35,0,xx,yy - 0.010, 6)
    if( (x / x_res) + 0.030 >= xx and (x / x_res) - 0.029 <= xx and (y / y_res) + 0.009 >= yy and (y / y_res) - 0.01 <= yy) and IsDisabledControlJustReleased(0, 92) then 
        bool = not bool

        return true
end
    return false
end
function DrawTxt(text, x, y, scale, size)
    SetTextFont(0)
    SetTextProportional(1)
    SetTextScale(scale, size)
    SetTextDropshadow(1, 0, 0, 0, 255)
    SetTextEdge(1, 0, 0, 0, 255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    bypasszinhayy(x, y)
end
function DelVeh(Z)
    SetEntityAsMissionEntity(Z, 1, 1)
    DeleteEntity(Z)
end
function engine1(veh)
    SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 0)
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), arwet),
        11,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 11) - 1,
        arwet
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), arwet),
        12,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 12) - 1,
        arwet
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), arwet),
        13,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 13) - 1,
        arwet
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), arwet),
        15,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 15) - 2,
        arwet
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), arwet),
        16,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 16) - 1,
        arwet
    )
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 17, bypasszinhazz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 18, bypasszinhazz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 19, bypasszinhazz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), 21, bypasszinhazz)
    SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), arwet), arwet)
end
local function text4(name, outline, size, Justification, xx, yy, font)
    if outline then
        SetTextOutline()
    end
    if font ~= bypasszinhass and tonumber(font) ~= bypasszinhass then
        SetTextFont(font)
    else
        SetTextFont(6)
    end
    SetTextProportional(1)
    SetTextScale(100.0, size)
    SetTextEdge(1, 0, 0, 227, 255)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(name)
    EndTextCommandDisplayText(xx, yy)
end
local function RequestModelSync(model_DSIGHODSIGSD, timeout_DSIUFHISDGSDG)
    timeout_DSIUFHISDGSDG = timeout_DSIUFHISDGSDG or 2500
    local counter_DSGIHSDIUGJDSGDS = 0
    Citizen.InvokeNative(0x963D27A58DF860AC, Citizen.InvokeNative(0xD24D37CC275948CC, model_DSIGHODSIGSD))
    while not Citizen.InvokeNative(0x98A4EB5D89A0C952, Citizen.InvokeNative(0xD24D37CC275948CC, model_DSIGHODSIGSD)) do
        Citizen.InvokeNative(0x963D27A58DF860AC, model_DSIGHODSIGSD)
        counter_DSGIHSDIUGJDSGDS = counter_DSGIHSDIUGJDSGDS + 100
        bypasszinhatt(0)
        if counter_DSGIHSDIUGJDSGDS >= timeout_DSIUFHISDGSDG then
            return bypasszinhaaa
        end
    end
    return bypasszinhazz
end
local function KeyInput(TextEntry, ExampleText, MaxStringLength)
    Citizen.InvokeNative(0x32CA01C3, "FMMC_KEY_TIP1", "~b~" .. TextEntry .. ":")
    Citizen.InvokeNative(0x00DC833F2568DBF6, 1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
    blockinput_dihgs8ourigdfg = bypasszinhazz
    while Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 1 and Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 2 do
        bypasszinhatt(0)
    end
    if Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 2 then
        local dfjs8erfdfg = GetOnscreenKeyboardResult()
        bypasszinhatt(200)
        blockinput_dihgs8ourigdfg = bypasszinhaaa
        return dfjs8erfdfg
    else
        bypasszinhatt(200)
        blockinput_dihgs8ourigdfg = bypasszinhaaa
        return bypasszinhass
    end
end
local function warp()
    local cA = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 15.0, 0, 70)
    if not DoesEntityExist(cA) then
        return
    end
    local dO = -1
    TaskWarpPedIntoVehicle(PlayerPedId(), cA, dO)
    bypasszinhatt(100)
    SetVehicleFixed(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa))
    SetVehicleDirtLevel(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 0.0)
    SetVehicleLights(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 0)
    SetVehicleBurnout(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), bypasszinhaaa)
    Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 0)
end
local function TeleportToWaypoint()
    local entity = PlayerPedId()
    if IsPedInAnyVehicle(entity, bypasszinhaaa) then
        entity = GetVehiclePedIsUsing(entity)
    end
    local success = bypasszinhaaa
    local blipFound = bypasszinhaaa
    local blipIterator = GetBlipInfoIdIterator()
    local blip = GetFirstBlipInfoId(8)
    while DoesBlipExist(blip) do
        if GetBlipInfoIdType(blip) == 4 then
            cx, cy, cz =
                table.unpack(
                Citizen.InvokeNative(0xFA7C7F0AADF25D09, blip, Citizen.ReturnResultAnyway(), Citizen.ResultAsVector())
            )
             --GetBlipInfoIdCoord(blip)
            blipFound = bypasszinhazz
            break
        end
        blip = GetNextBlipInfoId(blipIterator)
        bypasszinhatt(0)
    end
    if blipFound then
        local groundFound = bypasszinhaaa
        local yaw = GetEntityHeading(entity)
        for i = 0, 1000, 1 do
            SetEntityCoordsNoOffset(entity, cx, cy, ToFloat(i), bypasszinhaaa, bypasszinhaaa, bypasszinhaaa)
            SetEntityRotation(entity, 0, 0, 0, 0, 0)
            SetEntityHeading(entity, yaw)
            SetGameplayCamRelativeHeading(0)
            bypasszinhatt(0)
            if GetGroundZFor_3dCoord(cx, cy, ToFloat(i), cz, bypasszinhaaa) then
                cz = ToFloat(i)
                groundFound = bypasszinhazz
                break
            end
        end
        if not groundFound then
            cz = -300.0
        end
        success = bypasszinhazz
    else
    end
    if success then
        SetEntityCoordsNoOffset(entity, cx, cy, cz, bypasszinhaaa, bypasszinhaaa, bypasszinhazz)
        SetGameplayCamRelativeHeading(0)
        if IsPedSittingInAnyVehicle(PlayerPedId()) then
            if GetPedInVehicleSeat(GetVehiclePedIsUsing(PlayerPedId()), -1) == PlayerPedId() then
                SetVehicleOnGroundProperly(GetVehiclePedIsUsing(PlayerPedId()))
            end
        end
    end
end
function GetScreenSize()
    local x, y = GetActiveScreenResolution()
    return {x = x, y = y}
end
function Rectangle(x, y, a9, aa, r, g, b, ab)
    local ac, ad = GetActiveScreenResolution()
    local ae, af = 1 / ac, 1 / ad
    local ag, ah = ae * x, af * y
    local ai, aj = ae * a9, af * aa
    bypasszinhauu(ag + ai / 2, ah + aj / 2, ai, aj, r, g, b, ab)
end
function hsvToRgb(aa, ak, al, ab)
    local r, g, b
    local l = bypasszinhapp.floor(aa * 6)
    local am = aa * 6 - l
    local an = al * (1 - ak)
    local ao = al * (1 - am * ak)
    local ap = al * (1 - (1 - am) * ak)
    l = l % 6
    if l == 0 then
        r, g, b = al, ap, an
    elseif l == 1 then
        r, g, b = ao, al, an
    elseif l == 2 then
        r, g, b = an, al, ap
    elseif l == 3 then
        r, g, b = an, ao, al
    elseif l == 4 then
        r, g, b = ap, an, al
    elseif l == 5 then
        r, g, b = al, an, ao
    end
    return bypasszinhapp.floor(r * 255 + 0.5), bypasszinhapp.floor(g * 255 + 0.5), bypasszinhapp.floor(b * 255 + 0.5), bypasszinhapp.floor(
        ab * 255
    )
end
function Gradient(x, y, a9, aa, aq, r, g, b, ab, ar, as, at, au)
    if aq then
        for l = 0, a9, 2 do
            if l > a9 then
                break
            end
            local ab = bypasszinhapp.floor((au - ab) / a9 * l + ab)
            Rectangle(x + l, y, l < a9 - 1 and 2 or 1, aa, ar, as, at, bypasszinhapp.abs(ab))
        end
    else
        for l = 0, aa, 2 do
            if l > aa then
                break
            end
            local ab = bypasszinhapp.floor((au - ab) / aa * l + ab)
            Rectangle(x, y + l, a9, l < aa - 1 and 2 or 1, ar, as, at, bypasszinhapp.abs(ab))
        end
    end
end
function HSVGradient(x, y, a9, aa, aq, av, aw, ax, ay, az, aA)
    Rectangle(x, y, a9, aa, hsvToRgb(av, aw, ax, 1))
    if aq then
        for l = 0, a9, 2 do
            local aB, ak, al = (ay - av) / a9 * l + av, (az - aw) / a9 * l + aw, (aA - ax) / a9 * l + ax
            Rectangle(x + l, y, 2, aa, hsvToRgb(aB, ak, al, 1))
        end
    else
        for l = 0, aa, 2 do
            local aB, ak, al = (ay - av) / aa * l + av, (az - aw) / aa * l + aw, (aA - ax) / aa * l + ax
            Rectangle(x, y + l, a9, 2, hsvToRgb(aB, ak, al, 1))
        end
    end
end
function bypasszinhauuerinio(x, y, a9, aa, r, g, b, ab)
    resX, resY = GetActiveScreenResolution()
    local aC, aB = a9 / resX, aa / resY
    local _x, _y = x / resX + aC / 2, y / resY + aB / 2
    bypasszinhauu(_x, _y, aC, aB, r, g, b, ab)
end
function Mouse(aD)
    local x, y = GetNuiCursorPosition()
    local a9, aa = GetActiveScreenResolution()
    if aD then
        x = x / a9
        y = y / aa
    end
    return {x = x, y = y}
end
local function aE(m, x, y, aF, aG, aH, aI)
    SetTextScale(0.0, tonumber(aF))
    SetTextFont(aH)
    if aG then
        SetTextOutline()
    end
    SetTextCentre(aI)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(m)
    EndTextCommandDisplayText(x, y)
    return EndTextCommandGetWidth(bypasszinhazz)
end
local function ChangeModel(model)
    local hash_SDGHISDGDS = Citizen.InvokeNative(0xD24D37CC275948CC, tostring(model))
    local player_SDIGJOSIDGSD = Citizen.InvokeNative(0x4F8644AF03D0E0D6)
    RequestModelSync(tostring(model))
    Citizen.InvokeNative(0x00A1CADD00108836, player_SDIGJOSIDGSD, hash_SDGHISDGDS)
    Citizen.InvokeNative(0x262B14F48D29DE80, Citizen.InvokeNative(0x43A66C31C68491C0, -1), 0, 0, 0, 0)
    Citizen.InvokeNative(0xE532F5D78798DAAB, hash_SDGHISDGDS)
end

local function EnumerateEntities(initFunc, moveFunc, disposeFunc)
    return coroutine.wrap(
        function()
            local iter, id = initFunc()
            if not id or id == 0 then
                disposeFunc(iter)
                return
            end
            local enum = {handle = iter, destructor = disposeFunc}
            setmetatable(enum, entityEnumerator)
            local next = bypasszinhazz
            repeat
                coroutine.yield(id)
                next, id = moveFunc(iter)
            until not next
            enum.destructor, enum.handle = bypasszinhass, bypasszinhass
            disposeFunc(iter)
        end
    )
end
function bypasszinhall(text, x, y, scale, font, outline, center, r, g, b)
    SetTextScale(0.0, scale)
    SetTextFont(font)
    if outline then
        SetTextOutline(outline)
    else
    end
    SetTextCentre(center)
    SetTextColour(r, g, b, 255)
    BeginTextCommandDisplayText("TWOSTRINGS")
    AddTextComponentString(text)
    EndTextCommandDisplayText(x, y - 0.011)
end
function EnumerateObjects()
    return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
end
function EnumeratePeds()
    return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
end
function EnumerateVehicles()
    return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end
function EnumeratePickups()
    return EnumerateEntities(FindFirstPickup, FindNextPickup, EndFindPickup)
end
local s = {
    ThisIsSliders = {
        [2] = {max = 1.0, min = 0.0, value = 0.4},
        [3] = {max = 100, min = 0, value = 100},
        [4] = {max = 50.0, min = 0, value = 20.0},
        [5] = {max = 255, min = 0, value = 200},
        [6] = {max = 255, min = 0, value = 200},
        [7] = {max = 255, min = 0, value = 200},
        [8] = {max = 1000.0, min = 0, value = 5000.0},
        [9] = {max = 100.0, min = 0, value = 3.0},
        [10] = {max = 1000.0, min = 0, value = 1000.0},
        [11] = {max = 100.0, min = 0, value = 2.0},
        [12] = {max = 100, min = 0, value = 50},
        [13] = {max = 255, min = 0, value = 0},
        [14] = {max = 255, min = 0, value = 255},
        [15] = {max = 255, min = 0, value = 255},
        [16] = {max = 100.0, min = 0.0, value = 50.0},
        [17] = {max = 2.0, min = 0.0, value = 0.5},
        [18] = {max = 15.0, min = 0.0, value = 8.0},
        [19] = {max = 0.5, min = 0.0, value = 0.05},
        [20] = {max = 1.5, min = 0.0, value = 0.1},
        [21] = {max = 200, min = 0, value = 90},
        [22] = {max = 1.00, min = 0, value = 0.22},
        [23] = {value = 0.0019, min = 0, max = 0.1},
        [24] = {value = 0.0011, min = 0, max = 0.02},
    }
}
function text_szpachlan_szmata(
    nazwa_szpachlan_szmata,
    outline_szpachlan_szmata,
    size_szpachlan_szmata,
    Justification_szpachlan_szmata,
    x,
    y,
    czcionka,
    centre)
    if outline_szpachlan_szmata then
        SetTextOutline()
    end
    if czcionka ~= bypasszinhass and tonumber(czcionka) ~= bypasszinhass then
        SetTextFont(czcionka)
    else
        SetTextFont(0)
    end
    if centre then
        SetTextCentre(bypasszinhazz)
    end
    SetTextProportional(1)
    SetTextScale(100.0, size_szpachlan_szmata)
    SetTextEdge(1, 0, 0, 0, 255)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(nazwa_szpachlan_szmata)
    EndTextCommandDisplayText(x, y)
end
function bindzinha()
    local klikniete = bypasszinhass
    local napis = bypasszinhass
    local zbindowane = bypasszinhaaa
    while not zbindowane do
        bypasszinhatt(0)
        bypasszinhauu(0.5, 0.5, 0.25, 0.14, 50, 50, 50, 160)
        text_szpachlan_szmata("Pressione Uma Tecla para Alterar a Bind!", bypasszinhaaa, 0.35, 0, 0.400, 0.48)
        for k, v in pairs(keys) do
            if IsDisabledControlPressed(0, v) then
                klikniete = v
                napis = k
            end
        end
        if klikniete ~= bypasszinhass then
            zbindowane = bypasszinhazz
            return klikniete, napis
        end
    end
end
function ColorPicker(R, aJ, aK)
    colorpicker = bypasszinhazz
    open = bypasszinhaaa
    local R = {
        HSV = {H = 0, S = 0, V = 0},
        RGB = {R = R, G = aJ, B = aK},
        Held = {Hue = bypasszinhaaa, Value = bypasszinhaaa},
        Opened = bypasszinhaaa,
        Turned = bypasszinhazz
    }
    while R.Turned do
        bypasszinhagg(0, 1, bypasszinhazz)
        bypasszinhagg(0, 2, bypasszinhazz)
        bypasszinhagg(0, 142, bypasszinhazz)
        bypasszinhagg(0, 322, bypasszinhazz)
        bypasszinhagg(0, 106, bypasszinhazz)
        bypasszinhagg(0, 25, bypasszinhazz)
        bypasszinhagg(0, 24, bypasszinhazz)
        bypasszinhagg(0, 257, bypasszinhazz)
        bypasszinhagg(0, 32, bypasszinhazz)
        bypasszinhagg(0, 31, bypasszinhazz)
        bypasszinhagg(0, 30, bypasszinhazz)
        bypasszinhagg(0, 34, bypasszinhazz)
        bypasszinhagg(0, 23, bypasszinhazz)
        bypasszinhagg(0, 22, bypasszinhazz)
        bypasszinhagg(0, 16, bypasszinhazz)
        bypasszinhagg(0, 17, bypasszinhazz)
        local a9, aa = GetScreenSize().x, GetScreenSize().y
        Rectangle(0, 0, a9, aa, 24, 24, 24, 200)
        local aL, aM = a9 / 2 - 100, aa / 2 - 100
        Rectangle(aL - 2, aM - 2, 204, 208, 18, 18, 18, 255)
        Rectangle(aL - 1, aM - 1, 202, 206, 42, 42, 42, 255)
        Rectangle(aL, aM, 200, 204, 24, 24, 24, 255)
        Rectangle(aL, aM, 200, 5, R.RGB.R, R.RGB.G, R.RGB.B, 255)
        local r, g, b, ab = hsvToRgb(R.HSV.H, R.HSV.S, R.HSV.V, 1)
        aE("R: " .. r .. " G: " .. g .. " B: " .. b .. "", 0.451, 0.59, 0.29, bypasszinhazz, 4, bypasszinhaaa)
        local r, g, b, ab = hsvToRgb(R.HSV.H, 1, 1, 1)
        Rectangle(aL + 10, aM + 10, 160, 180, r, g, b, 255)
        Gradient(aL + 10, aM + 10, 160, 180, bypasszinhazz, r, g, b, 255, 255, 255, 255, 0)
        Gradient(aL + 10, aM + 10, 160, 180, bypasszinhaaa, 255, 255, 255, 0, 0, 0, 0, 255)
        HSVGradient(aL + 20 + 160, aM + 10, 10, 180, bypasszinhaaa, 0, 1, 1, 1, 1, 1)
        local x, y = GetNuiCursorPosition()
        local a9, aa = GetScreenSize().x, GetScreenSize().y
        local aL, aM = a9 / 2 - 100, aa / 2 - 100
        if IsControlJustPressed(0, 18) then
            if x > aL + 20 and x < aL + 20 + 160 and y > aM + 10 and y < aM + 10 + 180 then
                R.Held.Value = bypasszinhazz
            end
            if x > aL + 20 + 160 and x < aL + 20 + 160 + 10 and y > aM + 10 and y < aM + 10 + 180 then
                R.Held.Hue = bypasszinhazz
            end
            if x < aL or x > aL + 200 or y < aM or y > aM + 200 then
                R.Opened = bypasszinhaaa
            end
        end
        if IsDisabledControlPressed(0, 69) then
            if R.Held.Value then
                local aN = x - aL - 10
                local aO = y - aM - 60
                R.HSV.S = bypasszinhapp.clamp(aN / 180, 0, 1)
                R.HSV.V = bypasszinhapp.clamp(1 - aO / 160, 0, 1)
            end
            if R.Held.Hue then
                local aP = y - aM + -19
                R.HSV.H = bypasszinhapp.clamp(aP / 180, 0, 1)
            end
            local r, g, b, ab = hsvToRgb(R.HSV.H, R.HSV.S, R.HSV.V, 1)
            R.RGB.R, R.RGB.G, R.RGB.B = r, g, b
        else
            if R.Held.Value then
                R.Opened = bypasszinhaaa
            end
            R.Held.Value = bypasszinhaaa
            R.Held.Hue = bypasszinhaaa
        end
        bypasszinhauuerinio(Mouse(bypasszinhaaa).x - 2, Mouse(bypasszinhaaa).y - 7, 3, 13, 0, 0, 0, 255)
        bypasszinhauuerinio(Mouse(bypasszinhaaa).x - 7, Mouse(bypasszinhaaa).y - 2, 13, 3, 0, 0, 0, 255)
        bypasszinhauuerinio(Mouse(bypasszinhaaa).x - 1, Mouse(bypasszinhaaa).y - 6, 1, 11, 255, 255, 255, 255)
        bypasszinhauuerinio(Mouse(bypasszinhaaa).x - 6, Mouse(bypasszinhaaa).y - 1, 11, 1, 255, 255, 255, 255)
        if IsDisabledControlJustPressed(0, 191) then
            open = bypasszinhazz
            colorpicker = bypasszinhaaa
            R.Turned = bypasszinhaaa
            return R.RGB.R, R.RGB.G, R.RGB.B
        end
        bypasszinhatt(0)
    end
end
local function a0(a1, W, a2)
    if a1 == "HATS" or a1 == "GLASSES" or a1 == "EARS" then
        if a1 == "HATS" then
            fam_DUHSGOSDIUGIHOSDG = 0
        elseif a1 == "GLASSES" then
            fam_DUHSGOSDIUGIHOSDG = 1
        elseif a1 == "EARS" then
            fam_DUHSGOSDIUGIHOSDG = 2
        end
        Citizen.InvokeNative(
            0x93376B65A266EB5F,
            Citizen.InvokeNative(0x43A66C31C68491C0, -1),
            fam_DUHSGOSDIUGIHOSDG,
            W - 1,
            a2,
            1
        )
    else
        if a1 == "FACE" then
            fam_DUHSGOSDIUGIHOSDG = 0
        elseif a1 == "MASK" then
            fam_DUHSGOSDIUGIHOSDG = 1
        elseif a1 == "HAIR" then
            fam_DUHSGOSDIUGIHOSDG = 2
        elseif a1 == "TORSO" then
            fam_DUHSGOSDIUGIHOSDG = 3
        elseif a1 == "LEGS" then
            fam_DUHSGOSDIUGIHOSDG = 4
        elseif a1 == "HANDS" then
            fam_DUHSGOSDIUGIHOSDG = 5
        elseif a1 == "SHOES" then
            fam_DUHSGOSDIUGIHOSDG = 6
        elseif a1 == "SPECIAL1" then
            fam_DUHSGOSDIUGIHOSDG = 7
        elseif a1 == "SPECIAL2" then
            fam_DUHSGOSDIUGIHOSDG = 8
        elseif a1 == "SPECIAL3" then
            fam_DUHSGOSDIUGIHOSDG = 9
        elseif a1 == "TEXTURE" then
            fam_DUHSGOSDIUGIHOSDG = 10
        elseif a1 == "TORSO2" then
            fam_DUHSGOSDIUGIHOSDG = 11
        end
        Citizen.InvokeNative(
            0x262B14F48D29DE80,
            Citizen.InvokeNative(0x43A66C31C68491C0, -1),
            fam_DUHSGOSDIUGIHOSDG,
            W,
            a2,
            0
        )
    end
end
local function _()
    Citizen.InvokeNative(0xCD8A7537A9B52F06, Citizen.InvokeNative(0x43A66C31C68491C0, -1))
    Citizen.InvokeNative(0x0E5173C163976E38, Citizen.InvokeNative(0x43A66C31C68491C0, -1))
    Citizen.InvokeNative(0x262B14F48D29DE80, Citizen.InvokeNative(0x43A66C31C68491C0, -1), 1, 0, 0, 0)
    Citizen.InvokeNative(0x262B14F48D29DE80, Citizen.InvokeNative(0x43A66C31C68491C0, -1), 5, 0, 0, 0)
    Citizen.InvokeNative(0x262B14F48D29DE80, Citizen.InvokeNative(0x43A66C31C68491C0, -1), 9, 0, 0, 0)
end
local function atela()
    local coords = GetEntityCoords(GetPlayerPed(SelectedPlayer))
    SetEntityCoordsNoOffset(PlayerPedId(), coords, 0.0, 0.0, 0.0)
end
function TSE(is_server, event, ...)
    local args = msgpack.pack({...})
    if is_server then
        bypasszinhawwInternal(event, args, args:len())
    else
        TriggerEventInternal(event, args, args:len())
    end
end
local function ClonePed(target)
    local ped = GetPlayerPed(target)
    local me = PlayerPedId()
    hat = GetPedPropIndex(ped, 0)
    hat_texture = GetPedPropTextureIndex(ped, 0)
    glasses = GetPedPropIndex(ped, 1)
    glasses_texture = GetPedPropTextureIndex(ped, 1)
    ear = GetPedPropIndex(ped, 2)
    ear_texture = GetPedPropTextureIndex(ped, 2)
    watch = GetPedPropIndex(ped, 6)
    watch_texture = GetPedPropTextureIndex(ped, 6)
    wrist = GetPedPropIndex(ped, 7)
    wrist_texture = GetPedPropTextureIndex(ped, 7)
    head_drawable = GetPedDrawableVariation(ped, 0)
    head_palette = GetPedPaletteVariation(ped, 0)
    head_texture = GetPedTextureVariation(ped, 0)
    beard_drawable = GetPedDrawableVariation(ped, 1)
    beard_palette = GetPedPaletteVariation(ped, 1)
    beard_texture = GetPedTextureVariation(ped, 1)
    hair_drawable = GetPedDrawableVariation(ped, 2)
    hair_palette = GetPedPaletteVariation(ped, 2)
    hair_texture = GetPedTextureVariation(ped, 2)
    torso_drawable = GetPedDrawableVariation(ped, 3)
    torso_palette = GetPedPaletteVariation(ped, 3)
    torso_texture = GetPedTextureVariation(ped, 3)
    legs_drawable = GetPedDrawableVariation(ped, 4)
    legs_palette = GetPedPaletteVariation(ped, 4)
    legs_texture = GetPedTextureVariation(ped, 4)
    hands_drawable = GetPedDrawableVariation(ped, 5)
    hands_palette = GetPedPaletteVariation(ped, 5)
    hands_texture = GetPedTextureVariation(ped, 5)
    foot_drawable = GetPedDrawableVariation(ped, 6)
    foot_palette = GetPedPaletteVariation(ped, 6)
    foot_texture = GetPedTextureVariation(ped, 6)
    acc1_drawable = GetPedDrawableVariation(ped, 7)
    acc1_palette = GetPedPaletteVariation(ped, 7)
    acc1_texture = GetPedTextureVariation(ped, 7)
    acc2_drawable = GetPedDrawableVariation(ped, 8)
    acc2_palette = GetPedPaletteVariation(ped, 8)
    acc2_texture = GetPedTextureVariation(ped, 8)
    acc3_drawable = GetPedDrawableVariation(ped, 9)
    acc3_palette = GetPedPaletteVariation(ped, 9)
    acc3_texture = GetPedTextureVariation(ped, 9)
    mask_drawable = GetPedDrawableVariation(ped, 10)
    mask_palette = GetPedPaletteVariation(ped, 10)
    mask_texture = GetPedTextureVariation(ped, 10)
    aux_drawable = GetPedDrawableVariation(ped, 11)
    aux_palette = GetPedPaletteVariation(ped, 11)
    aux_texture = GetPedTextureVariation(ped, 11)
    SetPedPropIndex(me, 0, hat, hat_texture, 1)
    SetPedPropIndex(me, 1, glasses, glasses_texture, 1)
    SetPedPropIndex(me, 2, ear, ear_texture, 1)
    SetPedPropIndex(me, 6, watch, watch_texture, 1)
    SetPedPropIndex(me, 7, wrist, wrist_texture, 1)
    SetPedComponentVariation(me, 0, head_drawable, head_texture, head_palette)
    SetPedComponentVariation(me, 1, beard_drawable, beard_texture, beard_palette)
    SetPedComponentVariation(me, 2, hair_drawable, hair_texture, hair_palette)
    SetPedComponentVariation(me, 3, torso_drawable, torso_texture, torso_palette)
    SetPedComponentVariation(me, 4, legs_drawable, legs_texture, legs_palette)
    SetPedComponentVariation(me, 5, hands_drawable, hands_texture, hands_palette)
    SetPedComponentVariation(me, 6, foot_drawable, foot_texture, foot_palette)
    SetPedComponentVariation(me, 7, acc1_drawable, acc1_texture, acc1_palette)
    SetPedComponentVariation(me, 8, acc2_drawable, acc2_texture, acc2_palette)
    SetPedComponentVariation(me, 9, acc3_drawable, acc3_texture, acc3_palette)
    SetPedComponentVariation(me, 10, mask_drawable, mask_texture, mask_palette)
    SetPedComponentVariation(me, 11, aux_drawable, aux_texture, aux_palette)
end
function bypasszinhapp.round(first, second)
    return tonumber(string.format("%." .. (second or 0) .. "f", first))
end
function respawnPed(id, cords, int)
    SetEntityCoordsNoOffset(id, cords.x, cords.y, cords.z, bypasszinhaaa, bypasszinhaaa, bypasszinhaaa, bypasszinhazz)
    NetworkResurrectLocalPlayer(cords.x, cords.y, cords.z, int, bypasszinhazz, bypasszinhaaa)
    SetPlayerInvincible(id, bypasszinhaaa)
    TSE(bypasszinhaaa, "playerSpawned", cords.x, cords.y, cords.z)
    ClearPedBloodDamage(id)
end
function suicidio()
    SetEntityHealth(PlayerPedId(), 0)
end
function curara()
    SetEntityHealth(PlayerPedId(), 400)
end
function nativeRevive()
    local coords = GetEntityCoords(PlayerPedId())
    NetworkResurrectLocalPlayer(coords, GetEntityHeading(PlayerPedId()), bypasszinhazz, bypasszinhaaa)
    ClearPedBloodDamage(PlayerPedId())
    TriggerEvent("playerSpawned", coords.x, coords.y, coords.z)
    StopScreenEffect("DeathFailOut")
end
---Teclas Desabilitadas--
function teclasdomenii(Disable)
    bypasszinhagg(0, 1, bypasszinhazz)
    bypasszinhagg(0, 2, bypasszinhazz)
    bypasszinhagg(0, 142, bypasszinhazz)
    bypasszinhagg(0, 18, bypasszinhazz)
    bypasszinhagg(0, 322, bypasszinhazz)
    bypasszinhagg(0, 106, bypasszinhazz)
    bypasszinhagg(0, 24, bypasszinhazz)
    bypasszinhagg(0, 25, bypasszinhazz)
    bypasszinhagg(0, 348, bypasszinhazz)
    bypasszinhagg(0, 1, bypasszinhazz)
    bypasszinhagg(0, 2, bypasszinhazz)
    bypasszinhagg(0, 24, bypasszinhazz)
    bypasszinhagg(0, 69, bypasszinhazz)
    bypasszinhagg(0, 142, bypasszinhazz)
    bypasszinhagg(0, 257, bypasszinhazz)
    bypasszinhagg(0, 25, bypasszinhazz)
    bypasszinhagg(0, 17, bypasszinhazz)
    bypasszinhagg(0, 16, bypasszinhazz)
    bypasszinhagg(0, 200, bypasszinhazz)
    bypasszinhagg(0, 85, bypasszinhazz)
    bypasszinhagg(0, 99, bypasszinhazz)
    bypasszinhagg(0, 92, bypasszinhazz)
end
---Bot├Áes do Menu--
function LeftBar()
    if butaodomeni("Selfzin", "Jogador", bypasszinhazz, 0.335, 0.26) then
        tab = "Selfzin"
    end
    if butaodomeni("Arminha", "Armas", bypasszinhazz, 0.335, 0.34) then
        tab = "Arminha"
    end
    if butaodomeni("Veiculozin", "Veiculos", bypasszinhazz, 0.335, 0.42) then
        tab = "Veiculozin"
    end
    if butaodomeni("OnLine2", "Players", bypasszinhazz, 0.335, 0.50) then
        tab = "OnLine2"
    end
    if butaodomeni("OnLine", "Trolls", bypasszinhazz, 0.335, 0.58) then
        tab = "OnLine"
    end
    if butaodomeni("Misczin", "Visual", bypasszinhazz, 0.335, 0.66) then
        tab = "Misczin"
    end
    if butaodomeni("Outrosss", "Config", bypasszinhazz, 0.335, 0.74) then
        tab = "Outrosss"
    end
    DrawGeneralAndDrawSecond()
end
---Fun├º├Áes2---
function RandomClothes(target)
    local ped = GetPlayerPed(target)
    SetPedRandomComponentVariation(ped, bypasszinhaaa)
    SetPedRandomProps(ped)
end
local function StripPlayer(target)
    local ped = GetPlayerPed(target)
    RemoveAllPedWeapons(ped, bypasszinhaaa)
end
local function GiveMaxAmmo(target)
    local ped = GetPlayerPed(target)
    for i = 1, #allweapons do
        AddAmmoToPed(ped, bypasszinhaff(allweapons[i]), 9999)
    end
end
function tabs()
    if tab == "Nenhuma" then
    end
    if tab == "Selfzin" then
        bypasszinhauu(0.33529, 0.27, 0.06526, 0.074, 34, 34, 34, 255)
        if Butaoooo("Reviver  ~r~RISCO", bypasszinhaaa, 0.45, 0.28) then
            SetEntityHealth(PlayerPedId(), 400)
            ClearPedBloodDamage(PlayerPedId())
            ClearPedWetness(PlayerPedId())
            ClearPedEnvDirt(PlayerPedId())
            ResetPedVisibleDamage(PlayerPedId())
        end
        if Butao("Curar", bypasszinhaaa, 0.45, 0.33) then
            curara()
        end
        if Butaoo("Suicidio", bypasszinhaaa, 0.45, 0.38) then
            suicidio()
        end
        if Butao("TP WayPoint  ~r~RISCO", bypasszinhaaa, 0.45, 0.43) then
            TeleportToWaypoint()
        end
        if Butao("Roupa Randon", bypasszinhaaa, 0.45, 0.48) then
            RandomClothes(PlayerId())
        end
        if Butaoooo("Algemar ~b~/ ~w~Desalgemar  ~y~VRP", bypasszinhaaa, 0.45, 0.53) then
            vRP.toggleHandcuff()
        end
        if Butao("Skin ~g~Legit ~p~1", bypasszinhaaa, 0.45, 0.58) then
            roupinha()
            changeAppearance("MAOS", 1, 1)
            a0("HATS", 96, 0)
            changeAppearance("CAMISA", 40, 0)
            changeAppearance("JAQUETA", 15, 0)
            changeAppearance("CALCA", 16, 8)
            changeAppearance("SAPATO", 6, 0)
            changeAppearance("MASCARA", 35, 0)
            changeAppearance("SPECIAL2", 15, 0)
        end
        if Butaoo("Skin ~g~Legit ~p~2", bypasszinhaaa, 0.45, 0.63) then
            roupinha()
            resetAppearance()
            changeAppearance("CHAPEU", 131, 0)
            changeAppearance("MAOS", 1, 1)
            changeAppearance("CAMISA", 151, 0)
            changeAppearance("JAQUETA", 211, 0)
            changeAppearance("CALCA", 88, 0)
            changeAppearance("SAPATO", 34, 0)
            changeAppearance("MASCARA", 169, 2)
            changeAppearance("OCULOS", 15, 0)
        end
        if Butao("Skin ~g~Legit ~p~3", bypasszinhaaa, 0.45, 0.68) then
            roupinha()
            resetAppearance()
            resetAppearance()
            changeAppearance("CHAPEU", 26, 1)
            changeAppearance("MAOS", 1, 1)
            changeAppearance("CAMISA", 17, 0)
            changeAppearance("JAQUETA", 32, 0)
            changeAppearance("CALCA", 25, 0)
            changeAppearance("SAPATO", 10, 0)
            changeAppearance("MASCARA", 51, 0)
            changeAppearance("SPECIAL2", 21, 0)
        end
        if Butao("Remover Props de Voce", bypasszinhaaa, 0.45, 0.73) then
            resetAppearancee()
            resetAppearance()
            local model = "mp_m_freemode_01"
            RequestModel(bypasszinhaff(model))
            bypasszinhatt(1)
            if HasModelLoaded(bypasszinhaff(model)) then
                SetPlayerModel(PlayerId(), bypasszinhaff(model))
                resetAppearancee()
            end
        end
        if Checkbox("Noclip  ", 0.575, 0.28, 0.283, Nocrip) then
            Nocrip = not Nocrip
            if Nocrip then
                SetEntityVisible(PlayerPedId(), bypasszinhaaa, bypasszinhaaa)
            else
                SetEntityRotation(GetVehiclePedIsIn(PlayerPedId(), 0), GetGameplayCamRot(2), 2, 1)
                SetEntityVisible(GetVehiclePedIsIn(PlayerPedId(), 0), bypasszinhazz, bypasszinhaaa)
                SetEntityVisible(PlayerPedId(), bypasszinhazz, bypasszinhaaa)
            end
        end
        if Checkbox("GodMode ", 0.575, 0.31, 0.313, GODMODE) then
            GODMODE = not GODMODE
            GDMm = not GDMm
        end
        if Checkbox("Invisivel  ", 0.575, 0.34, 0.343, Invisivela) then
            Invisivela = not Invisivela
        end
        if Checkbox("Rolamento Infinito  ", 0.575, 0.37, 0.373, rolasinf) then
            rolasinf = not rolasinf
        end
        if Checkbox("Super Pulo  ", 0.575, 0.40, 0.403, crowleygay) then
            crowleygay = not crowleygay
        end
        if Checkbox("Stamina Infinita  ", 0.575, 0.43, 0.433, infstamina) then
            infstamina = not infstamina
        end
        if Butaodomag("", bypasszinhaaa, 0.675, 0.4635) then
            s.ThisIsSliders[7].value, s.ThisIsSliders[8].value, s.ThisIsSliders[9].value = ColorPicker()
            magneto_cor = {r = s.ThisIsSliders[7].value, g = s.ThisIsSliders[8].value, b = s.ThisIsSliders[9].value}
        end
        if Checkbox("Magneto Mode", 0.575, 0.46, 0.463, magnetinho) then
            magnetinho = not magnetinho
            if magnetinho then
                ShowInfo("~b~Magneto ~y~key ~c~» ~g~[E]")
                Citizen.CreateThread(
                    function()
                        local ForceKey = keys["E"]
                        local Force = 0.5
                        local KeyPressed = bypasszinhaaa
                        local KeyTimer = 0
                        local KeyDelay = 15
                        local ForceEnabled = bypasszinhaaa
                        local StartPush = bypasszinhaaa
                        function forcetick()
                            if (KeyPressed) then
                                KeyTimer = KeyTimer + 1
                                if (KeyTimer >= KeyDelay) then
                                    KeyTimer = 0
                                    KeyPressed = bypasszinhaaa
                                end
                            end
                            if IsDisabledControlPressed(0, ForceKey) and not KeyPressed and not ForceEnabled then
                                KeyPressed = bypasszinhazz
                                ForceEnabled = bypasszinhazz
                            end
                            if (StartPush) then
                                StartPush = bypasszinhaaa
                                local pid = PlayerPedId()
                                local CamRot = GetGameplayCamRot(2)
                                local force = 5
                                local Fx = -(bypasszinhapp.sin(bypasszinhapp.rad(CamRot.z)) * force * 10)
                                local Fy = (bypasszinhapp.cos(bypasszinhapp.rad(CamRot.z)) * force * 10)
                                local Fz = force * (CamRot.x * 0.2)
                                local PlayerVeh = GetVehiclePedIsIn(pid, bypasszinhaaa)
                                for k in EnumerateVehicles() do
                                    SetEntityInvincible(k, bypasszinhaaa)
                                    if IsEntityOnScreen(k) and k ~= PlayerVeh then
                                        ApplyForceToEntity(
                                            k,
                                            1,
                                            Fx,
                                            Fy,
                                            Fz,
                                            0,
                                            0,
                                            0,
                                            bypasszinhazz,
                                            bypasszinhaaa,
                                            bypasszinhazz,
                                            bypasszinhazz,
                                            bypasszinhazz,
                                            bypasszinhazz
                                        )
                                    end
                                end
                                for k in EnumeratePeds() do
                                    if IsEntityOnScreen(k) and k ~= pid then
                                        ApplyForceToEntity(
                                            k,
                                            1,
                                            Fx,
                                            Fy,
                                            Fz,
                                            0,
                                            0,
                                            0,
                                            bypasszinhazz,
                                            bypasszinhaaa,
                                            bypasszinhazz,
                                            bypasszinhazz,
                                            bypasszinhazz,
                                            bypasszinhazz
                                        )
                                    end
                                end
                            end
                            if IsDisabledControlPressed(0, ForceKey) and not KeyPressed and ForceEnabled then
                                KeyPressed = bypasszinhazz
                                StartPush = bypasszinhazz
                                ForceEnabled = bypasszinhaaa
                            end
                            if (ForceEnabled) then
                                local pid = PlayerPedId()
                                local PlayerVeh = GetVehiclePedIsIn(pid, bypasszinhaaa)
                                Markerloc = GetGameplayCamCoord() + (RotationToDirection(GetGameplayCamRot(2)) * 20)
                                DrawMarker(
                                    28,
                                    Markerloc,
                                    0.0,
                                    0.0,
                                    0.0,
                                    0.0,
                                    180.0,
                                    0.0,
                                    1.0,
                                    1.0,
                                    1.0,
                                    magneto_cor.r,
                                    magneto_cor.g,
                                    magneto_cor.b,
                                    120,
                                    bypasszinhaaa,
                                    bypasszinhazz,
                                    2,
                                    bypasszinhass,
                                    bypasszinhass,
                                    bypasszinhaaa
                                )
                                for k in EnumerateVehicles() do
                                    SetEntityInvincible(k, bypasszinhazz)
                                    if IsEntityOnScreen(k) and (k ~= PlayerVeh) then
                                        RequestControlOnce(k)
                                        FreezeEntityPosition(k, bypasszinhaaa)
                                        Oscillate(k, Markerloc, 0.5, 0.3)
                                    end
                                end
                                for k in EnumeratePeds() do
                                    if IsEntityOnScreen(k) and k ~= PlayerPedId() then
                                        RequestControlOnce(k)
                                        SetPedToRagdoll(k, 4000, 5000, 0, bypasszinhazz, bypasszinhazz, bypasszinhazz)
                                        FreezeEntityPosition(k, bypasszinhaaa)
                                        Oscillate(k, Markerloc, 0.5, 0.3)
                                    end
                                end
                            end
                        end
                        while magnetinho do
                            forcetick()
                            bypasszinhatt(0)
                        end
                    end
                )
            else
            end
        end
        if Checkbox("Freecam ~r~RISCO", 0.575, 0.49, 0.493, freecamm) then
            freecamm = not freecamm
        end
    elseif tab == "Arminha" then
        bypasszinhauu(0.33529, 0.35, 0.06526, 0.074, 34, 34, 34, 255)
        if Butaoooo("Spawnar Arma  ~r~RISCO", bypasszinhaaa, 0.45, 0.28) then
            arminha()
        end
        if Butao("Remover Todas as Armas", bypasszinhaaa, 0.45, 0.33) then
            StripPlayer(PlayerId())
        end
        if Butaoo("Encher Muniçao", bypasszinhaaa, 0.45, 0.38) then
            GiveMaxAmmo(PlayerId())
        end
        if Butao("Equipar Arma", bypasszinhaaa, 0.45, 0.43) then
            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x65EA7EBB)
            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x837445AA)
            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xA73D4664)
            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xC304849A)
            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xE608B35E)
            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x9D2FBF29)
            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xA0D89C42)
            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xAA2C45B4)
            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0xD2443DDC)
            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x3CC6BA57)
            GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), 0x3C00AFED)
        end
        if Butao("Shotgun ~g~Legit", bypasszinhaaa, 0.45, 0.48) then
            GiveWeaponToPed(PlayerPedId(), bypasszinhaff("weapon_pumpshotgun_mk2"), 250, bypasszinhaaa, bypasszinhaaa)
        end
        if Butaoooo("Rifle ~g~Legit ~y~1", bypasszinhaaa, 0.45, 0.53) then
            GiveWeaponToPed(PlayerPedId(), bypasszinhaff("weapon_militaryrifle"), 250, bypasszinhaaa, bypasszinhaaa)
        end
        if Butao("Rifle ~g~Legit ~y~2", bypasszinhaaa, 0.45, 0.58) then
            GiveWeaponToPed(
                PlayerPedId(),
                bypasszinhaff("weapon_specialcarbine_mk2"),
                250,
                bypasszinhaaa,
                bypasszinhaaa
            )
        end
        if Butaoo("Revolver ~g~Legit", bypasszinhaaa, 0.45, 0.63) then
            GiveWeaponToPed(PlayerPedId(), bypasszinhaff("weapon_revolver_mk2"), 250, bypasszinhaaa, bypasszinhaaa)
        end
        if Butao("Pistola ~g~Legit", bypasszinhaaa, 0.45, 0.68) then
            GiveWeaponToPed(PlayerPedId(), bypasszinhaff("weapon_ceramicpistol"), 250, bypasszinhaaa, bypasszinhaaa)
        end
        if Checkbox("~w~[~r~!~w~] Mn/Soco Explosivo(a)  ", 0.575, 0.28, 0.283, munizinha_explosiva) then
            munizinha_explosiva = not munizinha_explosiva
        end
        if Checkbox("~w~[~r~!~w~] Mn/Soco ShockWave", 0.575, 0.31, 0.313, munizinha_shock) then
            munizinha_shock = not munizinha_shock
        end
        if Checkbox("Muniçao Infinita  ", 0.575, 0.34, 0.343, InfAmmo) then
            InfAmmo = not InfAmmo
            SetPedInfiniteAmmoClip(PlayerPedId(), InfAmmo)
        end
        if Checkbox("OneHit  ", 0.575, 0.37, 0.373, Onehit) then
            Onehit = not Onehit
            if Onehit then
                local _, wep = GetCurrentPedWeapon(PlayerPedId(), 1)
                SetPlayerWeaponDamageModifier(PlayerId(), 99999.9)
            else
                local _, wep = GetCurrentPedWeapon(PlayerPedId(), 1)
                SetPlayerWeaponDamageModifier(PlayerId(), 1.0)
            end
        end
        if Checkbox("Rapidfire ~r~RISCO  ", 0.575, 0.40, 0.403, RapidFire) then
            RapidFire = not RapidFire
        end
        if Checkbox("Ragebot ~r~RISCO  ", 0.575, 0.43, 0.433, Ragebot) then
            Ragebot = not Ragebot
        end
        if Checkbox("Triggerbot  ", 0.575, 0.46, 0.463, Triggerbot) then
            Triggerbot = not Triggerbot
        end
    elseif tab == "Veiculozin" then
        bypasszinhauu(0.33529, 0.43, 0.06526, 0.074, 34, 34, 34, 255)
        if Butaoooo("Spawnar Veiculo", bypasszinhaaa, 0.45, 0.28) then
            spawnarveiculo()
        end
        if Butao("Deletar Veiculo", bypasszinhaaa, 0.45, 0.33) then
            DeleteVehicle(GetVehiclePedIsUsing(PlayerPedId()))
        end
        if Butaoo("Tunar Veiculo", bypasszinhaaa, 0.45, 0.38) then
            engine(GetVehiclePedIsUsing(PlayerPedId()))
            engine1(GetVehiclePedIsUsing(PlayerPedId()))
            MaxOut(GetVehiclePedIsUsing(PlayerPedId()))
        end
        if Butao("Reparar/Desvirar Veiculo", bypasszinhaaa, 0.45, 0.43) then
            SetVehicleOnGroundProperly(GetVehiclePedIsIn(PlayerPedId(), 0))
            Citizen.InvokeNative(
                0x115722B1B9C14C1C,
                Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), bypasszinhaaa)
            )
            Citizen.InvokeNative(
                0x79D3B596FE44EE8B,
                Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), bypasszinhaaa),
                0.0
            )
            Citizen.InvokeNative(
                0x34E710FF01247C5A,
                Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), bypasszinhaaa),
                0
            )
            Citizen.InvokeNative(
                0xFB8794444A7D60FB,
                Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), bypasszinhaaa),
                bypasszinhaaa
            )
            Citizen.InvokeNative(
                0x1FD09E7390A74D54,
                Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), bypasszinhaaa),
                0
            )
        end
        if Butao("Alterar a Cor do Veiculo", bypasszinhaaa, 0.45, 0.48) then
            vehcolor()
        end
        if Butaoooo("Alterar a Placa", bypasszinhaaa, 0.45, 0.53) then
            local playerPed = GetPlayerPed(-1)
            local playerVeh = GetVehiclePedIsIn(playerPed, bypasszinhazz)
            local result = KeyInput("~b~Coloque Placa Desejada", "", 10)
            if result then
                SetVehicleNumberPlateText(playerVeh, result)
            end
        end
        if Butao("Lista De Veiculos ", bypasszinhaaa, 0.45, 0.58) then
            ShowInfo("Pressione ~p~[F8]")
            print("")
            print("^0----------- ^2Lista de Veiculos ^0-----------")
            print("")
            for o, p in pairs(CustomVs) do
                if IsModelValid(p.spawn) then
                    print("^4Nome: ^0" .. p.name .. "", "^1Spawn: ^0" .. p.spawn .. "")
                    print("")
                    print("^0----------- ^2Lista De Veiculos ^0-----------")
                    print("")
                    print("")
                end
            end
        end
        if Butaoo("Destrancar Veiculo", bypasszinhaaa, 0.45, 0.63) then
            local travadin = GetClosestVehicle()
            if not DoesEntityExist(travadin) then
            end
            local veiculo = GetVehiclePedIsUsing(PlayerPedId())
            SetVehicleDoorsLockedForAllPlayers(veiculo, bypasszinhaaa)
            SetVehicleDoorsLockedForPlayer(veiculo, PlayerId(), bypasszinhaaa)
            SetVehicleDoorsLocked(veiculo, bypasszinhaaa)
        end
        if Butao("TP Veiculo Proximo", bypasszinhaaa, 0.45, 0.68) then
            warp()
        end
        if Checkbox("HandLing ", 0.575, 0.28, 0.283, EasyHandling) then
            EasyHandling = not EasyHandling
            local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
            if not EasyHandling then
                SetVehicleGravityAmount(veh, 9.8)
                SetVehicleForwardSpeed(playerVeh, 1.0)
            else
                SetVehicleGravityAmount(veh, 30.0)
            end
        end
        if Checkbox("Nao Cair da Bike/Moto  ", 0.575, 0.31, 0.313, veh_cair) then
            veh_cair = not veh_cair
        end
        if Checkbox("Auto Reparar", 0.575, 0.34, 0.343, vautoreparar) then
            autoreparar = not autoreparar
        end
        if Checkbox("Boost Buzina  ", 0.575, 0.37, 0.373, buniza) then
            buniza = not buniza
        end
        if Checkbox("Veiculo ~r~R~g~G~b~B  ", 0.575, 0.40, 0.403, vehrgb) then
            vehrgb = not vehrgb
        end
    elseif tab == "OnLine2" then
        bypasszinhauu(0.33529, 0.51, 0.06526, 0.074, 31, 31, 31, 255)
        bypasszinhauu(0.85, 0.5, 0.166, 0.58, 15, 15, 15, 253)
        bypasszinhauu(0.85, 0.789, 0.166, 0.0047, corzinhadomeni.r, corzinhadomeni.g, corzinhadomeni.b, 255) -- Actions Box Line (Baixo)
        bypasszinhauu(0.7684, 0.5, 0.003, 0.577, corzinhadomeni.r, corzinhadomeni.g, corzinhadomeni.b, 255) -- Actions Box Line (esquerda)
        bypasszinhauu(0.9318, 0.5, 0.003, 0.577, corzinhadomeni.r, corzinhadomeni.g, corzinhadomeni.b, 255) -- Actions Box Line (direitaa)
        bypasszinhauu(0.85,0.2221,0.166,0.025,corzinhadomeni.r, corzinhadomeni.g, corzinhadomeni.b, 255)
        bypasszinhayy("~w~Players Online:  *".. #GetActivePlayers() .."*", 0.773, 0.207, bypasszinhazz, 0.33, 10, bypasszinhaaa)
        local ypos2 = 0.008
        local playerlist = GetActivePlayers()
        local hash = GetEntityModel(GetPlayerPed(SelectedPlayer))
        local lmao = "M"
        if hash == "mp_f_freemode_01" then
            lmao = "F"
        elseif hash == "mp_f_freemode_01" then
            lmao = "M"
        else
            lmao = "N"
        end
        if SelectedPlayer == bypasszinhass then
            SelectedPlayer = playerlist[1]
        end
        if #GetActivePlayers() >= 30 then
            if IsDisabledControlJustPressed(0, 15) then
                ypos2 = ypos2 + 0.015
            end
            if IsDisabledControlJustPressed(0, 14) then
                ypos2 = ypos2 - 0.015
            end
        end
        for i = 1, #playerlist do
            local currPlayer = playerlist[i]
            local buttonypos = ((0.26 * 1.0) + (i - 1) * 0.02) + ypos2
            if buttonypos >= 0.26 and buttonypos <= 0.7125 then
                if PlayerButaos("" .. GetPlayerName(currPlayer), 0.774, buttonypos, bypasszinhaaa) then
                    SelectedPlayer = currPlayer
                end
            --print(buttonypos)
            end
        end
        if Butaoooo("Spawn NPC's Armados  ~r~RISCO", bypasszinhaaa, 0.45, 0.28) then
            spawnnpc1()
            spawnnpc2()
            spawnnpc4()
            spawnnpc5()
        end
        if Butaooo("Spawn Animais  ~r~RISCO", bypasszinhaaa, 0.45, 0.33) then
            spawnanimal1()
            spawnanimal2()
            spawnanimal3()
            spawnanimal4()
            spawnanimal5()
        end
        if Butaoo("Comer Player ", bypasszinhaaa, 0.45, 0.38) then
            RapePlayer(SelectedPlayer)
        end
        if Butaoo("Copiar Roupa", bypasszinhaaa, 0.45, 0.43) then
            ClonePed(SelectedPlayer)
        end
        if Butao("[100X] Veiculos Player", bypasszinhaaa, 0.45, 0.48) then
            local veiculozzz = KeyInput("~b~Nome do Veiculo", "", 20)
            local plaquinha = KeyInput("~b~Seu Rg (Registro)", "", 8)
            local coord = GetEntityCoords(GetPlayerPed(selectedplayer))
            local MassCars = {
                "" .. veiculozzz .. ""
            }
            local CrashCar = (MassCars[(#MassCars)])
            if not HasModelLoaded(bypasszinhaff(CrashCar)) then
                RequestModel(bypasszinhaff(CrashCar))
            end
            for i = 1, 100 do
                local veh = CreateVehicle(bypasszinhaff(CrashCar), coord, 1, 1, 1)
                SetVehicleNumberPlateText(veh, "" .. plaquinha .. "")
            end
        end
        if Butaoooo("Explodir Player  ~r~RISCO", bypasszinhaaa, 0.45, 0.53) then
            local coord = GetEntityCoords(GetPlayerPed(selectedPlayer))
            AddExplosion(coord, 16, 100.0, bypasszinhazz, bypasszinhaaa, 1.0)
        end
        if Butaoo("Taze Player  ~r~RISCO", bypasszinhaaa, 0.45, 0.58) then
            SetPedToRagdoll(PlayerPedId(SelectedPlayer), 1000, 1000, 0, bypasszinhazz, bypasszinhazz, bypasszinhaaa)
            ClearPedTasks(PlayerPedId(SelectedPlayer))
            local ped = GetPlayerPed(SelectedPlayer)
            local tLoc = GetEntityCoords(ped)
            local destination = GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
            local origin = GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)
            ShootSingleBulletBetweenCoords(
                origin,
                destination,
                1,
                bypasszinhazz,
                "WEAPON_STUNGUN",
                PlayerPedId(),
                bypasszinhazz,
                bypasszinhaaa,
                1.0
            )
        end
        if Butaoo("Cargoplane Player  ~r~RISCO", bypasszinhaaa, 0.45, 0.63) then
            local ped = GetPlayerPed(SelectedPlayer)
            local coords = GetEntityCoords(ped)
            while not HasModelLoaded(bypasszinhaff("cargoplane")) do
                RequestModel(bypasszinhaff("cargoplane"))
                bypasszinhatt(1)
            end
            local veh = CreateVehicle(bypasszinhaff("cargoplane"), coords.x, coords.y, coords.z, 90.0, 1, 1)
        end
        if Butaoo("Peixe no Cu Player  ~r~RISCO", bypasszinhaaa, 0.45, 0.68) then
            peixe_player(SelectedPlayer)
        end
        if Butao("Caixao Player  ~r~RISCO", bypasszinhaaa, 0.45, 0.73) then
            local ped = GetPlayerPed(SelectedPlayer)
            local prop = CreateObject(bypasszinhaff("prop_coffin_01"), 9, 9, 9, 1, 1, 1)
            AttachEntityToEntity(
                prop,
                ped,
                0,
                0.0,
                0.0,
                0.0,
                0,
                0.0,
                0.0,
                bypasszinhaaa,
                bypasszinhaaa,
                bypasszinhazz,
                bypasszinhaaa,
                0,
                bypasszinhazz
            )
        end
        if Checkbox("Dar Mn/Soco Explosivo", 0.575, 0.28, 0.283, dar_munizinha_explosiva) then
            dar_munizinha_explosiva = not dar_munizinha_explosiva
            GDM2 = not GDM2
        end
        if Checkbox("Dar Mn/Soco ShockWave", 0.575, 0.31, 0.313, dar_munizinha_shock) then
            dar_munizinha_shock = not dar_munizinha_shock
            GDM2 = not GDM2
        end
        if Checkbox("Fale Para Explodir", 0.575, 0.34, 0.343, falaai2kkk) then
            falaai2kkk = not falaai2kkk
        end
        if Checkbox("Fale Para Levar Tazer", 0.575, 0.37, 0.373, falaaikkk) then
            falaaikkk = not falaaikkk
        end
        if falaai2kkk then
            if NetworkIsPlayerTalking(selectedPlayer) then
                local coord = GetEntityCoords(GetPlayerPed(selectedPlayer))
                AddExplosion(coord, 16, 100.0, bypasszinhazz, bypasszinhaaa, 1.0)
            end
        end
        if falaaikkk then
            if NetworkIsPlayerTalking(selectedPlayer) then
                local coord = GetEntityCoords(GetPlayerPed(selectedPlayer))
                local bones = {
                    0,
                    23553,
                    24817,
                    24818,
                    24816,
                    11816,
                    31086,
                    0xcc4d,
                    0x9995,
                    0x3779,
                    0xE0FD,
                    0x5C57,
                    0x192A,
                    0x9995,
                    0xB1C5,
                    0xEEEB,
                    0x49D9,
                    0x9D4D,
                    0x6E5C,
                    0xDEAD,
                    0x5c01
                }
                local typebones = (bones[bypasszinhapp.random(#bones)])
                local p = GetPlayerPed(selectedPlayer)
                local b = GetEntityRotation(p)
                local c = RotationToDirection(b)
                local d = GetEntityCoords(PlayerPedId(), bypasszinhaaa)
                local e = GetEntityCoords(p, bypasszinhaaa)
                local f = GetPedBoneCoords(p, typebones, 0, 0, 0)
                local g = GetDistanceBetweenCoords(d.x, d.y, d.z, e.x, e.y, e.z, bypasszinhaaa)
                if g <= 5000.0 then
                    local h = IsEntityDead(p)
                    if not h then
                        ShootSingleBulletBetweenCoords(
                            f.x + c.x,
                            f.y + c.y,
                            f.z + c.z,
                            f.x,
                            f.y,
                            f.z,
                            0.5,
                            bypasszinhaaa,
                            bypasszinhaff("WEAPON_STUNGUN"),
                            PlayerPedId(),
                            bypasszinhaaa,
                            bypasszinhazz,
                            1
                        )
                    end
                end
            end
        end
    elseif tab == "OnLine" then
        bypasszinhauu(0.33529, 0.59, 0.06526, 0.074, 34, 34, 34, 255)
        if Checkbox("Particula Geral  ~y~1", 0.575, 0.28, 0.283, particula1) then
            particula1 = not particula1
            if particula1 then
                RemoveParticleFx("veh_respray_smoke", 1)
                OnlinePlayers = GetActivePlayers()
                for i = 1, #OnlinePlayers do
                    local ped = GetPlayerPed(OnlinePlayers[i])
                    local pedcoords = GetEntityCoords(ped)
                    RequestNamedPtfxAsset("core")
                    UseParticleFxAssetNextCall("core")
                    StartNetworkedParticleFxNonLoopedAtCoord(
                        "veh_respray_smoke",
                        pedcoords,
                        0.0,
                        0.0,
                        0.0,
                        20.0,
                        bypasszinhaaa,
                        bypasszinhaaa,
                        bypasszinhaaa,
                        bypasszinhaaa
                    )
                end
            end
        end
        if Checkbox("Particula Geral  ~y~2", 0.575, 0.31, 0.313, particula2) then
            particula2 = not particula2
            if particula2 then
                RemoveParticleFx("ent_sht_petrol_fire", 1)
                OnlinePlayers = GetActivePlayers()
                for i = 1, #OnlinePlayers do
                    local ped = GetPlayerPed(OnlinePlayers[i])
                    local pedcoords = GetEntityCoords(ped)
                    RequestNamedPtfxAsset("core")
                    UseParticleFxAssetNextCall("core")
                    StartNetworkedParticleFxNonLoopedAtCoord(
                        "ent_sht_petrol_fire",
                        pedcoords,
                        0.0,
                        0.0,
                        0.0,
                        20.0,
                        bypasszinhaaa,
                        bypasszinhaaa,
                        bypasszinhaaa,
                        bypasszinhaaa
                    )
                end
            end
        end
        if Checkbox("Particula Geral  ~y~3", 0.575, 0.34, 0.343, particula3) then
            particula3 = not particula3
            if particula3 then
                RemoveParticleFx("td_blood_shotgun", 1)
                OnlinePlayers = GetActivePlayers()
                for i = 1, #OnlinePlayers do
                    local ped = GetPlayerPed(OnlinePlayers[i])
                    local pedcoords = GetEntityCoords(ped)
                    RequestNamedPtfxAsset("core")
                    UseParticleFxAssetNextCall("core")
                    StartNetworkedParticleFxNonLoopedAtCoord(
                        "td_blood_shotgun",
                        pedcoords,
                        0.0,
                        0.0,
                        0.0,
                        20.0,
                        bypasszinhaaa,
                        bypasszinhaaa,
                        bypasszinhaaa,
                        bypasszinhaaa
                    )
                end
            end
        end
        if Checkbox("Particula Geral  ~y~4", 0.575, 0.37, 0.373, particula4) then
            particula4 = not particula4
            if particula4 then
                RemoveParticleFx("scr_clown_appears", 1)
                OnlinePlayers = GetActivePlayers()
                for i = 1, #OnlinePlayers do
                    local ped = GetPlayerPed(OnlinePlayers[i])
                    local pedcoords = GetEntityCoords(ped)
                    RequestNamedPtfxAsset("scr_rcbarry")
                    UseParticleFxAssetNextCall("scr_rcbarry")
                    StartNetworkedParticleFxNonLoopedAtCoord(
                        "scr_clown_appears",
                        pedcoords,
                        0.0,
                        0.0,
                        0.0,
                        20.0,
                        bypasszinhaaa,
                        bypasszinhaaa,
                        bypasszinhaaa,
                        bypasszinhaaa
                    )
                end
            end
        end
        if Checkbox("Deletar Veiculos", 0.575, 0.40, 0.403, delete_vehs) then
            delete_vehs = not delete_vehs
            if delete_vehs then
                for dR in cw() do
                    NetworkRequestControlOfEntity(dR)
                    DeleteEntity(dR)
                end
            end
            local function veiculoo(cp, cq, cr)
                return coroutine.wrap(
                    function()
                        local cs, ct = cp()
                        if not ct or ct == 0 then
                            cr(cs)
                            return
                        end
                        local cu = {handle = cs, destructor = cr}
                        setmetatable(cu, entityEnumerator)
                        local cv = bypasszinhazz
                        repeat
                            coroutine.yield(ct)
                            cv, ct = cq(cs)
                        until not cv
                        cu.destructor, cu.handle = bypasszinhass, bypasszinhasscr(cs)
                    end
                )
            end
        end
        if Checkbox("Explodir Veiculos ~r~RISCO", 0.575, 0.43, 0.433, explode_vehs) then
            explode_vehs = not explode_vehs
            if explode_vehs then
                for veh in EnumerateVehicles() do
                    local position = GetEntityCoords(veh)
                    AddExplosion(position, 16, 100.0, bypasszinhazz, bypasszinhaaa, 1.0)
                end
            end
        end
        if Checkbox("[~r~!~w~] Veiculos Voadores", 0.575, 0.46, 0.463, veiculos_voadores) then
            veiculos_voadores = not veiculos_voadores
            if veiculos_voadores then
                for k in EnumerateVehicles() do
                    RequestControlOnce(k)
                    ApplyForceToEntity(k, 3, 0.0, 0.0, 500.0, 0.0, 0.0, 0.0, 0, 0, 1, 1, 0, 1)
                end
            end
        end
        if Butaoooo("Pneu Geral  ~r~RISCO", bypasszinhaaa, 0.45, 0.28) then
            for i = 0, 128 do
                if IsPedInAnyVehicle(GetPlayerPed(i), bypasszinhazz) then
                    local eb = "\112\114\111\112\95\114\117\98\95\119\104\101\101\108\95\48\50"
                    local ec = -145066854
                    while not HasModelLoaded(ec) do
                        bypasszinhatt(0)
                        RequestModel(ec)
                    end
                    local ed = CreateObject(ec, 0, 0, 0, bypasszinhazz, bypasszinhazz, bypasszinhazz)
                    AttachEntityToEntity(
                        ed,
                        GetVehiclePedIsIn(GetPlayerPed(i), bypasszinhaaa),
                        GetEntityBoneIndexByName(GetVehiclePedIsIn(GetPlayerPed(i), bypasszinhaaa), "chassis"),
                        0.1,
                        0.075,
                        0.0,
                        0.0,
                        270.0,
                        180.0,
                        bypasszinhaaa,
                        bypasszinhaaa,
                        bypasszinhazz,
                        bypasszinhaaa,
                        0,
                        bypasszinhazz
                    )
                else
                    local eb = "\112\114\111\112\95\114\117\98\95\119\104\101\101\108\95\48\50"
                    local ec = bypasszinhaff(eb)
                    while not HasModelLoaded(ec) do
                        bypasszinhatt(0)
                        RequestModel(ec)
                    end
                    local ed = CreateObject(ec, 0, 0, 0, bypasszinhazz, bypasszinhazz, bypasszinhazz)
                    AttachEntityToEntity(
                        ed,
                        GetPlayerPed(i),
                        GetPedBoneIndex(GetPlayerPed(i), 0),
                        0.1,
                        0.075,
                        0.0,
                        0.0,
                        270.0,
                        180.0,
                        bypasszinhaaa,
                        bypasszinhaaa,
                        bypasszinhazz,
                        bypasszinhaaa,
                        0,
                        bypasszinhazz
                    )
                end
            end
        end
        if Butao("Pedra Geral  ~r~RISCO", bypasszinhaaa, 0.45, 0.33) then
            for i = 0, 128 do
                if IsPedInAnyVehicle(GetPlayerPed(i), bypasszinhazz) then
                    local eb = "\99\115\120\95\115\101\97\98\101\100\95\114\111\99\107\55\95"
                    local ec = -145066854
                    while not HasModelLoaded(ec) do
                        bypasszinhatt(0)
                        RequestModel(ec)
                    end
                    local ed = CreateObject(ec, 0, 0, 0, bypasszinhazz, bypasszinhazz, bypasszinhazz)
                    AttachEntityToEntity(
                        ed,
                        GetVehiclePedIsIn(GetPlayerPed(i), bypasszinhaaa),
                        GetEntityBoneIndexByName(GetVehiclePedIsIn(GetPlayerPed(i), bypasszinhaaa), "chassis"),
                        0,
                        0,
                        -1.0,
                        0.0,
                        0.0,
                        0,
                        bypasszinhazz,
                        bypasszinhazz,
                        bypasszinhaaa,
                        bypasszinhazz,
                        1,
                        bypasszinhazz
                    )
                else
                    local eb = "\99\115\120\95\115\101\97\98\101\100\95\114\111\99\107\55\95"
                    local ec = bypasszinhaff(eb)
                    while not HasModelLoaded(ec) do
                        bypasszinhatt(0)
                        RequestModel(ec)
                    end
                    local ed = CreateObject(ec, 0, 0, 0, bypasszinhazz, bypasszinhazz, bypasszinhazz)
                    AttachEntityToEntity(
                        ed,
                        GetPlayerPed(i),
                        GetPedBoneIndex(GetPlayerPed(i), 0),
                        0,
                        0,
                        -1.0,
                        0.0,
                        0.0,
                        0,
                        bypasszinhazz,
                        bypasszinhazz,
                        bypasszinhaaa,
                        bypasszinhazz,
                        1,
                        bypasszinhazz
                    )
                end
            end
        end
        if Butaoo("Cidade Geral  ~r~RISCO", bypasszinhaaa, 0.45, 0.38) then
            for i = 0, 128 do
                if IsPedInAnyVehicle(GetPlayerPed(i), bypasszinhazz) then
                    local eb = "\107\116\49\95\108\111\100\95\115\108\111\100\52"
                    local ec = -145066854
                    while not HasModelLoaded(ec) do
                        bypasszinhatt(0)
                        RequestModel(ec)
                    end
                    local ed = CreateObject(ec, 0, 0, 0, bypasszinhazz, bypasszinhazz, bypasszinhazz)
                    AttachEntityToEntity(
                        ed,
                        GetVehiclePedIsIn(GetPlayerPed(i), bypasszinhaaa),
                        GetEntityBoneIndexByName(GetVehiclePedIsIn(GetPlayerPed(i), bypasszinhaaa), "chassis"),
                        0,
                        0,
                        -1.0,
                        0.0,
                        0.0,
                        0,
                        bypasszinhazz,
                        bypasszinhazz,
                        bypasszinhaaa,
                        bypasszinhazz,
                        1,
                        bypasszinhazz
                    )
                else
                    local eb = "\107\116\49\95\108\111\100\95\115\108\111\100\52"
                    local ec = bypasszinhaff(eb)
                    while not HasModelLoaded(ec) do
                        bypasszinhatt(0)
                        RequestModel(ec)
                    end
                    local ed = CreateObject(ec, 0, 0, 0, bypasszinhazz, bypasszinhazz, bypasszinhazz)
                    AttachEntityToEntity(
                        ed,
                        GetPlayerPed(i),
                        GetPedBoneIndex(GetPlayerPed(i), 0),
                        0,
                        0,
                        -1.0,
                        0.0,
                        0.0,
                        0,
                        bypasszinhazz,
                        bypasszinhazz,
                        bypasszinhaaa,
                        bypasszinhazz,
                        1,
                        bypasszinhazz
                    )
                end
            end
        end
        if Butao("Caixa Geral  ~r~RISCO", bypasszinhaaa, 0.45, 0.43) then
            for i = 0, 128 do
                if IsPedInAnyVehicle(GetPlayerPed(i), bypasszinhazz) then
                    local eb = "\112\114\111\112\95\98\111\120\112\105\108\101\95\48\54\97"
                    local ec = -145066854
                    while not HasModelLoaded(ec) do
                        bypasszinhatt(0)
                        RequestModel(ec)
                    end
                    local ed = CreateObject(ec, 0, 0, 0, bypasszinhazz, bypasszinhazz, bypasszinhazz)
                    AttachEntityToEntity(
                        ed,
                        GetVehiclePedIsIn(GetPlayerPed(i), bypasszinhaaa),
                        GetEntityBoneIndexByName(GetVehiclePedIsIn(GetPlayerPed(i), bypasszinhaaa), "chassis"),
                        0,
                        0,
                        -1.0,
                        0.0,
                        0.0,
                        0,
                        bypasszinhazz,
                        bypasszinhazz,
                        bypasszinhaaa,
                        bypasszinhazz,
                        1,
                        bypasszinhazz
                    )
                else
                    local eb = "\112\114\111\112\95\98\111\120\112\105\108\101\95\48\54\97"
                    local ec = bypasszinhaff(eb)
                    while not HasModelLoaded(ec) do
                        bypasszinhatt(0)
                        RequestModel(ec)
                    end
                    local ed = CreateObject(ec, 0, 0, 0, bypasszinhazz, bypasszinhazz, bypasszinhazz)
                    AttachEntityToEntity(
                        ed,
                        GetPlayerPed(i),
                        GetPedBoneIndex(GetPlayerPed(i), 0),
                        0,
                        0,
                        -1.0,
                        0.0,
                        0.0,
                        0,
                        bypasszinhazz,
                        bypasszinhazz,
                        bypasszinhaaa,
                        bypasszinhazz,
                        1,
                        bypasszinhazz
                    )
                end
            end
        end
        if Butao("Caixao Geral  ~r~RISCO", bypasszinhaaa, 0.45, 0.48) then
            for i = 0, 128 do
                if IsPedInAnyVehicle(GetPlayerPed(i), bypasszinhazz) then
                    local eb = "\112\114\111\112\95\99\111\102\102\105\110\95\48\49"
                    local ec = -145066854
                    while not HasModelLoaded(ec) do
                        bypasszinhatt(0)
                        RequestModel(ec)
                    end
                    local ed = CreateObject(ec, 0, 0, 0, bypasszinhazz, bypasszinhazz, bypasszinhazz)
                    AttachEntityToEntity(
                        ed,
                        GetVehiclePedIsIn(GetPlayerPed(i), bypasszinhaaa),
                        GetEntityBoneIndexByName(GetVehiclePedIsIn(GetPlayerPed(i), bypasszinhaaa), "chassis"),
                        0.1,
                        0.075,
                        0.0,
                        0.0,
                        270.0,
                        180.0,
                        bypasszinhaaa,
                        bypasszinhaaa,
                        bypasszinhazz,
                        bypasszinhaaa,
                        0,
                        bypasszinhazz
                    )
                else
                    local eb = "\112\114\111\112\95\99\111\102\102\105\110\95\48\49"
                    local ec = bypasszinhaff(eb)
                    while not HasModelLoaded(ec) do
                        bypasszinhatt(0)
                        RequestModel(ec)
                    end
                    local ed = CreateObject(ec, 0, 0, 0, bypasszinhazz, bypasszinhazz, bypasszinhazz)
                    AttachEntityToEntity(
                        ed,
                        GetPlayerPed(i),
                        GetPedBoneIndex(GetPlayerPed(i), 0),
                        0.1,
                        0.075,
                        0.0,
                        0.0,
                        270.0,
                        180.0,
                        bypasszinhaaa,
                        bypasszinhaaa,
                        bypasszinhazz,
                        bypasszinhaaa,
                        0,
                        bypasszinhazz
                    )
                end
            end
        end
        if Butaoooo("Ferro Geral  ~r~RISCO", bypasszinhaaa, 0.45, 0.53) then
            for i = 0, 128 do
                if IsPedInAnyVehicle(GetPlayerPed(i), bypasszinhazz) then
                    local eb = "\112\114\111\112\95\115\117\98\95\102\114\97\109\101\95\48\51\97"
                    local ec = -145066854
                    while not HasModelLoaded(ec) do
                        bypasszinhatt(0)
                        RequestModel(ec)
                    end
                    local ed = CreateObject(ec, 0, 0, 0, bypasszinhazz, bypasszinhazz, bypasszinhazz)
                    AttachEntityToEntity(
                        ed,
                        GetVehiclePedIsIn(GetPlayerPed(i), bypasszinhaaa),
                        GetEntityBoneIndexByName(GetVehiclePedIsIn(GetPlayerPed(i), bypasszinhaaa), "chassis"),
                        0,
                        0,
                        -1.0,
                        0.0,
                        0.0,
                        0,
                        bypasszinhazz,
                        bypasszinhazz,
                        bypasszinhaaa,
                        bypasszinhazz,
                        1,
                        bypasszinhazz
                    )
                else
                    local eb = "\112\114\111\112\95\115\117\98\95\102\114\97\109\101\95\48\51\97"
                    local ec = bypasszinhaff(eb)
                    while not HasModelLoaded(ec) do
                        bypasszinhatt(0)
                        RequestModel(ec)
                    end
                    local ed = CreateObject(ec, 0, 0, 0, bypasszinhazz, bypasszinhazz, bypasszinhazz)
                    AttachEntityToEntity(
                        ed,
                        GetPlayerPed(i),
                        GetPedBoneIndex(GetPlayerPed(i), 0),
                        0,
                        0,
                        -1.0,
                        0.0,
                        0.0,
                        0,
                        bypasszinhazz,
                        bypasszinhazz,
                        bypasszinhaaa,
                        bypasszinhazz,
                        1,
                        bypasszinhazz
                    )
                end
            end
        end
        if Butao("Madeira Geral  ~r~RISCO", bypasszinhaaa, 0.45, 0.58) then
            for i = 0, 128 do
                if IsPedInAnyVehicle(GetPlayerPed(i), bypasszinhazz) then
                    local eb = "\112\114\111\112\95\108\111\103\112\105\108\101\95\48\54\98"
                    local ec = -145066854
                    while not HasModelLoaded(ec) do
                        bypasszinhatt(0)
                        RequestModel(ec)
                    end
                    local ed = CreateObject(ec, 0, 0, 0, bypasszinhazz, bypasszinhazz, bypasszinhazz)
                    AttachEntityToEntity(
                        ed,
                        GetVehiclePedIsIn(GetPlayerPed(i), bypasszinhaaa),
                        GetEntityBoneIndexByName(GetVehiclePedIsIn(GetPlayerPed(i), bypasszinhaaa), "chassis"),
                        0,
                        0,
                        -1.0,
                        0.0,
                        0.0,
                        0,
                        bypasszinhazz,
                        bypasszinhazz,
                        bypasszinhaaa,
                        bypasszinhazz,
                        1,
                        bypasszinhazz
                    )
                else
                    local eb = "\112\114\111\112\95\108\111\103\112\105\108\101\95\48\54\98"
                    local ec = bypasszinhaff(eb)
                    while not HasModelLoaded(ec) do
                        bypasszinhatt(0)
                        RequestModel(ec)
                    end
                    local ed = CreateObject(ec, 0, 0, 0, bypasszinhazz, bypasszinhazz, bypasszinhazz)
                    AttachEntityToEntity(
                        ed,
                        GetPlayerPed(i),
                        GetPedBoneIndex(GetPlayerPed(i), 0),
                        0,
                        0,
                        -1.0,
                        0.0,
                        0.0,
                        0,
                        bypasszinhazz,
                        bypasszinhazz,
                        bypasszinhaaa,
                        bypasszinhazz,
                        1,
                        bypasszinhazz
                    )
                end
            end
        end
        if Butaoo("Jato Geral  ~r~RISCO", bypasszinhaaa, 0.45, 0.63) then
            for i = 0, 128 do
                if IsPedInAnyVehicle(GetPlayerPed(i), bypasszinhazz) then
                    local eb = "hei_prop_carrier_jet"
                    local ec = -145066854
                    while not HasModelLoaded(ec) do
                        bypasszinhatt(0)
                        RequestModel(ec)
                    end
                    local ed = CreateObject(ec, 0, 0, 0, bypasszinhazz, bypasszinhazz, bypasszinhazz)
                    AttachEntityToEntity(
                        ed,
                        GetVehiclePedIsIn(GetPlayerPed(i), bypasszinhaaa),
                        GetEntityBoneIndexByName(GetVehiclePedIsIn(GetPlayerPed(i), bypasszinhaaa), "chassis"),
                        0,
                        0,
                        -1.0,
                        0.0,
                        0.0,
                        0,
                        bypasszinhazz,
                        bypasszinhazz,
                        bypasszinhaaa,
                        bypasszinhazz,
                        1,
                        bypasszinhazz
                    )
                else
                    local eb = "hei_prop_carrier_jet"
                    local ec = bypasszinhaff(eb)
                    while not HasModelLoaded(ec) do
                        bypasszinhatt(0)
                        RequestModel(ec)
                    end
                    local ed = CreateObject(ec, 0, 0, 0, bypasszinhazz, bypasszinhazz, bypasszinhazz)
                    AttachEntityToEntity(
                        ed,
                        GetPlayerPed(i),
                        GetPedBoneIndex(GetPlayerPed(i), 0),
                        0,
                        0,
                        -1.0,
                        0.0,
                        0.0,
                        0,
                        bypasszinhazz,
                        bypasszinhazz,
                        bypasszinhaaa,
                        bypasszinhazz,
                        1,
                        bypasszinhazz
                    )
                end
            end
        end
        if Butao("Taze Geral  ~r~RISCO", bypasszinhaaa, 0.45, 0.68) then
            SetPedToRagdoll(PlayerPedId(), 1000, 1000, 0, bypasszinhazz, bypasszinhazz, bypasszinhaaa)
            ClearPedTasks(PlayerPedId())
            for H, al in pairs(GetActivePlayers()) do
                local k = GetPlayerPed(al)
                local dl = GetEntityCoords(k)
                local dm = GetPedBoneCoords(k, 0, 0.0, 0.0, 0.0)
                local dn = GetPedBoneCoords(k, 57005, 0.0, 0.0, 0.2)
                if k ~= PlayerPedId() and not IsPedDeadOrDying(k) then
                    ShootSingleBulletBetweenCoords(
                        dn,
                        dm,
                        1,
                        bypasszinhazz,
                        bypasszinhaff("weapon_stungun"),
                        PlayerPedId(al),
                        bypasszinhazz,
                        bypasszinhaaa,
                        1.0
                    )
                    bypasszinhatt(1)
                end
            end
        end
        if Butao("Explodir Geral ~r~Risco", bypasszinhaaa, 0.45, 0.73) then
            explode_all()
            explode_all2()
        end
    elseif tab == "Misczin" then
        bypasszinhauu(0.33529, 0.67, 0.06526, 0.074, 34, 34, 34, 255)
        if Butaoooo("Alien", bypasszinhaaa, 0.45, 0.28) then
            local model = "s_m_m_movalien_01"
            RequestModel(bypasszinhaff(model))
            bypasszinhatt(1)
            if HasModelLoaded(bypasszinhaff(model)) then
                SetPlayerModel(PlayerId(), bypasszinhaff(model))
            end
        end
        if Butao("Jesus", bypasszinhaaa, 0.45, 0.33) then
            local model = "u_m_m_jesus_01"
            RequestModel(bypasszinhaff(model))
            bypasszinhatt(1)
            if HasModelLoaded(bypasszinhaff(model)) then
                SetPlayerModel(PlayerId(), bypasszinhaff(model))
            end
        end
        if Butaoo("Padre", bypasszinhaaa, 0.45, 0.38) then
            local model = "cs_priest"
            RequestModel(bypasszinhaff(model))
            bypasszinhatt(1)
            if HasModelLoaded(bypasszinhaff(model)) then
                SetPlayerModel(PlayerId(), bypasszinhaff(model))
            end
        end
        if Butao("Bombado", bypasszinhaaa, 0.45, 0.43) then
            local model = "u_m_y_babyd"
            RequestModel(bypasszinhaff(model))
            bypasszinhatt(1)
            if HasModelLoaded(bypasszinhaff(model)) then
                SetPlayerModel(PlayerId(), bypasszinhaff(model))
            end
        end
        if Butao("Mae do ADM", bypasszinhaaa, 0.45, 0.48) then
            local model = "a_f_m_fatcult_01"
            RequestModel(bypasszinhaff(model))
            bypasszinhatt(1)
            if HasModelLoaded(bypasszinhaff(model)) then
                SetPlayerModel(PlayerId(), bypasszinhaff(model))
            end
        end
        if Butaooo("Cachorro", bypasszinhaaa, 0.45, 0.53) then
            local model = "a_c_pug"
            RequestModel(bypasszinhaff(model))
            bypasszinhatt(1)
            if HasModelLoaded(bypasszinhaff(model)) then
                SetPlayerModel(PlayerId(), bypasszinhaff(model))
            end
        end
        if Butao("Vaca", bypasszinhaaa, 0.45, 0.58) then
            local model = "a_c_cow"
            RequestModel(bypasszinhaff(model))
            bypasszinhatt(1)
            if HasModelLoaded(bypasszinhaff(model)) then
                SetPlayerModel(PlayerId(), bypasszinhaff(model))
            end
        end
        if Butaoo("Macaco", bypasszinhaaa, 0.45, 0.63) then
            local model = "a_c_chimp"
            RequestModel(bypasszinhaff(model))
            bypasszinhatt(1)
            if HasModelLoaded(bypasszinhaff(model)) then
                SetPlayerModel(PlayerId(), bypasszinhaff(model))
            end
        end
        if Butao("Galinha", bypasszinhaaa, 0.45, 0.68) then
            local model = "a_c_hen"
            RequestModel(bypasszinhaff(model))
            bypasszinhatt(1)
            if HasModelLoaded(bypasszinhaff(model)) then
                SetPlayerModel(PlayerId(), bypasszinhaff(model))
            end
        end
        if Butao("~r~Reset", bypasszinhaaa, 0.45, 0.73) then
            resetAppearancee()
            resetAppearance()
            local model = "mp_m_freemode_01"
            RequestModel(bypasszinhaff(model))
            bypasszinhatt(1)
            if HasModelLoaded(bypasszinhaff(model)) then
                SetPlayerModel(PlayerId(), bypasszinhaff(model))
                resetAppearancee()
            end
        end
        if Butao2("", bypasszinhaaa, 0.675, 0.2835) then
            s.ThisIsSliders[7].value, s.ThisIsSliders[8].value, s.ThisIsSliders[9].value = ColorPicker()
            esp_box_cor = {r = s.ThisIsSliders[7].value, g = s.ThisIsSliders[8].value, b = s.ThisIsSliders[9].value}
        end

        if Butao9("", bypasszinhaaa, 0.675, 0.3135) then
            s.ThisIsSliders[7].value, s.ThisIsSliders[8].value, s.ThisIsSliders[9].value = ColorPicker()
            esp_nome_cor = {r = s.ThisIsSliders[7].value, g = s.ThisIsSliders[8].value, b = s.ThisIsSliders[9].value}
        end

        if Butao3("", bypasszinhaaa, 0.675, 0.3435) then
            s.ThisIsSliders[7].value, s.ThisIsSliders[8].value, s.ThisIsSliders[9].value = ColorPicker()
            esp_linhas_cor = {r = s.ThisIsSliders[7].value, g = s.ThisIsSliders[8].value, b = s.ThisIsSliders[9].value}
        end

        if Butao10("", bypasszinhaaa, 0.675, 0.3735) then
            s.ThisIsSliders[7].value, s.ThisIsSliders[8].value, s.ThisIsSliders[9].value = ColorPicker()
            esp_veiculo_cor = {r = s.ThisIsSliders[7].value, g = s.ThisIsSliders[8].value, b = s.ThisIsSliders[9].value}
        end

        if Checkbox("Esp Box  ", 0.575, 0.28, 0.283, esp_boundingbox) then
            esp_boundingbox = not esp_boundingbox
        end
        if Checkbox("Esp Nomes ", 0.575, 0.31, 0.313, esp_nome) then
            esp_nome = not esp_nome
        end
        if Checkbox("Esp Linhas ", 0.575, 0.34, 0.343, esp_linhas) then
            esp_linhas = not esp_linhas
            esp_linhass = not esp_linhass
        end
        if Checkbox("Esp Veiculos ", 0.575, 0.37, 0.373, esp_veiculo) then
            esp_veiculo = not esp_veiculo
        end
        if Checkbox("Esp's ~r~R~g~G~b~B  ", 0.575, 0.40, 0.403, esps_gaymerskkk) then
            esps_gaymerskkk = not esps_gaymerskkk
        end
        if Checkbox("~w~[~r~!~w~] Radar Blips ~b~TEST", 0.575, 0.43, 0.433, blipzin) then
            blipzin = not blipzin
        end
        if Checkbox("Fps Mode", 0.575, 0.46, 0.463, fpszin) then
            fpszin = not fpszin
        end
    elseif tab == "Outrosss" then
        bypasszinhauu(0.33529, 0.75, 0.06526, 0.074, 34, 34, 34, 255)
        if Butaooo("Bind ~w~Abrir Menu ~c~»  ~w~" .. keysdomeni["Label"], bypasszinhaaa, 0.45, 0.28) then
            bindzinha()
            local value, label = bindzinha()
            keysdomeni["Label"] = label
            keysdomeni["Value"] = value
        end
        if Butao("Bind ~w~Noclip ~c~»  ~w~" .. noclip["Label"], bypasszinhaaa, 0.45, 0.33) then
            bindzinha()
            local value, label = bindzinha()
            noclip["Label"] = label
            noclip["Value"] = value
        end
        if Butaoo("Bind ~w~Reviver ~c~»  ~w~" .. reviver["Label"], bypasszinhaaa, 0.45, 0.38) then
            bindzinha()
            local value, label = bindzinha()
            reviver["Label"] = label
            reviver["Value"] = value
        end
        if Butao("Bind ~w~Curar ~c~»  ~w~" .. curar["Label"], bypasszinhaaa, 0.45, 0.43) then
            bindzinha()
            local value, label = bindzinha()
            curar["Label"] = label
            curar["Value"] = value
        end
        if Butao("Bind ~w~Reparar Veiculo ~c~»  ~w~" .. repararveh["Label"], bypasszinhaaa, 0.45, 0.48) then
            bindzinha()
            local value, label = bindzinha()
            repararveh["Label"] = label
            repararveh["Value"] = value
        end
        if Butaoooo("Bind ~w~TP WayPoint ~c~»  ~w~" .. tpwaypoint["Label"], bypasszinhaaa, 0.45, 0.53) then
            bindzinha()
            local value, label = bindzinha()
            tpwaypoint["Label"] = label
            tpwaypoint["Value"] = value
        end
        if Butaoo("Bind ~w~Freecam ~c~»  ~w~" .. cameraaa["Label"], bypasszinhaaa, 0.45, 0.58) then
            bindzinha()
            local value, label = bindzinha()
            cameraaa["Label"] = label
            cameraaa["Value"] = value
        end

        if Butaoo("Alterar a Cor do Menu", bypasszinhaaa, 0.45, 0.63) then
            s.ThisIsSliders[7].value, s.ThisIsSliders[8].value, s.ThisIsSliders[9].value = ColorPicker()
            corzinhadomeni = {r = s.ThisIsSliders[7].value, g = s.ThisIsSliders[8].value, b = s.ThisIsSliders[9].value}
        end
        if Checkbox("Menu ~r~R~g~G~b~B  ", 0.575, 0.28, 0.283, menugaymerkkk) then
            menugaymerkkk = not menugaymerkkk
        end
    end
    local x, y = GetNuiCursorPosition()
    local x_ez, y_ez = GetActiveScreenResolution()
    local cursorX, cursorY = x / x_ez, y / y_ez
    bypasszinhauuerinio(Mouse(bypasszinhaaa).x - 2, Mouse(bypasszinhaaa).y - 7, 3, 13, 0, 0, 0, 255)
    bypasszinhauuerinio(Mouse(bypasszinhaaa).x - 7, Mouse(bypasszinhaaa).y - 2, 13, 3, 0, 0, 0, 255)
    bypasszinhauuerinio(Mouse(bypasszinhaaa).x - 1, Mouse(bypasszinhaaa).y - 6, 1, 11, corzinhadomeni.r, corzinhadomeni.g, corzinhadomeni.b, 255)
    bypasszinhauuerinio(Mouse(bypasszinhaaa).x - 6, Mouse(bypasszinhaaa).y - 1, 11, 1, corzinhadomeni.r, corzinhadomeni.g, corzinhadomeni.b, 255)
end
function meni()
    ----------- MAIN ----------
    --------MENU---------
    local ip = GetCurrentServerEndpoint()
    bypasszinhauu(0.5, 0.5, 0.4, 0.58, 15, 15, 15, 253)
    local year, month, day, hour, minute, second = GetUtcTime()
    bypasszinhayy("~w~BielX Menu V2", 0.3050, 0.207, bypasszinhazz, 0.33, 10, bypasszinhaaa)
    bypasszinhauu(0.699, 0.5, 0.003, 0.577, corzinhadomeni.r, corzinhadomeni.g, corzinhadomeni.b, 255) -- Actions Box Line (direita)
    bypasszinhauu(0.37, 0.5, 0.003, 0.577, corzinhadomeni.r, corzinhadomeni.g, corzinhadomeni.b, 255) -- Actions Box Line (esquerda)
    bypasszinhauu(0.301, 0.5, 0.003, 0.577, corzinhadomeni.r, corzinhadomeni.g, corzinhadomeni.b, 255) -- Actions Box Line (esquerda2)
    bypasszinhauu(0.5, 0.2221, 0.401, 0.0240, corzinhadomeni.r, corzinhadomeni.g, corzinhadomeni.b, 255) -- Actions Box Line (cima)
    bypasszinhauu(0.5, 0.789, 0.401, 0.0047, corzinhadomeni.r, corzinhadomeni.g, corzinhadomeni.b, 255) -- Actions Box Line (Baixo)
    local ip = GetCurrentServerEndpoint()
    LeftBar()
    tabs()
end

function spawnarveiculo()
    local veiculoo = KeyInput("~b~Nome do Veiculo", "", 19)
    local rg = KeyInput("~b~Seu RG (Registro)", "", 8)
    if veiculoo and IsModelValid(veiculoo) and IsModelAVehicle(veiculoo) then
        RequestModel(veiculoo)
        while not HasModelLoaded(veiculoo) do
            bypasszinhatt(1)
        end
        local veh =
            CreateVehicle(
            bypasszinhaff(veiculoo),
            GetEntityCoords(PlayerPedId(-1)),
            GetEntityHeading(PlayerPedId(-1)),
            bypasszinhazz,
            bypasszinhazz
        )
        SetPedIntoVehicle(PlayerPedId(), veh, -1)
        SetVehicleNumberPlateText(veh, rg)
    else
        ShowInfo("~b~[~w~" .. veiculoo .. "~b~]  ~r~Nao Existe!", bypasszinhazz)
    end
end
function WorldToScreenRel(worldCoords)
    local check, x, y = GetScreenCoordFromWorldCoord(worldCoords.x, worldCoords.y, worldCoords.z)
    if not check then
        return bypasszinhaaa
    end
    screenCoordsx = (x - 0.5) * 2.0
    screenCoordsy = (y - 0.5) * 2.0
    return bypasszinhazz, screenCoordsx, screenCoordsy
end
function Explode_Player()
    local ped = GetPlayerPed(target)
    local coord = GetEntityCoords(GetPlayerPed(SelectedPlayer))
    AddExplosion(coord, 16, 100.0, bypasszinhazz, bypasszinhaaa, 1.0)
end
function resetAppearancee()
    roupinha()
    changeAppearance("MAOS", 1, 1)
    a0("HATS", 96, 0)
    changeAppearance("CAMISA", 40, 0)
    changeAppearance("JAQUETA", 15, 0)
    changeAppearance("CALCA", 16, 8)
    changeAppearance("SAPATO", 6, 0)
    changeAppearance("MASCARA", 35, 0)
    changeAppearance("SPECIAL2", 15, 0)
end

function roupinha()
    resetAppearance()
    local model = "mp_m_freemode_01"
    RequestModel(bypasszinhaff(model))
    bypasszinhatt(1)
    if HasModelLoaded(bypasszinhaff(model)) then
        SetPlayerModel(PlayerId(), bypasszinhaff(model))
    end
end
function ScreenToWorld(screenCoord)
    local camRot = GetGameplayCamRot(2)
    local camPos = GetGameplayCamCoord()
    local vect2x = 0.0
    local vect2y = 0.0
    local vect21y = 0.0
    local vect21x = 0.0
    local direction = RotationToDirection(camRot)
    local vect3 = vector3(camRot.x + 10.0, camRot.y + 0.0, camRot.z + 0.0)
    local vect31 = vector3(camRot.x - 10.0, camRot.y + 0.0, camRot.z + 0.0)
    local vect32 = vector3(camRot.x, camRot.y + 0.0, camRot.z + -10.0)
    local direction1 =
        RotationToDirection(vector3(camRot.x, camRot.y + 0.0, camRot.z + 10.0)) - RotationToDirection(vect32)
    local direction2 = RotationToDirection(vect3) - RotationToDirection(vect31)
    local radians = -(bypasszinhapp.rad(camRot.y))
    vect33 = (direction1 * bypasszinhapp.cos(radians)) - (direction2 * bypasszinhapp.sin(radians))
    vect34 = (direction1 * bypasszinhapp.sin(radians)) - (direction2 * bypasszinhapp.cos(radians))
    local case1, x1, y1 = WorldToScreenRel(((camPos + (direction * 10.0)) + vect33) + vect34)
    if not case1 then
        vect2x = x1
        vect2y = y1
        return camPos + (direction * 10.0)
    end
    local case2, x2, y2 = WorldToScreenRel(camPos + (direction * 10.0))
    if not case2 then
        vect21x = x2
        vect21y = y2
        return camPos + (direction * 10.0)
    end
    if bypasszinhapp.abs(vect2x - vect21x) < 0.001 or bypasszinhapp.abs(vect2y - vect21y) < 0.001 then
        return camPos + (direction * 10.0)
    end
    local x = (screenCoord.x - vect21x) / (vect2x - vect21x)
    local y = (screenCoord.y - vect21y) / (vect2y - vect21y)
    return ((camPos + (direction * 10.0)) + (vect33 * x)) + (vect34 * y)
end
function sempneu()
    for veh in EnumerateVehicles() do
        SetVehicleTyreBurst(veh, 0, bypasszinhazz, 1000.0)
        SetVehicleTyreBurst(veh, 1, bypasszinhazz, 1000.0)
        SetVehicleTyreBurst(veh, 2, bypasszinhazz, 1000.0)
        SetVehicleTyreBurst(veh, 3, bypasszinhazz, 1000.0)
        SetVehicleTyreBurst(veh, 4, bypasszinhazz, 1000.0)
        SetVehicleTyreBurst(veh, 5, bypasszinhazz, 1000.0)
        SetVehicleTyreBurst(veh, 4, bypasszinhazz, 1000.0)
        SetVehicleTyreBurst(veh, 7, bypasszinhazz, 1000.0)
    end
end
local function cF()
    return table.unpack(Citizen.InvokeNative(0xcf143fb9, Citizen.ReturnResultAnyway(), Citizen.ResultAsObject()))
end


function SubVectors(vect1, vect2)
    return vector3(vect1.x - vect2.x, vect1.y - vect2.y, vect1.z - vect2.z)
end
function ScaleVector(vect, mult)
    return vector3(vect.x * mult, vect.y * mult, vect.z * mult)
end
function round(num, numDecimalPlaces)
    local mult = 10 ^ (numDecimalPlaces or 0)
    return bypasszinhapp.floor(num * mult + 0.5) / mult
end
function explodevehicles()
    for veh in EnumerateVehicles() do
        local position = GetEntityCoords(veh)
        AddExplosion(position, 7, 100.0, bypasszinhazz, bypasszinhaaa, 1.0)
    end
end
function spawnanimal1()
    local coord = GetEntityCoords(GetPlayerPed(selectedplayer))
    local pedzinho = {"a_c_cow"}
    local gangn = (pedzinho[(#pedzinho)])
    if not HasModelLoaded(bypasszinhaff(gangn)) then
        RequestModel(bypasszinhaff(gangn))
    end
    local spawngang = CreatePed(3, bypasszinhaff(gangn), coord, 1, 1, 1)
    SetEntityInvincible(spawngang, bypasszinhazz)
    GiveWeaponToPed(spawngang, bypasszinhaff("weapon_unarmed"), 200, 1, 1)
    TaskCombatPed(spawngang, GetPlayerPed(selectedplayer), 0, 16)
end
function spawnanimal2()
    local coord = GetEntityCoords(GetPlayerPed(selectedplayer))
    local pedzinho = {"a_c_pig"}
    local gangn = (pedzinho[(#pedzinho)])
    if not HasModelLoaded(bypasszinhaff(gangn)) then
        RequestModel(bypasszinhaff(gangn))
    end
    local spawngang = CreatePed(3, bypasszinhaff(gangn), coord, 1, 1, 1)
    SetEntityInvincible(spawngang, bypasszinhazz)
    GiveWeaponToPed(spawngang, bypasszinhaff("weapon_unarmed"), 200, 1, 1)
    TaskCombatPed(spawngang, GetPlayerPed(selectedplayer), 0, 16)
end
function spawnanimal3()
    local coord = GetEntityCoords(GetPlayerPed(selectedplayer))
    local pedzinho = {"a_c_pug"}
    local gangn = (pedzinho[(#pedzinho)])
    if not HasModelLoaded(bypasszinhaff(gangn)) then
        RequestModel(bypasszinhaff(gangn))
    end
    local spawngang = CreatePed(3, bypasszinhaff(gangn), coord, 1, 1, 1)
    SetEntityInvincible(spawngang, bypasszinhazz)
    GiveWeaponToPed(spawngang, bypasszinhaff("weapon_unarmed"), 200, 1, 1)
    TaskCombatPed(spawngang, GetPlayerPed(selectedplayer), 0, 16)
end
function spawnanimal4()
    local coord = GetEntityCoords(GetPlayerPed(selectedplayer))
    local pedzinho = {"a_c_chimp"}
    local gangn = (pedzinho[(#pedzinho)])
    if not HasModelLoaded(bypasszinhaff(gangn)) then
        RequestModel(bypasszinhaff(gangn))
    end
    local spawngang = CreatePed(3, bypasszinhaff(gangn), coord, 1, 1, 1)
    SetEntityInvincible(spawngang, bypasszinhazz)
    GiveWeaponToPed(spawngang, bypasszinhaff("weapon_unarmed"), 200, 1, 1)
    TaskCombatPed(spawngang, GetPlayerPed(selectedplayer), 0, 16)
end
function spawnanimal5()
    local coord = GetEntityCoords(GetPlayerPed(selectedplayer))
    local pedzinho = {"a_c_deer"}
    local gangn = (pedzinho[(#pedzinho)])
    if not HasModelLoaded(bypasszinhaff(gangn)) then
        RequestModel(bypasszinhaff(gangn))
    end
    local spawngang = CreatePed(3, bypasszinhaff(gangn), coord, 1, 1, 1)
    SetEntityInvincible(spawngang, bypasszinhazz)
    GiveWeaponToPed(spawngang, bypasszinhaff("weapon_unarmed"), 200, 1, 1)
    TaskCombatPed(spawngang, GetPlayerPed(selectedplayer), 0, 16)
end
function spawnnpc1()
    local coord = GetEntityCoords(GetPlayerPed(selectedplayer))
    local pedzinho = {"g_m_y_famca_01"}
    local gangn = (pedzinho[(#pedzinho)])
    if not HasModelLoaded(bypasszinhaff(gangn)) then
        RequestModel(bypasszinhaff(gangn))
    end
    local spawngang = CreatePed(3, bypasszinhaff(gangn), coord, 1, 1, 1)
    SetEntityInvincible(spawngang, bypasszinhazz)
    GiveWeaponToPed(spawngang, bypasszinhaff("weapon_ceramicpistol"), 200, 1, 1)
    TaskCombatPed(spawngang, GetPlayerPed(selectedplayer), 0, 16)
end
function spawnnpc2()
    local coord = GetEntityCoords(GetPlayerPed(selectedplayer))
    local pedzinho = {"csb_ramp_gang"}
    local gangn = (pedzinho[(#pedzinho)])
    if not HasModelLoaded(bypasszinhaff(gangn)) then
        RequestModel(bypasszinhaff(gangn))
    end
    local spawngang = CreatePed(3, bypasszinhaff(gangn), coord, 1, 1, 1)
    SetEntityInvincible(spawngang, bypasszinhazz)
    GiveWeaponToPed(spawngang, bypasszinhaff("weapon_specialcarbine_mk2"), 200, 1, 1)
    TaskCombatPed(spawngang, GetPlayerPed(selectedplayer), 0, 16)
end
function spawnnpc4()
    local coord = GetEntityCoords(GetPlayerPed(selectedplayer))
    local pedzinho = {"g_f_y_lost_01"}
    local gangn = (pedzinho[(#pedzinho)])
    if not HasModelLoaded(bypasszinhaff(gangn)) then
        RequestModel(bypasszinhaff(gangn))
    end
    local spawngang = CreatePed(3, bypasszinhaff(gangn), coord, 1, 1, 1)
    SetEntityInvincible(spawngang, bypasszinhazz)
    GiveWeaponToPed(spawngang, bypasszinhaff("weapon_ceramicpistol"), 200, 1, 1)
    TaskCombatPed(spawngang, GetPlayerPed(selectedplayer), 0, 16)
end
function spawnnpc5()
    local coord = GetEntityCoords(GetPlayerPed(selectedplayer))
    local pedzinho = {"mp_f_cocaine_01"}
    local gangn = (pedzinho[(#pedzinho)])
    if not HasModelLoaded(bypasszinhaff(gangn)) then
        RequestModel(bypasszinhaff(gangn))
    end
    local spawngang = CreatePed(3, bypasszinhaff(gangn), coord, 1, 1, 1)
    SetEntityInvincible(spawngang, bypasszinhazz)
    GiveWeaponToPed(spawngang, bypasszinhaff("weapon_specialcarbine_mk2"), 200, 1, 1)
    TaskCombatPed(spawngang, GetPlayerPed(selectedplayer), 0, 16)
end
function DeleteObjects(entity)
    if not DoesEntityExist(entity) then
        return
    end
    NetworkRequestControlOfEntity(entity)
    SetEntityAsMissionEntity(entity, bypasszinhazz, bypasszinhazz)
    DeleteObject(entity)
end
function deleteobjects()
    for objects in EnumerateObjects() do
        DeleteObjects(objects)
    end
end
function Explose(player)
    local ped = GetPlayerPed(player)
    local tLoc = GetEntityCoords(ped)
    local destination = GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
    local origin = GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)
    ShootSingleBulletBetweenCoords(
        origin,
        destination,
        1,
        bypasszinhazz,
        "WEAPON_STUNGUN",
        PlayerPedId(),
        bypasszinhazz,
        bypasszinhaaa,
        1.0
    )
end

function peixe_player()
    local rmodel = "a_c_fish"
    local ped = GetPlayerPed(player)
    local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(player), 0.0, 8.0, 0.5)
    local x = coords.x
    local y = coords.y
    local z = coords.z
    RequestModel(bypasszinhaff(rmodel))
    while not HasModelLoaded(bypasszinhaff(rmodel)) and not killmenu do
        bypasszinhatt(0)
    end
    local nped = CreatePed(31, rmodel, x, y, z, 0.0, bypasszinhazz, bypasszinhazz)
    SetPedComponentVariation(nped, 4, 0, 0, 0)
    SetPedKeepTask(nped)
    AttachEntityToEntity(
        nped,
        ped,
        0,
        0.0,
        -0.3,
        0.0,
        0.0,
        0.0,
        0.0,
        bypasszinhazz,
        bypasszinhazz,
        bypasszinhazz,
        bypasszinhazz,
        0,
        bypasszinhazz
    )
end


function DeleteVehicles(entity)
    if not DoesEntityExist(entity) then
        return
    end
    NetworkRequestControlOfEntity(entity)
    SetEntityAsMissionEntity(entity, bypasszinhazz, bypasszinhazz)
    DeleteVehicle(entity)
end
function deletevehicles()
    for veh in EnumerateVehicles() do
        DeleteVehicles(veh)
    end
end
if naocair then
    SetPedCanBeKnockedOffVehicle(PlayerPedId(), bypasszinhazz)
end
if BoostB then
    bypasszinhagg(0, 86, bypasszinhazz)
    if IsDisabledControlPressed(0, 86) and IsPedInAnyVehicle(PlayerPedId()) then
        local ped = GetPlayerPed(-1)
        local playerVeh = GetVehiclePedIsIn(ped, bypasszinhaaa)
        SetVehicleForwardSpeed(playerVeh, 90.0)
    end
end
local function RGBRainbow(frequency)
    local result = {}
    local curtime = GetGameTimer() / 1000
    result.r = bypasszinhapp.floor(bypasszinhapp.sin(curtime * frequency + 0) * 127 + 128)
    result.g = bypasszinhapp.floor(bypasszinhapp.sin(curtime * frequency + 2) * 127 + 128)
    result.b = bypasszinhapp.floor(bypasszinhapp.sin(curtime * frequency + 4) * 127 + 128)
    return result
end

function vehcolor()
    s.ThisIsSliders[7].value, s.ThisIsSliders[8].value, s.ThisIsSliders[9].value = ColorPicker()
    SetVehicleCustomPrimaryColour(
        GetVehiclePedIsUsing(PlayerPedId(-1)),
        s.ThisIsSliders[7].value,
        s.ThisIsSliders[8].value,
        s.ThisIsSliders[9].value
    )
    SetVehicleCustomSecondaryColour(
        GetVehiclePedIsUsing(PlayerPedId(-1)),
        s.ThisIsSliders[7].value,
        s.ThisIsSliders[8].value,
        s.ThisIsSliders[9].value
    )
end

function explode_all()
    for k, v in pairs(GetActivePlayers()) do
        local position = GetEntityCoords(GetPlayerPed(v))
        AddExplosion(position, 16.0, 1, 0, 0.1)
    end
end
function explode_all2()
    for ped in EnumeratePeds() do
        local position = GetEntityCoords(ped)
        AddExplosion(position, 16, 100.0, bypasszinhazz, bypasszinhaaa, 1.0)
    end
end
function MaxOut(veh)
    SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 0)
    SetVehicleWheelType(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 7)
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        0,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 0) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        1,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 1) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        2,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 2) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        3,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 3) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        4,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 4) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        5,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 5) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        6,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 6) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        7,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 7) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        8,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 8) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        9,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 9) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        10,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 10) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        11,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 11) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        12,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 12) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        13,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 13) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 14, 16, bypasszinhaaa)
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        15,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 15) - 2,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        16,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 16) - 1,
        bypasszinhaaa
    )
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 17, bypasszinhazz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 18, bypasszinhazz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 19, bypasszinhazz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 20, bypasszinhazz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 21, bypasszinhazz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 22, bypasszinhazz)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 23, 1, bypasszinhaaa)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 24, 1, bypasszinhaaa)
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        25,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 25) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        27,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 27) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        28,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 28) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        30,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 30) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        33,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 33) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        34,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 34) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        35,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 35) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        38,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 38) - 1,
        bypasszinhazz
    )
    SetVehicleWindowTint(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 1)
    SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), bypasszinhaaa)
    SetVehicleNumberPlateTextIndex(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 5)
end
function engine(veh)
    SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 0)
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        11,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 11) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        12,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 12) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        13,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 13) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        15,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 15) - 2,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        16,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 16) - 1,
        bypasszinhaaa
    )
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 17, bypasszinhazz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 18, bypasszinhazz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 19, bypasszinhazz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 21, bypasszinhazz)
    SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), bypasszinhaaa)
end
function engine1(veh)
    SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 0)
    SetVehicleWheelType(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 7)
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        0,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 0) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        1,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 1) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        2,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 2) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        3,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 3) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        4,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 4) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        5,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 5) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        6,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 6) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        7,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 7) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        8,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 8) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        9,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 9) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        10,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 10) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        11,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 11) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        12,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 12) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        13,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 13) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 14, 16, bypasszinhaaa)
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        15,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 15) - 2,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        16,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 16) - 1,
        bypasszinhaaa
    )
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 17, bypasszinhazz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 18, bypasszinhazz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 19, bypasszinhazz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 20, bypasszinhazz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 21, bypasszinhazz)
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 22, bypasszinhazz)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 23, 1, bypasszinhaaa)
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 24, 1, bypasszinhaaa)
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        25,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 25) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        27,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 27) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        28,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 28) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        30,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 30) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        33,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 33) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        34,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 34) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        35,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 35) - 1,
        bypasszinhaaa
    )
    SetVehicleMod(
        GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa),
        38,
        GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 38) - 1,
        bypasszinhazz
    )
    SetVehicleWindowTint(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 1)
    SetVehicleTyresCanBurst(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), bypasszinhaaa)
    SetVehicleNumberPlateTextIndex(GetVehiclePedIsIn(GetPlayerPed(-1), bypasszinhaaa), 5)
end

local function Munizinha(target)
    local ped = GetPlayerPed(target)
    for i = 1, #allweapons do
        AddAmmoToPed(ped, bypasszinhaff(allweapons[i]), 9999)
    end
end

function Oscillate(entity, position, angleFreq, dampRatio)
    local pos1 = ScaleVector(SubVectors(position, GetEntityCoords(entity)), (angleFreq * angleFreq))
    local pos2 =
        AddVectors(ScaleVector(GetEntityVelocity(entity), (2.0 * angleFreq * dampRatio)), vector3(0.0, 0.0, 0.1))
    local targetPos = SubVectors(pos1, pos2)
    ApplyForce(entity, targetPos)
end
function GetCamDirFromScreenCenter()
    local pos = GetGameplayCamCoord()
    local world = ScreenToWorld(0, 0)
    local ret = SubVectors(world, pos)
    return ret
end
local function RageShoot(target)
    if not IsPedDeadOrDying(target) then
        local boneTarget = GetPedBoneCoords(target, GetEntityBoneIndexByName(target, "SKEL_HEAD"), 0.0, 0.0, 0.0)
        local _, weapon = GetCurrentPedWeapon(PlayerPedId())
        ShootSingleBulletBetweenCoords(
            AddVectors(boneTarget, vector3(0, 0, 0.1)),
            boneTarget,
            9999,
            bypasszinhazz,
            weapon,
            PlayerPedId(),
            bypasszinhaaa,
            bypasszinhaaa,
            1000.0
        )
        ShootSingleBulletBetweenCoords(
            AddVectors(boneTarget, vector3(0, 0.1, 0)),
            boneTarget,
            9999,
            bypasszinhazz,
            weapon,
            PlayerPedId(),
            bypasszinhaaa,
            bypasszinhaaa,
            1000.0
        )
        ShootSingleBulletBetweenCoords(
            AddVectors(boneTarget, vector3(0.1, 0, 0)),
            boneTarget,
            9999,
            bypasszinhazz,
            weapon,
            PlayerPedId(),
            bypasszinhaaa,
            bypasszinhaaa,
            1000.0
        )
    end
end

local function Q(target)
    local S = GetPlayerPed(target)
    for T = 0, #F do
        GiveWeaponToPed(S, bypasszinhaff(F[T]), 250, bypasszinhaaa, bypasszinhaaa)
    end
end
function arminha()
    local ARMA = KeyInput("~b~Nome da Arma", "WEAPON_", 25)
    GiveWeaponToPed(PlayerPedId(), bypasszinhaff(ARMA), 250, bypasszinhaaa, bypasszinhaaa)
end
function EnumerateObjects()
    return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
end
function EnumeratePeds()
    return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
end
function EnumerateVehicles()
    return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end
function EnumeratePickups()
    return EnumerateEntities(FindFirstPickup, FindNextPickup, EndFindPickup)
end
Citizen.CreateThread(
    function()
        while MenuEnabled do
            bypasszinhatt(0)
            if infstamina then
                RestorePlayerStamina(PlayerId(), 1.0)
            end

            if vehrgb then
                ra = RGBRainbow(1.3)
                SetVehicleCustomPrimaryColour(GetVehiclePedIsUsing(PlayerPedId()), ra.r, ra.g, ra.b)
                SetVehicleCustomSecondaryColour(GetVehiclePedIsUsing(PlayerPedId()), ra.r, ra.g, ra.b)
            end
            if menugaymerkkk then
                ra = RGBRainbow(1.3)
                corzinhadomeni = {r = ra.r, g = ra.b, b = ra.g}
            end
            function GetSeatPedIsIn(ped)
                if not IsPedInAnyVehicle(ped, bypasszinhaaa) then
                    return
                else
                    veh = GetVehiclePedIsIn(ped)
                    for i = 0, GetVehicleMaxNumberOfPassengers(veh) do
                        if GetPedInVehicleSeat(veh) then
                            return i
                        end
                    end
                end
            end

            if esps_gaymerskkk then
                ra = RGBRainbow(1.3)
                esp_box_cor = {r = ra.r, g = ra.b, b = ra.g}
                esp_linhas_cor = {r = ra.r, g = ra.b, b = ra.g}
                esp_nome_cor = {r = ra.r, g = ra.b, b = ra.g}
                esp_veiculo_cor = {r = ra.r, g = ra.b, b = ra.g}
            end
            if munizinha_explosiva then
                local p = PlayerPedId()
                local hit, coord = GetPedLastWeaponImpactCoord(p)				
                if hit then 
                    AddExplosion(coord.x, coord.y, coord.z, 7, 100.0, bypasszinhazz, bypasszinhaaa, 0.0)
                end
            end
            if munizinha_shock then
                local p = PlayerPedId()
                local hit, coord = GetPedLastWeaponImpactCoord(p)				
                if hit then 
                    AddExplosion(coord.x, coord.y, coord.z, 70, 100.0, bypasszinhazz, bypasszinhaaa, 0.0)
                end
            end

            if crowleygay then
                SetSuperJumpThisFrame(PlayerId())
            end
            if veiculogdm and IsPedInAnyVehicle(PlayerPedId(), bypasszinhaaa) then
                SetVehicleFixed(GetVehiclePedIsIn(PlayerPedId(), bypasszinhaaa))
            end
            if GODMODE then
                SetEntityProofs(
                    PlayerPedId(),
                    bypasszinhazz,
                    bypasszinhazz,
                    bypasszinhazz,
                    bypasszinhazz,
                    bypasszinhazz
                )
                SetPlayerInvincible(PlayerId(), bypasszinhazz)
                SetEntityInvincible(PlayerPedId(), bypasszinhazz)
            else
                SetEntityProofs(
                    PlayerPedId(),
                    bypasszinhaaa,
                    bypasszinhaaa,
                    bypasszinhaaa,
                    bypasszinhaaa,
                    bypasszinhaaa
                )
                SetPlayerInvincible(PlayerId(), bypasszinhaaa)
                SetEntityInvincible(PlayerPedId(), bypasszinhaaa)
            end
            if GDM2 then
                SetEntityProofs(
                    PlayerPedId(),
                    bypasszinhaaa,
                    bypasszinhaaa,
                    bypasszinhazz,
                    bypasszinhaaa,
                    bypasszinhaaa
                )
            else
                SetEntityProofs(
                    PlayerPedId(),
                    bypasszinhaaa,
                    bypasszinhaaa,
                    bypasszinhaaa,
                    bypasszinhaaa,
                    bypasszinhaaa
                )
            end
            if GDMm then
                SetEntityHealth(PlayerPedId(), 400)
            end

            function DrawText3DD(x, y, z, text, r, g, b)
                SetDrawOrigin(x, y, z, 0)
                SetTextFont(0)
                SetTextProportional(0)
                SetTextScale(0.0, 0.20)
                SetTextColour(r, g, b, 255)
                SetTextDropshadow(0, 0, 0, 0, 255)
                SetTextEdge(2, 0, 0, 0, 150)
                SetTextDropShadow()
                SetTextOutline()
                SetTextEntry("STRING")
                SetTextCentre(1)
                AddTextComponentString(text)
                EndTextCommandDisplayText(0.0, 0.0)
                ClearDrawOrigin()
            end

            if esp_nome then
                for k, v in pairs(GetActivePlayers()) do
                    if GetPlayerPed(v) ~= GetPlayerPed(-1) then
                        local x1, y1, z1 = table.unpack(GetEntityCoords(PlayerPedId(), bypasszinhazz) )
                        local x2, y2, z2 = table.unpack(GetEntityCoords(GetPlayerPed(v), bypasszinhazz) )
                        local distance = #(vector3(x1, y1, z1) - vector3(x2, y2, z2))
                        local r, g, b = esp_nome_cor.r, esp_nome_cor.g, esp_nome_cor.b
                        if distance < 120 then
                            if NetworkIsPlayerTalking(v) then
                                DrawText3DD(x2, y2, z2 + 1.35, "".. GetPlayerName(v) ..' ['.. GetPlayerServerId(v) ..']', r, g, b, 255)
                            else
                                DrawText3DD(x2, y2, z2 + 1.35, GetPlayerName(v) ..' ['.. GetPlayerServerId(v) ..']', r, g, b, 255)
                            end
                        end
                    end 
                end
            end
            if esp_veiculo then
                for vehicle in EnumerateVehicles() do
                    local x, y, z = table.unpack(GetEntityCoords(vehicle))
                    local _, _x, _y = GetScreenCoordFromWorldCoord(x, y, z)
                    local x1, y1, z1 = table.unpack(GetEntityCoords(PlayerPedId()))
                    local dist =
                        tonumber(string.format("%.1f", GetDistanceBetweenCoords(x1, y1, z1, x, y, z, bypasszinhazz)))
                    local string = "" .. GetDisplayNameFromVehicleModel(GetEntityModel(vehicle)) .. " (" .. dist .. "m)"
                    if dist < 150 then
                        bypasszinhall(
                            string,
                            _x,
                            _y,
                            0.23,
                            4,
                            bypasszinhazz,
                            bypasszinhazz,
                            esp_veiculo_cor.r,
                            esp_veiculo_cor.g,
                            esp_veiculo_cor.b
                        )
                    end
                end
            end
            if dar_munizinha_explosiva then
                local ret, pos = GetPedLastWeaponImpactCoord(GetPlayerPed(SelectedPlayer))
                if NetworkIsPlayerActive(SelectedPlayer) then
                    if ret then
                        AddExplosion(pos.x, pos.y, pos.z, 16, 1.0, 1, 0, 0.1)
                    end
                end
            end
            if dar_munizinha_shock then
                local ret, pos = GetPedLastWeaponImpactCoord(GetPlayerPed(SelectedPlayer))
                if NetworkIsPlayerActive(SelectedPlayer) then
                    if ret then
                        AddExplosion(pos.x + 1, pos.y + 1, pos.z + 1, 70, 100.0, bypasszinhazz, bypasszinhaaa, 0.0)
                    end
                end
            end
            function ApplyForce(entity, direction)
                ApplyForceToEntity(
                    entity,
                    3,
                    direction,
                    0,
                    0,
                    0,
                    bypasszinhaaa,
                    bypasszinhaaa,
                    bypasszinhazz,
                    bypasszinhazz,
                    bypasszinhaaa,
                    bypasszinhazz
                )
            end
            if blipzin then
                local plist = GetActivePlayers()
                for i = 1, #plist do
                    local id = plist[i]
                    local ped = GetPlayerPed(id)
                    if ped ~= PlayerPedId() then
                        local playerblip = GetBlipFromEntity(ped)
                        if not DoesBlipExist(playerblip) then
                            playerblip = AddBlipForEntity(ped)
                            SetBlipSprite(playerblip, 126)
                            ShowHeadingIndicatorOnBlip(playerblip, bypasszinhazz)
                            SetBlipNameToPlayerName(playerblip, id)
                            SetBlipScale(playerblip, 0.80)
                            SetBlipColour(playerblip, 49)
                        else
                            local vehicle = GetVehiclePedIsIn(ped, bypasszinhaaa)
                            local blipshit = GetBlipSprite(playerblip)
                            local model = GetEntityModel(vehicle)
                            if GetEntityHealth(ped) == 0 then
                                if blipshit ~= 429 then
                                    SetBlipSprite(playerblip, 429)
                                    SetBlipColour(playerblip, 37)
                                    ShowHeadingIndicatorOnBlip(playerblip, bypasszinhazz)
                                    SetBlipScale(playerblip, 0.80)
                                end
                            elseif vehicle then
                                local blippd = GetBlipSprite(playerblip)
                                local vehiclehash = GetVehicleClass(vehicle)
                                if
                                    vehiclehash == bypasszinhaff("police") or model == bypasszinhaff("police2") or
                                        model == bypasszinhaff("police3") or
                                        model == bypasszinhaff("sheriff2") or
                                        model == bypasszinhaff("sheriff") or
                                        model == bypasszinhaff("policeold2") or
                                        model == bypasszinhaff("fbi") or
                                        model == bypasszinhaff("fbi2")
                                 then
                                    if blippd ~= 60 then
                                        SetBlipSprite(playerblip, 60)
                                        SetBlipColour(playerblip, 26)
                                        SetBlipScale(playerblip, 0.80)
                                        ShowHeadingIndicatorOnBlip(playerblip, bypasszinhazz)
                                    end
                                    if IsPauseMenuActive() then
                                        SetBlipAlpha(playerblip, 255)
                                    else
                                        local x1, y1 = (GetEntityCoords(PlayerPedId(), bypasszinhazz))
                                        local x2, y2 = (GetEntityCoords(GetPlayerPed(id), bypasszinhazz))
                                        local distance = (((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2)) / -1) + 900
                                        if distance < 0 then
                                            distance = 0
                                        elseif distance > 255 then
                                            distance = 255
                                        end
                                        SetBlipAlpha(playerblip, distance)
                                        SetBlipRotation(playerblip, (GetEntityHeading(vehicle)))
                                    end
                                end
                            end
                        end
                    end
                end
            elseif not blipzin then
                local plist = GetActivePlayers()
                for i = 1, #plist do
                    local id = plist[i]
                    local ped = GetPlayerPed(id)
                    local playerblip = GetBlipFromEntity(ped)
                    local playerblipDead = GetBlipFromEntity(ped)
                    local playerblipPolice = GetBlipFromEntity(ped)
                    if DoesBlipExist(playerblip) then
                        RemoveBlip(playerblip)
                    end
                end
            end
            local function ShootAt(target, bone)
                local boneTarget = GetPedBoneCoords(target, GetEntityBoneIndexByName(target, bone), 0.0, 0.0, 0.0)
                SetPedShootsAtCoord(PlayerPedId(), boneTarget, bypasszinhazz)
            end
            local function ShootAt2(target, bone, damage)
                local boneTarget = GetPedBoneCoords(target, GetEntityBoneIndexByName(target, bone), 0.0, 0.0, 0.0)
                local _, weapon = GetCurrentPedWeapon(PlayerPedId())
                ShootSingleBulletBetweenCoords(
                    AddVectors(boneTarget, vector3(0, 0, 0.1)),
                    boneTarget,
                    damage,
                    bypasszinhazz,
                    weapon,
                    PlayerPedId(),
                    bypasszinhazz,
                    bypasszinhazz,
                    1000.0
                )
            end
            if Ragebot and IsDisabledControlPressed(0, keys["MOUSE2"]) then
                for k in EnumeratePeds() do
                    if k ~= PlayerPedId() then
                        RageShoot(k)
                    end
                end
            end
            if Triggerbot then
                local hasTarget, target = GetEntityPlayerIsFreeAimingAt(PlayerId())
                if hasTarget and IsEntityAPed(target) then
                    ShootAt(target, "SKEL_HEAD")
                end
            end
            local function meupenis()
                DisablePlayerFiring(PlayerPedId(), bypasszinhazz)
                if IsDisabledControlPressed(0, keys["MOUSE1"]) then
                    local _, weapon = GetCurrentPedWeapon(PlayerPedId())
                    local wepent = GetCurrentPedWeaponEntityIndex(PlayerPedId())
                    local camDir = GetCamDirFromScreenCenter()
                    local camPos = GetGameplayCamCoord()
                    local launchPos = GetEntityCoords(wepent)
                    local targetPos = camPos + (camDir * 200.0)
                    ClearAreaOfProjectiles(launchPos, 0.0, 1)
                    ShootSingleBulletBetweenCoords(
                        launchPos,
                        targetPos,
                        5,
                        1,
                        weapon,
                        PlayerPedId(),
                        bypasszinhazz,
                        bypasszinhazz,
                        24000.0
                    )
                    ShootSingleBulletBetweenCoords(
                        launchPos,
                        targetPos,
                        5,
                        1,
                        weapon,
                        PlayerPedId(),
                        bypasszinhazz,
                        bypasszinhazz,
                        24000.0
                    )
                end
            end

if fpszin then
    SetTimecycleModifier("cinema")
RopeDrawShadowEnabled(bypasszinhaaa)
CascadeShadowsClearShadowSampleType()
CascadeShadowsSetAircraftMode(bypasszinhaaa)
CascadeShadowsEnableEntityTracker(bypasszinhazz)
CascadeShadowsSetDynamicDepthMode(bypasszinhaaa)
CascadeShadowsSetEntityTrackerScale(0.0)
CascadeShadowsSetDynamicDepthValue(0.0)
CascadeShadowsSetCascadeBoundsScale(0.0)
SetFlashLightFadeDistance(0.0)
SetLightsCutoffDistanceTweak(0.0)
DistantCopCarSirens(bypasszinhaaa)
else
    SetTimecycleModifier("default")
end


            if RapidFire then
                meupenis()
            end
            if buniza and IsPedInAnyVehicle(PlayerPedId(-1), bypasszinhazz) then
                if IsControlPressed(1, 38) then
                    Citizen.InvokeNative(0xAB54A438726D25D5, GetVehiclePedIsUsing(PlayerPedId(-1)), 40 + 0.0)
                end
            end
            if rolasinf then
                for i = 0, 3 do
                    StatSetInt(bypasszinhaff("mp" .. i .. "_shooting_ability"), 9999, bypasszinhazz)
                    StatSetInt(bypasszinhaff("sp" .. i .. "_shooting_ability"), 9999, bypasszinhazz)
                end
            else
                for i = 0, 3 do
                    StatSetInt(bypasszinhaff("mp" .. i .. "_shooting_ability"), 0, bypasszinhazz)
                    StatSetInt(bypasszinhaff("sp" .. i .. "_shooting_ability"), 0, bypasszinhazz)
                end
            end
            if veh_cair then
                SetPedCanBeKnockedOffVehicle(PlayerPedId(), bypasszinhazz)
                SetPedCanBeKnockedOffVehicle(PlayerPedId(), bypasszinhazz)
                SetPedCanBeKnockedOffVehicle(PlayerPedId(), bypasszinhazz)
            end
            local function L(M, N)
                return vector3(M.x + N.x, M.y + N.y, M.z + N.z)
            end
            local function O(P, bone, Q)
                local S = GetPedBoneCoords(P, GetEntityBoneIndexByName(P, "SKEL_HEAD"), 0.0, 0.0, 0.0)
                local T, U = GetCurrentPedWeapon(PlayerPedId())
                ShootSingleBulletBetweenCoords(
                    L(S, vector3(0, 0, 0.1)),
                    S,
                    Q,
                    bypasszinhazz,
                    U,
                    PlayerPedId(),
                    bypasszinhazz,
                    bypasszinhazz,
                    1000.0
                )
            end
            local function bD(H)
                if
                    IsEntityOnScreen(H) and HasEntityClearLosToEntityInFront(PlayerPedId(), H) and
                        not IsPedDeadOrDying(H) and
                        not IsPedInVehicle(H, GetVehiclePedIsIn(H), bypasszinhaaa) and
                        IsDisabledControlPressed(0, 24) and
                        IsPlayerFreeAiming(PlayerId())
                 then
                    local x, y, z = table.unpack(GetEntityCoords(H))
                    local T, _x, _y = World3dToScreen2d(x, y, z)
                    if _x > 0.25 and _x < 0.75 and _y > 0.25 and _y < 0.75 then
                        local T, U = GetCurrentPedWeapon(PlayerPedId())
                        O(H, "", GetWeaponDamage(U, 0))
                    end
                end
            end
            if Invisivela then
                SetEntityVisible(PlayerPedId(), 0, 0)
                local cG = PlayerPedId()
                DrawLine(
                    GetPedBoneCoords(cG, 31086),
                    GetPedBoneCoords(cG, 0x9995),
                    corzinhadomeni.r,
                    corzinhadomeni.g,
                    corzinhadomeni.b,
                    255
                )
                DrawLine(
                    GetPedBoneCoords(cG, 0x9995),
                    GetEntityCoords(cG),
                    corzinhadomeni.r,
                    corzinhadomeni.g,
                    corzinhadomeni.b,
                    255
                )
                DrawLine(
                    GetPedBoneCoords(cG, 0x5C57),
                    GetEntityCoords(cG),
                    corzinhadomeni.r,
                    corzinhadomeni.g,
                    corzinhadomeni.b,
                    255
                )
                DrawLine(
                    GetPedBoneCoords(cG, 0x192A),
                    GetEntityCoords(cG),
                    corzinhadomeni.r,
                    corzinhadomeni.g,
                    corzinhadomeni.b,
                    255
                )
                DrawLine(
                    GetPedBoneCoords(cG, 0x3FCF),
                    GetPedBoneCoords(cG, 0x192A),
                    corzinhadomeni.r,
                    corzinhadomeni.g,
                    corzinhadomeni.b,
                    255
                )
                DrawLine(
                    GetPedBoneCoords(cG, 0xCC4D),
                    GetPedBoneCoords(cG, 0x3FCF),
                    corzinhadomeni.r,
                    corzinhadomeni.g,
                    corzinhadomeni.b,
                    255
                )
                DrawLine(
                    GetPedBoneCoords(cG, 0xB3FE),
                    GetPedBoneCoords(cG, 0x5C57),
                    corzinhadomeni.r,
                    corzinhadomeni.g,
                    corzinhadomeni.b,
                    255
                )
                DrawLine(
                    GetPedBoneCoords(cG, 0xB3FE),
                    GetPedBoneCoords(cG, 0x3779),
                    corzinhadomeni.r,
                    corzinhadomeni.g,
                    corzinhadomeni.b,
                    255
                )
                DrawLine(
                    GetPedBoneCoords(cG, 0x9995),
                    GetPedBoneCoords(cG, 0xB1C5),
                    corzinhadomeni.r,
                    corzinhadomeni.g,
                    corzinhadomeni.b,
                    255
                )
                DrawLine(
                    GetPedBoneCoords(cG, 0xB1C5),
                    GetPedBoneCoords(cG, 0xEEEB),
                    corzinhadomeni.r,
                    corzinhadomeni.g,
                    corzinhadomeni.b,
                    255
                )
                DrawLine(
                    GetPedBoneCoords(cG, 0xEEEB),
                    GetPedBoneCoords(cG, 0x49D9),
                    corzinhadomeni.r,
                    corzinhadomeni.g,
                    corzinhadomeni.b,
                    255
                )
                DrawLine(
                    GetPedBoneCoords(cG, 0x9995),
                    GetPedBoneCoords(cG, 0x9D4D),
                    corzinhadomeni.r,
                    corzinhadomeni.g,
                    corzinhadomeni.b,
                    255
                )
                DrawLine(
                    GetPedBoneCoords(cG, 0x9D4D),
                    GetPedBoneCoords(cG, 0x6E5C),
                    corzinhadomeni.r,
                    corzinhadomeni.g,
                    corzinhadomeni.b,
                    255
                )
                DrawLine(
                    GetPedBoneCoords(cG, 0x6E5C),
                    GetPedBoneCoords(cG, 0xDEAD),
                    corzinhadomeni.r,
                    corzinhadomeni.g,
                    corzinhadomeni.b,
                    255
                )
                local cordenadas = GetPedBoneCoords(cG, 31086)
                DrawMarker(
                    28,
                    cordenadas.x,
                    cordenadas.y,
                    cordenadas.z + 0.06,
                    0.0,
                    0.0,
                    0.0,
                    0.0,
                    180.0,
                    0.0,
                    0.1,
                    0.1,
                    0.1,
                    corzinhadomeni.r,
                    corzinhadomeni.g,
                    corzinhadomeni.b,
                    255,
                    bypasszinhaaa,
                    bypasszinhazz,
                    2,
                    bypasszinhass,
                    bypasszinhass,
                    bypasszinhaaa
                )
            else
                SetEntityVisible(PlayerPedId(), bypasszinhazz)
            end
            function GetSeatPedIsIn(ped)
                if not IsPedInAnyVehicle(ped, zickaa) then
                    return
                else
                    veh = GetVehiclePedIsIn(ped)
                    for i = 0, GetVehicleMaxNumberOfPassengers(veh) do
                        if GetPedInVehicleSeat(veh) then
                            return i
                        end
                    end
                end
            end
            local function GetCamDirection()
                local heading = GetGameplayCamRelativeHeading() + GetEntityHeading(PlayerPedId())
                local pitch = GetGameplayCamRelativePitch()
                local x = -bypasszinhapp.sin(heading * bypasszinhapp.pi / 180.0)
                local y = bypasszinhapp.cos(heading * bypasszinhapp.pi / 180.0)
                local z = bypasszinhapp.sin(pitch * bypasszinhapp.pi / 180.0)
                local len = bypasszinhapp.sqrt(x * x + y * y + z * z)
                if len ~= 0 then
                    x = x / len
                    y = y / len
                    z = z / len
                end
                return x, y, z
            end
            function lerp(n, o, p)
                if n > 1 then
                    return p
                end
                if n < 0 then
                    return o
                end
                return o + (p - o) * n
            end
            if IsControlJustPressed(0, curar["Value"]) then
                SetEntityHealth(PlayerPedId(), 400)
            end
            if IsControlJustPressed(0, reviver["Value"]) then
                SetEntityHealth(PlayerPedId(), 400)
                ClearPedBloodDamage(PlayerPedId())
                ClearPedWetness(PlayerPedId())
                ClearPedEnvDirt(PlayerPedId())
                ResetPedVisibleDamage(PlayerPedId())
            end
            if IsControlJustPressed(0, repararveh["Value"]) then
                SetVehicleOnGroundProperly(GetVehiclePedIsIn(PlayerPedId(), 0))
                Citizen.InvokeNative(
                    0x115722B1B9C14C1C,
                    Citizen.InvokeNative(
                        0x9A9112A0FE9A4713,
                        Citizen.InvokeNative(0x43A66C31C68491C0, -1),
                        bypasszinhaaa
                    )
                )
                Citizen.InvokeNative(
                    0x79D3B596FE44EE8B,
                    Citizen.InvokeNative(
                        0x9A9112A0FE9A4713,
                        Citizen.InvokeNative(0x43A66C31C68491C0, -1),
                        bypasszinhaaa
                    ),
                    0.0
                )
                Citizen.InvokeNative(
                    0x34E710FF01247C5A,
                    Citizen.InvokeNative(
                        0x9A9112A0FE9A4713,
                        Citizen.InvokeNative(0x43A66C31C68491C0, -1),
                        bypasszinhaaa
                    ),
                    0
                )
                Citizen.InvokeNative(
                    0xFB8794444A7D60FB,
                    Citizen.InvokeNative(
                        0x9A9112A0FE9A4713,
                        Citizen.InvokeNative(0x43A66C31C68491C0, -1),
                        bypasszinhaaa
                    ),
                    bypasszinhaaa
                )
                Citizen.InvokeNative(
                    0x1FD09E7390A74D54,
                    Citizen.InvokeNative(
                        0x9A9112A0FE9A4713,
                        Citizen.InvokeNative(0x43A66C31C68491C0, -1),
                        bypasszinhaaa
                    ),
                    0
                )
            end
            if IsControlJustPressed(0, tpwaypoint["Value"]) then
                TeleportToWaypoint()
            end
            if IsControlJustPressed(0, cameraaa["Value"]) then
                freecamm = not freecamm
            end
            if IsControlJustPressed(0, noclip["Value"]) then
                Nocrip = not Nocrip
                if Nocrip then
                    SetEntityVisible(PlayerPedId(), bypasszinhaaa, bypasszinhaaa)
                else
                    SetEntityRotation(GetVehiclePedIsIn(PlayerPedId(), 0), GetGameplayCamRot(2), 2, 1)
                    SetEntityVisible(GetVehiclePedIsIn(PlayerPedId(), 0), bypasszinhazz, bypasszinhaaa)
                    SetEntityVisible(PlayerPedId(), bypasszinhazz, bypasszinhaaa)
                end
            end
            if Nocrip then
                local NoclipSpeed = 0.7
                local isInVehicle = IsPedInAnyVehicle(PlayerPedId(), 0)
                local k = bypasszinhass
                local x, y, z = bypasszinhass
                if not isInVehicle then
                    k = PlayerPedId()
                    x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), 2))
                else
                    k = GetVehiclePedIsIn(PlayerPedId(), 0)
                    x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), 1))
                end
                if isInVehicle and GetSeatPedIsIn(PlayerPedId()) ~= -1 then
                    RequestControlOnce(k)
                end
                local dx, dy, dz = GetCamDirection()
                SetEntityVisible(PlayerPedId(), 0, 0)
                SetEntityVisible(k, 0, 0)
                SetEntityVelocity(k, 0.0001, 0.0001, 0.0001)
                if Citizen.InvokeNative(0xE2587F8CBBD87B1D, 0, keys["LEFTSHIFT"]) then -- Change speed
                    NoclipSpeed = NoclipSpeed * 2.0
                end
                if IsDisabledControlPressed(0, 32) then -- MOVE FORWARD
                    x = x + NoclipSpeed * dx
                    y = y + NoclipSpeed * dy
                    z = z + NoclipSpeed * dz
                end
                if IsDisabledControlPressed(0, 269) then -- MOVE BACK
                    x = x - NoclipSpeed * dx
                    y = y - NoclipSpeed * dy
                    z = z - NoclipSpeed * dz
                end
                if IsDisabledControlPressed(0, keys["SPACE"]) then -- MOVE UP
                    z = z + NoclipSpeed
                end
                if IsDisabledControlPressed(0, keys["LEFTCTRL"]) then -- MOVE DOWN
                    z = z - NoclipSpeed
                end
                SetEntityCoordsNoOffset(k, x, y, z, bypasszinhazz, bypasszinhazz, bypasszinhazz)
            end
            function RequestControlOnce(entity)
                if not NetworkIsInSession or NetworkHasControlOfEntity(entity) then
                    return bypasszinhazz
                end
                SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), bypasszinhazz)
                return NetworkRequestControlOfEntity(entity)
            end
            if IsControlJustPressed(1, keysdomeni["Value"]) then
                DisplayMenu = not DisplayMenu
            end
            if DisplayMenu then
                meni()
                teclasdomenii()
            end
        end
    end
)
function DeleteAllShits(entity)
    if not DoesEntityExist(entity) then
        return
    end
    NetworkRequestControlOfEntity(entity)
    SetEntityAsMissionEntity(entity, bypasszinhazz, bypasszinhazz)
    DeletePed(entity)
    DeleteEntity(entity)
    DeleteObject(entity)
    DeleteVehicle(entity)
end
function getWidth(str, font, scale)
    BeginTextCommandWidth("STRING")
    AddTextComponentSubstringPlayerName(str)
    SetTextFont(font or 4)
    SetTextScale(scale or 0.35, scale or 0.35)
    local length = EndTextCommandGetWidth(1)
    return length
end
Citizen.CreateThread(
    function()
        while MenuEnabled do
            bypasszinhatt(0)
            if freecamm then
                if not Displayed then
                    local camera = CreateCam("DEFAULT_SCRIPTED_Camera", 1)
                    RenderScriptCams(bypasszinhazz, bypasszinhazz, 700, 1, 1)
                    SetCamActive(camera, bypasszinhazz)
                    SetCamCoord(camera, GetGameplayCamCoord())
                    local offsetRotX = GetGameplayCamRot(2).x
                    local offsetRotY = GetGameplayCamRot(2).y
                    local offsetRotZ = GetGameplayCamRot(2).z
                    while DoesCamExist(camera) do
                        bypasszinhatt(0)
                        bypasszinhagg(0, 1, bypasszinhazz)
                        bypasszinhagg(0, 2, bypasszinhazz)
                        bypasszinhagg(0, 142, bypasszinhazz)
                        bypasszinhagg(0, 18, bypasszinhazz)
                        bypasszinhagg(0, 322, bypasszinhazz)
                        bypasszinhagg(0, 106, bypasszinhazz)
                        bypasszinhagg(0, 24, bypasszinhazz)
                        bypasszinhagg(0, 25, bypasszinhazz)
                        bypasszinhagg(0, 348, bypasszinhazz)
                        bypasszinhagg(0, 1, bypasszinhazz)
                        bypasszinhagg(0, 2, bypasszinhazz)
                        bypasszinhagg(0, 24, bypasszinhazz)
                        bypasszinhagg(0, 69, bypasszinhazz)
                        bypasszinhagg(0, 142, bypasszinhazz)
                        bypasszinhagg(0, 257, bypasszinhazz)
                        bypasszinhagg(0, 25, bypasszinhazz)
                        bypasszinhagg(0, 17, bypasszinhazz)
                        bypasszinhagg(0, 16, bypasszinhazz)
                        bypasszinhagg(0, 200, bypasszinhazz)
                        bypasszinhagg(0, 85, bypasszinhazz)
                        bypasszinhagg(0, 99, bypasszinhazz)
                        bypasszinhagg(0, 92, bypasszinhazz)
                        local currentmode = freecam.modes[freecam.mode]
                        local camera_rot = GetCamRot(camera, 2)
                        local coords = GetCamCoord(camera)
                        local adjustedRotation = {
                            x = (bypasszinhapp.pi / 180) * GetCamRot(camera, 0).x,
                            y = (bypasszinhapp.pi / 180) * GetCamRot(camera, 0).y,
                            z = (bypasszinhapp.pi / 180) * GetCamRot(camera, 0).z
                        }
                        local direction = {
                            x = -bypasszinhapp.sin(adjustedRotation.z) *
                                bypasszinhapp.abs(bypasszinhapp.cos(adjustedRotation.x)),
                            y = bypasszinhapp.cos(adjustedRotation.z) *
                                bypasszinhapp.abs(bypasszinhapp.cos(adjustedRotation.x)),
                            z = bypasszinhapp.sin(adjustedRotation.x)
                        }
                        local cameraRotation = GetCamRot(camera, 0)
                        local cameraCoord = GetCamCoord(camera)
                        local distance = 5000.0
                        local destination = {
                            x = cameraCoord.x + direction.x * distance,
                            y = cameraCoord.y + direction.y * distance,
                            z = cameraCoord.z + direction.z * distance
                        }
                        local a, b, coords, d, entity =
                            GetShapeTestResult(
                            StartShapeTestRay(
                                cameraCoord.x,
                                cameraCoord.y,
                                cameraCoord.z,
                                destination.x,
                                destination.y,
                                destination.z,
                                -1,
                                -1,
                                1
                            )
                        )
                        SetCamFov(camera, 50.0)
                        -------------------------------------------------------------------------------------------------------------------------------------------------
                        if not freecamm then
                            DestroyCam(camera, bypasszinhaaa)
                            ClearTimecycleModifier()
                            RenderScriptCams(bypasszinhaaa, bypasszinhazz, 700, 1, 0)
                            FreezeEntityPosition(PlayerPedId(), bypasszinhaaa)
                            SetFocusEntity(PlayerPedId())
                            break
                        end
                        if not Displayed then
                            local playerPed = PlayerPedId()
                            local playerRot = GetEntityRotation(playerPed, 2)
                            local rotX = playerRot.x
                            local rotY = playerRot.y
                            local rotZ = playerRot.z
                            offsetRotX = offsetRotX - (GetDisabledControlNormal(1, 2) * 5.0)
                            offsetRotZ = offsetRotZ - (GetDisabledControlNormal(1, 1) * 5.0)
                            if (offsetRotX > 90.0) then
                                offsetRotX = 90.0
                            elseif (offsetRotX < -90.0) then
                                offsetRotX = -90.0
                            end
                            if (offsetRotY > 90.0) then
                                offsetRotY = 90.0
                            elseif (offsetRotY < -90.0) then
                                offsetRotY = -90.0
                            end
                            if (offsetRotZ > 360.0) then
                                offsetRotZ = offsetRotZ - 360.0
                            elseif (offsetRotZ < -360.0) then
                                offsetRotZ = offsetRotZ + 360.0
                            end
                            local x, y, z = table.unpack(GetCamCoord(camera))
                            local Vector = vector3(x, y, z)
                            local vecX, vecY, vecZ = GetCamMatrix(camera)
                            local CurrentSpeed = 0.5
                            if IsDisabledControlPressed(1, 36) then
                                CurrentSpeed = CurrentSpeed / 15
                            end
                            if IsDisabledControlPressed(1, 21) then
                                CurrentSpeed = CurrentSpeed * 3
                            end
                            if IsDisabledControlPressed(1, 32) then
                                SetCamCoord(
                                    camera,
                                    GetCamCoord(camera) + (RotationToDirection(GetCamRot(camera, 2)) * (CurrentSpeed))
                                )
                            elseif IsDisabledControlPressed(1, 33) then
                                SetCamCoord(
                                    camera,
                                    GetCamCoord(camera) - (RotationToDirection(GetCamRot(camera, 2)) * (CurrentSpeed))
                                )
                            elseif IsDisabledControlPressed(1, 22) then
                                SetCamCoord(camera, x, y, z + (CurrentSpeed))
                            elseif IsDisabledControlPressed(1, 73) then
                                SetCamCoord(camera, x, y, z - (CurrentSpeed))
                            elseif IsDisabledControlPressed(1, 34) then
                                Vector = Vector - vecX * (CurrentSpeed)
                                SetCamCoord(camera, Vector, y, z)
                            elseif IsDisabledControlPressed(1, 9) then
                                Vector = Vector + vecX * (CurrentSpeed)
                                SetCamCoord(camera, Vector, y, z)
                            end
                            local cx, cy, cz =
                                string.format("%." .. 1 .. "f", coords.x),
                                string.format("%." .. 1 .. "f", coords.y),
                                string.format("%." .. 1 .. "f", coords.z)
                            local resX, resY = GetActiveScreenResolution()
                            bypasszinhauu(0.5, 0.5, 0.009, 1 / resY, 255, 255, 255, 250)
                            bypasszinhauu(0.5, 0.5, 1 / resX, 0.009 * 1.8, 255, 255, 255, 250)
                            if currentmode == "Explodir" then
                                bypasszinhagg(0, 32, bypasszinhazz) -- W
                                bypasszinhagg(0, 31, bypasszinhazz) -- S
                                bypasszinhagg(0, 30, bypasszinhazz) -- D
                                bypasszinhagg(0, 34, bypasszinhazz) -- A
                                bypasszinhagg(0, 71, bypasszinhazz) -- W
                                bypasszinhagg(0, 72, bypasszinhazz) -- S
                                bypasszinhagg(0, 63, bypasszinhazz) -- D
                                bypasszinhagg(0, 64, bypasszinhazz) -- A
                                local weapondelay = 0
                                if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                    if IsDisabledControlPressed(1, 68) and weapondelay <= GetGameTimer() then
                                        AddExplosion(
                                            coords.x + 1,
                                            coords.y + 1,
                                            coords.z + 1,
                                            16,
                                            100.0,
                                            bypasszinhazz,
                                            bypasszinhaaa,
                                            0.0
                                        )
                                    end
                                    if IsDisabledControlJustPressed(0, 69) and weapondelay <= GetGameTimer() then
                                        AddExplosion(
                                            coords.x + 1,
                                            coords.y + 1,
                                            coords.z + 1,
                                            16,
                                            100.0,
                                            bypasszinhazz,
                                            bypasszinhaaa,
                                            0.0
                                        )
                                        GiveWeaponToPed(
                                            PlayerPedId(),
                                            bypasszinhaff("WEAPON_UNARMED"),
                                            120,
                                            bypasszinhaaa,
                                            bypasszinhaaa
                                        )
                                        RequestWeaponAsset(bypasszinhaff("WEAPON_UNARMED"))
                                        while not HasWeaponAssetLoaded(bypasszinhaff("WEAPON_UNARMED")) do
                                            bypasszinhatt(0)
                                        end
                                        ShootSingleBulletBetweenCoords(
                                            GetCamCoord(camera) + RotationToDirection(GetCamRot(camera, 2)),
                                            coords,
                                            0,
                                            bypasszinhaaa,
                                            bypasszinhaff("WEAPON_UNARMED"),
                                            0,
                                            bypasszinhaaa,
                                            bypasszinhazz,
                                            bypasszinhaaa,
                                            -1.0
                                        )
                                        weapondelay = GetGameTimer() + 50
                                    end
                                end
                            end
                            if currentmode == "ShockWave" then
                                bypasszinhagg(0, 32, bypasszinhazz) -- W
                                bypasszinhagg(0, 31, bypasszinhazz) -- S
                                bypasszinhagg(0, 30, bypasszinhazz) -- D
                                bypasszinhagg(0, 34, bypasszinhazz) -- A
                                bypasszinhagg(0, 71, bypasszinhazz) -- W
                                bypasszinhagg(0, 72, bypasszinhazz) -- S
                                bypasszinhagg(0, 63, bypasszinhazz) -- D
                                bypasszinhagg(0, 64, bypasszinhazz) -- A
                                local weapondelay = 0
                                if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                    if IsDisabledControlPressed(1, 68) and weapondelay <= GetGameTimer() then
                                        AddExplosion(
                                            coords.x + 1,
                                            coords.y + 1,
                                            coords.z + 1,
                                            70,
                                            100.0,
                                            bypasszinhazz,
                                            bypasszinhaaa,
                                            0.0
                                        )
                                    end
                                    if IsDisabledControlJustPressed(0, 69) and weapondelay <= GetGameTimer() then
                                        AddExplosion(
                                            coords.x + 1,
                                            coords.y + 1,
                                            coords.z + 1,
                                            70,
                                            100.0,
                                            bypasszinhazz,
                                            bypasszinhaaa,
                                            0.0
                                        )
                                        RequestWeaponAsset(bypasszinhaff("WEAPON_RAYPISTOL"))
                                        while not HasWeaponAssetLoaded(bypasszinhaff("WEAPON_RAYPISTOL")) do
                                            bypasszinhatt(0)
                                        end
                                        ShootSingleBulletBetweenCoords(
                                            GetCamCoord(camera) + RotationToDirection(GetCamRot(camera, 2)),
                                            coords,
                                            0,
                                            bypasszinhaaa,
                                            bypasszinhaff("WEAPON_RAYPISTOL"),
                                            0,
                                            bypasszinhaaa,
                                            bypasszinhazz,
                                            bypasszinhaaa,
                                            -1.0
                                        )
                                        weapondelay = GetGameTimer() + 50
                                    end
                                end
                            end
                            if currentmode == "Taze" then
                                local weapondelay = 0
                                if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                    bypasszinhagg(0, 32, bypasszinhazz) -- W
                                    bypasszinhagg(0, 31, bypasszinhazz) -- S
                                    bypasszinhagg(0, 30, bypasszinhazz) -- D
                                    bypasszinhagg(0, 34, bypasszinhazz) -- A
                                    bypasszinhagg(0, 71, bypasszinhazz) -- W
                                    bypasszinhagg(0, 72, bypasszinhazz) -- S
                                    bypasszinhagg(0, 63, bypasszinhazz) -- D
                                    bypasszinhagg(0, 64, bypasszinhazz) -- A
                                    if IsDisabledControlPressed(1, 68) and weapondelay <= GetGameTimer() then
                                        RequestWeaponAsset(bypasszinhaff("WEAPON_STUNGUN"))
                                        while not HasWeaponAssetLoaded(bypasszinhaff("WEAPON_STUNGUN")) do
                                            bypasszinhatt(0)
                                        end
                                        ShootSingleBulletBetweenCoords(
                                            GetCamCoord(camera) + RotationToDirection(GetCamRot(camera, 2)),
                                            coords,
                                            0,
                                            bypasszinhaaa,
                                            bypasszinhaff("WEAPON_STUNGUN"),
                                            0,
                                            bypasszinhaaa,
                                            bypasszinhazz,
                                            bypasszinhaaa,
                                            -1.0
                                        )
                                    end
                                    if IsDisabledControlJustPressed(0, 69) and weapondelay <= GetGameTimer() then
                                        RequestWeaponAsset(bypasszinhaff("WEAPON_STUNGUN"))
                                        while not HasWeaponAssetLoaded(bypasszinhaff("WEAPON_STUNGUN")) do
                                            bypasszinhatt(0)
                                        end
                                        ShootSingleBulletBetweenCoords(
                                            GetCamCoord(camera) + RotationToDirection(GetCamRot(camera, 2)),
                                            coords,
                                            0,
                                            bypasszinhaaa,
                                            bypasszinhaff("WEAPON_STUNGUN"),
                                            0,
                                            bypasszinhaaa,
                                            bypasszinhazz,
                                            bypasszinhaaa,
                                            -1.0
                                        )
                                        weapondelay = GetGameTimer() + 50
                                    end
                                end
                            end
                            if currentmode == "Ped Spawner" then
                                bypasszinhagg(0, 32, bypasszinhazz) -- W
                                bypasszinhagg(0, 31, bypasszinhazz) -- S
                                bypasszinhagg(0, 30, bypasszinhazz) -- D
                                bypasszinhagg(0, 34, bypasszinhazz) -- A
                                bypasszinhagg(0, 71, bypasszinhazz) -- W
                                bypasszinhagg(0, 72, bypasszinhazz) -- S
                                bypasszinhagg(0, 63, bypasszinhazz) -- D
                                bypasszinhagg(0, 64, bypasszinhazz) -- A
                                if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                    if IsDisabledControlPressed(1, 68) then
                                        local pedTable = {
                                            "s_m_y_armymech_01",
                                            "s_m_y_blackops_01",
                                            "s_m_m_marine_01",
                                            "s_m_y_blackops_03",
                                            "s_m_y_blackops_02"
                                        }
                                        local randomPed = (pedTable[bypasszinhapp.random(#pedTable)])
                                        if not HasModelLoaded(bypasszinhaff(randomPed)) then
                                            RequestModel(bypasszinhaff(randomPed))
                                        end
                                        bypasszinhatt(5)
                                        local ped =
                                            CreatePed(
                                            3,
                                            bypasszinhaff(randomPed),
                                            coords.x,
                                            coords.y,
                                            coords.z - 0.5,
                                            bypasszinhazz,
                                            bypasszinhazz
                                        )
                                        SetEntityInvincible(ped, bypasszinhazz)
                                        GiveWeaponToPed(ped, bypasszinhaff("WEAPON_CARBINERIFLE_MK2"), 200, 1, 1)
                                        for k, i in pairs(GetActivePlayers()) do
                                            TaskCombatPed(ped, GetPlayerPed(i), 0, 16)
                                        end
                                    end
                                end
                                if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                    if IsDisabledControlJustPressed(0, 69) then
                                        local pedTable = {
                                            "s_m_y_armymech_01",
                                            "s_m_y_blackops_01",
                                            "s_m_m_marine_01",
                                            "s_m_y_blackops_03",
                                            "s_m_y_blackops_02"
                                        }
                                        local randomPed = (pedTable[bypasszinhapp.random(#pedTable)])
                                        if not HasModelLoaded(bypasszinhaff(randomPed)) then
                                            RequestModel(bypasszinhaff(randomPed))
                                        end
                                        bypasszinhatt(5)
                                        local ped =
                                            CreatePed(
                                            3,
                                            bypasszinhaff(randomPed),
                                            coords.x,
                                            coords.y,
                                            coords.z - 0.5,
                                            bypasszinhazz,
                                            bypasszinhazz
                                        )
                                        SetEntityInvincible(ped, bypasszinhazz)
                                        GiveWeaponToPed(ped, bypasszinhaff("WEAPON_CARBINERIFLE"), 200, 1, 1)
                                        for k, i in pairs(GetActivePlayers()) do
                                            TaskCombatPed(ped, GetPlayerPed(i), 0, 16)
                                        end
                                    end
                                end
                            end
                            if currentmode == "Animal Spawner" then
                                bypasszinhagg(0, 32, bypasszinhazz) -- W
                                bypasszinhagg(0, 31, bypasszinhazz) -- S
                                bypasszinhagg(0, 30, bypasszinhazz) -- D
                                bypasszinhagg(0, 34, bypasszinhazz) -- A
                                bypasszinhagg(0, 71, bypasszinhazz) -- W
                                bypasszinhagg(0, 72, bypasszinhazz) -- S
                                bypasszinhagg(0, 63, bypasszinhazz) -- D
                                bypasszinhagg(0, 64, bypasszinhazz) -- A
                                if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                    if IsDisabledControlPressed(1, 68) then
                                        local animalTable = {
                                            "a_c_boar",
                                            "a_c_dolphin",
                                            "a_c_killerwhale",
                                            "a_c_retriever",
                                            "a_c_pig",
                                            "a_c_cow",
                                            "a_c_humpback"
                                        }
                                        local animal = (animalTable[bypasszinhapp.random(#animalTable)])
                                        if not HasModelLoaded(bypasszinhaff(animal)) then
                                            RequestModel(bypasszinhaff(animal))
                                        end
                                        CreatePed(
                                            3,
                                            bypasszinhaff(animal),
                                            coords.x,
                                            coords.y,
                                            coords.z,
                                            bypasszinhazz,
                                            bypasszinhazz
                                        )
                                    end
                                end
                                if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                    if IsDisabledControlJustPressed(0, 69) then
                                        local animalTable = {
                                            "a_c_boar",
                                            "a_c_dolphin",
                                            "a_c_killerwhale",
                                            "a_c_retriever",
                                            "a_c_pig",
                                            "a_c_cow",
                                            "a_c_humpback"
                                        }
                                        local animal = (animalTable[bypasszinhapp.random(#animalTable)])
                                        if not HasModelLoaded(bypasszinhaff(animal)) then
                                            RequestModel(bypasszinhaff(animal))
                                        end
                                        RequestModel(animal)
                                        CreatePed(
                                            3,
                                            bypasszinhaff(animal),
                                            coords.x,
                                            coords.y,
                                            coords.z,
                                            bypasszinhazz,
                                            bypasszinhazz
                                        )
                                    end
                                end
                            end
                            if currentmode == "Olhar em Volta" then
                                bypasszinhagg(0, 32, bypasszinhazz) -- W
                                bypasszinhagg(0, 31, bypasszinhazz) -- S
                                bypasszinhagg(0, 30, bypasszinhazz) -- D
                                bypasszinhagg(0, 34, bypasszinhazz) -- A
                                bypasszinhagg(0, 71, bypasszinhazz) -- W
                                bypasszinhagg(0, 72, bypasszinhazz) -- S
                                bypasszinhagg(0, 63, bypasszinhazz) -- D
                                bypasszinhagg(0, 64, bypasszinhazz) -- A
                                if IsDisabledControlJustPressed(0, 69) then
                                    if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                    end
                                end
                            end
                            if currentmode == "Teleport" then
                                bypasszinhagg(0, 32, bypasszinhazz) -- W
                                bypasszinhagg(0, 31, bypasszinhazz) -- S
                                bypasszinhagg(0, 30, bypasszinhazz) -- D
                                bypasszinhagg(0, 34, bypasszinhazz) -- A
                                bypasszinhagg(0, 71, bypasszinhazz) -- W
                                bypasszinhagg(0, 72, bypasszinhazz) -- S
                                bypasszinhagg(0, 63, bypasszinhazz) -- D
                                bypasszinhagg(0, 64, bypasszinhazz) -- A
                                if IsDisabledControlJustPressed(0, 69) then
                                    if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                        SetEntityCoords(PlayerPedId(), coords)
                                    end
                                end
                            end
                            if currentmode == "Aviao Spawner" then
                                bypasszinhagg(0, 32, bypasszinhazz) -- W
                                bypasszinhagg(0, 31, bypasszinhazz) -- S
                                bypasszinhagg(0, 30, bypasszinhazz) -- D
                                bypasszinhagg(0, 34, bypasszinhazz) -- A
                                bypasszinhagg(0, 71, bypasszinhazz) -- W
                                bypasszinhagg(0, 72, bypasszinhazz) -- S
                                bypasszinhagg(0, 63, bypasszinhazz) -- D
                                bypasszinhagg(0, 64, bypasszinhazz) -- A
                                if IsDisabledControlJustPressed(0, 69) then
                                    if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                        local vehicles = {"Jet", "Cargoplane", "Titan", "Cuban800"}
                                        local hash = bypasszinhaff(vehicles[bypasszinhapp.random(#vehicles)])
                                        if not HasModelLoaded(hash) then
                                            RequestModel(hash)
                                        end
                                        local veh = CreateVehicle(hash, coords, 1, 1, 1)
                                    end
                                end
                                if IsDisabledControlPressed(1, 68) then
                                    if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                        local vehicles = {"Jet", "Cargoplane"}
                                        local hash = bypasszinhaff(vehicles[bypasszinhapp.random(#vehicles)])
                                        if not HasModelLoaded(hash) then
                                            RequestModel(hash)
                                        end
                                        local veh = CreateVehicle(hash, coords, 1, 1, 1)
                                    end
                                end
                            end
                            if currentmode == "Particula Spawner" then
                                bypasszinhagg(0, 32, bypasszinhazz) -- W
                                bypasszinhagg(0, 31, bypasszinhazz) -- S
                                bypasszinhagg(0, 30, bypasszinhazz) -- D
                                bypasszinhagg(0, 34, bypasszinhazz) -- A
                                bypasszinhagg(0, 71, bypasszinhazz) -- W
                                bypasszinhagg(0, 72, bypasszinhazz) -- S
                                bypasszinhagg(0, 63, bypasszinhazz) -- D
                                bypasszinhagg(0, 64, bypasszinhazz) -- A
                                if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                    if IsDisabledControlJustPressed(0, 69) then
                                        RequestNamedPtfxAsset("scr_rcbarry2")
                                        UseParticleFxAssetNextCall("scr_rcbarry2")
                                        StartNetworkedParticleFxNonLoopedAtCoord(
                                            "scr_clown_appears",
                                            coords,
                                            0.0,
                                            0.0,
                                            0.0,
                                            21.0,
                                            bypasszinhaaa,
                                            bypasszinhaaa,
                                            bypasszinhaaa
                                        )
                                        RequestNamedPtfxAsset("scr_rcbarry2")
                                        UseParticleFxAssetNextCall("core")
                                        StartNetworkedParticleFxNonLoopedAtCoord(
                                            "veh_respray_smoke",
                                            coords,
                                            0.0,
                                            0.0,
                                            0.0,
                                            21.0,
                                            bypasszinhaaa,
                                            bypasszinhaaa,
                                            bypasszinhaaa
                                        )
                                        RequestNamedPtfxAsset("core")
                                        UseParticleFxAssetNextCall("core")
                                        StartNetworkedParticleFxNonLoopedAtCoord(
                                            "ent_sht_petrol_fire",
                                            coords,
                                            0.0,
                                            0.0,
                                            0.0,
                                            21.0,
                                            bypasszinhaaa,
                                            bypasszinhaaa,
                                            bypasszinhaaa
                                        )
                                        RequestNamedPtfxAsset("scr_rcbarry2")
                                        UseParticleFxAssetNextCall("scr_rcbarry2")
                                        StartNetworkedParticleFxNonLoopedAtCoord(
                                            "scr_clown_bul",
                                            coords,
                                            0.0,
                                            0.0,
                                            0.0,
                                            21.0,
                                            bypasszinhaaa,
                                            bypasszinhaaa,
                                            bypasszinhaaa
                                        )
                                    end
                                    if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                        if IsDisabledControlPressed(1, 68) then
                                            RequestNamedPtfxAsset("scr_rcbarry2")
                                            UseParticleFxAssetNextCall("scr_rcbarry2")
                                            StartNetworkedParticleFxNonLoopedAtCoord(
                                                "scr_clown_appears",
                                                coords,
                                                0.0,
                                                0.0,
                                                0.0,
                                                21.0,
                                                bypasszinhaaa,
                                                bypasszinhaaa,
                                                bypasszinhaaa
                                            )
                                            RequestNamedPtfxAsset("scr_rcbarry2")
                                            UseParticleFxAssetNextCall("core")
                                            StartNetworkedParticleFxNonLoopedAtCoord(
                                                "veh_respray_smoke",
                                                coords,
                                                0.0,
                                                0.0,
                                                0.0,
                                                21.0,
                                                bypasszinhaaa,
                                                bypasszinhaaa,
                                                bypasszinhaaa
                                            )
                                            RequestNamedPtfxAsset("core")
                                            UseParticleFxAssetNextCall("core")
                                            StartNetworkedParticleFxNonLoopedAtCoord(
                                                "ent_sht_petrol_fire",
                                                coords,
                                                0.0,
                                                0.0,
                                                0.0,
                                                21.0,
                                                bypasszinhaaa,
                                                bypasszinhaaa,
                                                bypasszinhaaa
                                            )
                                            RequestNamedPtfxAsset("scr_rcbarry2")
                                            UseParticleFxAssetNextCall("scr_rcbarry2")
                                            StartNetworkedParticleFxNonLoopedAtCoord(
                                                "scr_clown_bul",
                                                coords,
                                                0.0,
                                                0.0,
                                                0.0,
                                                21.0,
                                                bypasszinhaaa,
                                                bypasszinhaaa,
                                                bypasszinhaaa
                                            )
                                        end
                                    end
                                end
                            end
                            if currentmode == "Deletar Entidade" then
                                bypasszinhagg(0, 32, bypasszinhazz) -- W
                                bypasszinhagg(0, 31, bypasszinhazz) -- S
                                bypasszinhagg(0, 30, bypasszinhazz) -- D
                                bypasszinhagg(0, 34, bypasszinhazz) -- A
                                bypasszinhagg(0, 71, bypasszinhazz) -- W
                                bypasszinhagg(0, 72, bypasszinhazz) -- S
                                bypasszinhagg(0, 63, bypasszinhazz) -- D
                                bypasszinhagg(0, 64, bypasszinhazz) -- A
                                if coords ~= vector3(0, 0, 0) and not DisplayMenu then
                                    if IsDisabledControlJustPressed(0, 69) then
                                        if DoesEntityExist(entity) and not IsPedAPlayer(entity) then
                                            DeleteAllShits(entity)
                                        end
                                    end
                                    if IsDisabledControlPressed(1, 68) then
                                        if DoesEntityExist(entity) and not IsPedAPlayer(entity) then
                                            DeleteAllShits(entity)
                                        end
                                    end
                                end
                            end
                            if coords ~= vector3(0, 0, 0) then
                                bypasszinhauu(0.5, 0.932, 0.21, 0.0254, 10, 10, 10, 250)
                                local abc =
                                    getWidth(
                                    "[~b~BielX Menu ~w~| ~y~Freecam~w~]  ~p~" ..
                                        currentmode .. "  ~w~X:~g~" .. cx .. " ~w~Y:~g~" .. cy .. " ~w~Z:~g~" .. cz,
                                    4,
                                    0.5
                                )
                                local rX, rY = GetActiveScreenResolution()
                                bypasszinhall(
                                    "[~b~BielX Menu ~w~| ~y~Freecam~w~]  ~p~" ..
                                        currentmode .. "  ~w~X:~g~" .. cx .. " ~w~Y:~g~" .. cy .. " ~w~Z:~g~" .. cz,
                                    0.5,
                                    0.931,
                                    0.3,
                                    4,
                                    bypasszinhazz,
                                    bypasszinhazz,
                                    255,
                                    255,
                                    255
                                )
                            else
                                bypasszinhauu(0.5, 0.932, 0.21, 0.0254, 10, 10, 10, 250)
                                local abc =
                                    getWidth(
                                    "[~b~BielX Menu ~w~| ~y~Freecam~w~]  ~p~" .. currentmode .. "  ~r~Fora do Alcance!",
                                    4,
                                    0.5
                                )
                                local rX, rY = GetActiveScreenResolution()
                                bypasszinhall(
                                    "[~b~BielX Menu ~w~| ~y~Freecam~w~]  ~p~" .. currentmode .. "  ~r~Fora do Alcance!",
                                    0.5,
                                    0.931,
                                    0.3,
                                    4,
                                    bypasszinhazz,
                                    bypasszinhazz,
                                    255,
                                    255,
                                    255
                                )
                            end
                            if IsDisabledControlJustPressed(1, 14) then
                                freecam.mode = freecam.mode + 1
                                if freecam.mode > #freecam.modes then
                                    freecam.mode = 1
                                end
                            end
                            if IsDisabledControlJustPressed(1, 15) then
                                freecam.mode = freecam.mode - 1
                                if freecam.mode < 1 then
                                    freecam.mode = #freecam.modes
                                end
                            end
                            SetFocusPosAndVel(
                                GetCamCoord(camera).x,
                                GetCamCoord(camera).y,
                                GetCamCoord(camera).z,
                                0.0,
                                0.0,
                                0.0
                            )
                            SetCamRot(camera, offsetRotX, offsetRotY, offsetRotZ, 2)
                        end
                    end
                end
            end
        end
    end
)
    function bY(x, y, z, b7, r, g, b)
        SetDrawOrigin(x, y, z, 0)
        SetTextFont(0)
        SetTextProportional(0)
        SetTextScale(0.0, 0.22)
        SetTextColour(255, 0,255,255)
        SetTextOutline()
        BeginTextCommandDisplayText("STRING")
        SetTextCentre(1)
        AddTextComponentSubstringPlayerName(b7)
        EndTextCommandDisplayText(0.0, 0.0)
        ClearDrawOrigin()
        end   
        function bu(bv)
            for l = 1, #bt do
            if GetHashKey(bt[l]) == bv then
            return string.sub(bt[l], 8)
            end
            end
            end
            
            function bw(x, y, z, m, r, g, b)
            SetDrawOrigin(x, y, z, 0)
            SetTextFont(0)
            SetTextProportional(0)
            SetTextScale(0.0, 0.22)
            SetTextColour(255, 0, 255, 255)
            SetTextOutline()
            BeginTextCommandDisplayText("STRING")
            SetTextCentre(1)
            AddTextComponentSubstringPlayerName(m)
            EndTextCommandDisplayText(0.0, 0.0)
            ClearDrawOrigin()
            end
            
            if esp_boundingbox then
            local dE = GetActivePlayers()
            for l = 1, #dE do
            local dw = GetPlayerPed(dE[l])
            bone = GetEntityBoneIndexByName(dw, "SKEL_HEAD")
            x, y, z = table.unpack(GetPedBoneCoords(dw, bone, 0.0, 0.0, 0.0))
            px, py, pz = table.unpack(GetGameplayCamCoord())
            if GetDistanceBetweenCoords(x, y, z, px, py, pz, bypasszinhazz) < 1000.0 then
            if dw ~= PlayerPedId() and IsEntityOnScreen(dw) and not IsPedDeadOrDying(dw) then
            z = z + 0.9
            local dF = GetDistanceBetweenCoords(x, y, z, px, py, pz, bypasszinhazz) * 0.002 / 2
            if dF < 0.0042 then
            dF = 0.0042
            end
            retval, _x, _y = GetScreenCoordFromWorldCoord(x, y, z)
            width = 0.00045
            height = 0.0023
            bypasszinhayy(_x, _y, width / dF, 0.0015, esp_box_cor.r, esp_box_cor.g, esp_box_cor.b, 200)
            bypasszinhayy(_x, _y + height / dF, width / dF, 0.0015, 255, 0, 255, 200)
            bypasszinhayy(_x + width / 2 / dF, _y + height / 2 / dF, 0.001, height / dF, esp_box_cor.r, esp_box_cor.g, esp_box_cor.b, 200)
            bypasszinhayy(_x - width / 2 / dF, _y + height / 2 / dF, 0.001, height / dF, esp_box_cor.r, esp_box_cor.g, esp_box_cor.b, 200)
            health = GetEntityHealth(dw)
            bypasszinhayy(
            _x - 0.00028 / dF,
            _y + height / 2 / dF,
            0.0016 / dF * 0.015,
            height / dF,
            0,
            0,
            0,
            200
            )
            if GetEntityHealth(dw) <= 150 then
            bypasszinhayy(
            _x - 0.00028 / dF,
            _y + height / dF - GetEntityHealth(dw) / 175000 / dF,
            0.0016 / dF * 0.015,
            GetEntityHealth(dw) / 87500 / dF,
            0,
            200,
            6,
            255
            )
            else
            bypasszinhayy(
            _x - 0.00028 / dF,
            _y + height / dF - GetEntityHealth(dw) / 175000 / dF,
            0.0016 / dF * 0.015,
            GetEntityHealth(dw) / 87500 / dF,
            0,
            200,
            6,
            255
            )
            end
            bypasszinhayy(
            _x - 0.00033 / dF,
            _y + height / dF - GetPedArmour(dw) * 2 / 175000 / dF,
            0.0016 / dF * 0.015,
            GetPedArmour(dw) * 2 / 87500 / dF,
            0,
            255,
            0,
            255
            )
            end
            end
            end
            end  
if esp_linhas then
    for i = 1, 255 do
        if i ~= PlayerId() and GetActivePlayers() and GetPlayerServerId(i) ~= 0 then
            local myped = GetPlayerPed(i)
            local Selfx, Selfy, Selfz = table.unpack(GetEntityCoords(PlayerPedId()))
            local x, y, z = table.unpack(GetEntityCoords(myped))
            local distance = #(vector3(Selfx, Selfy, Selfz) - vector3(x, y, z))
            if distance < 120 then
                if esp_linhass then
                    if HasEntityClearLosToEntity(PlayerPedId(), myped, 19) then 
                       local r, g, b = esp_linhas_cor.r, esp_linhas_cor.g, esp_linhas_cor.b            
                       DrawLine(Selfx,Selfy,Selfz,x,y,z,r,g,b,255)
                    else
                        local r, g, b = esp_linhas_cor.r, esp_linhas_cor.g, esp_linhas_cor.b
                        DrawLine(Selfx,Selfy,Selfz,x,y,z,r,g,b,255)
                    end
                else
                    local r, g, b = esp_linhas_cor.r, esp_linhas_cor.g, esp_linhas_cor.b
                    DrawLine(Selfx,Selfy,Selfz,x,y,z,r,g,b,255)
                end
            end
        end
    end       
end            
if autoreparar then
    Citizen.InvokeNative(
        0x115722B1B9C14C1C,
        Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), bypasszinhaaa)
    )
    Citizen.InvokeNative(
        0x79D3B596FE44EE8B,
        Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), bypasszinhaaa),
        0.0
    )
    Citizen.InvokeNative(
        0x34E710FF01247C5A,
        Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), bypasszinhaaa),
        0
    )
    Citizen.InvokeNative(
        0xFB8794444A7D60FB,
        Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), bypasszinhaaa),
        bypasszinhaaa
    )
    Citizen.InvokeNative(
        0x1FD09E7390A74D54,
        Citizen.InvokeNative(0x9A9112A0FE9A4713, Citizen.InvokeNative(0x43A66C31C68491C0, -1), bypasszinhaaa),
        0
    )
end
local mqcu_e_meu_pau = {
    closed = bypasszinhazz,
    key = 10,
    entityEnumerator = {
        __gc = function(enum)
            if enum.destructor and enum.handle then
                enum.destructor(enum.handle)
            end
            enum.destructor = bypasszinhass
            enum.handle = bypasszinhass
        end
    }
}
function mqcu_e_meu_pau:enumerate_vehicles()
    return coroutine.wrap(
        function()
            local iter, id = FindFirstVehicle()
            if not id or id == 0 then
                EndFindVehicle(iter)
                return
            end
            local enum = {handle = iter, destructor = EndFindVehicle}
            setmetatable(enum, mqcu_e_meu_pau.entityEnumerator)
            local next = bypasszinhazz
            repeat
                coroutine.yield(id)
                next, id = FindNextVehicle(iter)
            until not next
            enum.destructor, enum.handle = bypasszinhass, bypasszinhass
            EndFindVehicle(iter)
        end
    )
end
function mqcu_e_meu_pau:rectangle(x, y, w, h, r, g, b, a)
    local resx, resy = GetActiveScreenResolution()
    local rectw, recth = w / resx, h / resy
    local rectx, recty = x / resx + rectw / 2, y / resy + recth / 2
    bypasszinhauu(rectx, recty, rectw, recth, r, g, b, a)
end
function Explose(player)
    local ped = GetPlayerPed(player)
    local tLoc = GetEntityCoords(ped)
    local destination = GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
    local origin = GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)
    ShootSingleBulletBetweenCoords(
        origin,
        destination,
        1,
        bypasszinhazz,
        "WEAPON_STUNGUN",
        PlayerPedId(),
        bypasszinhazz,
        bypasszinhaaa,
        1.0
    )
end
function mqcu_e_meu_pau:text(text, font, centered, x, y, scale, r, g, b, a)
    local resx, resy = GetActiveScreenResolution()
    SetTextFont(font)
    SetTextScale(scale, scale)
    SetTextCentre(centered)
    SetTextColour(r, g, b, a)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayText(x / resx, y / resy)
end
function mqcu_e_meu_pau:hovered(x, y, w, h)
    local mousex, mousey = GetNuiCursorPosition()
    if mousex >= x and mousex <= x + w and mousey >= y and mousey <= y + h then
        return bypasszinhazz
    else
        return bypasszinhaaa
    end
end
function mqcu_e_meu_pau:button(name, xx, yy, r, g, b)
    local x, y = GetNuiCursorPosition()
    mqcu_e_meu_pau:text(name, 4, 0, xx, yy + 8, 0.3, 255, 255, 255, 255)
    if mqcu_e_meu_pau:hovered(xx, yy + 8, 100, 18) then
        if IsDisabledControlPressed(0, 92) then
            mqcu_e_meu_pau:text(name, 4, 0, xx, yy + 8, 0.3, r, g, b, 255)
        end
        if IsDisabledControlJustPressed(0, 92) then
            return bypasszinhazz
        end
    else
        return bypasszinhaaa
    end
end
function KeyInput(TextEntry, ExampleText, MaxStringLength)
    Citizen.InvokeNative(0x32CA01C3, "FMMC_KEY_TIP1", "~b~" .. TextEntry .. ":")
    Citizen.InvokeNative(0x00DC833F2568DBF6, 1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
    blockinput_dihgs8ourigdfg = bypasszinhazz
    while Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 1 and Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 2 do
        bypasszinhatt(0)
    end
    if Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 2 then
        local dfjs8erfdfg = GetOnscreenKeyboardResult()
        bypasszinhatt(500)
        blockinput_dihgs8ourigdfg = bypasszinhaaa
        return dfjs8erfdfg
    else
        bypasszinhatt(500)
        blockinput_dihgs8ourigdfg = bypasszinhaaa
        return bypasszinhass
    end
end
function mqcu_e_meu_pau:rainbow(speed)
    local return_values = {}
    local game_timer = GetGameTimer() / 200
    return_values.r = bypasszinhapp.floor(bypasszinhapp.sin(game_timer * speed + 0) * 127 + 128)
    return_values.g = bypasszinhapp.floor(bypasszinhapp.sin(game_timer * speed + 2) * 127 + 128)
    return_values.b = bypasszinhapp.floor(bypasszinhapp.sin(game_timer * speed + 4) * 127 + 128)
    return return_values
end
Citizen.CreateThread(
    function()
        while bypasszinhazz do
            if IsDisabledControlJustPressed(1, mqcu_e_meu_pau.key) then
                mqcu_e_meu_pau.closed = not mqcu_e_meu_pau.closed
            end
            if mqcu_e_meu_pau.closed == bypasszinhaaa then
                local rainbow = mqcu_e_meu_pau:rainbow(1.0)
                mqcu_e_meu_pau:rectangle(19, 19, 152, 502, corzinhadomeni.r, corzinhadomeni.g, corzinhadomeni.b, 255)
                mqcu_e_meu_pau:rectangle(20, 20, 150, 500, 0, 0, 0, 255)
                local x, y = GetNuiCursorPosition()
                local i = 0
                for veh in mqcu_e_meu_pau:enumerate_vehicles() do
                    if IsEntityDead(veh) then
                        i = i + 1
                        if
                            mqcu_e_meu_pau:button(
                                GetDisplayNameFromVehicleModel(GetEntityModel(veh)) .. "  [~r~Destroido~w~]",
                                25,
                                i * 16,
                                255,
                                255,
                                255
                            )
                         then
                            SetVehicleFixed(veh)
                            SetPedIntoVehicle(GetPlayerPed(-1), veh, -1)
                        end
                    else
                        if GetPedInVehicleSeat(veh, -1) == 0 then
                            i = i + 1
                            if
                                mqcu_e_meu_pau:button(
                                    GetDisplayNameFromVehicleModel(GetEntityModel(veh)) .. "  [~g~Liberado~w~]",
                                    25,
                                    i * 16,
                                    255,
                                    255,
                                    255
                                )
                             then
                                SetPedIntoVehicle(GetPlayerPed(-1), veh, -1)
                            end
                        end
                    end
                end
                mqcu_e_meu_pau:rectangle(x, y, 5, 5, corzinhadomeni.r, corzinhadomeni.g, corzinhadomeni.b, 255)
            end
            bypasszinhatt(0)
        end
    end
)