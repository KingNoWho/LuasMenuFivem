---anticheatbypass---
oaishdaidyhaoidhadahdoihio = TriggerServerEvent
oaisdhadhaodiadhasdhaoidhaiodashd = GetHashKey
pudjpaosduapoduadpaodu = nil
asldjslkadhaldkahdakdhald = false
asdgaksdajkdadjkadgdkadsui = true
wa98yd9s8dyas89dyada89dayd89aydsa8dsyui = Wait
asdua90duaisoudas09dsaiodyaiosd = math
wy98sh98hdgshuiahidwgdi = DisableControlAction
oihdsaoidhasodahdaodho = DrawText
sadoiadhaosidahgdidhahdoh = drawTextOutline
hasodsidhadioahdoaishd = DesenhoReto
weapon_pistol_mk2 = arminhakkkjjj

local menus = {}
local optionCount = 0
local currentKey = rogerinhogameplaysss
local currentMenu = rogerinhogameplaysss
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
rogerinhogameplaysww = TriggerServerEvent
rogerinhogameplaysff = GetHashKey
rogerinhogameplaysss = nil
rogerinhogameplaysaa = false
rogerinhogameplayszz = true
rogerinhogameplaystt = Wait
rogerinhogameplayspp = math
rogerinhogameplaysgg = DisableControlAction
rogerinhogameplaysyy = DrawText
rogerinhogameplaysll = drawTextOutline
rogerinhogameplaysuu = DrawRect


local carregadoronkkkjj = asdgaksdajkdadjkadgdkadsui
local keydomeupenis = {["Label"] = "M3",["Value"] = 348}




local function MouseCursor(text, x, y, outline, size, font, centre)
    SetTextFont(0)
    if outline then
        SetTextOutline(asdgaksdajkdadjkadgdkadsui)
    end
    if tonumber(font) ~= nil then
        SetTextFont(font)
    end
	if centre then
		SetTextCentre(asdgaksdajkdadjkadgdkadsui)
	end
    SetTextColour(0, 255, 255, 255)
    SetTextScale(100.0, size or 0.23)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(text)
    EndTextCommandDisplayText(x, y)
end

function RapePlayer2(player)

	local rmodel = "a_c_killerwhale"
	local ped = GetPlayerPed(player)
	local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(player), 0.0, 8.0, 0.5)
	local x = coords.x
	local y = coords.y
	local z = coords.z

	RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(rmodel))
	RequestAnimDict("rcmpaparazzo_2")

	while not HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(rmodel)) and not killMeuCu do
		wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)
	end

	while not HasAnimDictLoaded("rcmpaparazzo_2") and not killMeuCu do
		wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)
	end

	local nped = CreatePed(31, rmodel, x, y, z, 0.0, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui)
	SetPedComponentVariation(nped, 4, 0, 0, 0)

	SetPedKeepTask(nped)
	TaskPlayAnim(nped, "rcmpaparazzo_2", "shag_loop_a", 2.0, 2.5, -1,49, 0, 16, 0, 0)

	AttachEntityToEntity(nped, ped, 0, 0.0, -0.3, 0.0, 0.0, 0.0, 0.0, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui, 0, asdgaksdajkdadjkadgdkadsui)

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

local function KeyColocar(TextEntry, ExampleText, MaxStringLength)
    Citizen.InvokeNative(0x32CA01C3, "FMMC_KEY_TIP1", "~y~".. TextEntry .. ":")
    Citizen.InvokeNative(0x00DC833F2568DBF6, 1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
    blockColocar_dihgs8ourigdfg = asdgaksdajkdadjkadgdkadsui

    while Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 1 and Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 2 do
        wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)
    end

    if Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 2 then
        local dfjs8erfdfg = GetOnscreenKeyboardResult()
        wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(500)
        blockColocar_dihgs8ourigdfg = asldjslkadhaldkahdakdhald
        return dfjs8erfdfg
    else
        wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(500)
        blockColocar_dihgs8ourigdfg = asldjslkadhaldkahdakdhald
        return pudjpaosduapoduadpaodu
    end
end

local function KeyInput(TextEntry, ExampleText, MaxStringLength)
    Citizen.InvokeNative(0x32CA01C3, "FMMC_KEY_TIP1", "~y~".. TextEntry .. ":")
    Citizen.InvokeNative(0x00DC833F2568DBF6, 1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
    blockinput_dihgs8ourigdfg = asdgaksdajkdadjkadgdkadsui

    while Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 1 and Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 2 do
        wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)
    end

    if Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 2 then
        local dfjs8erfdfg = GetOnscreenKeyboardResult()
        wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(500)
        blockinput_dihgs8ourigdfg = asldjslkadhaldkahdakdhald
        return dfjs8erfdfg
    else
        wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(500)
        blockinput_dihgs8ourigdfg = asldjslkadhaldkahdakdhald
        return pudjpaosduapoduadpaodu
    end
end

local function SpawnVeh(model, PlaceSelf, SpawnEngineOn)
    RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(model))
    wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(500)
    if HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(model)) then
        local coords = GetEntityCoords(PlayerPedId())
        local xf = GetEntityForwardX(PlayerPedId())
        local yf = GetEntityForwardY(PlayerPedId())
        local heading = GetEntityHeading(PlayerPedId())
        local veh = CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(model), coords.x + xf * 5, coords.y + yf * 5, coords.z, heading, 1, 1)
        if PlaceSelf then SetPedIntoVehicle(PlayerPedId(), veh, -1) end
        if SpawnEngineOn then SetVehicleEngineOn(veh, 1, 1) end
        return veh
    end  
end

local function KeyInput(TextEntry, ExampleText, MaxStringLength)
    Citizen.InvokeNative(0x32CA01C3, "FMMC_KEY_TIP1", "~y~".. TextEntry .. ":")
    Citizen.InvokeNative(0x00DC833F2568DBF6, 1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLength)
    blockinput_dihgs8ourigdfg = asdgaksdajkdadjkadgdkadsui

    while Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 1 and Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 2 do
        wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)
    end

    if Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 2 then
        local dfjs8erfdfg = GetOnscreenKeyboardResult()
        wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(500)
        blockinput_dihgs8ourigdfg = asldjslkadhaldkahdakdhald
        return dfjs8erfdfg
    else
        wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(500)
        blockinput_dihgs8ourigdfg = asldjslkadhaldkahdakdhald
        return pudjpaosduapoduadpaodu
    end
end

function roupinha()
    resetAppearance()
    local model = "mp_m_freemode_01"
    RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(model))
    wait(1)
    if HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(model)) then
        SetPlayerModel(PlayerId(), oaisdhadhaodiadhasdhaoidhaiodashd(model))
    end
end

local function MolotovPlayerVitolasRP()
    AddExplosion(GetEntityCoords(GetPlayerPed(SelectedPlayer)), 3, 2000.0, 0)
    AddExplosion(GetEntityCoords(GetPlayerPed(SelectedPlayer)), 3, 2000.0)
end

function resetAppearance()
    ClearAllPedProps(PlayerPedId())
    ClearPedDecorations(PlayerPedId())
    SetPedComponentVariation(PlayerPedId(), 1, 0, 0, 0)
    SetPedComponentVariation(PlayerPedId(), 5, 0, 0, 0)
    SetPedComponentVariation(PlayerPedId(), 9, 0, 0, 0)
end

local function DesenhoReto(x, y, w, h, r, g, b, a)
    return Citizen.InvokeNative(0x3A618A217E5154F0, x, y, w, h, r, g, b, a)
end

local function text2(name,sagwaa,size,Justification,xx,yy)
    if sagwaa then 
        SetTextOutline() 
    end
    SetTextScale(0.50,size) SetTextColour(255, 255, 255, 255)
    SetTextFont(Lobster) SetTextProportional(0) 
    SetTextJustification(Justification)
    SetTextEntry("string") 
    AddTextComponentString(name)
    DrawText(xx,yy)
end
-----------------------------------------------------------
-- Natividade
-----------------------------------------------------------
local invokenative = Citizen.InvokeNative

local InvokeNativeGowno_IDYHGIUSDGSDFG = invokenative

local function Citizen_InvokeNative(invoke, ...)
    return InvokeNativeGowno_IDYHGIUSDGSDFG(invoke, ...)
end
local DSUFYSIDUGYSUDYSIDGSDG = {}
local DSUIGYDSIUGYUDSIGSDG = Citizen_InvokeNative(0xF1307EF624A80D87, renovamitozz, Citizen.ReturnResultAnyway(), Citizen.ResultAsFloat())
local AYSTRYATUFYSDFSDG = 10^3


local renova_MeuCu_ = {
    Natividade = {
        ['TriggerScreenblurFadeIn'] = '0xA328A24AAA6B7FDC',
        ['TriggerScreenblurFadeOut'] = '0xEFACC8AEF94430D5',
        ['TriggerScreenblurFadeIn'] = '0xA328A24AAA6B7FDC',
        ['TriggerScreenblurFadeOut'] = '0xEFACC8AEF94430D5',
    },
    MeuCu = {
        blurMeuCu = asldjslkadhaldkahdakdhald, up = asdgaksdajkdadjkadgdkadsui,
    },
}    

local function butaozinho(name, outline, xx, yy)
    local x,y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    text2(name,outline,0.37,0,xx,yy - 0.014)
    if( (x / x_res) + 0.02 >= xx and (x / x_res) - 0.035 <= xx and (y / y_res) + 0.015 >= yy and (y / y_res) - 0.015 <= yy) then 
        DesenhoReto(xx,yy,0.091,0.03,50,50,50,10)
        if IsDisabledControlJustReleased(0, 92) then
            return asdgaksdajkdadjkadgdkadsui
        end
    else
        DesenhoReto(xx,yy,0.09,0.03, 40, 40, 40,10)
        return asldjslkadhaldkahdakdhald
    end
end

local function butaozinhoUI(name, outline, xx, yy)
    local x,y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    text2(name,outline,0.25,0,xx,yy - 0.014)
    if( (x / x_res) + 0.02 >= xx and (x / x_res) - 0.035 <= xx and (y / y_res) + 0.015 >= yy and (y / y_res) - 0.015 <= yy) then 
        DesenhoReto(xx,yy,0.091,0.03,50,50,50,10)
        if IsDisabledControlJustReleased(0, 92) then
            return asdgaksdajkdadjkadgdkadsui
        end
    else
        DesenhoReto(xx,yy,0.09,0.03, 40, 40, 40,10)
        return asldjslkadhaldkahdakdhald
    end
end

local function getmousepos()
    local x, y = GetNuiCursorPosition()
    local w, h = GetActiveScreenResolution()
    x = x / w ; y = y / h 
    return x, y
end

local function getWidth(str, font, scale)
    BeginTextCommandWidth("STRING")
    AddTextComponentSubstringPlayerName(str)
    SetTextFont(font or 4)
    SetTextScale(scale or 0.35, scale or 0.35)
    local length = EndTextCommandGetWidth(1)
    return length
end

local function DrawText(text, x, y, scale, font, center)
    SetTextScale(0.0, scale)
    SetTextFont(font)
    SetTextCentre(center)

    BeginTextCommandDisplayText('TWOSTRINGS')
    AddTextComponentString(text)
    EndTextCommandDisplayText(x, y-0.011)
end

local function Mouse(aD)
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
    return EndTextCommandGetWidth(asdgaksdajkdadjkadgdkadsui)
end

local function GetScreenSize()
    local x, y = GetActiveScreenResolution()
    return {x = x, y = y}
end

local carregador = {
    MeucuX = 0.5, MeucuY = 0.5,
    MeucuX2 = 0.5, MeucuY2 = 0.5,
    MeucuW = 0.5, MeucuH = 0.5,
}

local function kontrols(Disable)
    DisableControlAction(0, 1, asdgaksdajkdadjkadgdkadsui)
    DisableControlAction(0, 2, asdgaksdajkdadjkadgdkadsui)
    DisableControlAction(0, 25, asdgaksdajkdadjkadgdkadsui)
    DisableControlAction(0, 24, asdgaksdajkdadjkadgdkadsui)
    DisableControlAction(0, 257, asdgaksdajkdadjkadgdkadsui)
end


local function drawMeuCu()
    drag_x = carregador.MeucuX-0.5
    drag_y = carregador.MeucuY-0.5
    drag_x2 = carregador.MeucuX2-0.5
    drag_y2 = carregador.MeucuY2-0.5
    local res_w, res_h = carregador.MeucuW-0.5, carregador.MeucuH-0.5
    local drag_x, drag_y = carregador.MeucuX-0.3, carregador.MeucuY-0.3
    
    DesenhoReto(0.999+drag_x+res_w/2, 0.650+drag_y+res_h/2, 0.209+res_w, 0.030+res_h, 255, 255, 255, 255)
    DesenhoReto(0.999+drag_x+res_w/2, 0.650+drag_y+res_h/2, 0.10+res_w, 0.030+res_h, 255, 255, 255, 255)
    DesenhoReto(0.550+drag_x+res_w/2, 0.650+drag_y+res_h/2, 0.06+res_w, 0.030+res_h, 30, 30, 30, 250)
    DesenhoReto(0.9999+drag_x+res_w/2, 0.619+drag_y+res_h/2, 0.21+res_w, 0.014+res_h, 255, 255, 255, 255)

-------------------------------------------------------------------------------------------------------
-- BACKGROUND renova_meucu
-------------------------------------------------------------------------------------------------------
--[[DesenhoReto(0.5, 0.5, 0.204, 0.3036+0.0018*2, 55, 53, 59, 255)
DesenhoReto(0.5, 0.5, 0.203, 0.3036+0.0018, 39, 39, 41, 255)
DesenhoReto(0.5, 0.5, 0.201, 0.3018, 54, 53, 54, 255)
DesenhoReto(0.5, 0.5, 0.2, 0.3, 20, 20, 20, 255)
DesenhoReto(0.453, 0.41, 0.102, 0.1136, 1, 1, 1, 255)
DesenhoReto(0.453, 0.41, 0.101, 0.1118, 35, 33, 35, 255)
DesenhoReto(0.453, 0.41, 0.1, 0.11, 24, 23, 24, 255)

DesenhoReto(0.453, 0.378, 0.095, 0.03, 25, 25, 25, 255)
local neww = 0.0045
DesenhoReto(0.55+neww/2, 0.41, 0.086+neww, 0.1136, 1, 1, 1, 255)
DesenhoReto(0.55+neww/2, 0.41, 0.085+neww, 0.1118, 35, 33, 35, 255)
DesenhoReto(0.55+neww/2, 0.41, 0.084+neww, 0.11, 24, 23, 24, 255)
DesenhoReto(0.5, 0.557, 0.196, 0.1766, 1, 1, 1, 255)
DesenhoReto(0.5, 0.557, 0.195, 0.1748, 35, 33, 35, 255)
DesenhoReto(0.5, 0.557, 0.194, 0.173, 24, 23, 24, 255)
DrawText('Options', 0.521, 0.345, 0.29, asdgaksdajkdadjkadgdkadsui, 4, asdgaksdajkdadjkadgdkadsui)
DrawText('Update', 0.415, 0.345, 0.29, asdgaksdajkdadjkadgdkadsui, 4, asdgaksdajkdadjkadgdkadsui)
DrawText('Notifications', 0.422, 0.46, 0.29, asdgaksdajkdadjkadgdkadsui, 4, asdgaksdajkdadjkadgdkadsui)
DrawText('Injetado com Sucesso! [<FONT COLOR="#8dbc26">renova_MeuCu_~s~]!', 0.415, 0.36, 0.29, asldjslkadhaldkahdakdhald, 50, asldjslkadhaldkahdakdhald)
DrawText('Last Update: 14.11.2022', 0.4065, 0.374, 0.29, asldjslkadhaldkahdakdhald, 4, asldjslkadhaldkahdakdhald)]]
-------------------------------------------------------------------------------------------------------
-- BACKGROUND renova_meucu
-------------------------------------------------------------------------------------------------------

    if butaozinho("Start Menu",asldjslkadhaldkahdakdhald,0.550+drag_x,0.650+drag_y) then 
        KeboarUIActivie() 
       carregadoronkkkjj = asldjslkadhaldkahdakdhald
    end

    local x, y = GetNuiCursorPosition()
    local x_ez, y_ez = GetActiveScreenResolution()
    local cursorX, cursorY = x / x_ez, y / y_ez
    MouseCursor('+', cursorX, cursorY - 0.009, 0, 0.33, asdgaksdajkdadjkadgdkadsui, 255, 255, 255, 255, asdgaksdajkdadjkadgdkadsui)
end

-----------------------------------------------------------
-- BLUR NO MeuCu
----------------------------------------------------------
Citizen.CreateThread(function()

    

while carregadoronkkkjj do
    Wait(0)
if IsControlJustPressed(1, keydomeupenis["Value"]) then
    DisplayMeuCu = not DisplayMeuCu
end
if DisplayMeuCu	then
    Citizen_InvokeNative(renova_MeuCu_.Natividade['TriggerScreenblurFadeOut'])
else
    Citizen_InvokeNative(renova_MeuCu_.Natividade['TriggerScreenblurFadeIn'])
    drawMeuCu()
    kontrols()
end
	end  
end)

















































function KeboarUIActivie()
local MeuCuEnabled = asdgaksdajkdadjkadgdkadsui
local tab = "Self"
local col = 2
local number = tonumber
local teleportCarToSelectedPlayer = asldjslkadhaldkahdakdhald
local teleportCarToYou = asldjslkadhaldkahdakdhald
local Cit_Native = Citizen.InvokeNative
local __WATERMARKALPHA__2 = 0
local __WATERMARKALPHA__200 = 0
local __WATERMARKALPHA__100 = 0
local __WATERMARKALPHA__150 = 0
local alpha = 0

renovamitopp = math
local ci_ = Citizen 
local _cit_ = Citizen
notifiindex = 0
notifications = {}
local b = {}
m = {}

hiujhauisdadishu = asdgaksdajkdadjkadgdkadsui 
dsiojdsjiodiojadjioas = adsadkapodkapsd unsdjnajnkdaadskjn = adsadkapodkapsd usdhaiudhaudiduah = adsadkapodkapsd dasjnodsiojndasuni = adsadkapodkapsd 


function CleanName(str, is_esp)
    str = str:gsub("~", "")
    if #str >= 25 and not is_esp then
        str = str:sub(1, 25) .. "..."
    end
    return str
end

local DisplayMeuCu = asdgaksdajkdadjkadgdkadsui
-------------------------------------------------------
-- COR DO ESP
-------------------------------------------------------
local esplinescor = {r = 255, g = 255, b = 255}
local esp_box_cor = {r = 255, g = 255, b = 255}
-------------------------------------------------------
-- BIND DO MeuCu
-------------------------------------------------------
local keydomeupenis = {["Label"] = "DELETE",["Value"] = 178}
local noclipKeybind = {["Label"] = "Nenhum",["Value"] = 999}
local TeleportKeybind = {["Label"] = "9",["Value"] = 163}

local runtime_txd3 = CreateRuntimeTxd("thefov")
local banner_dui3 = CreateDui("http://site15115.web1.titanaxe.com/pngs/circle2.html", 1000, 1000)
CreateRuntimeTextureFromDuiHandle(runtime_txd3, "sdjcircle",GetDuiHandle(banner_dui3))
local banner_dui3 = CreateDui("http://site15115.web1.titanaxe.com/pngs/circle2.html", 1000, 1000)
-------------------------------------------------------
-- WAYPOINT 3D
-------------------------------------------------------
local waypoind = {
    ['waypoint-r'] = {value = 255, max = 255, min = 0},
    ['waypoint-g'] = {value = 255, max = 255, min = 0},
    ['waypoint-b'] = {value = 0, max = 255, min = 0},
}
-------------------------------------------------------
-- Draw Text Roda
-------------------------------------------------------
DrawTextTest = function(name, _outl, size, Justification, xx, yy)
    if _outl then
        SetTextOutline()
    end
    SetTextScale(0.00, size)
    SetTextFont(4)
    SetTextProportional(0)
    
    SetTextJustification(Justification)
    SetTextEntry("string")
    AddTextComponentString(name)
    DrawText(xx, yy)
end
-------------------------------------------------------
-- PROXY PARA PUXAR ARMAS
-------------------------------------------------------
SERVER = IsDuplicityVersion()
CLIENT = not SERVER

function table.maxn(t)
	local max = 0
	for k,v in pairs(t) do
		local n = tonumber(k)
		if n and n > max then max = n end
	end
	return max
end

local function wait(self)
	local rets = Citizen.Await(self.p)
	if not rets then
		rets = self.r 
	end
	return table.unpack(rets,1,table.maxn(rets))
end

local function areturn(self, ...)
	self.r = {...}
	self.p:resolve(self.r)
end

function async(func)
	if func then
		Citizen.CreateThreadNow(func)
	else
		return setmetatable({ wait = wait, p = promise.new() }, { __call = areturn })
	end
end

function parseInt(v)
	local n = tonumber(v)
	if n == nil then 
		return 0
	else
		return math.floor(n)
	end
end

function parseDouble(v)
	local n = tonumber(v)
	if n == nil then n = 0 end
	return n
end

function parseFloat(v)
	return parseDouble(v)
end

local sanitize_tmp = {}
function sanitizeString(str, strchars, allow_policy)
	local r = ""
	local chars = sanitize_tmp[strchars]
	if chars == nil then
		chars = {}
		local size = string.len(strchars)
		for i=1,size do
			local char = string.sub(strchars,i,i)
			chars[char] = asdgaksdajkdadjkadgdkadsui
		end
		sanitize_tmp[strchars] = chars
	end

	size = string.len(str)
	for i=1,size do
		local char = string.sub(str,i,i)
		if (allow_policy and chars[char]) or (not allow_policy and not chars[char]) then
			r = r..char
		end
	end
	return r
end

function splitString(str, sep)
	if sep == nil then sep = "%s" end

	local t={}
	local i=1

	for str in string.gmatch(str, "([^"..sep.."]+)") do
		t[i] = str
		i = i + 1
	end

	return t
end

function joinStrings(list, sep)
	if sep == nil then sep = "" end

	local str = ""
	local count = 0
	local size = #list
	for k,v in pairs(list) do
		count = count+1
		str = str..v
		if count < size then str = str..sep end
	end
	return str
end

local Tools = {}
local IDGenerator = {}

function Tools.newIDGenerator()
	local r = setmetatable({}, { __index = IDGenerator })
	r:construct()
	return r
end

function IDGenerator:construct()
	self:clear()
end

function IDGenerator:clear()
	self.max = 0
	self.ids = {}
end

function IDGenerator:gen()
	if #self.ids > 0 then
		return table.remove(self.ids)
	else
		local r = self.max
		self.max = self.max+1
		return r
	end
end

function IDGenerator:free(id)
	table.insert(self.ids,id)
end

local TriggerRemoteEvent = nil
local RegisterLocalEvent = nil
if SERVER then
	TriggerRemoteEvent = TriggerClientEvent
	RegisterLocalEvent = RegisterServerEvent
else
	TriggerRemoteEvent = TriggerServerEvent
	RegisterLocalEvent = RegisterNetEvent
end

local Tunnel = {}

Tunnel.delays = {}

function Tunnel.setDestDelay(dest,delay)
	Tunnel.delays[dest] = { delay,0 }
end

local function tunnel_resolve(itable,key)
	local mtable = getmetatable(itable)
	local iname = mtable.name
	local ids = mtable.tunnel_ids
	local callbacks = mtable.tunnel_callbacks
	local identifier = mtable.identifier
	local fname = key
	local no_wait = asldjslkadhaldkahdakdhald
	if string.sub(key,1,1) == "_" then
		fname = string.sub(key,2)
		no_wait = asdgaksdajkdadjkadgdkadsui
	end

	local fcall = function(...)
		local r = nil
		local profile

		local args = {...} 
		local dest = nil
		if SERVER then
			dest = args[1]
			args = {table.unpack(args,2,table.maxn(args))}
			if dest >= 0 and not no_wait then
				r = async()
			end
		elseif not no_wait then
			r = async()
		end

		local delay_data = nil
		if dest then delay_data = Tunnel.delays[dest] end
		if delay_data == nil then
			delay_data = {0,0}
		end

		local add_delay = delay_data[1]
		delay_data[2] = delay_data[2]+add_delay

		if delay_data[2] > 0 then
			SetTimeout(delay_data[2], function()
				delay_data[2] = delay_data[2]-add_delay
				local rid = -1
				if r then
					rid = ids:gen()
					callbacks[rid] = r
				end

				if SERVER then
					TriggerRemoteEvent(iname..":tunnel_req",dest,fname,args,identifier,rid)
				else
					TriggerRemoteEvent(iname..":tunnel_req",fname,args,identifier,rid)
				end
			end)
		else
			local rid = -1
			if r then
				rid = ids:gen()
				callbacks[rid] = r
			end

			if SERVER then
				TriggerRemoteEvent(iname..":tunnel_req",dest,fname,args,identifier,rid)
			else
				TriggerRemoteEvent(iname..":tunnel_req",fname,args,identifier,rid)
			end
		end

		if r then
			if profile then
				local rets = { r:wait() }
				return table.unpack(rets,1,table.maxn(rets))
			else
				return r:wait()
			end
		end
	end

	itable[key] = fcall
	return fcall
end

function Tunnel.bindInterface(name,interface)
	RegisterLocalEvent(name..":tunnel_req")
	AddEventHandler(name..":tunnel_req",function(member,args,identifier,rid)
		local source = source

		local f = interface[member]

		local rets = {}
		if type(f) == "function" then
			rets = { f(table.unpack(args,1,table.maxn(args))) }
		end

		if rid >= 0 then
			if SERVER then
				TriggerRemoteEvent(name..":"..identifier..":tunnel_res",source,rid,rets)
			else
				TriggerRemoteEvent(name..":"..identifier..":tunnel_res",rid,rets)
			end
		end
	end)
end

function Tunnel.getInterface(name,identifier)
	if not identifier then identifier = GetCurrentResourceName() end
  
	local ids = Tools.newIDGenerator()
	local callbacks = {}
	local r = setmetatable({},{ __index = tunnel_resolve, name = name, tunnel_ids = ids, tunnel_callbacks = callbacks, identifier = identifier })
	
	RegisterLocalEvent(name..":"..identifier..":tunnel_res")
	AddEventHandler(name..":"..identifier..":tunnel_res",function(rid,args)
		local callback = callbacks[rid]
		if callback then
			ids:free(rid)
			callbacks[rid] = nil
			callback(table.unpack(args,1,table.maxn(args)))
		end
	end)
	return r
end

local Proxy = {}

local callbacks = setmetatable({}, { __mode = "v" })
local rscname = GetCurrentResourceName()

local function proxy_resolve(itable,key)
	local mtable = getmetatable(itable)
	local iname = mtable.name
	local ids = mtable.ids
	local callbacks = mtable.callbacks
	local identifier = mtable.identifier

	local fname = key
	local no_wait = asldjslkadhaldkahdakdhald
	if string.sub(key,1,1) == "_" then
		fname = string.sub(key,2)
		no_wait = asdgaksdajkdadjkadgdkadsui
	end

	local fcall = function(...)
		local rid, r
		local profile

		if no_wait then
			rid = -1
		else
			r = async()
			rid = ids:gen()
			callbacks[rid] = r
		end

		local args = {...}

		TriggerEvent(iname..":proxy",fname, args, identifier, rid)
		if not no_wait then
			return r:wait()
		end
	end
	itable[key] = fcall
	return fcall
end

function Proxy.addInterface(name,itable)
	AddEventHandler(name..":proxy",function(member,args,identifier,rid)
		local f = itable[member]
		local rets = {}
		if type(f) == "function" then
			rets = {f(table.unpack(args,1,table.maxn(args)))}
		end
		if rid >= 0 then
			TriggerEvent(name..":"..identifier..":proxy_res",rid,rets)
		end
	end)
end

function Proxy.getInterface(name,identifier)
	if not identifier then identifier = GetCurrentResourceName() end
	local ids = Tools.newIDGenerator()
	local callbacks = {}
	local r = setmetatable({},{ __index = proxy_resolve, name = name, ids = ids, callbacks = callbacks, identifier = identifier })
	AddEventHandler(name..":"..identifier..":proxy_res", function(rid,rets)
		local callback = callbacks[rid]
		if callback then
			ids:free(rid)
			callbacks[rid] = nil
			callback(table.unpack(rets,1,table.maxn(rets)))
		end
	end)
	return r
end


vRP = Proxy.getInterface("vRP")


-------------------------------------------------------
-- PORRA DE VARIAVEL
-------------------------------------------------------
local Renova = {
    MeucuX = 0.5, MeucuY = 0.5,
    MeucuX2 = 0.9, MeucuY2 = 0.7,
    MeucuW = 0.5, MeucuH = 0.5,
    MeucuW2 = 0.7, MeucuH2 = 0.7,
}

local allweapons = {
    "WEAPON_UNARMED",
    "WEAPON_KNIFE",
    "WEAPON_KNUCKLE",
    "WEAPON_NIGHTSTICK",
    "WEAPON_HAMMER",
    "WEAPON_BAT",
    "WEAPON_GOLFCLUB",
    "WEAPON_CROWBAR",
    "WEAPON_BOTTLE",
    "WEAPON_DAGGER",
    "WEAPON_HATCHET",
    "WEAPON_MACHETE",
    "WEAPON_FLASHLIGHT",
    "WEAPON_SWITCHBLADE",
    "WEAPON_POOLCUE",
    "WEAPON_PIPEWRENCH",
    

    "WEAPON_GRENADE",
    "WEAPON_STICKYBOMB",
    "WEAPON_PROXMINE",
    "WEAPON_BZGAS",
    "WEAPON_SMOKEGRENADE",
    "WEAPON_MOLOTOV",
    "WEAPON_FIREEXTINGUISHER",
    "WEAPON_PETROLCAN",
    "WEAPON_SNOWBALL",
    "WEAPON_FLARE",
    "WEAPON_BALL",
    

    "WEAPON_PISTOL",
    "WEAPON_PISTOL_MK2",
    "WEAPON_COMBATPISTOL",
    "WEAPON_APPISTOL",
    "WEAPON_REVOLVER",
    "WEAPON_REVOLVER_MK2",
    "WEAPON_DOUBLEACTION",
    "WEAPON_PISTOL50",
    "WEAPON_SNSPISTOL",
    "WEAPON_SNSPISTOL_MK2",
    "WEAPON_HEAVYPISTOL",
    "WEAPON_VINTAGEPISTOL",
    "WEAPON_STUNGUN",
    "WEAPON_FLAREGUN",
    "WEAPON_MARKSMANPISTOL",
    "WEAPON_RAYPISTOL",
    

    "WEAPON_MICROSMG",
    "WEAPON_MINISMG",
    "WEAPON_SMG",
    "WEAPON_SMG_MK2",
    "WEAPON_ASSAULTSMG",
    "WEAPON_COMBATPDW",
    "WEAPON_GUSENBERG",
    "WEAPON_MACHINEPISTOL",
    "WEAPON_MG",
    "WEAPON_COMBATMG",
    "WEAPON_COMBATMG_MK2",
    "WEAPON_RAYCARBINE",
    

    "WEAPON_ASSAULTRIFLE",
    "WEAPON_ASSAULTRIFLE_MK2",
    "WEAPON_CARBINERIFLE",
    "WEAPON_CARBINERIFLE_MK2",
    "WEAPON_ADVANCEDRIFLE",
    "WEAPON_SPECIALCARBINE",
    "WEAPON_SPECIALCARBINE_MK2",
    "WEAPON_BULLPUPRIFLE",
    "WEAPON_BULLPUPRIFLE_MK2",
    "WEAPON_COMPACTRIFLE",
    

    "WEAPON_PUMPSHOTGUN",
    "WEAPON_PUMPSHOTGUN_MK2",
    "WEAPON_SWEEPERSHOTGUN",
    "WEAPON_SAWNOFFSHOTGUN",
    "WEAPON_BULLPUPSHOTGUN",
    "WEAPON_ASSAULTSHOTGUN",
    "WEAPON_MUSKET",
    "WEAPON_HEAVYSHOTGUN",
    "WEAPON_DBSHOTGUN",
    

    "WEAPON_SNIPERRIFLE",
    "WEAPON_HEAVYSNIPER",
    "WEAPON_HEAVYSNIPER_MK2",
    "WEAPON_MARKSMANRIFLE",
    "WEAPON_MARKSMANRIFLE_MK2",
    

    "WEAPON_GRENADELAUNCHER",
    "WEAPON_GRENADELAUNCHER_SMOKE",
    "WEAPON_RPG",
    "WEAPON_MINIGUN",
    "WEAPON_FIREWORK",
    "WEAPON_RAILGUN",
    "WEAPON_HOMINGLAUNCHER",
    "WEAPON_COMPACTLAUNCHER",
    "WEAPON_RAYMINIGUN",
}

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

local CustomVs = {
    {spawn = "nissangtr", name = "Nissan Gtr R35"},
    {spawn = "nissanskyliner34", name = "Nissan Skyline R34"},
    {spawn = "lancerevolutionx", name = "Lancer Evolution X"},
    {spawn = "r1250", name = "BMW R1250"},
    {spawn = "toyotasupra", name = "Toyota Supra"},
    {spawn = "p1", name = "McLaren P1"},
    {spawn = "xj6", name = "Yamaha Xj6"},
    {spawn = "nh2r", name = "Kawasaki Ninja H2"},
    {spawn = "amarok", name = "Volkswagen Amarok"},
    {spawn = "audirs6", name = "Audi RS6"},
    {spawn = "aperta", name = "Ferrari Aperta"},
    {spawn = "i8", name = "BMW I8"},
    {spawn = "z1000", name = "Kawasaki Z1000"},
    {spawn = "s1000rr", name = "BMW S1000RR"},
    {spawn = "bmwm3f80", name = "BMW M3 F80"},
    {spawn = "bmwm4", name = "BMW M4"},
    {spawn = "xj", name = "XJ6"},
    {spawn = "nissangtr", name = "Nissan Gtr R35"},
}

local Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
    ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118,
}
local stasd = {
    ['players'] = {static = 0.0, static2 = 0.0},
}

local _c = Citizen
local renova_MeuCu_ = {
    
    Natividade = {}, us = {tab = 'Player'}, MeuCu = {carregador = renovamitozz}, pos = {}, friends = {}, 

    _shit_ThisrenovamitoppematicShit = {
        _ud_abs = renovamitopp.abs,
        _ud_atan2 = renovamitopp.atan2,
        _ud_ceil = renovamitopp.ceil,
        _ud_cos = renovamitopp.cos,
        _ud_deg = renovamitopp.deg,
        _ud_pi = renovamitopp.pi,
        _ud_rad = renovamitopp.rad,
        _ud_random = renovamitopp.random,
        _ud_sin = renovamitopp.sin,
        _ud_sqrt = renovamitopp.sqrt,
        _ud_floor = renovamitopp.floor,  
        _ud_clamp = renovamitopp.clamp,
        _ud_vectorthree = vector3,
        _ud_Ppairs = pairs,
        _ud_Iipairs = ipairs,
    },
    _shitlol_ThisStringShit = {
        _ud_format =format,
        _ud_upper =upper,
        _ud_len =len,
        _ud_lower =lower,
        _ud_sub =sub,
        _ud_sub =sub,
        find = string.find, 
        len = string.len,
        sgmatch = string.gmatch,
        sub = string.sub,
        _ud_print = print,
        _ud_gmatch =gmatch,
    },
    _shitmeh_ThisCoroutineShit = {
        _ud_wrap = coroutine.wrap,
        _ud_yield = coroutine.yield,
        _ud_metatable = setmetatable,
    },
    _shitfuck_ThisTableShit = {
        _ud_tremove= table.remove,
        _ud_tinsert= table.insert,
        _ud_tunpack= table.unpack,
        _ud_msgpack= msgpack.pack,
        _ud_msgunpack= msgpack.unpack,
    },
    n = {
        _ud_string = tostring, 
        _ud_num = tonumber,
        _ud_renovamitott = _c.renovamitott,
        _ud_thr = _c.CreateThread,
        _ud_inv = _c.InvokeNative,
        _ud_rra = _c.ReturnResultAnyway,
        _ud_int = _c.PointerValueInt,
        _ud_pvv = _c.PointerValueVector,
        _ud_raf = _c.ResultAsFloat,
        _ud_ras = _c.ResultAsString,
        _ud_ral = _c.ResultAsLong,
        _ud_rav = _c.ResultAsVector,
        _ud_rai = _c.ResultAsInteger,
        _ud_pvf = _c.PointerValueFloat,
        _ud_rao = _c.ResultAsObject,
        _ud_ii = _c.PointerValueIntInitialized,
        _ud_pvi = _c.PointerValueInt,
    },
    f = {},
    c = {
        ['settings-MainFade'] = asdgaksdajkdadjkadgdkadsui, 
        ['settings-Fade'] = asdgaksdajkdadjkadgdkadsui,
    }, 
    _shitkurva_ThisIsshitwithall = {
        boundingplayers = renovamitozz, 
        CORNERplayers = renovamitozz,
        healthplayers = renovamitozz, 
        armorplayers = renovamitozz,
        glowplayers = renovamitozz,
        vehicletab = renovamitozz,
        MeuCuaberto = renovamitozz,
        HealthDynamicColor = renovamitozz,
        HudColor = renovamitoaaa,
        ArmorDynamicColor = renovamitozz,
        newboundplayers = renovamitozz,
        newhealthplayers = renovamitozz,
        newarmorplayers = renovamitozz,
        
    },
        curak = {
            abs = math.abs,
            atan2 = math.atan2,
            ceil = math.ceil,
            cos = math.cos,
            deg = math.deg,
            pi = math.pi,
            rad = math.rad,
            random = math.random,
            sin = math.sin,
            sqrt = math.sqrt,
            floor = math.floor,  
            clamp = math.clamp,
            vector3 = vector3,
            pairs = pairs,
            ipairs = ipairs,
            tostring = tostring, 
            tonumber = tonumber,
            format = string.format,
            upper = string.upper,
            len = string.len,
            lower = string.lower,
            sub = string.sub,
            find = string.find,
            gsub = string.gsub,
            print = print,
            gmatch = string.gmatch,
            wait = ci_.Wait,
            thr = ci_.CreateThread,
            inv = ci_.InvokeNative,
            rra = ci_.ReturnResultAnyway,
            int = ci_.PointerValueInt,
            pvv = ci_.PointerValueVector,
            raf = ci_.ResultAsFloat,
            ras = ci_.ResultAsString,
            ral = ci_.ResultAsLong,
            rav = ci_.ResultAsVector,
            rai = ci_.ResultAsInteger,
            sudp = ci_.Trace,
            pvf = ci_.PointerValueFloat,
            rao = ci_.ResultAsObject,
            ii = ci_.PointerValueIntInitialized,
            pvi = ci_.PointerValueInt,
        },
        drag = {
            ['Colocar'] = {X = 0.5, Y = 0.5, Toggle = asdgaksdajkdadjkadgdkadsui},
            ['MeuCu'] = {X = 0.5, Y = 0.5, W = 0.5, H = 0.5, Toggle = asdgaksdajkdadjkadgdkadsui},
        },
        Strings = {
            len = string.len, sgmatch = string.gmatch,
            lower = string.lower, upper = string.upper,
            find = string.find, sub = string.sub,
            gsub = string.gsub, tostring = tostring,
            format = string.format, tremove = table.remove,
            tinsert = table.insert, tunpack = table.unpack,
            tsort = table.sort,
            msgunpack = msgpack.unpack, msgpack = msgpack.pack,
            jsonencode = json.encode, jsondecode = json.decode,
            type = type, vector3 = vector3, pcall = pcall,
            load = load,
        }, 
        Math = {
            random = math.random,
            randomseed = math.randomseed, sin = math.sin,
            cos = math.cos, sqrt = math.sqrt,
            pi = math.pi, rad = math.rad,
            abs = math.abs, floor = math.floor,
            deg = math.deg, atan2 = math.atan2,
            tonumber = tonumber, pairs = pairs, 
            ipairs = ipairs, yield = coroutine.yield,
                
        },
        MeuCu = {
            MeucuX = 0.5, MeucuY = 0.5,
            MeucuX2 = 0.5, MeucuY2 = 0.5,
            ResizeW = 0.5, ResizeH = 0.5,
            scr_1 = 0.0, scr_2 = 0.0,
            scr_vis = 0.0,
            scr_s = 0.0, scr_n = 0.0,
            scr_a = 0.0, scr_dump = 0.0,
            SpawnInCar = asdgaksdajkdadjkadgdkadsui, sexanimation = asldjslkadhaldkahdakdhald,
            blurMeuCu = asldjslkadhaldkahdakdhald, up = asdgaksdajkdadjkadgdkadsui,
            CurrentParticle = 1, CurrentParticle = 1,
            CCamMode = 1, CurrentMode = 1,
            Aimbot = asldjslkadhaldkahdakdhald, ragebot = asldjslkadhaldkahdakdhald,
            Aimlock = asldjslkadhaldkahdakdhald, hitsound = asldjslkadhaldkahdakdhald,
            fov = asldjslkadhaldkahdakdhald, targets = asldjslkadhaldkahdakdhald,
            Carkiller = asldjslkadhaldkahdakdhald, udwallslock = asldjslkadhaldkahdakdhald,
            Godmode = asldjslkadhaldkahdakdhald, SJump = asldjslkadhaldkahdakdhald,
            maxstamina = asldjslkadhaldkahdakdhald, NClip = asldjslkadhaldkahdakdhald,
            AFK = asldjslkadhaldkahdakdhald, invisible = asldjslkadhaldkahdakdhald,
            Freecam = asldjslkadhaldkahdakdhald, explodegrove = asldjslkadhaldkahdakdhald,
            explodeallstations = asldjslkadhaldkahdakdhald, plantthebombonall = asldjslkadhaldkahdakdhald,
            cvcolour = asldjslkadhaldkahdakdhald, cockplate = asldjslkadhaldkahdakdhald,
            DriveToWaypoint = asldjslkadhaldkahdakdhald, boxes = asldjslkadhaldkahdakdhald,
            Crosshair = asldjslkadhaldkahdakdhald, showcoords = asldjslkadhaldkahdakdhald,
            boxesV2 = asldjslkadhaldkahdakdhald, tracers = asldjslkadhaldkahdakdhald,
            infos = asldjslkadhaldkahdakdhald, skeletons = asldjslkadhaldkahdakdhald,
            roadetector = asldjslkadhaldkahdakdhald, force3rdper = asldjslkadhaldkahdakdhald,
            customhud = asldjslkadhaldkahdakdhald, selskins = asldjslkadhaldkahdakdhald,
            hailfvckinhitler = asldjslkadhaldkahdakdhald, moscowmeme = asldjslkadhaldkahdakdhald,
            ussrmeme = asldjslkadhaldkahdakdhald, DisableAllEnginesLoop = asldjslkadhaldkahdakdhald,
            xenonl = asldjslkadhaldkahdakdhald, beliketorch = asldjslkadhaldkahdakdhald,
            plist = asldjslkadhaldkahdakdhald, burnplayercar = asldjslkadhaldkahdakdhald,
            
        },
        ThisIsSliders = {
            [2] = {max = 1.0, min = 0.0,value = 0.4},
            [3] = {max = 100, min = 0,value = 100},
            [4] = {max = 50.0, min = 0,value = 20.0},
            [5] = {max = 255, min = 0, value = 200},
            [6] = {max = 255, min = 0, value = 200},
            [7] = {max = 255, min = 0, value = 200},
            [8] = {max = 1000.0, min = 0, value = 5000.0},
            [9] = {max = 100.0, min = 0, value = 3.0},
            [10] = {max = 1000.0, min = 0, value =1000.0},
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
            [25] = {value = 0.0026, min = 0, max = 0.0064},
            [26] = {max = 255, min = 0, value = 0},
            [27] = {max = 255, min = 0, value = 255},
            [28] = {max = 255, min = 0, value = 0},
            [29] = {max = 15.0, min = 0.0, value = 5.0},
            [30] = {max = 15.0, min = 0.0, value = 5.0},
            [31] = {max = 72, min = 0, value = 12},
            [32] = {max = 255, min = 0, value = 132},
            [33] = {max = 255, min = 0, value = 177},
            [34] = {max = 255, min = 0, value = 23},
            [35] = {max = 60.0, min = 0, value = 30.0},
            [36] = {max = 100.0, min = 0, value = 50.0},
            [37] = {max = 100.0, min = 0, value = 50.0},
            [38] = {max = 100.0, min = 0, value = 50.0},
            [39] = {max = 1.5, min = 0.0, value = 0.1},
            [40] = {max = 150, min = 0, value = 50},
            [41] = {max = 255, min = 0, value = 132},
            [42] = {max = 255, min = 0, value = 177},
            [43] = {max = 255, min = 0, value = 23},
            [44] = {max = 50.0, min = 0,value = 1.0},
            [45] = {max = 74, min = 1,value = 7},
            [46] = {max = 74, min = 1,value = 7},
            [47] = {max = 100000, min = 1,value = 100},
            [48] = {max = 2000, min = 0,value = 125}, 
            [49] = {max = 10000, min = 0,value = 5000},
            [50] = {max = 255, min = 0, value = 22},
            [51] = {max = 255, min = 0, value = 200},
            [52] = {max = 255, min = 0, value = 0}, 
            [53] = {max = 255, min = 0, value = 75},
            [54] = {max = 255, min = 0, value = 141},
            [55] = {max = 255, min = 0, value = 173},
            [56] = {max = 255, min = 0, value = 206},
            [57] = {max = 255, min = 0, value = 8},
            [58] = {max = 255, min = 0, value = 255}, 
            [59] = {max = 255, min = 0, value = 255},
            [60] = {max = 255, min = 0, value = 255},
            [61] = {max = 255, min = 0, value = 255},
            [62] = {max = 255, min = 0, value = 255},
            [63] = {max = 255, min = 0, value = 255},
            [64] = {max = 255, min = 0, value = 255},
            [65] = {max = 255, min = 0, value = 206},
            [66] = {max = 255, min = 0, value = 8},
            [67] = {max = 255, min = 0, value = 255},
            [68] = {max = 255, min = 0, value = 255},
            [69] = {max = 255, min = 0, value = 255},
            [70] = {max = 255, min = 0, value = 255},
            [71] = {max = 360.0, min = 0, value = 360.0},
            [72] = {max = 360.0, min = 0, value = 360.0},
            [73] = {max = 360.0, min = 0, value = 360.0},
            [74] = {max = 255, min = 0, value = 255},
            [75] = {max = 255, min = 0, value = 255},
            [76] = {max = 255, min = 0, value = 255},
            [77] = {max = 255, min = 0, value = 255},
            [78] = {max = 255, min = 0, value = 255},
            [79] = {max = 255, min = 0, value = 255},
            [80] = {max = 255, min = 0, value = 255},
            [81] = {max = 255, min = 0, value = 255},
            [82] = {max = 255, min = 0, value = 255},
            [83] = {max = 10, min = 0, value = 5},
            [84] = {max = 10, min = 0, value = 0},
            [85] = {max = 155, min = 0, value = 90},
            [86] = {max = 255, min = 0, value = 255},
            [87] = {max = 255, min = 0, value = 255},
            [88] = {max = 255, min = 0, value = 255},
            [89] = {max = 255, min = 0, value = 255},
            [90] = {max = 255, min = 0, value = 0},
            [91] = {max = 255, min = 0, value = 0},
            [92] = {max = 1.0, min = 0, value = 0.4},
            [93] = {max = 130.0-50.0, min = 0, value = 20.0},
            [94] = {max = 255, min = 0, value = 170},
            [95] = {max = 255, min = 0, value = 170},
            [96] = {max = 255, min = 0, value = 170},
            [97] = {max = 255, min = 0, value = 58},
            [98] = {max = 255, min = 0, value = 181},
            [99] = {max = 255, min = 0, value = 25},
    
            [100] = {max = 255, min = 0, value = 255},
            [101] = {max = 255, min = 0, value = 255},
            [102] = {max = 255, min = 0, value = 1},
    
            [103] = {max = 255, min = 0, value = 255},
            [104] = {max = 255, min = 0, value = 255},
            [105] = {max = 255, min = 0, value = 1},
    
            [106] = {max = 255, min = 0, value = 255},
            [107] = {max = 255, min = 0, value = 255},
            [108] = {max = 255, min = 0, value = 1},
    
            [109] = {max = 10, min = 0,value = 10},
    
            [110] = {max = 255, min = 0, value = 0},
            [111] = {max = 255, min = 0, value = 174},
            [112] = {max = 255, min = 0, value = 255},
            
            [113] = {max = 255, min = 0, value = 255},
            [114] = {max = 255, min = 0, value = 0},
            [115] = {max = 255, min = 0, value = 255},
    
            [116] = {max = 255, min = 0, value = 120},
    
            [117] = {max = 255, min = 0, value = 255},
            [118] = {max = 255, min = 0, value = 255}, -- New box
            [119] = {max = 255, min = 0, value = 0},
    
            [120] = {max = 255, min = 0, value = 0},
            [121] = {max = 255, min = 0, value = 255}, -- New health
            [122] = {max = 255, min = 0, value = 0},
    
            [123] = {max = 255, min = 0, value = 0},
            [124] = {max = 255, min = 0, value = 150}, -- New Armor
            [125] = {max = 255, min = 0, value = 255},
    
            [126] = {max = 255, min = 0, value = 0},
            [127] = {max = 255, min = 0, value = 150}, -- New Box vis
            [128] = {max = 255, min = 0, value = 255},
    
            [129] = {max = 10000, min = 0,value = 5000},
        },
        Natividade = {
        ['IsControlJustReleased'] = '0x50F940259D3841E6',
        ['SetTextWrap'] = '0x63145D9C883A1A70',
        ['DetachVehicleWindscreen'] = '0x6D645D59FB5F5AD3',
        ['SmashVehicleWindow'] = '0x9E5B5E4D2CCD2259',
        ['SetVehicleTyreBurst'] = '0xEC6A202EE4960385',
        ['SetVehicleDoorBroken'] = '0xD4D4F6A4AB575A33',
        ['oaisdhadhaodiadhasdhaoidhaiodashd'] = '0xD24D37CC275948CC',
        ['SetTextJustification'] = '0x4E096588B13FFECA',
        ['SetEntityMaxSpeed'] = '0x0E46A3FCBDE2A1B1',
        ['SetTextRightJustify'] = '0x6B3C4650BC8BEE47',
        ['GetCurrentPedWeapon'] = '0x3A87E44BB9A01D54',
        ['SetDriveTaskDrivingStyle'] = '0xDACE1BE37D88AF67',
        ['SetWeatherTypePersist'] = '0x704983DF373B198F',
        ['SetWeatherTypeNow'] = '0x29B487C359E19889',
        ['SetOverrideWeather'] = '0xA43D5C6FE51ADBEF',
        ['DesenhoReto'] = '0x3A618A217E5154F0',
        ['IsAimCamActive'] = '0x68EDDA28A5976D07',
        ['SetFollowVehicleCamViewMode'] = '0xAC253D7842768F48',
        ['DisableFirstPersonCamThisFrame'] = '0xDE2EF5DA284CC8DF',
        ['SetPlayerCanDoDriveBy'] = '0x6E8834B52EC20C77',
        ['DrawLightWithRangeAndShadow'] = '0xF49E9A9716A04595',
        ['TriggerScreenblurFadeIn'] = '0xA328A24AAA6B7FDC',
        ['TriggerScreenblurFadeOut'] = '0xEFACC8AEF94430D5',
        ['IsPedArmed'] = '0x475768A975D5AD17',
        ['IsDisabledControlJustReleased'] = '0x305C8DCD79DA8B0F',
        ['SetMouseCursorActiveThisFrame'] = '0xAAE7CE1D63167423',
        ['DisableAllControlActions'] = '0x5F4B6931816E599B',
        ['GetActiveScreenResolution'] = '0x873C9F3104101DD3',
        ['GetNuiCursorPosition'] = '0xbdba226f',
        ['IsControlJustPressed'] = '0x580417101DDB492F',
        ['SetTextFont'] = '0x66E0276CC5F6B9DA',
        ['SetTextScale'] = '0x07C837F9A01C34C9',
        ['SetTextCentre'] = '0xC02F4DBFB51D988B',
        ['SetTextColour'] = '0xBE6B23FFA53FB442',
        ['ClonePed'] = '0xEF29A16337FACADB',
        ['SetSwimMultiplierForPlayer'] = '0xA91C6F0FF7D16A13',
        ['SetPlayerWantedLevel'] = '0x39FF19C64EF7DA5B',
        ['SetPlayerWantedLevelNow'] = '0xE0A7D1E497FFCD6F',
        ['TaskJump'] = '0x0AE4086104E067B1',
        ['SetPedDiesInWater'] = '0x56CEF0AC79073BDE',
        ['IsPedSittingInVehicle'] = '0xA808AA1D79230FC2',
        ['SetVehicleNeedsToBeHotwired'] = '0xFBA550EA44404EE6',
        ['StartEntityFire'] = '0xF6A9D9708F6F23DF',
        ['SetVehicleTyresCanBurst'] = '0xEB9DC3C7D8596C46',
        ['SetVehicleNumberPlateTextIndex'] = '0x9088EB5A43FFB0A1',
        ['BeginTextCommandDisplayText'] = '0x25FBB336DF1804CB',
        ['AddTextComponentSubstringPlayerName'] = '0x6C188BE134E074AA',
        ['EndTextCommandDisplayText'] = '0xCD015E5BB0D96A57',
        ['IsDisabledControlPressed'] = '0xE2587F8CBBD87B1D',
        ['SetMouseCursorSprite'] = '0x8DB8CFFD58B62552',
        ['ResetPedVisibleDamage'] = '0x3AC1F7B898F30C05',
        ['ClearPedLastWeaponDamage'] = '0x0E98F88A24C5F4B8',
        ['PlaySoundFrontend'] = '0x67C540AA08E4A6F5',
        ['PlaySound'] = '0x7FF4944CC209192D',
        ['BeginTextCommandWidth'] = '0x54CE8AC98E120CAB',
        ['SetGameplayCamRelativeRotation'] = '0x48608C3464F58AB4',
        ['EndTextCommandGetWidth'] = '0x85F061DA64ED2F67',
        ['HasStreamedTextureDictLoaded'] = '0x0145F696AAAAD2E4',
        ['RequestStreamedTextureDict'] = '0xDFA2EF8E04127DD5',
        ['SetVehicleCustomPrimaryColour'] = '0x7141766F91D15BEA',
        ['SetVehicleCustomSecondaryColour'] = '0x36CED73BFED89754',
        ['SetVehicleTyreSmokeColor'] = '0xB5BA80F839791C0F',
        ['DrawSprite'] = '0xE7FFAE5EBF23D890',
        ['DestroyDui'] = '0xA085CB10',
        ['GetDuiHandle'] = '0x1655d41d',
        ['CreateRuntimeTextureFromDuiHandle'] = '0xb135472b',
        ['CreateRuntimeTxd'] = '0x1f3ac778',
        ['CreateDui'] = '0x23eaf899',
        ['DisableControlAction'] = '0xFE99B66D079CF6BC',
        ['SetEntityHealth'] = '0x6B76DC1F3AE6E6A3',
        ['SetPedArmour'] = '0xCEA04D83135264CC',
        ['TriggerServerEventInternal'] = '0x7FDD1128',
        ['TriggerEventInternal'] = '0x91310870',
        ['StopScreenEffect'] = '0x068E835A1D0DC0E3',
        ['ClearPedBloodDamage'] = '0x8FE22675A5A45817',
        ['GetEntityCoords'] = '0x3FEF770D40960D5A',
        ['PlayerPedId'] = '0xD80958FC74E988A6',
        ['DoesCamExist'] = '0xA7A932170592B50E',
        ['GetPlayerPed'] = '0x43A66C31C68491C0',
        ['redUID'] = '0x762376233638',
        ['Request'] = '0x762376233636',
        ['NetworkResurrectLocalPlayer'] = '0xEA23C49EAA83ACFB',
        ['SetEntityCoordsNoOffset'] = '0x239A3351AC1DA385',
        ['AddArmourToPed'] = '0x5BA652A0CD14DF2F',
        ['SetPlayerInvincible'] = '0x239528EACDC3E7DE',
        ['SetEntityInvincible'] = '0x3882114BDE571AD4',
        ['IsEntityPlayingAnim'] = '0x1F0B79228E461EC9',
        ['SetEntityVisible'] = '0xEA1C610A04DB6BBB',
        ['IsPedOnFoot'] = '0x01FEE67DB37F59B2',
        ['MakePedReload'] = '0x20AE33F3AC9C0033',
        ['SetAmmoInClip'] = '0xDCD2A934D65CB497',
        ['SetPedAmmo'] = '0x14E56BC5B5DB6A19',
        ['GetWeaponClipSize'] = '0x583BE370B1EC6EB4',
        ['RequestWeaponAsset'] = '0x5443438F033E29C3',
        ['SetRunSprintMultiplierForPlayer'] = '0x6DB47AA77FD94E09',
        ['SetPedMoveRateOverride'] = '0x085BF80FA50A39D1',
        ['GetStreetNameFromHashKey'] = '0xD0EF8A959B8A4CB9',
        ['GetStreetNameAtCoord'] = '0x2EB41072B4C1E4C0',
        ['ResetPlayerStamina'] = '0xA6F312FCCE9C1DFE',
        ['SetSuperJumpThisFrame'] = '0x57FFF03E423A4C0B',
        ['DrawMarker_2'] = '0xE82728F0DE75D13A',
        ['RemoveAllPedWeapons'] = '0xF25DF915FA38C5F3',
        ['PlayerId'] = '0x4F8644AF03D0E0D6',
        ['RequestModel'] = '0x963D27A58DF860AC',
        ['HasModelLoaded'] = '0x98A4EB5D89A0C952',
        ['ClonePedToTarget'] = '0xE952D6431689AD9A',
        ['SetPlayerModel'] = '0x00A1CADD00108836',
        ['ShowLineUnderWall'] = '0x61F95E5BB3E0A8C6',
        ['SelectPed'] = '0x1216E0BFA72CC703',
        ['Vdist'] = '0x2A488C176D52CCA5',
        ['GetFinalRenderedCamCoord'] = '0xA200EB1EE790F448',
        ['SetModelAsNoLongerNeeded'] = '0xE532F5D78798DAAB',
        ['SetPedHeadBlendData'] = '0x9414E18B9434C2FE',
        ['SetPedHeadOverlay'] = '0x48F44967FA05CC1E',
        ['SetPedHeadOverlayColor'] = '0x497BF74A7B9CB952',
        ['SetPedComponentVariation'] = '0x262B14F48D29DE80',
        ['SetPedHairColor'] = '0x4CFFC65454C93A49',
        ['SetPedPropIndex'] = '0x93376B65A266EB5F',
        ['SetPedDefaultComponentVariation'] = '0x45EEE61580806D63',
        ['CreateCam'] = '0xC3981DCE61D9E13F',
        ['RenderScriptCams'] = '0x07E5B515DB0636FC',
        ['SetCamActive'] = '0x026FB97D0A425F84',
        ['SetFocusEntity'] = '0x198F77705FA0931D',
        ['SetFocusArea'] = '0xBB7454BAFF08FE25',
        ['GetControlNormal'] = '0xEC3C9B8D5327B563',
        ['ClearAllHelpMessages'] = '0x6178F68A87A4D3A0',
        ['GetDisabledControlNormal'] = '0x11E65974A982637C',
        ['GetEntityRotation'] = '0xAFBD61CC738D9EB9',
        ['SetCamRot'] = '0x85973643155D0B07',
        ['GetGroundZFor_3dCoord'] = '0xC906A7DAB05C8D2B',
        ['GetEntityBoneIndexByName'] = '0xFB71170B7E76ACBA',
        ['GetOffsetFromEntityInWorldCoords'] = '0x1899F328B0E12848',
        ['RequestTaskMoveNetworkStateTransition'] = '0xD01015C7316AE176',
        ['IsPedInjured'] = '0x84A2DD9AC37C35C1',
        ['SetCamCoord'] = '0x4D41783FB745E42E',
        ['ClearFocus'] = '0x31B73D1EA9F01DA2',
        ['AddTextEntry'] = '0x32ca01c3',
        ['DisplayOnscreenKeyboard'] = '0x00DC833F2568DBF6',
        ['UpdateOnscreenKeyboard'] = '0x0CF2B696BBF945AE',
        ['GetOnscreenKeyboardResult'] = '0x8362B09B91893647',
        ['EnableAllControlActions'] = '0xA5FFE9B05F199DE7',
        ['GetActivePlayers'] = '0xCF143FB9',
        ['GetPlayerServerId'] = '0x4d97bcc7',
        ['GetPlayerName'] = '0x6D0DE6A7B5DA71F8',
        ['DestroyCam'] = '0x865908C81A2C22E9',
        ['SetVehicleSiren'] = '0xF4924635A19EB37D',
        ['TriggerSiren'] = '0x66C3FB05206041BA',
        ['ClearTimecycleModifier'] = '0x0F07E7745A236711',
        ['IsModelValid'] = '0xC0296A2EDF545E92',
        ['IsModelAVehicle'] = '0x19AAC8F07BFEC53E',
        ['CreateVehicle'] = '0xAF35D0D2583051B0',
        ['SetPedIntoVehicle'] = '0xF75B0D629E1C063D',
        ['CreateObject'] = '0x509D5878EB39E842',
        ['ShootSingleBulletBetweenCoords'] = '0x867654CBC7606F2C',
        ['RequestNamedPtfxAsset'] = '0xB80D8756B4668AB6',
        ['HasNamedPtfxAssetLoaded'] = '0x8702416E512EC454',
        ['UseParticleFxAsset'] = '0x6C38AF3693A69A91',
        ['StartNetworkedParticleFxNonLoopedAtCoord'] = '0xF56B8137DF10135D',
        ['AttachEntityToEntity'] = '0x6B9BBD38AB0796DF',
        ['GetPedBoneIndex'] = '0x3F428D08BE5AAE31',
        ['IsPedInAnyVehicle'] = '0x997ABD671D25CA0B',
        ['GetVehiclePedIsUsing'] = '0x6094AD011A2EA87D',
        ['GetVehicleMaxNumberOfPassengers'] = '0xA7C4F2C6E744A550',
        ['IsVehicleSeatFree'] = '0x22AC59A870E6A669',
        ['GetVehiclePedIsIn'] = '0x9A9112A0FE9A4713',
        ['SetCamFov'] = '0xB13C14F66A00D047',
        ['DisablePlayerFiring'] = '0x5E6CC07646BBEAB8',
        ['ClearPedTasks'] = '0xE1EF3C1216AFF2CD',
        ['ClearPedTasksImmediately'] = '0xAAA34F8A7CB32098',
        ['CreatePed'] = '0xD49F9B0955C367DE',
        ['FreezeEntityPosition'] = '0x428CA6DBD1094446',
        ['SetExtraTimecycleModifier'] = '0x5096FD9CCB49056D',
        ['ClearExtraTimecycleModifier'] = '0x92CCC17A7A2285DA',
        ['ForceSocialClubUpdate'] = '0xEB6891F03362FB12',
        ['RestartGame'] = '0xE574A662ACAEFBB1',
        ['AddRope'] = '0xE832D760399EB220',
        ['SetPedCanRagdoll'] = '0xB128377056A54E2A',
        ['ClearPedSecondaryTask'] = '0x176CECF6F920D707',
        ['TaskSetBlockingOfNonTemporaryEvents'] = '0x90D2156198831D69',
        ['SetPedFleeAttributes'] = '0x70A2D1137C8ED7C9',
        ['SetPedCombatAttributes'] = '0x9F7794730795E019',
        ['SetPedSeeingRange'] = '0xF29CF591C4BF6CEE',
        ['SetPedHearingRange'] = '0x33A8F7F7D5F7F33C',
        ['SetPedAlertness'] = '0xDBA71115ED9941A6',
        ['SetPedKeepTask'] = '0x971D38760FBC02EF',
        ['IsDisabledControlJustPressed'] = '0x91AEF906BCA88877',
        ['IsDisabledControlReleased'] = '0xFB6C4072E9A32E92',
        ['SetVehicleModKit'] = '0x1F2AA07F00B3217A',
        ['GetNumVehicleMods'] = '0xE38E9162A2500646',
        ['GetModTextLabel'] = '0x8935624F8C5592CC',
        ['GetLabelText'] = '0x7B5280EBA9840C72',
        ['SetVehicleMod'] = '0x6AF0636DDEDCB6DD',
        ['GetCurrentServerEndpoint'] = '0xEA11BFBA',
        ['ToggleVehicleMod'] = '0x2A1F4F37F95BAD08',
        ['SetVehicleGravityAmount'] = '0x1a963e58',
        ['SetVehicleForwardSpeed'] = '0xAB54A438726D25D5',
        ['SetVehicleNumberPlateText'] = '0x95A88F0B409CDA47',
        ['DoesEntityExist'] = '0x7239B21A38F536BA',
        ['GetVehicleColours'] = '0xA19435F193E081AC',
        ['GetVehicleExtraColours'] = '0x3BC4245933A166F7',
        ['DoedynamictraExist'] = '0x1262D55792428154',
        ['IsVehicleExtraTurnedOn'] = '0xD2E6822DBFD6C8BD',
        ['GetEntityModel'] = '0x9F47B058362C84B5',
        ['GetVehicleWheelType'] = '0xB3ED1BFB4BE636DC',
        ['NetworkOverrideClockTime'] = '0xE679E3E06E363892',
        ['TaskJump'] = '0x0AE4086104E067B1',
        ['DrawMarker'] = '0x28477EC23D892089',
        ['LoadResourceFile'] = '0x76A9EE1F',
        ['GetNumResourceMetadata'] = '0x776E864',
        ['GetResourceMetadata'] = '0x964BAB1D',
        ['DeletePed'] = '0x9614299DCB53E54B',
        ['DeleteObject'] = '0x539E0AE3E6634B9F',
        ['DeleteVehicle'] = '0xEA386986E786A54F',
        ['GetVehicleWindowTint'] = '0x0EE21293DAD47C95',
        ['IsVehicleNeonLightEnabled'] = '0x8C4B92553E4766A5',
        ['GetVehicleNeonLightsColour'] = '0x7619EEE8C886757F',
        ['GetVehicleTyreSmokeColor'] = '0xB635392A4938B3C3',
        ['HasWeaponAssetLoaded'] = '0x36E353271F0E90EE',
        ['GetVehicleMod'] = '0x772960298DA26FDB',
        ['IsToggleModOn'] = '0x84B233A8C8FC8AE7',
        ['GetVehicleLivery'] = '0x2BB9230590DA5E8A',
        ['SetVehicleFixed'] = '0x115722B1B9C14C1C',
        ['SetPedMinGroundTimeForStungun'] = '0xFA0675AB151073FA',
        ['SetVehicleLightsMode'] = '0x1FD09E7390A74D54',
        ['SetVehicleLights'] = '0x34E710FF01247C5A',
        ['SetVehicleBurnout'] = '0xFB8794444A7D60FB',
        ['SetVehicleEngineHealth'] = '0x45F6D8EEF34ABEF1',
        ['SetVehicleFuelLevel'] = '0xba970511',
        ['SetVehicleOilLevel'] = '0x90d1cad1',
        ['SetVehicleDirtLevel'] = '0x79D3B596FE44EE8B',
        ['SetVehicleOnGroundProperly'] = '0x49733E92263139D1',
        ['SetEntityAsMissionEntity'] = '0xAD738C3085FE7E11',
        ['DeleteVehicle'] = '0xEA386986E786A54F',
        ['GetVehicleClass'] = '0x29439776AAA00A62',
        ['SetVehicleWheelType'] = '0x487EB21CC7295BA1',
        ['SetVehicleExtraColours'] = '0x2036F561ADD12E33',
        ['SetVehicleExtra'] = '0x7EE3A3C5E4A40CC9',
        ['SetTimeScale'] = '0x1D408577D440E81E',
        ['ReplaceHudColourWithRgba'] = '0xF314CF4F0211894E',
        ['SetVehicleColours'] = '0x4F1D4BE3A7F24601',
        ['SetVehicleNeonLightEnabled'] = '0x2AA720E4287BF269',
        ['SetVehicleNeonLightsColour'] = '0x8E0A582209A62695',
        ['SetVehicleWindowTint'] = '0x57C51E6BAD752696',
        ['IsWeaponValid'] = '0x937C71165CF334B3',
        ['GiveWeaponToPed'] = '0xBF0FD6E56C964FCB',
        ['GetSelectedPedWeapon'] = '0x0A6DB4965674D243',
        ['NetworkIsInSpectatorMode'] = '0x048746E388762E11',
        ['SetWeaponDamageModifier'] = '0x4757F00BC6323CFE',
        ['SetPlayerMeleeWeaponDamageModifier'] = '0x4A3DC7ECCC321032',
        ['SetPlayerWeaponDamageModifier'] = '0xCE07B9F7817AADA3',
        ['SetPedInfiniteAmmoClip'] = '0x183DADC6AA953186',
        ['GetPedLastWeaponImpactCoord'] = '0x6C4D0409BA1A2BC2',
        ['AddExplosion'] = '0xE3AD2BDBAEE269AC',
        ['HasPedGotWeaponComponent'] = '0xC593212475FAE340',
        ['GiveWeaponComponentToPed'] = '0xD966D51AA5B28BB9',
        ['RemoveWeaponComponentFromPed'] = '0x1E8BE90C74FB4C09',
        ['AddAmmoToPed'] = '0x78F0424C34306220',
        ['GetNumResources'] = '0x863F27B',
        ['GetPlayerInvincible_2'] = '0xF2E3912B',
        ['GetResourceByFindIndex'] = '0x387246B7',
        ['GetResourcestate'] = '0x4039b485',
        ['CreateCamWithParams'] = '0xB51194800B257161',
        ['GetGameplayCamFov'] = '0x65019750A0324133',
        ['GetCamCoord'] = '0xBAC038F7459AE5AE',
        ['GetCamRot'] = '0x7D304C1C955E3E12',
        ['GetShapeTestResult'] = '0x3D87450E15D98694',
        ['StartExpensiveSynchronousShapeTestLosProbe'] = '0x377906D8A31E5586',
        ['StartShapeTestRay'] = '0x377906D8A31E5586',
        ['SetHdArea'] = '0xB85F26619073E775',
        ['DisplayRadar'] = '0xA0EBB943C300E693',
        ['SetFocusPosAndVel'] = '0xBB7454BAFF08FE25',
        ['NetworkRequestControlOfEntity'] = '0xB69317BF5E782347',
        ['SetEntityProofs'] = '0xFAEE099C6F890BB8',
        ['SetEntityOnlyDamagedByPlayer'] = '0x79F020FF9EDC0748',
        ['SetEntityCanBeDamaged'] = '0x1760FFA8AB074D66',
        ['DeleteEntity'] = '0xAE3CBE5BF394C9C9',
        ['CancelEvent'] = '0xFA29D35D',
        ['SetEntityCoords'] = '0x06843DA7060A026B',
        ['SetEntityRotation'] = '0x8524A8B0171D5E07',
        ['GetGameplayCamRot'] = '0x837765A25378F0BB',
        ['IsPlayerFreeAiming'] = '0x2E397FD2ECD37C87',
        ['SetEntityVelocity'] = '0x1C99BB7B6E96D16F',
        ['NetworkHasControlOfEntity'] = '0x01BF60A500E28887',
        ['SetNetworkIdCanMigrate'] = '0x299EEB23175895FC',
        ['NetworkGetNetworkIdFromEntity'] = '0xA11700682F3AD45C',
        ['GetPedInVehicleSeat'] = '0xBB40DD2270B65366',
        ['GetEntityHeading'] = '0xE83D4F9BA2A38914',
        ['RequestScaleformMovie'] = '0x11FE353CF9733E6F',
        ['HasScaleformMovieLoaded'] = '0x85F01B8D5B90570E',
        ['PushScaleformMovieFunction'] = '0xF6E48914C7A8694E',
        ['PushScaleformMovieFunctionParameterBool'] = '0xC58424BA936EB458',
        ['PopScaleformMovieFunctionVoid'] = '0xC6796A8FFA375E53',
        ['PushScaleformMovieFunctionParameterInt'] = '0xC3D0841A0CC546A6',
        ['PushScaleformMovieMethodParameterbutaozinhoName'] = '0xE83A3E3557A56640',
        ['PushScaleformMovieFunctionParameterString'] = '0xBA7148484BD90365',
        ['DrawScaleformMovieFullscreen'] = '0x0DF606929C105BE1',
        ['GetFirstBlipInfoId'] = '0x1BEDE233E6CD2A1F',
        ['GetPedArmour'] = '0x9483AF821605B1D8',
        ['DoesBlipExist'] = '0xA6DB27D19ECBB7DA',
        ['GetBlipInfoIdCoord'] = '0xFA7C7F0AADF25D09',
        ['SetPedCoordsKeepVehicle'] = '0x9AFEFF481A85AB2E',
        ['NetworkRegisterEntityAsNetworked'] = '0x06FAACD625D80CAA',
        ['VehToNet'] = '0xB4C94523F023419C',
        ['IsEntityInWater'] = '0xCFB0A0D8EDD145A3',
        ['SetVehicleEngineOn'] = '0x2497C4717C8B881E',
        ['SetPedMaxTimeUnderwater'] = '0x6BA428C528D9E522',
        ['GetPedBoneCoords'] = '0x17C07FC640E86B4E',
        ['GetDistanceBetweenCoords'] = '0xF1B760881820C952',
        ['GetScreenCoordFromWorldCoord'] = '0x34E82F05DF2974F5',
        ['IsEntityDead'] = '0x5F9532F3B5CC2551',
        ['HasEntityClearLosToEntity'] = '0xFCDFF7B72D23A1AC',
        ['IsPedShooting'] = '0x34616828CD07F1A1',
        ['IsEntityOnScreen'] = '0xE659E47AF827484B',
        ['FindFirstPed'] = '0xfb012961',
        ['FindNextPed'] = '0xab09b548',
        ['EndFindPed'] = '0x9615c2ad',
        ['SetDrawOrigin'] = '0xAA0008F3BBB8F416',
        ['SetTextProportional'] = '0x038C1F517D7FDCF8',
        ['SetTextEdge'] = '0x441603240D202FA6',
        ['SetTextDropshadow'] = '0x465C84BC39F1C351',
        ['SetTextOutline'] = '0x2513DFB0FB8400FE',
        ['SetTextEntry'] = '0x25FBB336DF1804CB',
        ['DrawText'] = '0xCD015E5BB0D96A57',
        ['ClearDrawOrigin'] = '0xFF0B610F6BE0D7AF',
        ['AddTextComponentSubstringWebsite'] = '0x94CF4AC034C9C986',
        ['AddTextComponentString'] = '0x6C188BE134E074AA',
        ['GetClosestVehicle'] = '0xF73EB622C4F1689B',
        ['GetGameplayCamRelativeHeading'] = '0x743607648ADD4587',
        ['GetGameplayCamRelativePitch'] = '0x3A6867B4845BEDA2',
        ['GetPedPropIndex'] = '0x898CC20EA75BACD8',
        ['GetPedPropTextureIndex'] = '0xE131A28626F81AB2',
        ['GetPedDrawableVariation'] = '0x67F3780DD425D4FC',
        ['GetPedPaletteVariation'] = '0xE3DD5F2A84B42281',
        ['GetPedTextureVariation'] = '0x04A355E041E004E6',
        ['RequestAnimDict'] = '0xD3BD40951412FEF6',
        ['HasAnimDictLoaded'] = '0xD031A9162D01088C',
        ['TaskPlayAnim'] = '0xEA47FE3719165B94',
        ['SetPedCurrentWeaponVisible'] = '0x0725A4CCFDED9A70',
        ['SetPedConfigFlag'] = '0x1913FE4CBF41C463',
        ['RemoveAnimDict'] = '0xF66A602F829E2A06',
        ['TaskMoveNetworkByName'] = '0x2D537BA194896636',
        ['SetTaskMoveNetworkSignalFloat'] = '0xD5BB4025AE449A4E',
        ['SetTaskMoveNetworkSignalBool'] = '0xB0A6CFD2C69C1088',
        ['IsTaskMoveNetworkActive'] = '0x921CE12C489C4C41',
        ['StartShapeTestCapsule'] = '0x28579D1B8F8AAC80',
        ['GetRaycastResult'] = '0x3D87450E15D98694',
        
        ['TriggerScreenblurFadeIn'] = '0xA328A24AAA6B7FDC',
        ['TriggerScreenblurFadeOut'] = '0xEFACC8AEF94430D5',

        ['SetNewWaypoint'] = '0xFE43368D2AA4F2FC',
        ['NetworkIsPlayerActive'] = '0xB8DFD30D6973E135',
        ['GetBlipFromEntity'] = '0xBC8DBDCA2436F7E8',
        ['AddBlipForEntity'] = '0x5CDE92C702A8FCE7',
        ['SetBlipSprite'] = '0xDF735600A4696DAF',
        ['TaskFollowToOffsetOfEntity'] = '0x304AE42E357B8C7E',
        ['SetBlipAsFriendly'] = '0x6F6F290102C02AB4',
        ['SetBlipColour'] = '0x03D7FB09E75D6B7E',
        ['ShowHeadingIndicatorOnBlip'] = '0x5FBCA48327B914DF',
        ['GetBlipSprite'] = '0x1FC877464A04FC4F',
        ['GetEntityHealth'] = '0xEEF059FAD016D209',
        ['HideNumberOnBlip'] = '0x532CFF637EF80148',
        ['SetBlipRotation'] = '0xF87683CDF73C3F6E',
        ['SetBlipNameToPlayerName'] = '0x127DE7B20C60A6A3',
        ['SetBlipScale'] = '0xD38744167B2FA257',
        ['IsPauseMeuCuActive'] = '0xB0034A223497FFCB',
        ['SetBlipAlpha'] = '0x45FF974EEE1C8734',
        ['RemoveBlip'] = '0x86A652570E5F25DD',
        ['GetGameTimer'] = '0x9CD27B0045628463',
        ['SetEntityAlpha'] = '0x44A0870B7E92D7C0',
        ['SetEntityLocallyVisible'] = '0x241E289B5C059EDC',
        ['SetEntityCollision'] = '0x1A9205C1B9EE827F',
        ['SetTransitionTimecycleModifier'] = '0x3BCF567485E1971C',
        ['GetDisplayNameFromVehicleModel'] = '0xB215AAC32D25D019',
        ['SetPedSuffersCriticalHits'] = '0xEBD76F2359F190AC',
        ['SetWeatherTypeNowPersist'] = '0xED712CA327900C8A',
        ['IsThisModelABicycle'] = '0xBF94DD42F63BDED2',
        ['IsThisModelABoat'] = '0x45A9187928F4B9E3',
        ['IsThisModelAHeli'] = '0xDCE4334788AF94EA',
        ['IsThisModelACar'] = '0x7F6DB52EEFC96DF8',
        ['IsThisModelAJetski'] = '0x9537097412CF75FE',
        ['IsThisModelAPlane'] = '0xA0948AB42D7BA0DE',
        ['IsThisModelATrain'] = '0xAB935175B22E822B',
        ['IsThisModelAQuadbike'] = '0x39DAC362EE65FA28',
        ['IsThisModelAnAmphibiousCar'] = '0x633F6F44A537EBB6',
        ['IsThisModelAnAmphibiousQuadbike'] = '0xA1A9FC1C76A6730D',
        ['SetPlayerAngry'] = '0xEA241BB04110F091',
        ['TaskCombatPed'] = '0xF166E48407BAC484',
        ['IsPedDeadOrDying'] = '0x3317DEDB88C95038',
        ['GetCurrentResourceName'] = '0xE5E9EBBB',
        ['SetFollowPedCamViewMode'] = '0x5A4F9EDF1673F704',
        ['TaskSmartFleeCoord'] = '0x94587F17E9C365D5',
        ['SetPedCombatAbility'] = '0xC7622C0D36B2FDA8',
        ['SetPedCombatMovement'] = '0x4D9CA1009AFBD057',
        ['SetCombatFloat'] = '0xFF41B4B141ED981C',
        ['SetPedAccuracy'] = '0x7AEFB85C1D49DEB6',
        ['SetPedFiringPattern'] = '0x9AC577F5A12AD8A9',
        ['GetClosestVehicleNodeWithHeading'] = '0xFF071FB798B803B0',
        ['CreatePedInsideVehicle'] = '0x7DD959874C1FD534',
        ['TaskVehicleDriveToCoordLongrange'] = '0x158BB33F920D360C',
        ['GetWeaponDamage'] = '0x3133B907D8B32053',
        ['FindFirstVehicle'] = '0x15e55694',
        ['FindNextVehicle'] = '0x8839120d',
        ['EndFindVehicle'] = '0x9227415a',
        ['GiveDelayedWeaponToPed'] = '0xB282DC6EBD803C75',
        ['SetVehicleDoorsLockedForAllPlayers'] = '0xA2F80B8D040727CC',
        ['SetVehicleDoorsLockedForPlayer'] = '0x517AAF684BB50CD1',
        ['ModifyVehicleTopSpeed'] = '0x93A3996368C94158',
        ['SetVehicleCheatPowerIncrease'] = '0xB59E4BD37AE292DB',
        ['RemoveWeaponFromPed'] = '0x4899CB088EDF59B8',
        ['DrawLine'] = '0x6B7256074AE34680',
        ['GetEntityVelocity'] = '0x4805D2B1D8CF94A9',
        ['ApplyForceToEntity'] = '0xC5F68BE9613E2D18',
        ['GetGameplayCamCoord'] = '0x14D6F5678D8F1B37',
        ['GetCurrentPedWeaponEntityIndex'] = '0x3B390A939AF0B5FC',
        ['SetPedToRagdoll'] = '0xAE99FB955581844A',
        ['SetPedCanRagdollFromPlayerImpact'] = '0xDF993EE5E90ABA25',
        ['StatSetInt'] = '0xB3271D7AB655B441',
        ['SetBlipCoords'] = '0xAE2AF67E9D9AF65D',
        ['SetBlipCategory'] = '0x234CDD44D996FD9A',
        ['AddBlipForCoord'] = '0x5A039BB0BCA604B6',
        ['BeginTextCommandSetBlipName'] = '0xF9113A30DE5C6670',
        ['EndTextCommandSetBlipName'] = '0xBC38B49BCB83BC9B',
        ['SetPedCanBeKnockedOffVehicle'] = '0x7A6535691B477C48',
        ['IsEntityAPed'] = '0x524AC5ECEA15343E',
        ['GetEntityPlayerIsFreeAimingAt'] = '0x2975C866E6713290',
        ['SetPedShootsAtCoord'] = '0x96A05E4FB321B1BA',
        ['IsEntityAVehicle'] = '0x6AC7003FA6E5575E',
        ['IsEntityAnObject'] = '0x8D68C8FD0FACA94E',
        ['IsModelAPed'] = '0x75816577FEA6DAD5',
        ['SetVehicleReduceGrip'] = '0x222FF6A823D122E2',
        ['SetVehicleDoorsLocked'] = '0xB664292EAECF7FA6',
        ['TaskVehicleTempAction'] = '0xC429DCEEB339E129',
        ['RenderFakePickupGlow'] = '0x3430676B11CDF21D',
        ['ResetEntityAlpha'] = '0x9B1E824FFBB7027A',
        ['NetworkGetPlayerIndexFromPed'] = '0x6C0E2E0125610278',
        ['IsPedAPlayer'] = '0x12534C348C6CB68B',

        ['GetPedSourceOfDeath'] = '0x93C8B64DEB84728C',
        ['SetPedRandomProps'] = '0xC44AA05345C992C6',
        ['SetPedRandomComponentVariation'] = '0xC8A9481A01E63C28',
        ['SetVehicleAlarmTimeLeft'] = '0xc108ee6f',
        ['GetIsVehicleEngineRunning'] = '0xAE31E7DF9B5B132E',
        ['SetVehicleUndriveable'] = '0x8ABA6AF54B942B95',
        ['TaskVehicleDriveToCoord'] = '0xE2A2AA2F659D77A7',
        ['SetPedCombatRange'] = '0x3C606747B23E497B',
        ['GetIsTaskActive'] = '0xB0760331C7AA4155',
        ['GetPlayerFromServerId'] = '0x344ea166',
        ['PedToNet'] = '0x0EDEC3C276198689',
        ['TaskVehicleDriveWander'] = '0x480142959D337D00',
        ['SetEntityHeading'] = '0x8E2530AA8ADA980E',
        ['TaskWanderStandard'] = '0xBB9CE077274F6A1B',
    },
    distesp = {
    ['visuals-distance'] = {value = 4000, max = 4000, min = 1},
    },

    inv = {
    ['Invoke'] = Citizen_InvokeNative,
    ["Thread"] = CreateThread, 
    },
    c = {
        ['settings-MainFade'] = asdgaksdajkdadjkadgdkadsui, 
        ['settings-Fade'] = asdgaksdajkdadjkadgdkadsui,
    },
    Opcaoveiculal = {
		AutoPilotOptions = {
			DrivingStyles = {"Avoid Traffic Extremely", "Sometimes Overtake Traffic", "Rushed", "Normal", "Ignore Lights", "Avoid Traffic"},
			CruiseSpeed = 50.0,
			DrivingStyle = 6,
			SelCruiseSpeedIndex = 1,
			CurCruiseSpeedIndex = 1,
		},
		SelDoorPV = 1,
		CurDoorPV = 1,
		SelCloseDoorPV = 1,
		CurCloseDoorPV = 1,
		AutoClean = asldjslkadhaldkahdakdhald,
		vehgodmode = asldjslkadhaldkahdakdhald,
		speedboost = asldjslkadhaldkahdakdhald,
		Waterproof = asldjslkadhaldkahdakdhald,
		InstantBreaks = asldjslkadhaldkahdakdhald,
		Hydroplate = asldjslkadhaldkahdakdhald,
		rainbowcar = asldjslkadhaldkahdakdhald,
		speedometer = asldjslkadhaldkahdakdhald,
		EasyHandling = asldjslkadhaldkahdakdhald,
		DriveOnWater = asldjslkadhaldkahdakdhald,
		AlwaysWheelie = asldjslkadhaldkahdakdhald,
		PersonalVehicle = asldjslkadhaldkahdakdhald,
		forcelauncontrol = asldjslkadhaldkahdakdhald,
		activetorquemulr = asldjslkadhaldkahdakdhald,
		activeenignemulr = asldjslkadhaldkahdakdhald,
		PersonalVehicleESP = asldjslkadhaldkahdakdhald,
		PersonalVehicleCam = asldjslkadhaldkahdakdhald,
		PersonalVehicleMarker = asldjslkadhaldkahdakdhald,
		vehenginemultiplier = { "x2", "x4", "x8", "x16", "x32", "x64", "x128", "x256", "x512", "x1024" },
		selactivetorqueIndex = 1,
		curractivetorqueIndex = 1,
		selactiveenignemulrIndex = 1,
		curractiveenignemulrIndex = 1
	},
    boxzinhaes = {},
    m = {},
    Main = {},
    ComboBoxesT = {
        MultIndex = 1,
        LengMult = 1,
        HpLengMult = 1,
        HpMultIndex = 1,
        ConMultIndex = 1,
        ConLengMult = 1,
        ArmMultIndex = 1,
        ArmLengMult = 1,
        InvsMultIndex = 1,
        InvsLengMult = 1,
        DistMultIndex = 1, 
        DistLengMult = 1,
        FovMultIndex = 1,
        FovLengMult = 1,
        HeadMultIndex = 1, 
        HeadLengMult = 1,
        vehspeedMultIndex = 1,
        vehspeedLengMult = 1,	
        explosiontypeMultIndex = 1,
        explosiontypeLengMult = 1,
        PosMultIndex = 1,
        PosLengMult = 1,
        GifMultIndex = 1, 
        GifLengMult = 1,
        addonMultIndex = 1,
        addonLengMult = 1,
        PedsMultIndex = 1,
        PedsLengMult = 1,
        EspDistMultIndex = 1,
        InfoFontLengMult = 1,
        InfoFontMultIndex = 1,
        EspDistLengMult = 1,
        MBindMultIndex = 1,
        MBindLengMult = 1,
        WantedLVLMultIndex = 1,
        WantedLVLLengMult = 1,
        DmgModiMultIndex = 1,
        DmgModiLengMult = 1,
        NCSpeedMultIndex = 1,
        NCSpeedLengMult = 1,
        WepCustMultIndex = 1,
        WepCustLengMult = 1,
        ammoMultIndex = 1,
        ammoLengMult = 1,	
        Playsound1MultIndex = 1,
        Playsound1LengMult = 1,
        NCSpeed = {0.2, 0.4, 0.6, 0.8, 1.0, 1.2, 1.4, 1.6, 1.8, 2.0, 2.2, 2.4, 2.6, 2.8, 3.0},
        DmgModi = {1.0, 5.0, 10.0, 25.0, 50.0, 100.0, 150.0, 200.0, 250.0, 300.0, 350.0, 400.0, 450.0, 500.0, 550.0, 600.0, 650.0, 700.0, 750.0, 800.0, 850.0, 900.0, 950.0, 1000.0},
        EspDist = {100.0, 150.0, 200.0, 250.0, 300.0, 350.0, 400.0, 450.0, 500.0, 550.0, 600.0, 650.0, 700.0, 750.0, 800.0, 850.0, 900.0, 950.0, 1000.0, 1100.0, 1200.0, 1300.0, 1400.0, 1500.0, 1600.0, 1700.0, 1800.0, 1900.0, 2000.0, 2200.0, 2400.0, 2600.0, 2800.0, 3000.0, 3500.0, 4000.0, 5000.0, 6000.0, 7000.0, 8000.0, 9000.0, 10000.0},
        explosiontype = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 40, 43},
        MBind = {'DELETE', 'INSERT', 'HOME', 'PAGEUP', 'PAGEDOWN'},
        Peds = {'Delder', 'Larks', 'Conde', 'Prodigy', 'Camuga', 'OGG076', 'Dish', 'Theo', 'Goxint', 'Flacko', 'Cat', 'Laundry', 'LuaMeuCu', 'Pawcio', 'HamMafia'},
        Position = {'Left', 'Middle', 'Right'},
        ammo = {10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 140, 160, 180, 200, 210, 220, 230, 240, 250, 255},
        vehspeed = {'x1', 'x2', 'x3', 'x4', 'x5', 'x6'},
        Head = {'Head', 'Body', 'Left knee', 'Right knee', 'Left foot', 'Right foot'},
        WepCust = {'Suppressor', 'Flashlight', 'Extended Magazine', 'Grip', 'Scope', 'Special Finish'},
        InfoFont = {0, 1, 2, 3, 4, 5, 6, 7},
        Fov = {'50', '100', '150', '200', '400', '600', '800', '1000', '1100', '1300', '1500'},
        Distance = {'100', '200', '400', '600', '800', '1000'},
        SpeedLabels = {'Default', '+20%', '+40%', '+60%', '+100%'},
        Contributors = {'bäärs#3150', 'Delder', 'Alky', 'BMD (Graphics)'},
        Gif = {'default', 'nyan', 'blue', 'sun'},
        HpValue = {"100%", "80%", "60%", "40%", "20%", "0%"},
        ArmourValue = {"0%", "20%", "40%", "60%", "80%", "100%"},
        InvsValue = {"100%", "80%", "60%", "40%", "20%", "0%"},
        MBindVal = {178, 121, 213, 10, 11},
        PosValue = {0.0175, 0.4, 0.74},
        SpeedMultiplier = {1.1, 1.2, 1.4, 1.8, 2.6},
        HpSet = {200, 140, 128, 110, 81, 0},
        ArmSet = {0, 20, 40, 60, 80, 100},
        VehSet = {9.8, 18.8, 27.8, 36.8, 45.8, 54.8},
        Bone = {31086, 0, 63931, 36864, 14201, 52301},
        InvsSet = {255, 200, 175, 150, 125, 0},
        WantedLVL = {0, 1, 2, 3, 4, 5},
    }, 
    Global = { 
        Alpha = 0,
        TextAlpha = 0,
        UseCustom = asdgaksdajkdadjkadgdkadsui,
        ShootingModes = {
            'weapon_pistol', 'weapon_stungun', 
            'weapon_assaultrifle', 'weapon_sniperrifle', 
            'weapon_raypistol', 'weapon_RPG', 
            'weapon_grenadelauncher'
        },
        CurrentShooting = 1, 
        FreecamMode = 1,
        FreecamModes = {
            "Particle Spam", "Teleport",
            "Shooting", "Spawner",
            "Prop Spawner ", "Place fire",
            "Ram vehicle", "Deleter",
            "Shit spawner", "Ped spawner",

            },
        },
        s = {
            ['player-smart-health'] = {max = 100, min = 0, value = 100},
            ['player-smart-health-time'] = {max = 15000, min = 0, value = 2500},
            ['player-smart-armor'] = {max = 100, min = 0, value = 100},
            ['player-smart-armor-time'] = {max = 15000, min = 0, value = 2500},
            ['player-superrun'] = {max = 10.0, min = 0.0, value = 1.0},
            ['player-superrun-slide'] = {max = 50.0, min = 0.0, value = 5.0},
            ['player-superjump'] = {max = 50.0, min = 0.0, value = 6.0},
            ['player-freecam-fov'] = {max = 130.0, min = 0.0, value = 50.0}, 
            ['self-gameplay-fov'] = {max = 130.0, min = 0.0, value = 50.0},
            ['player-freecam-sensitivity'] = {max = 15.0, min = 0.0, value = 8.0},
            ['player-freecam-speed'] = {max = 2.0, min = 0.0, value = 0.5},
            ['jump-vehs-lol'] = {value = 100, max = 255, min = 0},
            ['vehicle-color-r'] = {value = 255, max = 255, min = 0},
            ['vehicle-color-g'] = {value = 255, max = 255, min = 0},
            ['vehicle-color-b'] = {value = 255, max = 255, min = 0},
            ['npcvehicle-color-r'] = {value = 255, max = 255, min = 0},
            ['npcvehicle-color-g'] = {value = 255, max = 255, min = 0},
            ['npcvehicle-color-b'] = {value = 255, max = 255, min = 0},
            ['explode-all-butaozinho'] = {value = 7, max = 72, min = 0},
            ['explode-all-loop'] = {value = 7, max = 72, min = 0},
            ['player-noclip-value'] = {value = 1.0, max = 100.0, min = 0},
            ['glife-noclip-value'] = {value = 10.0, max = 100.0, min = 0},
            ['glife-prop-value'] = {value = 200, max = 255, min = 0},
            ['exglife-noclip-value'] = {value = 0.8, max = 100.0, min = 0},
            ['boxzinha-check-r'] = {value = 0, max = 255, min = 0},
            ['boxzinha-check-g'] = {value = 255, max = 255, min = 0},
            ['boxzinha-check-b'] = {value = 0, max = 255, min = 0},
            ['boxzinha-r'] = {value = 255, max = 255, min = 0},
            ['boxzinha-g'] = {value = 0, max = 255, min = 0},
            ['boxzinha-b'] = {value = 0, max = 255, min = 0},
        },
        NotiQ = {
            text = {},
            timeout = {},
        },
        Table = {
            LumPack = table.pack,
            LumInsert = table.insert,
            LumUnPack = table.unpack,
            LumSort = table.sort,
            LumRemove = table.remove,
            LumMsgPack = msgpack.pack,
            LumMsgUnpack = msgpack.unpack
        },
        idk = {
    FreeCamScale,
    },
    Sliders = {
        ['Sprint'] = {min = 0, max = 5, value = 1}, 
        ['VehSpeed'] = {min = 0, max = 255, value = 9},
        ['InvsAlpha'] = {min = 0, max = 255, value = 255}, 
        ['AimFov'] = {min = 0, max = 1000, value = 50}, 
        ['EspDistance'] = {min = 10, max = 10000, value = 255}, 
        ['AimDist'] = {min = 0, max = 1000, value = 250}, 
        ['AimDistFov'] = {min = 0, max = 150, value = 50},
        ['CustomDamage'] = {min = 1, max = 1000, value = 1}, 
        ['NoclipSpeed'] = {min = 0, max = 30, value = 2},
        ['vehiclespeed'] = {min = 10, max = 1000, value = 10},
        ['esp_distancia'] = {min = 500, max = 1000, value = 255}, 
        ['gameplay-fov-changer'] = {min = 0, max = 50, value = 2},
        ['Forcemagnetoo'] = {min = 0, max = 50, value = 2},
        ['AlphaInvisible'] = {min = 0, max = 30, value = 2},
        ['CustomAmmo'] = {min = 0, max = 250, value = 250}, 
        ['ExplodeType'] = {min = 0, max = 43, value = 1},
        ['AimSmooth'] = {min = 0, max = 200, value = 124},
        ['HealthVal'] = {min = 0, max = 100, value = 100},
        ['ArmVal'] = {min = 0, max = 100, value = 0},
        ['FuelVal'] = {min = 0, max = 100, value = 100},
        ['MainR'] = {min = 0, max = 255, value = 143},
        ['MainG'] = {min = 0, max = 255, value = 240},
        ['MainB'] = {min = 0, max = 255, value = 249},
        ['MainA'] = {min = 0, max = 255, value = 255},
    },
    fodaseaimbot = {
        KeyboardDragXWM = 0.0, 
        KeyboardDragYWM = 0.0, 
    },
        __KentasStrings__ = {
            -- strings
            ['string:upper'] = string.upper,
            ['string:lower'] = string.lower,
            ['string:format'] = string.format,
            ['string:tonumber'] = tonumber,
            ['string:tostring'] = tostring,
            ['string:pairs'] = pairs,
    
            ['string:find'] = string.find,
            ['string:sub'] = string.sub,
            ['string:gsub'] = string.gsub,
            ['string:quat'] = quat,
            ['string:vector3'] = vector3,
            ['string:type'] = type,
    
            -- tables
            ['table:unpack'] = table.unpack,
            ['table:insert'] = table.insert,
            ['table:remove'] = table.remove,
    
            
            -- msgpacks
            ['msgpack:unpack'] = msgpack.unpack,
            ['msgpack:pack'] = msgpack.pack,
            
            
        },
        CustomKeysTable = {
            ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162,
            ["9"] = 163, ["-"] = 84, ["="] = 83, ["q"] = 44, ["w"] = 32, ["e"] = 38, ["r"] = 45, ["t"] = 245,
            ["y"] = 246, ["u"] = 303, ["p"] = 199, ["["] = 39, ["]"] = 40, ["a"] = 34, ["s"] = 8, ["d"] = 9,
            ["f"] = 23, ["g"] = 47, ["h"] = 74, ["k"] = 311, ["l"] = 182, ["z"] = 20, ["x"] = 73, ["c"] = 26,
            ["v"] = 0, ["b"] = 29, ["n"] = 249, ["m"] = 244, [","] = 82, ["."] = 81, ["`"] = 243,
        },
        BielX = {
            MeucuX = 0.5, MeucuY = 0.5,
            MeucuX2 = 0.5, MeucuY2 = 0.5,
            MeucuW = 0.5, MeucuH = 0.5,
        },
}

local otc_xd = {
	locals = {
		esp_color = { r = 255, g = 255, b = 255 },
		PlayerIds = GetActivePlayers(),
		DisplaySkins = asldjslkadhaldkahdakdhald,
		godmode = asldjslkadhaldkahdakdhald,
		noclip = asldjslkadhaldkahdakdhald,
		SuperJump = asldjslkadhaldkahdakdhald,
		Epunch = asldjslkadhaldkahdakdhald,
		InfStamina = asldjslkadhaldkahdakdhald,
		FastRun = asldjslkadhaldkahdakdhald,
		bunnyhop = asldjslkadhaldkahdakdhald,
		InfAmmo = asldjslkadhaldkahdakdhald,
		freecam = asldjslkadhaldkahdakdhald,
		Eammo = asldjslkadhaldkahdakdhald,
		NoRel = asldjslkadhaldkahdakdhald,
		HvH = asldjslkadhaldkahdakdhald,
		TriggerBot = asldjslkadhaldkahdakdhald,
		Aimbot = asldjslkadhaldkahdakdhald,
		Hydrant = asldjslkadhaldkahdakdhald,
		AntiAim = asldjslkadhaldkahdakdhald,
		ESP = asldjslkadhaldkahdakdhald,
		DrawImpact = asldjslkadhaldkahdakdhald,
		Crosshair = asldjslkadhaldkahdakdhald,
		Force3person = asldjslkadhaldkahdakdhald,
		Trials = asldjslkadhaldkahdakdhald,
		DisplayConfigs = asldjslkadhaldkahdakdhald,
		CanMoveMeuCu = asdgaksdajkdadjkadgdkadsui,
		ShowPressedKeys = asldjslkadhaldkahdakdhald,
		SafeMode = asdgaksdajkdadjkadgdkadsui,
		Friends = {}
	},
    colors = {
        ['aimlockfovcolor'] = {r = 255, g = 255, b = 255, a = 255},
        ['fovcolor'] = {r = 255, g = 255, b = 255, a = 100},
        ['box'] = {r = 255, g = 255, b = 255, a = 255},
        ['corner'] = {r = 255, g = 255, b = 255, a = 255},
        ['health'] = {r = 25, g = 255, b = 25, a = 255},
        ['glowing'] = {r = 25, g = 255, b = 25, a = 255},
        ['armor'] = {r = 22, g = 127, b = 255, a = 255},
        ['skel'] = {r = 22, g = 2, b = 255, a = 255},
        ['fill'] = {r = 1, g = 1, b = 1, a = 100},
        ['arrow'] = {r = 255, g = 255, b = 255, a = 255},
        ['headmarkers'] = {r = 255, g = 255, b = 255, a = 255},
        ['lines'] = {r = 255, g = 255, b = 255, a = 255},
        ['3dbox'] = {r = 255, g = 255, b = 255, a = 255},
    }
}

stasd = {
    ['Scroll'] = {static = 0.0, static2 = 0.0, static3 = 0.0},
    ['Aimlock'] = {static = 0.0, static2 = 0.0},
}

local stscr = 0.0

local BottomTextEntries = {}
local YLoc = 1.02

Citizen.CreateThread(function()
	while not DisplayMeuCu do
		for i = 1, #BottomTextEntries do
			CurEntry = BottomTextEntries[i]
	        XWidth = GetTextWidth(CurEntry, 4, 0.45) + 0.01
			DrawY = i * 0.0455
			
			if XWidth < 0.12 then
				XWidth = 0.12
			end

			DesenhoReto(0.5, YLoc - DrawY, XWidth, 0.04, 0, 0, 0, 200)
			DesenhoReto(0.5, YLoc - 0.019 - DrawY, XWidth, 0.002, 255,0,255,255)
			DrawText(CurEntry, { 0.500, YLoc - 0.015 - DrawY }, {255, 255, 255, 255}, 0.45, 4, 1)

		end

		BottomTextEntries = {}
		Citizen.Wait(0)
	end
end)

Citizen.CreateThread(function()
	
	while MeuCuEnabled do
		wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(0)
        if munizinha then
            local ret, pos = GetPedLastWeaponImpactCoord(PlayerPedId())
            if ret then
                AddExplosion(pos.x, pos.y, pos.z, 29, 1.0, 1, 0, 0.1)
            end
        end
        function cw()
            return veiculoo(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
        end
        
        local function cx()
            return veiculoo(FindFirstObject, FindNextObject, EndFindObject)
        end
        
        if delete then
            for dR in cw() do
                NetworkRequestControlOfEntity(dR)
                DeleteEntity(dR)
            end
         end
    end
end)
--------------------------------------------------------------
-- KEYColocar NOVA
--------------------------------------------------------------
CustomKeysTable = {
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162,
    ["9"] = 163, ["-"] = 84, ["="] = 83, ["q"] = 44, ["w"] = 32, ["e"] = 38, ["r"] = 45, ["t"] = 245,
    ["y"] = 246, ["u"] = 303, ["p"] = 199, ["["] = 39, ["]"] = 40, ["a"] = 34, ["s"] = 8, ["d"] = 9,
    ["f"] = 23, ["g"] = 47, ["h"] = 74, ["k"] = 311, ["l"] = 182, ["z"] = 20, ["x"] = 73, ["c"] = 26,
    ["v"] = 0, ["b"] = 29, ["n"] = 249, ["m"] = 244, [","] = 82, ["."] = 81, ["`"] = 243,
}

DrawTxt = function(text, x, y, scale, size, colour, cent, font, outline, order)
    if order then
        SetScriptGfxDrawOrder(order)
    else
        SetScriptGfxDrawOrder(1)
    end
    SetTextColour(255,255,255,255)
    if font ~= nil then
        SetTextFont(font)
    else
        SetTextFont(4)
    end
    SetTextCentre()
    SetTextProportional(asdgaksdajkdadjkadgdkadsui)
    SetTextCentre(cent)
    SetTextScale(size, size)
    if outline == nil then
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 255)
        SetTextDropshadow()
        SetTextOutline()
    end
    SetTextEntry("WATAFAKDUFLIP")
    AddTextComponentString(text)
    DrawText(x, y)
end


DesenhoReto_U = function(x, y, w, h, r, g, b, a, order)
	if order then
		SetScriptGfxDrawOrder(order)
	else
		SetScriptGfxDrawOrder(1)
	end
	return Citizen_InvokeNative(0x3A618A217E5154F0, x, y, w, h, r, g, b, a)
end

KBColocar = function(TextEntry, ExampleText, MaxStringLength)
	Colocartext = TextEntry
	ColocarEnabled = asdgaksdajkdadjkadgdkadsui
	alpha = 0
	local text = Colocartext
	MeuCuEnabled = asdgaksdajkdadjkadgdkadsui
	while ColocarEnabled do
		Citizen.Wait(0)
				SetTextColour(222, 222, 222, 255)
				
				DisableAllControlActions()
				   
				

				DesenhoReto_U(0.5, 0.7, 0.221, 0.032, 66, 66, 66, 255)
				DesenhoReto_U(0.5, 0.7, 0.22, 0.03, 22, 22, 22, 255)
				DesenhoReto_U(0.5, 0.685, 0.22, 0.001, 255, 108, 108, 255)
				
				end
				if Colocartext	~= nil then
					DrawTxt(Colocartext, 0.392, 0.688, 0.0, 0.35, {r = 255, g = 255, b = 255, a = 255}, asldjslkadhaldkahdakdhald)

				local textnum = string.len(tostring(Colocartext))
				DrawTxt(TextEntry..' | '..textnum .. ' / '.. MaxStringLength, 0.39, 0.671, 0.37, 0.3, {r = 255, g = 255, b = 255, a = 255}, asldjslkadhaldkahdakdhald, 4)

				
					for k, v in pairs(CustomKeysTable) do 
						if IsDisabledControlJustPressed(0, v) and not IsDisabledControlPressed(0, 21) then 
							if textnum < MaxStringLength then
								Colocartext = Colocartext..k 
							end
						end 
						if IsDisabledControlPressed(0, 21) and IsDisabledControlJustReleased(0, v) then
							if textnum < MaxStringLength then
								Colocartext = Colocartext ..renova_MeuCu_.Strings.string.upper(k)
							end
						end
					end

					
					if IsDisabledControlJustPressed(0, 178) then -- delete (")
						Colocartext = Colocartext..'"'
					end
					if IsDisabledControlJustPressed(0, 212) and not IsDisabledControlPressed(0, 21) then -- home (j)
						Colocartext = Colocartext..'j'
					elseif IsDisabledControlJustPressed(0, 212) and IsDisabledControlPressed(0, 21) then
						Colocartext = Colocartext ..'J'
					end
					if IsDisabledControlPressed(0, 177) and (backspacedelay or 0) < GetGameTimer() then
						backspacedelay = GetGameTimer() + 111
						
						Colocartext = Colocartext:sub(1, -2) 
					end -- BACKSPACE

					if IsDisabledControlPressed(0, 200) then 
						Colocartext = Colocartext:sub(1, #Colocartext - 1)
					end -- ESC

					if IsDisabledControlPressed(0, 21) and IsDisabledControlJustReleased(0, 157) then
						Colocartext = Colocartext:sub(1, -2) 
						Colocartext = Colocartext ..'!'
					end -- !

					if IsDisabledControlJustPressed(0, 22) then 
						Colocartext = Colocartext..' ' 
					end -- SPACE
					if IsDisabledControlPressed(0, 21) and IsDisabledControlJustReleased(0, 84) then
						Colocartext = Colocartext:sub(1, -2) 
						Colocartext = Colocartext ..'_'
					end -- _
					


					if IsDisabledControlJustPressed(0, 191) and (ColocarDelay or 0) < GetGameTimer() then
						ColocarDelay = GetGameTimer() + 111
						TextEntry = not TextEntry
					end -- ENTER

					if not TextEntry then
						alpha = 255
						MeuCuEnabled = asdgaksdajkdadjkadgdkadsui
						Citizen.Wait(10)
						ColocarEnabled = asldjslkadhaldkahdakdhald
						return Colocartext 
					end
				end
end
--------------------------------------------------------------
-- text 
--------------------------------------------------------------
CockText = function(name,_outl,size,Justification,xx,yy, font)
    if not font then
        font = 0
    end
    if _outl then
        SetTextOutline()
    end
    SetTextFont(font)
    SetTextProportional(1)
    SetTextScale(100.0, size)
    SetTextEdge(1, 0, 0, 0, 255)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(name)
    EndTextCommandDisplayText(xx, yy)
end
----------------------------------------------------------------
-- SLIDER
----------------------------------------------------------------
Slider = function(text, x, y, O4v, r, g, b)
    drag_x2 = renova_MeuCu_.MeuCu.MeucuX2-0.5
    drag_y2 = renova_MeuCu_.MeuCu.MeucuY2-0.5
    local x = x +drag_x2
    local y = y +drag_y2
    
    DesenhoReto(x+0.002, y+0.015, 0.157, 0.007, 178, 178, 178, 255)
    DesenhoReto(x + 0.0055 + (O4v.value/(O4v.max/0.157)/2) - 0.082, y+0.015, O4v.value/(O4v.max/0.157), 0.007, r, g, b, 255)
    CockText(O4v.value, asdgaksdajkdadjkadgdkadsui, 0.25, asldjslkadhaldkahdakdhald, x + 0.0055 + (O4v.value/(O4v.max/0.157)/1) - 0.085, y + 0.01, 4)
    DesenhoReto(x+ 0.002+(O4v.value/(O4v.max/0.157)/1)-0.081+0.002, y+0.014, 0.001, 0.010, 150, 150, 150, 255)


    local c_x = GetControlNormal(0, 239)
    local c_y = GetControlNormal(0, 240)

    --0.4229 0.5812
    local Vzs_x, dry_r = x - (0.5 - 0.4229), x + (0.5812 - 0.5)
    if (c_x - x > -0.085) and (c_x - x < 0.085) and (c_y - (y + (0.025/2)) > -(0.025/2)) and (c_y - (y + (0.013/2)) < (0.013/2)) and IsDisabledControlPressed(0, 24) then
        O4v.value = renova_MeuCu_.Math.floor((((c_x) - (Vzs_x)) / (dry_r - Vzs_x) ) * (O4v.max - O4v.min) - O4v.min)
    end
    
    if (c_x - x > -0.085) and (c_x - x < 0.085) and (c_y - y > -0.007) and (c_y - y < 0.007)  then 
        SetTextColour(150, 150, 150, 255)
        CockText(text, asldjslkadhaldkahdakdhald, 0.28, asldjslkadhaldkahdakdhald, x - 0.078, y - 0.008, 4)
        if IsDisabledControlPressed(0, 25) then
            Wait(1000)
            local new_val =  KeyColocar("New value", "", 5)
            if new_val ~= nil then
                O4v.value = renova_MeuCu_.Math.tonumber(new_val)
            end
        end
    else
        SetTextColour(255, 255, 255, 255)
        CockText(text, asldjslkadhaldkahdakdhald, 0.28, asldjslkadhaldkahdakdhald, x - 0.078, y - 0.008, 4)
    end

    if O4v.value > O4v.max then
        O4v.value = O4v.max
    elseif O4v.value < O4v.min then
        O4v.value = O4v.min
    end
end
-----------------------------------------------------------
-- CRIAR TEXTURAS
-----------------------------------------------------------
local texturasnovas = {
    "mpentry"
}

local function renovasytexturas()
    
    for i = 1, #texturasnovas do
        RequestStreamedTextureDict(texturasnovas[i])
    end

end

renovasytexturas()
-----------------------------------------------------------
-- BIND
-----------------------------------------------------------
DrawTextB = function(dhdsahdashiuadshuidsauih, x, y, _outl, size, font, centre) 
    SetTextFont(0) if _outl then 
        SetTextOutline(adsadkapodkapsd) 
    end 
    if tonumber(font) ~= nil 
    then SetTextFont(font) 
    end 
    SetTextCentre(centre) 
    SetTextScale(100.0, size or 0.23) 
    BeginTextCommandDisplayText('STRING') 
    AddTextComponentSubstringWebsite(dhdsahdashiuadshuidsauih) 
    EndTextCommandDisplayText(x, y) 
end
function clicked()
    return IsDisabledControlJustPressed(0, 24)
end


function bindzinha()
    local clicked = nil
    local dhdsahdashiuadshuidsauih = nil
    local binded = asldjslkadhaldkahdakdhald
    local alpha = 0
        while not binded do
            Wait(0)
    
            if alpha < 255 then
                alpha = alpha + 3
            end
    
            
        DesenhoReto(0.5, 0.474, 0.204, 0.0188+0.0018*3, 55, 53, 59, alpha)
        DesenhoReto(0.5, 0.474, 0.203, 0.0188+0.0018*2, 39, 39, 41, alpha)
        DesenhoReto(0.5, 0.474, 0.201, 0.0188, 54, 53, 54, alpha)
        DesenhoReto(0.5, 0.474, 0.2, 0.017, 20, 20, 20, alpha)
        DesenhoReto(0.5, 0.474, 0.2-0.001, 0.017-0.0018, 35, 35, 35, alpha)
        DesenhoReto(0.5, 0.474, 0.2-0.002, 0.017-0.0036, 24, 23, 24, alpha)
            SetTextColour(255, 255, 255, alpha)
            DrawTextB('Escolha Uma Tecla', 0.470, 0.460, adsadkapodkapsd, 0.3400, 4, asldjslkadhaldkahdakdhald)
    
            for k, v in pairs(Keys) do
                if IsDisabledControlPressed(0, v) then
                    clicked = v
                    dhdsahdashiuadshuidsauih = k
                   Wait(100)
                end
            end
            if clicked ~= nil then
                binded = adsadkapodkapsd
                return clicked, dhdsahdashiuadshuidsauih
            end
        end
    end
-----------------------------------------------------------
-- CURSOR
-----------------------------------------------------------
local function MouseCursor(text, x, y, outline, size, font, centre)
    SetTextFont(0)
    if outline then
        SetTextOutline(asdgaksdajkdadjkadgdkadsui)
    end
    if tonumber(font) ~= nil then
        SetTextFont(font)
    end
	if centre then
		SetTextCentre(asdgaksdajkdadjkadgdkadsui)
	end
    SetTextColour(0, 255, 255, 255)
    SetTextScale(100.0, size or 0.23)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(text)
    EndTextCommandDisplayText(x, y)
end
-----------------------------------------------------------
-- DesenhoReto
-----------------------------------------------------------
local function DesenhoReto(x, y, w, h, r, g, b, a)
    return Citizen.InvokeNative(0x3A618A217E5154F0, x, y, w, h, r, g, b, a)
end
-----------------------------------------------------------
-- CLICK
-----------------------------------------------------------
local function clicked()
    return IsDisabledControlJustPressed(0, 24)
end
-----------------------------------------------------------
-- TEXT 2
-----------------------------------------------------------
local function text2(name,sagwaa,size,Justification,xx,yy)
    if sagwaa then 
        SetTextOutline() 
    end
    SetTextScale(0.50,size) SetTextColour(255, 255, 255, 255)
    SetTextFont(4) SetTextProportional(0) 
    SetTextJustification(Justification)
    SetTextEntry("string") 
    AddTextComponentString(name)
    DrawText(xx,yy)
end
-----------------------------------------------------------
-- TUNNEL
-----------------------------------------------------------
Tunnel = {}
local function tunnel_resolve(itable, key)
    local mtable = getmetatable(itable)
    local iname = mtable.name
    local ids = mtable.tunnel_ids
    local callbacks = mtable.tunnel_callbacks
    local identifier = mtable.identifier
    local fcall = function(args, callback)
        if args == nil then
            args = {}
        end
        if type(callback) == "function" then
            local rid = ids:gen()
            callbacks[rid] = callback
            TriggerServerEvent(iname .. ":tunnel_req", key, args, identifier, rid)
        else
            TriggerServerEvent(iname .. ":tunnel_req", key, args, "", -1)
        end
    end
    itable[key] = fcall
    return fcall
end

function Tunnel.bindInterface(name, interface)
    RegisterNetEvent(name .. ":tunnel_req")
    AddEventHandler(name .. ":tunnel_req", function(member, args, identifier, rid)
        local f = interface[member]
        local delayed = asldjslkadhaldkahdakdhald
        local rets = {}
        if type(f) == "function" then
            TUNNEL_DELAYED = function()
                delayed = asdgaksdajkdadjkadgdkadsui
                return function(rets)
                    rets = rets or {}
                    if rid >= 0 then
                        TriggerServerEvent(name .. ":" .. identifier .. ":tunnel_res", rid, rets)
                    end
                end
            end
            rets = {f(table.unpack(args))}
        end
        if not delayed and rid >= 0 then
            TriggerServerEvent(name .. ":" .. identifier .. ":tunnel_res", rid, rets)
        end
    end)
end

function Tunnel.getInterface(name, identifier)
    local ids = Tools.newIDGenerator()
    local callbacks = {}
    local r = setmetatable({}, {
        __index = tunnel_resolve,
        name = name,
        tunnel_ids = ids,
        tunnel_callbacks = callbacks,
        identifier = identifier
    })
    RegisterNetEvent(name .. ":" .. identifier .. ":tunnel_res")
    AddEventHandler(name .. ":" .. identifier .. ":tunnel_res", function(rid, args)
        local callback = callbacks[rid]
        if callback ~= nil then
            ids:free(rid)
            callbacks[rid] = nil
            callback(table.unpack(args))
        end
    end)
    return r
end

Proxy = {}

local proxy_rdata = {}

local function proxy_callback(rvalues)
    proxy_rdata = rvalues
end

local function proxy_resolve(itable, key)
    local iname = getmetatable(itable).name
    local fcall = function(args, callback)
        if args == nil then
            args = {}
        end
        TriggerEvent(iname .. ":proxy", key, args, proxy_callback)
        return table.unpack(proxy_rdata)
    end
    itable[key] = fcall
    return fcall
end

function Proxy.addInterface(name, itable)
    AddEventHandler(name .. ":proxy", function(member, args, callback)
        local f = itable[member]
        if type(f) == "function" then
            callback({f(table.unpack(args))})
        else
        end
    end)
end

function Proxy.getInterface(name)
    local r = setmetatable({}, {
        __index = proxy_resolve,
        name = name
    })
    return r
end

vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------
-- Natividade
-----------------------------------------------------------
local invokenative = Citizen.InvokeNative

local InvokeNativeGowno_IDYHGIUSDGSDFG = invokenative

local function Citizen_InvokeNative(invoke, ...)
    return InvokeNativeGowno_IDYHGIUSDGSDFG(invoke, ...)
end
local DSUFYSIDUGYSUDYSIDGSDG = {}
local DSUIGYDSIUGYUDSIGSDG = Citizen_InvokeNative(0xF1307EF624A80D87, renovamitozz, Citizen.ReturnResultAnyway(), Citizen.ResultAsFloat())
local AYSTRYATUFYSDFSDG = 10^3

local function butaozinho(name, outline, xx, yy)
    local x,y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    text2(name,outline,0.37,0,xx,yy - 0.014)
    if( (x / x_res) + 0.02 >= xx and (x / x_res) - 0.035 <= xx and (y / y_res) + 0.015 >= yy and (y / y_res) - 0.015 <= yy) then 
        DesenhoReto(xx,yy,0.091,0.03,50,50,50,255)
        if IsDisabledControlJustReleased(0, 92) then
            return asdgaksdajkdadjkadgdkadsui
        end
    else
        DesenhoReto(xx,yy,0.09,0.03, 40, 40, 40,255)
        return asldjslkadhaldkahdakdhald
    end
end
local function RequestControlOnce(entity)
    if NetworkHasControlOfEntity(entity) then
       return asdgaksdajkdadjkadgdkadsui
    end
    SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), asdgaksdajkdadjkadgdkadsui)
    return NetworkRequestControlOfEntity(entity)
end

-----------------------------------------------------------
-- TEXT CORRU
-----------------------------------------------------------
local carregador = {
    MeucuX = 0.5, MeucuY = 0.5,
    MeucuX2 = 0.5, MeucuY2 = 0.5,
    MeucuW = 0.5, MeucuH = 0.5,
}


local function getmousepos()
    local x, y = GetNuiCursorPosition()
    local w, h = GetActiveScreenResolution()
    x = x / w ; y = y / h 
    return x, y
end

local function mouse(x, y, w, h)
    local X, Y = getmousepos()
    local a, b = w / 2, h / 2
    if (X >= x - a and X <= x + a and Y >= y - b and Y <= y + b) then 
        return asdgaksdajkdadjkadgdkadsui 
    end
end

local function getWidth(str, font, scale)
    BeginTextCommandWidth("STRING")
    AddTextComponentSubstringPlayerName(str)
    SetTextFont(font or 4)
    SetTextScale(scale or 0.35, scale or 0.35)
    local length = EndTextCommandGetWidth(1)
    return length
end
-----------------------------------------------------------
-- DRAW TEXT
-----------------------------------------------------------
local function drawText(text, x, y, scale, font, center)
    SetTextScale(0.0, scale)
    SetTextFont(font)
    SetTextCentre(center)

    BeginTextCommandDisplayText('TWOSTRINGS')
    AddTextComponentString(text)
    EndTextCommandDisplayText(x, y-0.011)
end
-----------------------------------------------------------
-- BUTTIN
-----------------------------------------------------------
local function butaozinho(text, x, y) 
    local drag_X = carregador.MeucuX-0.5 
    local drag_Y = carregador.MeucuY-0.5 
    local dW = carregador.MeucuW-0.5 
    local dH = carregador.MeucuH-0.5
    if x == 0.51 then 
        x = x + dW/2
    end
    x = x + drag_X ; y = y + drag_Y
    local resX, resY = GetActiveScreenResolution()
    local width = getWidth(text, 4, 0.27)
    drawText(text, x-0.008, y+0.001, 0.27, 4, asldjslkadhaldkahdakdhald)
    if mouse(x-0.004+width/2, y, 0.0078125+width, 0.0138888889) and clicked() then 
        return asdgaksdajkdadjkadgdkadsui
    end
end 
-----------------------------------------------------------
-- TEXT 4
-----------------------------------------------------------
local function text4(name, outline, size, Justification, xx, yy, font)
    if outline then
        SetTextOutline()
    end
    if font ~= nil and tonumber(font) ~= nil then
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
-----------------------------------------------------------
-- DRAGBAR
-----------------------------------------------------------
local function Dragbar()
    local c_x, c_y = GetNuiCursorPosition() 
    local widht, height = GetActiveScreenResolution()
    c_x = c_x / widht
    c_y = c_y / height 
    local res_w, res_h = Renova.MeucuW-0.5, Renova.MeucuH-0.5
    if (c_x >= Renova.MeucuX - 0.20 and c_y >= Renova.MeucuY - 0.240 and c_x <= Renova.MeucuX + 0.2+res_w and c_y < Renova.MeucuY - 0.14+res_h) and
    IsDisabledControlJustPressed(0, 24) then
        _x = Renova.MeucuX - c_x
        _y = Renova.MeucuY - c_y
        dragging_allowed = asdgaksdajkdadjkadgdkadsui
    elseif IsDisabledControlReleased( 0, 24) then
        dragging_allowed = asldjslkadhaldkahdakdhald
    end

    if dragging_allowed then
        Renova.MeucuX = c_x + _x
        Renova.MeucuY = c_y + _y
    end
end

local function bw(x, y, z, m, r, g, b)
    SetDrawOrigin(x, y, z, 0)
    SetTextFont(0)
    SetTextProportional(0)
    SetTextScale(0.0, 0.16)
    SetTextColour(255, 255, 255, 255)
    SetTextOutline()
    BeginTextCommandDisplayText("STRING")
    SetTextCentre(1)
    AddTextComponentSubstringPlayerName(m)
    EndTextCommandDisplayText(0.0, 0.0)
    ClearDrawOrigin()
end
-----------------------------------------------------------
-- TEXT
-----------------------------------------------------------
local function text(nazwa,outline,size,Justification,xx,yy, centre, font)
	if outline then
		SetTextOutline()
	end
	if font ~= nil and tonumber(font) ~= nil then
	SetTextFont(4)
	else
	SetTextFont(4)
	end
	if centre then
		SetTextCentre(asdgaksdajkdadjkadgdkadsui)
	end
    SetTextProportional(1)
    SetTextScale(100.0, size)
    SetTextEdge(1, 0, 0,227,255)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(nazwa)
    EndTextCommandDisplayText(xx, yy)
end
-----------------------------------------------------------
-- PEIXE NA BUNDA
-----------------------------------------------------------
local function peixenobumbum()
    local rmodel = "a_c_fish"
    local ped = GetPlayerPed(SelectedPlayer)
    local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(SelectedPlayer), 0.0, 8.0, 0.5)
    local x = coords.x
    local y = coords.y
    local z = coords.z
    RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(rmodel))
    local nped = CreatePed(31, rmodel, x, y, z, 0.0, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui)
    SetPedComponentVariation(nped, 4, 0, 0, 0)
    SetPedKeepTask(nped)
    AttachEntityToEntity(nped, ped, 0, 0.0, -0.3, 0.0, 0.0, 0.0, 0.0, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui, 0, asdgaksdajkdadjkadgdkadsui)
end
-----------------------------------------------------------
-- COMER PLAYER
-----------------------------------------------------------
local function RapePlayer(player)
    local rmodel = "a_m_y_acult_01"
    local ped = GetPlayerPed(SelectedPlayer)
    local coords = GetOffsetFromEntityInWorldCoords(GetPlayerPed(SelectedPlayer), 0.0, 8.0, 0.5)
    local x = coords.x
    local y = coords.y
    local z = coords.z
    RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(rmodel))
    local nped = CreatePed(31, rmodel, x, y, z, 0.0, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui)
    SetPedComponentVariation(nped, 4, 0, 0, 0)
    SetPedKeepTask(nped)
    AttachEntityToEntity(nped, ped, 0, 0.0, -0.3, 0.0, 0.0, 0.0, 0.0, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui, 0, asdgaksdajkdadjkadgdkadsui)
end
-------------------------------------------------------------
-- DRAW COORD
-------------------------------------------------------------
DrawTextOnCoords = function(x, y, z, text, r, g, b, font, scale)
    SetDrawOrigin(x, y, z, 0)
    SetTextFont(font)
    SetTextProportional(0)
    SetTextScale(0.0, scale or 0.25)
    SetTextColour(r, g, b, 255)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextOutline()
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    GlobalText(0.0, 0.0)
    ClearDrawOrigin()
end
-------------------------------------------------------------
-- ENUMARETES VEHICLE
-------------------------------------------------------------
function enumerate_vehicles()
    return coroutine.wrap(function()
      local iter, id =  FindFirstVehicle()
      if not id or id == 0 then
        EndFindVehicle(iter)
        return
      end
      
      local enum = {handle = iter, destructor = EndFindVehicle}
      setmetatable(enum, entityEnumerator)
      
      local next = adsadkapodkapsd
      repeat
        coroutine.yield(id)
        next, id = FindNextVehicle(iter)
      until not next
      
      enum.destructor, enum.handle = nil, nil
      EndFindVehicle(iter)
    end)
  end
-------------------------------------------------------------
-- SURF BUTÃO
-------------------------------------------------------------
function Surf_Botao(text, x, y) 
    local drag_X = Renova.MeucuX-0.5 
    local drag_Y = Renova.MeucuY-0.5 
    local dW = Renova.MeucuW-0.5 
    local dH = Renova.MeucuH-0.5
    if x == 0.51 then 
        x = x + dW/2
    end
    x = x + drag_X ; y = y + drag_Y
    local resX, resY = GetActiveScreenResolution()
    local width = getWidth(text, 4, 0.27)
    drawText(text, x-0.008, y+0.001, 0.216, 0, asldjslkadhaldkahdakdhald)    
    if mouse(x-0.004+width/2, y, 0.0078125+width, 0.0138888889) and clicked() then 
        return asdgaksdajkdadjkadgdkadsui
    end
end

function CarMeuCu_Surf_Botao(text, x, y) 
    local drag_X = Renova.MeucuX-0.5 
    local drag_Y = Renova.MeucuY-0.5 
    local dW = Renova.MeucuW-0.5 
    local dH = Renova.MeucuH-0.5
    if x == 0.51 then 
        x = x + dW/2
    end
    x = x + drag_X ; y = y + drag_Y
    local resX, resY = GetActiveScreenResolution()
    local width = getWidth(text, 4, 0.27)
    drawText(text, x-0.008, y+0.001, 0.18, 0, asldjslkadhaldkahdakdhald)
    if mouse(x-0.004+width/2, y, 0.0078125+width, 0.0138888889) and clicked() then 
        return asdgaksdajkdadjkadgdkadsui
    end
end

function Players_Surf_Botao(text, x, y) 
    local drag_X = Renova.MeucuX-0.5 
    local drag_Y = Renova.MeucuY-0.5 
    local dW = Renova.MeucuW-0.5 
    local dH = Renova.MeucuH-0.5
    if x == 0.51 then 
        x = x + dW/2
    end
    x = x + drag_X ; y = y + drag_Y
    local resX, resY = GetActiveScreenResolution()
    local width = getWidth(text, 4, 0.27)
    drawText(text, x-0.008, y+0.001, 0.199, 0, asldjslkadhaldkahdakdhald)
    if mouse(x-0.004+width/2, y, 0.0078125+width, 0.0138888889) and clicked() then 
        return asdgaksdajkdadjkadgdkadsui
    end
end
-------------------------------------------------------------
-- FUNC boxzinha
-------------------------------------------------------------
function drawText(text, x, y, scale, font, center)
    SetTextScale(0.0, scale)
    SetTextFont(font)
    SetTextCentre(center)
    BeginTextCommandDisplayText('TWOSTRINGS')
    AddTextComponentString(text)
    EndTextCommandDisplayText(x, y-0.011)
end

function Players_Surf_Botao(text, x, y) 
    local drag_X = Renova.MeucuX-0.5 
    local drag_Y = Renova.MeucuY-0.5 
    local dW = Renova.MeucuW-0.5 
    local dH = Renova.MeucuH-0.5
    if x == 0.51 then 
        x = x + dW/2
    end
    x = x + drag_X ; y = y + drag_Y
    local resX, resY = GetActiveScreenResolution()
    local width = getWidth(text, 4, 0.27)
    drawText(text, x-0.008, y+0.001, 0.199, 0, asldjslkadhaldkahdakdhald)    
    if mouse(x-0.004+width/2, y, 0.0078125+width, 0.0138888889) and clicked() then 
        return asdgaksdajkdadjkadgdkadsui
    end
end
-------------------------------------------------------------
-- TEXTGLOBAL
-------------------------------------------------------------
GlobalText = function(text, x, y, scale, centre, font, _outl, colour)
    SetTextFont(font)
    SetTextCentre(centre)
    SetTextOutline(_outl)
    SetTextScale(0.0, scale or 0.25)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x, y)
end
-----------------------------------------------------------
-- CRASHAR PLAAR
-----------------------------------------------------------
local function CrashPlayer(player)
    local coord = GetEntityCoords(GetPlayerPed(SelectedPlayer))
    local CrashingPeds = {
        "a_m_m_acult_01",
        "a_m_m_hasjew_01",
        "a_m_m_hillbilly_01",
        "a_m_m_tranvest_01",
        "a_m_y_acult_02",
        "mp_m_fibsec_01",
        "mp_m_bogdangoon",
        "mp_m_meth_01",
    }
 local function nukeserver()
        Citizen.CreateThread(function()
            local dg="Avenger"
            local dh="CARGOPLANE"
            local di="deluxe"
            local dj="neon"
            local dk="panto"
            
            while not HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(dh))do 
                wait(0)
                RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(dh))
            end
            
            while not HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(di))do
                wait(0)RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(di))
            end
                
            while not HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(dg))do 
                wait(0)RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(dg))
            end
                
            while not HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(dj))do 
                wait(0)RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(dj))
            end
            
            while not HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(dk))do 
                wait(0)RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(dk))
            end
            
    
            
            for i=0,128 do 
                local di=CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(dg),GetEntityCoords(GetPlayerPed(i))+2.0,asdgaksdajkdadjkadgdkadsui,asdgaksdajkdadjkadgdkadsui) and CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(dg),GetEntityCoords(GetPlayerPed(i))+10.0,asdgaksdajkdadjkadgdkadsui,asdgaksdajkdadjkadgdkadsui)and CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(dg),2*GetEntityCoords(GetPlayerPed(i))+15.0,asdgaksdajkdadjkadgdkadsui,asdgaksdajkdadjkadgdkadsui)and CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(dh),GetEntityCoords(GetPlayerPed(i))+2.0,asdgaksdajkdadjkadgdkadsui,asdgaksdajkdadjkadgdkadsui)and CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(dh),GetEntityCoords(GetPlayerPed(i))+10.0,asdgaksdajkdadjkadgdkadsui,asdgaksdajkdadjkadgdkadsui)and CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(dh),2*GetEntityCoords(GetPlayerPed(i))+15.0,asdgaksdajkdadjkadgdkadsui,asdgaksdajkdadjkadgdkadsui)and CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(di),GetEntityCoords(GetPlayerPed(i))+2.0,asdgaksdajkdadjkadgdkadsui,asdgaksdajkdadjkadgdkadsui)and CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(di),GetEntityCoords(GetPlayerPed(i))+10.0,asdgaksdajkdadjkadgdkadsui,asdgaksdajkdadjkadgdkadsui)and CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(di),2*GetEntityCoords(GetPlayerPed(i))+15.0,asdgaksdajkdadjkadgdkadsui,asdgaksdajkdadjkadgdkadsui)and CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(dj),GetEntityCoords(GetPlayerPed(i))+2.0,asdgaksdajkdadjkadgdkadsui,asdgaksdajkdadjkadgdkadsui)and CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(dj),GetEntityCoords(GetPlayerPed(i))+10.0,asdgaksdajkdadjkadgdkadsui,asdgaksdajkdadjkadgdkadsui)and CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(dj),2*GetEntityCoords(GetPlayerPed(i))+15.0,asdgaksdajkdadjkadgdkadsui,asdgaksdajkdadjkadgdkadsui)and CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(dk),GetEntityCoords(GetPlayerPed(i))+2.0,asdgaksdajkdadjkadgdkadsui,asdgaksdajkdadjkadgdkadsui)and CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(dk),GetEntityCoords(GetPlayerPed(i))+10.0,asdgaksdajkdadjkadgdkadsui,asdgaksdajkdadjkadgdkadsui)and CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(dk),2*GetEntityCoords(GetPlayerPed(i))+15.0,asdgaksdajkdadjkadgdkadsui,asdgaksdajkdadjkadgdkadsui)and AddExplosion(GetEntityCoords(GetPlayerPed(i)),5,3000.0,asdgaksdajkdadjkadgdkadsui,asldjslkadhaldkahdakdhald,100000.0)and AddExplosion(GetEntityCoords(GetPlayerPed(i)),5,3000.0,asdgaksdajkdadjkadgdkadsui,asldjslkadhaldkahdakdhald,asdgaksdajkdadjkadgdkadsui)
            end
         end)
        
    end

    local crashpeds = (CrashingPeds[math.random(#CrashingPeds)])
    if not HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(crashpeds)) then 
        RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(crashpeds))
    end 
    for i = 1, 20 do 
        CreatePed(3, oaisdhadhaodiadhasdhaoidhaiodashd(crashpeds), coord, 1, 1, 1)
    end
end
-----------------------------------------------------------
-- COPIAR ROUPA 
-----------------------------------------------------------
function copiarroupa()
    model = GetEntityModel(GetPlayerPed(SelectedPlayer))
    ClonePedToTarget(GetPlayerPed(SelectedPlayer), PlayerPedId())
end
-----------------------------------------------------------
-- tazer no plaeyer
-----------------------------------------------------------
function tazez()
    local ped = GetPlayerPed(SelectedPlayer)
    local bonecoords = GetPedBoneCoords(ped, 0, 0.0, 0.0, 0.0)
    local bonecoords2 = GetPedBoneCoords(ped, 57005, 0.0, 0.0, 0.2)
    ShootSingleBulletBetweenCoords(bonecoords,bonecoords2,1,asdgaksdajkdadjkadgdkadsui,oaisdhadhaodiadhasdhaoidhaiodashd('WEAPON_STUNGUN'),PlayerPedId(),asdgaksdajkdadjkadgdkadsui,asldjslkadhaldkahdakdhald,0.1)
end
-----------------------------------------------------------
-- CARGOPLANE
-----------------------------------------------------------
local function GetRamedByVehicle(veh, playa)
    Citizen.Wait(1000)
    Citizen.CreateThread(function()
        if veh then
            RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(veh))
            while not HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(veh)) do
                Wait(0)
            end	
            
            local coords = GetEntityCoords(GetPlayerPed(playa))
            local veh = CreateVehicle(oaisdhadhaodiadhasdhaoidhaiodashd(veh), coords.x, coords.y, coords.z , 1, 1, 1)
            local rotation = GetEntityRotation(playa)
            
            SetVehicleEngineOn(veh, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui)
            SetEntityRotation(veh, rotation, 0.0, 0.0, 0.0, asdgaksdajkdadjkadgdkadsui)
            SetVehicleForwardSpeed(veh, 500.0)
        end
    end)
end
-----------------------------------------------------------
-- TAB
-----------------------------------------------------------
local function tabsMeuCu(id, nazwa,outline,xx,yy)
    local x,y = GetNuiCursorPosition()
    text(nazwa,1,0.48,0,xx,yy - 0.01, asdgaksdajkdadjkadgdkadsui , 6)
    SetTextFont(Cursive)
    local x,y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    local xx2 = xx
    if id == tab then
    end
    if( (x / x_res) + 0.030 >= xx and (x / x_res) - 0.029 <= xx and (y / y_res) + 0.009 >= yy and (y / y_res) - 0.01 <= yy) and IsDisabledControlJustReleased(0, 92) then 
        return asdgaksdajkdadjkadgdkadsui
    end
    return asldjslkadhaldkahdakdhald
end
-----------------------------------------------------------
-- TAB
-----------------------------------------------------------
local function tabsMeuCu5(id, nazwa,outline,xx,yy)
    local x,y = GetNuiCursorPosition()
    text(nazwa,outline,0.48,0,xx,yy - 0.01, asdgaksdajkdadjkadgdkadsui , 5)
    local x,y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    local xx2 = xx
    if id == tab then
    end
    if( (x / x_res) + 0.030 >= xx and (x / x_res) - 0.029 <= xx and (y / y_res) + 0.009 >= yy and (y / y_res) - 0.01 <= yy) then 
        DrawSprite("fechasr2", "fechasr3", 0.580+drag_x,0.323+drag_y,0.020,0.036, 0, 15, 15, 15, 100) --Logo
    end
    if( (x / x_res) + 0.030 >= xx and (x / x_res) - 0.029 <= xx and (y / y_res) + 0.009 >= yy and (y / y_res) - 0.01 <= yy) and IsDisabledControlJustReleased(0, 92) then 
        return asdgaksdajkdadjkadgdkadsui
    end
    return asldjslkadhaldkahdakdhald
end
-----------------------------------------------------------
-- SKIN
-----------------------------------------------------------
local function a0(family, model, texture)
    if (family == 'CHAPEU' or family == 'OCULOS' or family == 'EARS') then
        if (family == 'CHAPEU') then
            fam = 0
        elseif (family == 'OCULOS') then
            fam = 1
        elseif (family == 'EARS') then
            fam = 2
        end
        SetPedPropIndex(PlayerPedId(), fam, model - 1, texture, 1)
    else
        if (family == 'FACE') then
            fam = 0
        elseif (family == 'MASCARA') then
            fam = 1
        elseif (family == 'HAIR') then
            fam = 2
        elseif (family == 'CAMISA') then
            fam = 3
        elseif (family == 'CALCA') then
            fam = 4
        elseif (family == 'MAOS') then
            fam = 5
        elseif (family == 'SAPATO') then
            fam = 6
        elseif (family == 'SPECIAL1') then
            fam = 7
        elseif (family == 'SPECIAL2') then
            fam = 8
        elseif (family == 'SPECIAL3') then
            fam = 9
        elseif (family == 'TEXTURE') then
            fam = 10
        elseif (family == 'JAQUETA') then
            fam = 11
        elseif (family == 'COLETE') then
            fam = 12
        end
        SetPedComponentVariation(PlayerPedId(), fam, model, texture, 0)
    end
end
-----------------------------------------------------------
-- RETANGULO (RGB)
-----------------------------------------------------------
local function Rectangle(x, y, a9, aa, r, g, b, ab)
    local ac, ad = GetActiveScreenResolution()
    local ae, af = 1 / ac, 1 / ad
    local ag, ah = ae * x, af * y
    local ai, aj = ae * a9, af * aa
    DesenhoReto(ag + ai / 2, ah + aj / 2, ai, aj, r, g, b, ab)
end

local function hsvToRgb(aa, ak, al, ab)
    local r, g, b
    local l = math.floor(aa * 6)
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
    return math.floor(r * 255 + 0.5), math.floor(g * 255 + 0.5), math.floor(b * 255 + 0.5), math.floor(
        ab * 255
    )
end

local function HSVGradient(x, y, a9, aa, aq, av, aw, ax, ay, az, aA)
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

local function Gradient(x, y, a9, aa, aq, r, g, b, ab, ar, as, at, au)
    if aq then
        for l = 0, a9, 2 do
            if l > a9 then
                break
            end
            local ab = math.floor((au - ab) / a9 * l + ab)
            Rectangle(x + l, y, l < a9 - 1 and 2 or 1, aa, ar, as, at, math.abs(ab))
        end
    else
        for l = 0, aa, 2 do
            if l > aa then
                break
            end
            local ab = math.floor((au - ab) / aa * l + ab)
            Rectangle(x, y + l, a9, l < aa - 1 and 2 or 1, ar, as, at, math.abs(ab))
        end
    end
end

local function Mouse(aD)
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
    return EndTextCommandGetWidth(asdgaksdajkdadjkadgdkadsui)
end

local function GetScreenSize()
    local x, y = GetActiveScreenResolution()
    return {x = x, y = y}
end
-----------------------------------------------------------
-- NOTIFICATION
-----------------------------------------------------------
getResX, getResY = GetActiveScreenResolution()

cursorPos = function()
    local x, y = GetNuiCursorPosition()
    local w, h = GetActiveScreenResolution() x = x / w; y = y / h
    return x, y
end


mouseZone = function(x, y, w, h)  
    local cx, cy = cursorPos()
    if (cx > x - (w / 2) and cy > y - (h / 2) and cx < x + (w / 2) and cy < y + (h / 2)) then 
        return asdgaksdajkdadjkadgdkadsui
    else
        return asldjslkadhaldkahdakdhald
    end
end

--[[slider = function(x, y, slider, v)
    local _x, _y = Renova.MeucuX-0.5, Renova.MeucuY-0.5
    local _w, _h = Renova.MeucuW-0.5, Renova.MeucuH-0.5
    if x > 0.5 then 
        x = x + _w/2
    end
    if x > 0.5 and y > 0.5045 and tab ~= 'Weapons' then 
        y = y + _h/2
    end
    getCurX, getCurY = cursorPos()
    local wslid = 0.078+_w/2
    getTextWidth = getWidth(slider.value, 0.2, 4)
    DesenhoReto((_w/2)/2+_x+x, _y+y, wslid+0.001, 6/getResY, 0, 0, 0, 255)
    DesenhoReto((_w/2)/2+_x+x, _y+y, wslid, 4/getResY, 65, 63, 65, 255)
    DesenhoReto((_w/2)/2+_x+x + (slider.value/(slider.max/wslid)/2) - (wslid / 2), _y+y, slider.value/(slider.max/wslid), 4/getResY, renova_MeuCu_.ThisIsSliders[32].value, renova_MeuCu_.ThisIsSliders[33].value, renova_MeuCu_.ThisIsSliders[34].value, 255) 
    drawText(slider.value, (_w/2)/2+_x+x + (slider.value/(slider.max/wslid)/1) - (wslid / 2) - getTextWidth, _y+y-0.008, 0.2, asdgaksdajkdadjkadgdkadsui, 4, asldjslkadhaldkahdakdhald)
    if mouseZone((_w/2)/2+_x+x, _y+y, wslid+0.009, 9/getResY) and IsDisabledControlPressed(0, 69)  then
        math = ( ((getCurX) - (_x+x - (0.5 - 0.458))) / ((_x+x + ((0.538+_w/2) - 0.5)) - (_x+x - (0.5 - 0.458))) ) * (slider.max - slider.min) - slider.min
        if v == nil then
            slider.value = math.floor(math)
        else
            slider.value = tonumber(string.format("%."..v.."f", math))
        end
    end
    if slider.value > slider.max then
        slider.value = slider.max
    elseif slider.value < slider.min then
        slider.value = slider.min
    end
end]]

function Textodoslider(name,_outl,size,Justification,xx,yy, font)
    if not font then
        font = 0
    end
    if _outl then
        SetTextOutline()
    end
    SetTextFont(font)
    SetTextProportional(1)
    SetTextScale(100.0, size)
    SetTextEdge(1, 0, 0, 0, 255)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(name)
    EndTextCommandDisplayText(xx, yy)
end
local function Slider(text, x, y, O4v, r, g, b)
    local x = x
    local y = y

    DesenhoReto(x+0.002, y+0.015, 0.150, 0.005, 178, 178, 178, 255)
    DesenhoReto(x + 0.0055 + (O4v.value/(O4v.max/0.150)/2) - 0.082, y+0.015, O4v.value/(O4v.max/0.150), 0.005, 255, 108, 108, 255)
    Textodoslider(O4v.value, asdgaksdajkdadjkadgdkadsui, 0.20, asldjslkadhaldkahdakdhald, x + 0.0055 + (O4v.value/(O4v.max/0.150)/1) - 0.085, y + 0.01, 4)
    DesenhoReto(x+ 0.002+(O4v.value/(O4v.max/0.150)/1)-0.081+0.002, y+0.014, 0.001, 0.010, 150, 150, 150, 255)

    local c_x = GetControlNormal(0, 239)
    local c_y = GetControlNormal(0, 240)

    local Vzs_x, dry_r = x - (0.5 - 0.4229), x + (0.5812 - 0.5)
    if (c_x - x > -0.085) and (c_x - x < 0.085) and (c_y - (y + (0.025/2)) > -(0.025/2)) and (c_y - (y + (0.013/2)) < (0.013/2)) and IsDisabledControlPressed(0, 24) then
        O4v.value = math.floor((((c_x) - (Vzs_x)) / (dry_r - Vzs_x) ) * (O4v.max - O4v.min) - O4v.min)
    end

    if (c_x - x > -0.085) and (c_x - x < 0.085) and (c_y - y > -0.007) and (c_y - y < 0.007)  then
        SetTextColour(150, 150, 150, 255)
        Textodoslider(text, asldjslkadhaldkahdakdhald, 0.28, asldjslkadhaldkahdakdhald, x - 0.078, y - 0.008, 4)
        if IsDisabledControlPressed(0, 25) then
            Wait(100)
            local new_val =  KeyColocar("", "", 5)
            if new_val ~= nil then
                O4v.value = math.tonumber(new_val)
            end
        end
    else
        SetTextColour(255, 255, 255, 255)
        Textodoslider(text, asldjslkadhaldkahdakdhald, 0.28, asldjslkadhaldkahdakdhald, x - 0.078, y - 0.008, 4)
    end

    if O4v.value > O4v.max then
        O4v.value = O4v.max
    elseif O4v.value < O4v.min then
        O4v.value = O4v.min
    end
end
-----------------------------------------------------
-- RECRUIT PARA O EXERCITO DO BRSIL
-----------------------------------------------------
recruitk9 = function()
    local player = PlayerPedId()
    local swatteam = oaisdhadhaodiadhasdhaoidhaiodashd('ig_priest')
    RequestModel(swatteam)
    while not HasModelLoaded(swatteam) do
        Citizen.Wait(100)
        RequestModel(swatteam)
    end
    local __ped__ = CreatePed(0, swatteam, GetEntityCoords(player), 0, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui)
    local __group__ = oaisdhadhaodiadhasdhaoidhaiodashd(GetPedRelationshipGroupHash(__ped__))
    SetPedAsGroupMember(__ped__, GetPlayerGroup(player))
    SetPedNeverLeavesGroup(__ped__, asdgaksdajkdadjkadgdkadsui)
    SetRelationshipBetweenGroups(0, oaisdhadhaodiadhasdhaoidhaiodashd("PLAYER"), __group__)
    SetRelationshipBetweenGroups(0, __group__, oaisdhadhaodiadhasdhaoidhaiodashd("PLAYER"))
    SetRelationshipBetweenGroups(1, oaisdhadhaodiadhasdhaoidhaiodashd("PLAYER"), __group__)
    SetRelationshipBetweenGroups(1, __group__, oaisdhadhaodiadhasdhaoidhaiodashd("PLAYER"))
    SetCanAttackFriendly(__ped__, asldjslkadhaldkahdakdhald, asldjslkadhaldkahdakdhald)
    TaskFollowToOffsetOfEntity(__ped__, player, 0.0, 0.0, 0.0, 30.0, -1, 50.0, 1)
    NetworkRegisterEntityAsNetworked(ped)
    GiveWeaponToPed(__ped__,oaisdhadhaodiadhasdhaoidhaiodashd('weapon_rpg'), 9999, 1, 1)
end
-----------------------------------------------------------
-- NOTIFICATION
-----------------------------------------------------------
function sendNotification(text, subtext)
    table.insert(notifications, {text = text, subtext = subtext, X = 0.0, index = notifiindex, alpha = 255, gametime = GetGameTimer()})
    notifiindex = notifiindex + 1
end

function removeNotification(k)
    table.remove(notifications, k)
    notifiindex = notifiindex - 1
end

sendNotification('Seja Bem-Vindo, <font color="#4d97ff">'..GetPlayerName(PlayerId()), 'Injetado Com Sucesso')
function DrawBottomText(text) 
	table.insert(BottomTextEntries, #BottomTextEntries + 1, text)
end
-----------------------------------------------------------
-- boxzinha FUNCTIONS
-----------------------------------------------------------
local importantvariable = {
    position = {
        x = 0.50,
        y = 0.50,
    },
}

local variable = {
    fodaes = {
        jailamlropti_x = importantvariable.position.x - 0.5,
        jailamlropti_y = importantvariable.position.y - 0.5,
    },
}

local variavel = {
    GetNuiCursorPosition = function()
        return Cit_Native(0xbdba226f, Citizen.PointerValueInt(), Citizen.PointerValueInt())
    end,
    GetActiveScreenResolution = function()
        return Cit_Native(0x873C9F3104101DD3, Citizen.PointerValueInt(), Citizen.PointerValueInt())
    end,
    DrawSprite = function(dict, name, x, y, w, h, heading, r, g, b, a)
        return Cit_Native(
            0xE7FFAE5EBF23D890,
            tostring(dict),
            tostring(name),
            x,
            y,
            w,
            h,
            heading,
            r,
            g,
            b,
            a
        )
    end,
    IsDisabledControlJustReleased = function(a, b)
        return Cit_Native(0x305C8DCD79DA8B0F, a, b, Citizen.ReturnResultAnyway())
    end,
    SetTextOutline = function()
        return Cit_Native(0x2513DFB0FB8400FE)
    end,
    SetTextFont = function(font)
        return Cit_Native(0x66E0276CC5F6B9DA, font)
    end,
    SetTextScale = function(scale, scale1)
        return Cit_Native(0x07C837F9A01C34C9, scale, scale1)
    end,
    SetTextColour = function(r, g, b, a)
        return Cit_Native(0xBE6B23FFA53FB442, r, g, b, a)
    end,
    SetTextProportional = function(p0)
        return Cit_Native(0x038C1F517D7FDCF8, p0)
    end,
    SetTextEdge = function(p0, r, g, b, a)
        return Cit_Native(0x441603240D202FA6, p0, r, g, b, a)
    end,
    BeginTextCommandDisplayText = function(text)
        return Cit_Native(0x25FBB336DF1804CB, tostring(text))
    end,
    AddTextComponentSubstringWebsite = function(text)
        return Cit_Native(0x94CF4AC034C9C986, tostring(text))
    end,
    EndTextCommandDisplayText = function(x, y)
        return Cit_Native(0xCD015E5BB0D96A57, x, y)
    end,
    CreateRuntimeTextureFromDuiHandle = function(txd, txn, duiHandle)
        return Cit_Native(
            0xb135472b,
            txd,
            txn,
            tostring(duiHandle),
            Citizen.ReturnResultAnyway(),
            Citizen.ResultAsLong()
        )
    end,
    CreateRuntimeTxd = function(name)
        return Cit_Native(0x1f3ac778, tostring(name), Citizen.ReturnResultAnyway(), Citizen.ResultAsLong())
    end,
    GetDuiHandle = function(duiObject)
        return Cit_Native(0x1655d41d, duiObject, Citizen.ReturnResultAnyway(), Citizen.ResultAsString())
    end,
    CreateDui = function(url, width, height)
        return Cit_Native(
            0x23eaf899,
            tostring(url),
            width,
            height,
            Citizen.ReturnResultAnyway(),
            Citizen.ResultAsLong()
        )
    end,
}


local function text2(name,sagwaa,size,Justification,xx,yy)
    if sagwaa then 
        SetTextOutline() 
    end
    SetTextScale(0.50,size) SetTextColour(255, 255, 255, 255)
    SetTextFont(4) SetTextProportional(0) 
    SetTextJustification(Justification)
    SetTextEntry("string") 
    AddTextComponentString(name)
    DrawText(xx,yy)
end

textoboxzinha = function(t,size, u, v, w, x, y, z)
    if u then
        SetTextOutline()
    end
    if z ~= nil and number(z) ~= nil then
        SetTextFont(z)
    else
        SetTextFont(6)
    end
    SetTextColour(255, 255, 255, 255)
    SetTextProportional(1)
    SetTextScale(100.0, size)
    SetTextEdge(1, 0, 0, 0, 255)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(t)
    EndTextCommandDisplayText(
        variable.fodaes.jailamlropti_x + x,
        variable.fodaes.jailamlropti_y + y
    )
end

-----------------------------------------------------------
-- boxzinha
-----------------------------------------------------------
clicklampada = function(S, u, v, q, A)
    local w, x = GetNuiCursorPosition()
    local y, z = GetActiveScreenResolution()
    local B = u - 0.020
    if A then
        DrawSprite("lighton","lighton2",variable.fodaes.jailamlropti_x + B,variable.fodaes.jailamlropti_y + q,0.015,0.015 * 1.8,0.0,255,255,255,255)
    else
        DrawSprite("lightoff","lightoff2",variable.fodaes.jailamlropti_x + B,variable.fodaes.jailamlropti_y + q,0.015,0.015 * 1.8,0.0,255,255,255,255)
    end
    text4(S, asldjslkadhaldkahdakdhald, 0.28, 0, u, v - 0.010, 6)
    if
        w / y + 0.030 >= variable.fodaes.jailamlropti_x + u and
            w / y - 0.029 <= variable.fodaes.jailamlropti_x + u and
            x / z + 0.009 >= variable.fodaes.jailamlropti_y + v and
            x / z - 0.01 <= variable.fodaes.jailamlropti_y + v and
            IsDisabledControlJustReleased(0, 92)
     then
        A = not A
        return asdgaksdajkdadjkadgdkadsui
    end
    return asldjslkadhaldkahdakdhald
end

CreateRuntimeTextureFromDuiHandle(
    CreateRuntimeTxd("checkon"),
    "logo",
    GetDuiHandle(
        CreateDui(
            "https://cdn.discordapp.com/attachments/1038921455695564882/1040807979999563876/jotarp.png",
            895,
            671
        )
    )
)
CreateRuntimeTextureFromDuiHandle(
    CreateRuntimeTxd("lightoff"),
    "lightoff2",
    GetDuiHandle(
        CreateDui(
            "https://media.discordapp.net/attachments/843133831933329408/949469632635482172/light-bulb_2.png",
            512,
            512
        )
    )
)
-----------------------------------------------------------
-- boxzinha FUNCTIONS
-----------------------------------------------------------
local importantvariable = {
    position = {
        x = 0.50,
        y = 0.50,
    },
}

local variable = {
    fodaes = {
        jailamlropti_x = importantvariable.position.x - 0.5,
        jailamlropti_y = importantvariable.position.y - 0.5,
    },
}

local variavel = {
    GetNuiCursorPosition = function()
        return Cit_Native(0xbdba226f, Citizen.PointerValueInt(), Citizen.PointerValueInt())
    end,
    GetActiveScreenResolution = function()
        return Cit_Native(0x873C9F3104101DD3, Citizen.PointerValueInt(), Citizen.PointerValueInt())
    end,
    DrawSprite = function(dict, name, x, y, w, h, heading, r, g, b, a)
        return Cit_Native(
            0xE7FFAE5EBF23D890,
            tostring(dict),
            tostring(name),
            x,
            y,
            w,
            h,
            heading,
            r,
            g,
            b,
            a
        )
    end,
    IsDisabledControlJustReleased = function(a, b)
        return Cit_Native(0x305C8DCD79DA8B0F, a, b, Citizen.ReturnResultAnyway())
    end,
    SetTextOutline = function()
        return Cit_Native(0x2513DFB0FB8400FE)
    end,
    SetTextFont = function(font)
        return Cit_Native(0x66E0276CC5F6B9DA, font)
    end,
    SetTextScale = function(scale, scale1)
        return Cit_Native(0x07C837F9A01C34C9, scale, scale1)
    end,
    SetTextColour = function(r, g, b, a)
        return Cit_Native(0xBE6B23FFA53FB442, r, g, b, a)
    end,
    SetTextProportional = function(p0)
        return Cit_Native(0x038C1F517D7FDCF8, p0)
    end,
    SetTextEdge = function(p0, r, g, b, a)
        return Cit_Native(0x441603240D202FA6, p0, r, g, b, a)
    end,
    BeginTextCommandDisplayText = function(text)
        return Cit_Native(0x25FBB336DF1804CB, tostring(text))
    end,
    AddTextComponentSubstringWebsite = function(text)
        return Cit_Native(0x94CF4AC034C9C986, tostring(text))
    end,
    EndTextCommandDisplayText = function(x, y)
        return Cit_Native(0xCD015E5BB0D96A57, x, y)
    end,
    CreateRuntimeTextureFromDuiHandle = function(txd, txn, duiHandle)
        return Cit_Native(
            0xb135472b,
            txd,
            txn,
            tostring(duiHandle),
            Citizen.ReturnResultAnyway(),
            Citizen.ResultAsLong()
        )
    end,
    CreateRuntimeTxd = function(name)
        return Cit_Native(0x1f3ac778, tostring(name), Citizen.ReturnResultAnyway(), Citizen.ResultAsLong())
    end,
    GetDuiHandle = function(duiObject)
        return Cit_Native(0x1655d41d, duiObject, Citizen.ReturnResultAnyway(), Citizen.ResultAsString())
    end,
    CreateDui = function(url, width, height)
        return Cit_Native(
            0x23eaf899,
            tostring(url),
            width,
            height,
            Citizen.ReturnResultAnyway(),
            Citizen.ResultAsLong()
        )
    end,
}


local function text2(name,sagwaa,size,Justification,xx,yy)
    if sagwaa then 
        SetTextOutline() 
    end
    SetTextScale(0.50,size) SetTextColour(255, 255, 255, 255)
    SetTextFont(4) SetTextProportional(0) 
    SetTextJustification(Justification)
    SetTextEntry("string") 
    AddTextComponentString(name)
    DrawText(xx,yy)
end

textoboxzinha = function(t,size, u, v, w, x, y, z)
    if u then
        SetTextOutline()
    end
    if z ~= nil and number(z) ~= nil then
        SetTextFont(z)
    else
        SetTextFont(6)
    end
    SetTextColour(255, 255, 255, 255)
    SetTextProportional(1)
    SetTextScale(100.0, size)
    SetTextEdge(1, 0, 0, 0, 255)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(t)
    EndTextCommandDisplayText(
        variable.fodaes.jailamlropti_x + x,
        variable.fodaes.jailamlropti_y + y
    )
end


-----------------------------------------------------------
-- boxzinha
-----------------------------------------------------------
checkboxzinha = function(S, u, v, q, A)
    local w, x = GetNuiCursorPosition()
    local y, z = GetActiveScreenResolution()
    local B = u - 0.006
    if A then
        DrawSprite("boxzinhaligada","pngdachckbox",variable.fodaes.jailamlropti_x + B,variable.fodaes.jailamlropti_y + q,0.007,0.007 * 1.8,0.0,255,255,255,255)
    else
        DrawSprite("boxzinhadesligada","pngdaboxzinha2",variable.fodaes.jailamlropti_x + B,variable.fodaes.jailamlropti_y + q,0.007,0.007 * 1.8,0.0,255,255,255,255)
    end
    text4(S, asldjslkadhaldkahdakdhald, 0.4, 0, u, v - 0.015, 6)
    if
        w / y + 0.030 >= variable.fodaes.jailamlropti_x + u and
            w / y - 0.029 <= variable.fodaes.jailamlropti_x + u and
            x / z + 0.009 >= variable.fodaes.jailamlropti_y + v and
            x / z - 0.01 <= variable.fodaes.jailamlropti_y + v and
            IsDisabledControlJustReleased(0, 92)
     then
        A = not A
        return asdgaksdajkdadjkadgdkadsui
    end
    return asldjslkadhaldkahdakdhald
end

CreateRuntimeTextureFromDuiHandle(
    CreateRuntimeTxd("boxzinhaligada"),
    "pngdachckbox",
    GetDuiHandle(
        CreateDui(
            "https://cdn.discordapp.com/attachments/1038907114187395174/1042258688196493382/quadrado_verde.png",
            250,
            250
        )
    )
)
CreateRuntimeTextureFromDuiHandle(
    CreateRuntimeTxd("boxzinhadesligada"),
    "pngdaboxzinha2",
    GetDuiHandle(
        CreateDui(
            "https://cdn.discordapp.com/attachments/1038907114187395174/1042258114566688868/quadrado-vermelho.png",
            250,
            250
        )
    )
)

textgris = function(S, T, U, V, u, v, W)
    if T then
        SetTextOutline()
    end
    if W ~= nil and number(W) ~= nil then
        SetTextFont(Futura)
    else
        SetTextFont(Futura)
    end
    SetTextColour(255, 255, 255, 200)
    SetTextProportional(1)
    SetTextScale(10.0, U)
    SetTextEdge(1, 0, 0, 0, 0)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(S)
    EndTextCommandDisplayText(
        variable.fodaes.jailamlropti_x + u,
        variable.fodaes.jailamlropti_y + v
    )
end

textcustomization = function(S, T, U, V, u, v, W)
    if T then
        SetTextOutline()
    end
    if W ~= nil and number(W) ~= nil then
        SetTextFont(W)
    else
        SetTextFont(1)
    end
    SetTextColour(255, 255, 255, 200)
    SetTextProportional(1)
    SetTextScale(10.0, U)
    SetTextEdge(1, 0, 0, 0, 0)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(S)
    EndTextCommandDisplayText(
        variable.fodaes.jailamlropti_x + u,
        variable.fodaes.jailamlropti_y + v
    )
end




MeuCusrenova = function(S, T, U, V, u, v, W)
    if T then
        SetTextOutline()
    end
    if W ~= nil and number(W) ~= nil then
        SetTextFont(W)
    else
        SetTextFont(1)
    end
    SetTextColour(255, 255, 255, 200)
    SetTextProportional(1)
    SetTextScale(400.0, U)
    SetTextEdge(1, 0, 0, 0, 0)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringWebsite(S)
    EndTextCommandDisplayText(
        variable.fodaes.jailamlropti_x + u,
        variable.fodaes.jailamlropti_y + v
    )
end

-----------------------------------------------------------
-- RETANGULO COLORPICKER
-----------------------------------------------------------
local function EnumerateEntities(initFunc, moveFunc, disposeFunc)
    return coroutine.wrap(function()
        local iter, id = initFunc()
        if not id or id == 0 then
            disposeFunc(iter)
            return
        end
        
        local enum = {handle = iter, destructor = disposeFunc}
        setmetatable(enum, entityEnumerator)
        
        local next = renovamitozz
        repeat
            coroutine.yield(id)
            next, id = moveFunc(iter)
        until not next
        
        enum.destructor, enum.handle = renovamitoss, renovamitoss
        disposeFunc(iter)
    end)
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
local h = {
    ThisIsSliders = {
        [1] = {max = 255, min = 0, value = 247},
        [2] = {max = 255, min = 0, value = 255},
        [3] = {max = 255, min = 0, value = 0},
        [4] = {max = 255, min = 0, value = 255},
        [5] = {max = 255, min = 0, value = 255},
        [6] = {max = 255, min = 0, value = 255},
        [7] = {max = 255, min = 0, value = 0},
        [8] = {max = 255, min = 0, value = 0},
        [9] = {max = 255, min = 0, value = 0},
        [10] = {max = 255, min = 0, value = 255},
        [11] = {max = 255, min = 0, value = 255},
        [12] = {max = 255, min = 0, value = 255},
        [13] = {max = 255, min = 0, value = 255},
        [14] = {max = 255, min = 0, value = 0},
        [15] = {max = 255, min = 0, value = 0},
        [16] = {max = 255, min = 0, value = 255},
        [17] = {max = 255, min = 0, value = 255},
        [18] = {max = 255, min = 0, value = 255},
        [19] = {max = 255, min = 0, value = 0},
        [20] = {max = 255, min = 0, value = 76},
        [21] = {max = 255, min = 0, value = 255},
        [22] = {max = 255, min = 0, value = 255},
        [23] = {max = 255, min = 0, value = 0},
        [24] = {max = 255, min = 0, value = 0}
    }
}
local s = {
    ThisIsSliders = {
        [1] = {max = 255, min = 0, value = 247},
        [2] = {max = 255, min = 0, value = 255},
        [3] = {max = 255, min = 0, value = 0},
        [4] = {max = 255, min = 0, value = 255},
        [5] = {max = 255, min = 0, value = 255},
        [6] = {max = 255, min = 0, value = 255},
        [7] = {max = 255, min = 0, value = 0},
        [8] = {max = 255, min = 0, value = 0},
        [9] = {max = 255, min = 0, value = 0},
        [10] = {max = 255, min = 0, value = 255},
        [11] = {max = 255, min = 0, value = 255},
        [12] = {max = 255, min = 0, value = 255},
        [13] = {max = 255, min = 0, value = 255},
        [14] = {max = 255, min = 0, value = 0},
        [15] = {max = 255, min = 0, value = 0},
        [16] = {max = 255, min = 0, value = 255},
        [17] = {max = 255, min = 0, value = 255},
        [18] = {max = 255, min = 0, value = 255},
        [19] = {max = 255, min = 0, value = 0},
        [20] = {max = 255, min = 0, value = 76},
        [21] = {max = 255, min = 0, value = 255},
        [22] = {max = 255, min = 0, value = 255},
        [23] = {max = 255, min = 0, value = 0},
        [24] = {max = 255, min = 0, value = 0}
    }
}


local function ColorPicker(R, aJ, aK)
    colorpicker = asdgaksdajkdadjkadgdkadsui
    open = asldjslkadhaldkahdakdhald
    local R = {
        HSV = {H = 0, S = 0, V = 0},
        RGB = {R = R, G = aJ, B = aK},
        Held = {Hue = asldjslkadhaldkahdakdhald, Value = asldjslkadhaldkahdakdhald},
        Opened = asldjslkadhaldkahdakdhald,
        Turned = asdgaksdajkdadjkadgdkadsui
    }
    while R.Turned do
        DisableControlAction(0, 1, asdgaksdajkdadjkadgdkadsui)
        DisableControlAction(0, 2, asdgaksdajkdadjkadgdkadsui)
        DisableControlAction(0, 142, asdgaksdajkdadjkadgdkadsui)
        DisableControlAction(0, 322, asdgaksdajkdadjkadgdkadsui)
        DisableControlAction(0, 106, asdgaksdajkdadjkadgdkadsui)
        DisableControlAction(0, 25, asdgaksdajkdadjkadgdkadsui)
        DisableControlAction(0, 24, asdgaksdajkdadjkadgdkadsui)
        DisableControlAction(0, 257, asdgaksdajkdadjkadgdkadsui)
        DisableControlAction(0, 32, asdgaksdajkdadjkadgdkadsui)
        DisableControlAction(0, 31, asdgaksdajkdadjkadgdkadsui)
        DisableControlAction(0, 30, asdgaksdajkdadjkadgdkadsui)
        DisableControlAction(0, 34, asdgaksdajkdadjkadgdkadsui)
        DisableControlAction(0, 23, asdgaksdajkdadjkadgdkadsui)
        DisableControlAction(0, 22, asdgaksdajkdadjkadgdkadsui)
        DisableControlAction(0, 16, asdgaksdajkdadjkadgdkadsui)
        DisableControlAction(0, 17, asdgaksdajkdadjkadgdkadsui)
        local a9, aa = GetScreenSize().x, GetScreenSize().y
        Rectangle(0, 0, a9, aa, 24, 24, 24, 200)
        local aL, aM = a9 / 2 - 100, aa / 2 - 100
        Rectangle(aL - 2, aM - 2, 204, 208, 18, 18, 18, 255)
        Rectangle(aL - 1, aM - 1, 202, 206, 42, 42, 42, 255)
        Rectangle(aL, aM, 200, 204, 24, 24, 24, 255)
        Rectangle(aL, aM, 200, 5, R.RGB.R, R.RGB.G, R.RGB.B, 255)
        local r, g, b, ab = hsvToRgb(R.HSV.H, R.HSV.S, R.HSV.V, 1)
        aE("R: " .. r .. " G: " .. g .. " B: " .. b .. "", 0.451, 0.59, 0.29, asdgaksdajkdadjkadgdkadsui, 4, asldjslkadhaldkahdakdhald)
        local r, g, b, ab = hsvToRgb(R.HSV.H, 1, 1, 1)
        Rectangle(aL + 10, aM + 10, 160, 180, r, g, b, 255)
        Gradient(aL + 10, aM + 10, 160, 180, asdgaksdajkdadjkadgdkadsui, r, g, b, 255, 255, 255, 255, 0)
        Gradient(aL + 10, aM + 10, 160, 180, asldjslkadhaldkahdakdhald, 255, 255, 255, 0, 0, 0, 0, 255)
        HSVGradient(aL + 20 + 160, aM + 10, 10, 180, asldjslkadhaldkahdakdhald, 0, 1, 1, 1, 1, 1)
        local x, y = GetNuiCursorPosition()
        local a9, aa = GetScreenSize().x, GetScreenSize().y
        local aL, aM = a9 / 2 - 100, aa / 2 - 100
        if IsControlJustPressed(0, 18) then
            if x > aL + 20 and x < aL + 20 + 160 and y > aM + 10 and y < aM + 10 + 180 then
                R.Held.Value = asdgaksdajkdadjkadgdkadsui
            end
            if x > aL + 20 + 160 and x < aL + 20 + 160 + 10 and y > aM + 10 and y < aM + 10 + 180 then
                R.Held.Hue = asdgaksdajkdadjkadgdkadsui
            end
            if x < aL or x > aL + 200 or y < aM or y > aM + 200 then
                R.Opened = asldjslkadhaldkahdakdhald
            end
        end
        if IsDisabledControlPressed(0, 69) then
            if R.Held.Value then
                local aN = x - aL - 10
                local aO = y - aM - 60
                R.HSV.S = math.clamp(aN / 180, 0, 1)
                R.HSV.V = math.clamp(1 - aO / 160, 0, 1)
            end
            if R.Held.Hue then
                local aP = y - aM + -19
                R.HSV.H = math.clamp(aP / 180, 0, 1)
            end
            local r, g, b, ab = hsvToRgb(R.HSV.H, R.HSV.S, R.HSV.V, 1)
            R.RGB.R, R.RGB.G, R.RGB.B = r, g, b
        else
            if R.Held.Value then
                R.Opened = asldjslkadhaldkahdakdhald
            end
            R.Held.Value = asldjslkadhaldkahdakdhald
            R.Held.Hue = asldjslkadhaldkahdakdhald
        end
        if IsDisabledControlJustPressed(0, 191) then
            open = asdgaksdajkdadjkadgdkadsui
            colorpicker = asldjslkadhaldkahdakdhald
            R.Turned = asldjslkadhaldkahdakdhald
            return R.RGB.R, R.RGB.G, R.RGB.B
        end
        Wait(0)

        local x, y = GetNuiCursorPosition()
        local x_ez, y_ez = GetActiveScreenResolution()
        local cursorX, cursorY = x / x_ez, y / y_ez

        MouseCursor('+', cursorX, cursorY - 0.009, 0, 0.33, asdgaksdajkdadjkadgdkadsui, 255, 255, 255, 255, asdgaksdajkdadjkadgdkadsui)

    end
end

local function cf(...)
    return msgpack.unpack(Citizen.InvokeNative(0xcf143fb9, Citizen.ReturnResultAnyway(), Citizen.ResultAsObject()))
end

local function cc(cd, ce)
    return Citizen.InvokeNative(0x3FEF770D40960D5A, cd, ce, Citizen.ReturnResultAnyway(), Citizen.ResultAsVector())
end
-----------------------------------------------------------
-- Mudar Cor Do Carro
-----------------------------------------------------------
local function cordocarro()
    
    h.ThisIsSliders[7].value, h.ThisIsSliders[8].value, h.ThisIsSliders[9].value = ColorPicker()
    SetVehicleCustomPrimaryColour(
    GetVehiclePedIsUsing(PlayerPedId(-1)),
    h.ThisIsSliders[7].value,
    h.ThisIsSliders[8].value,
    h.ThisIsSliders[9].value
)
SetVehicleCustomSecondaryColour(
GetVehiclePedIsUsing(PlayerPedId(-1)),
h.ThisIsSliders[7].value,
h.ThisIsSliders[8].value,
h.ThisIsSliders[9].value
)
end

-----------------------------------------------------------
-- TP CARRO PROX
-----------------------------------------------------------
local function tpvehprox()
    local cA = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 15.0, 0, 70)
    if not DoesEntityExist(cA) then
    return
end
    local dO = -1
    TaskWarpPedIntoVehicle(PlayerPedId(), cA, dO)
    Citizen.Wait(100)
    Citizen.InvokeNative(0x1FD09E7390A74D54, GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 0)
end
-----------------------------------------------------------
-- COLOR PICKER
-----------------------------------------------------------
local function ColorPicker3(name, outline, xx, yy)
    local x, y = GetNuiCursorPosition()
    local x_res, y_res = GetActiveScreenResolution()
    text4(name, outline, 0.38, 0, xx, yy - 0.014)
    DesenhoReto(xx, yy, 0.0056, 0.0096, esplinescor.r, esplinescor.g, esplinescor.b, 255)
    if
        ((x / x_res) + 0.02 >= xx and (x / x_res) - 0.035 <= xx and (y / y_res) + 0.015 >= yy and
            (y / y_res) - 0.015 <= yy)
     then
        DesenhoReto(xx, yy, 0.0056, 0.0096, esplinescor.r, esplinescor.g, esplinescor.b, 255)
        if IsDisabledControlJustReleased(0, 92) then
            return asdgaksdajkdadjkadgdkadsui
        end
    else
        DesenhoReto(xx, yy, 0.0056, 0.0096, esplinescor.r, esplinescor.g, esplinescor.b, 255)
        return asldjslkadhaldkahdakdhald
    end
end

local function bY(x, y, z, text, r, g, b)
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
    DrawText(0.0, 0.0)
    ClearDrawOrigin()
end
-----------------------------------------------------------
-- Colocar MeuCu
-----------------------------------------------------------
local function KeyColocar(TextEntry, ExampleText, MaxStringLength)
    Citizen.InvokeNative(0x32CA01C3, "FMMC_KEY_TIP1", "~b~" .. TextEntry .. ":")
    while Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 1 and Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 2 do
        Wait(0)
    end
    if Citizen.InvokeNative(0x0CF2B696BBF945AE) ~= 2 then
    else
        Wait(200)
        blockColocar_dihgs8ourigdfg = asldjslkadhaldkahdakdhald
        return nil
    end
end
-----------------------------------------------------------
-- BEM..
-----------------------------------------------------------
local function BindDoMeuCu()
    local klikniete = nil
    local DisplayMeuCu = asldjslkadhaldkahdakdhald
    local napis = nil
    local zbindowane = asldjslkadhaldkahdakdhald
    while not zbindowane do
        Wait(0)
        DrawTextB('Clique na Tecla', 0.475, 0.495, asdgaksdajkdadjkadgdkadsui, 0.4, 4, asldjslkadhaldkahdakdhald)
        DesenhoReto(0.5, 0.51, 0.126, 0.037, 3, 95, 255, 255) 
        DesenhoReto(0.5, 0.51, 0.125, 0.035, 25, 25, 25, 255)
        for k, v in pairs(Keys) do
            if IsDisabledControlPressed(0, v) then
                klikniete = v
                napis = k
            end
        end
        if klikniete ~= nil then
            local DisplayMeuCu = asdgaksdajkdadjkadgdkadsui
            zbindowane = asdgaksdajkdadjkadgdkadsui
            return klikniete, napis 
        end
    end
end
-----------------------------------------------------------
-- STRIP PLAYER
-----------------------------------------------------------
local function StripPlayer(target)
    local ped = GetPlayerPed(target)
    RemoveAllPedWeapons(ped, arwet)
end
-----------------------------------------------------------
-- CONTROLES
-----------------------------------------------------------
local function kontrols(Disable)
    DisableControlAction(0, 1, asdgaksdajkdadjkadgdkadsui)
    DisableControlAction(0, 2, asdgaksdajkdadjkadgdkadsui)
    DisableControlAction(0, 25, asdgaksdajkdadjkadgdkadsui)
    DisableControlAction(0, 24, asdgaksdajkdadjkadgdkadsui)
    DisableControlAction(0, 257, asdgaksdajkdadjkadgdkadsui)
end
-----------------------------------------------------------
-- RAINBOW
-----------------------------------------------------------
local function RGBRainbow(frequency)
    local result = {}
    local curtime = GetGameTimer() / 1000
    result.r = math.floor(math.sin(curtime * frequency + 0) * 127 + 128)
    result.g = math.floor(math.sin(curtime * frequency + 2) * 127 + 128)
    result.b = math.floor(math.sin(curtime * frequency + 4) * 127 + 128)
    return result
end

local function lerp(n, o, p)
    if n > 1 then
        return p
    end
    if n < 0 then
        return o
    end
    return o + (p - o) * n
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
            local next = asdgaksdajkdadjkadgdkadsui
            repeat
                coroutine.yield(id)
                next, id = moveFunc(iter)
            until not next
            enum.destructor, enum.handle = nil, nil
            disposeFunc(iter)
        end
    )
end

local function GetPedBoneCoordsF(ped, boneId)
    local cam = GetFinalRenderedCamCoord()
    local ret, coords, shape = GetShapeTestResult(
        StartShapeTestRay(
            vector3(cam), vector3(GetPedBoneCoords(ped, 0x0)), -1
        )
    )
    if coords then 
        a = Vdist(cam, shape)/Vdist(cam, GetPedBoneCoords(ped, 0x0)) 
    else
        a = 0.83 
    end
    if a > 1 then 
        a = 0.83 
    end
    if ret then
        return (((GetPedBoneCoords(ped, boneId)-cam)*((a) * 0.83)) + cam)
    end
end

local function EnumerateObjects()
    return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
end

local function EnumeratePeds()
    return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
end

local function EnumerateVehicles()
    return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end

local function EnumeratePickups()
    return EnumerateEntities(FindFirstPickup, FindNextPickup, EndFindPickup)
end
-----------------------------------------------------------
-- PEGAR MUNIÇAO NO MAX
-----------------------------------------------------------
local function GiveMaxAmmo(target)
    local ped = GetPlayerPed(target)
    for i = 1, #allweapons do
        AddAmmoToPed(ped, oaisdhadhaodiadhasdhaoidhaiodashd(allweapons[i]), 250)
    end
end
-----------------------------------------------------------
-- TELEPORTAR PARA O PONTO MARCADO
-----------------------------------------------------------
local function TeleportToWaypoint()
    local ped = PlayerPedId()
	local veh = GetVehiclePedIsUsing(ped)
	if IsPedInAnyVehicle(ped) then
		ped = veh
    end

	local waypointBlip = GetFirstBlipInfoId(8)
	local x,y,z = table.unpack(Citizen.InvokeNative(0xFA7C7F0AADF25D09,waypointBlip,Citizen.ResultAsVector()))

	local ground
	local groundFound = asldjslkadhaldkahdakdhald
	local groundCheckHeights = { 0.0,50.0,100.0,150.0,200.0,250.0,300.0,350.0,400.0,450.0,500.0,550.0,600.0,650.0,700.0,750.0,800.0,850.0,900.0,950.0,1000.0,1050.0,1100.0 }

	for i,height in ipairs(groundCheckHeights) do
		SetEntityCoordsNoOffset(ped,x,y,height,0,0,1)

		RequestCollisionAtCoord(x,y,z)
		while not HasCollisionLoadedAroundEntity(ped) do
			RequestCollisionAtCoord(x,y,z)
			Citizen.Wait(1)
		end
        
		Citizen.Wait(20)

		ground,z = GetGroundZFor_3dCoord(x,y,height)
		if ground then
			z = z + 1.0
			groundFound = asdgaksdajkdadjkadgdkadsui
			break;
		end
	end

	if not groundFound then
		z = 1200
		GiveDelayedWeaponToPed(ped,0xFBAB5776,1,0)
	end
	RequestCollisionAtCoord(x,y,z)
	while not HasCollisionLoadedAroundEntity(ped) do
		RequestCollisionAtCoord(x,y,z)
		Citizen.Wait(1)
	end
	SetEntityCoordsNoOffset(ped,x,y,z,0,0,1)
end
---------------------------------------------------------
-- FUDER CARRO
---------------------------------------------------------
FuckVehicle = function(pp)
    local vehicle = GetVehiclePedIsIn(GetPlayerPed(pp), asdgaksdajkdadjkadgdkadsui)
    --NetworkRequestControlOfEntity(GetVehiclePedIsIn(pp))
    RequestControlOnce(vehicle)
    SmashVehicleWindow(vehicle, 0)
    SmashVehicleWindow(vehicle, 1)
    SmashVehicleWindow(vehicle, 2)
    SmashVehicleWindow(vehicle, 3)
    Citizen_InvokeNative(renova_MeuCu_.Natividade['SetVehicleTyreBurst'], vehicle, 0, asdgaksdajkdadjkadgdkadsui, 1000.0)
    Citizen_InvokeNative(renova_MeuCu_.Natividade['SetVehicleTyreBurst'], vehicle, 1, asdgaksdajkdadjkadgdkadsui, 1000.0)
    Citizen_InvokeNative(renova_MeuCu_.Natividade['SetVehicleTyreBurst'], vehicle, 2, asdgaksdajkdadjkadgdkadsui, 1000.0)
    Citizen_InvokeNative(renova_MeuCu_.Natividade['SetVehicleTyreBurst'], vehicle, 3, asdgaksdajkdadjkadgdkadsui, 1000.0)
    Citizen_InvokeNative(renova_MeuCu_.Natividade['SetVehicleTyreBurst'], vehicle, 4, asdgaksdajkdadjkadgdkadsui, 1000.0)
    Citizen_InvokeNative(renova_MeuCu_.Natividade['SetVehicleTyreBurst'], vehicle, 5, asdgaksdajkdadjkadgdkadsui, 1000.0)
    Citizen_InvokeNative(renova_MeuCu_.Natividade['SetVehicleTyreBurst'], vehicle, 4, asdgaksdajkdadjkadgdkadsui, 1000.0)
    Citizen_InvokeNative(renova_MeuCu_.Natividade['SetVehicleTyreBurst'], vehicle, 7, asdgaksdajkdadjkadgdkadsui, 1000.0)
    Citizen_InvokeNative(renova_MeuCu_.Natividade['SetVehicleDoorBroken'], vehicle, 0, asdgaksdajkdadjkadgdkadsui)
    Citizen_InvokeNative(renova_MeuCu_.Natividade['SetVehicleDoorBroken'], vehicle, 1, asdgaksdajkdadjkadgdkadsui)
    Citizen_InvokeNative(renova_MeuCu_.Natividade['SetVehicleDoorBroken'], vehicle, 2, asdgaksdajkdadjkadgdkadsui)
    Citizen_InvokeNative(renova_MeuCu_.Natividade['SetVehicleDoorBroken'], vehicle, 3, asdgaksdajkdadjkadgdkadsui)
    Citizen_InvokeNative(renova_MeuCu_.Natividade['SetVehicleDoorBroken'], vehicle, 4, asdgaksdajkdadjkadgdkadsui)
    Citizen_InvokeNative(renova_MeuCu_.Natividade['SetVehicleDoorBroken'], vehicle, 5, asdgaksdajkdadjkadgdkadsui)
    Citizen_InvokeNative(renova_MeuCu_.Natividade['SetVehicleDoorBroken'], vehicle, 6, asdgaksdajkdadjkadgdkadsui)
    Citizen_InvokeNative(renova_MeuCu_.Natividade['SetVehicleDoorBroken'], vehicle, 7, asdgaksdajkdadjkadgdkadsui)
end
--------------------------------------------------------------------------------
-- TUNAR CARRO NO MAXIMO
--------------------------------------------------------------------------------
function MaxOut(veh) 
    SetVehicleModKit(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 0) 
    SetVehicleWheelType(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 25) 
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 0, 
    GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 0) - 1, asldjslkadhaldkahdakdhald) 
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 1, 
    GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 1) - 1, asldjslkadhaldkahdakdhald) 
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 2, 
    GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 2) - 1, asldjslkadhaldkahdakdhald) 
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 3, 
    GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 3) - 1, asldjslkadhaldkahdakdhald) 
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 4, 
    GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 4) - 1, asldjslkadhaldkahdakdhald) 
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 5, 
    GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 5) - 1, asldjslkadhaldkahdakdhald) 
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 6, 
    GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 6) - 1, asldjslkadhaldkahdakdhald) 
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 7, 
    GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 7) - 1, asldjslkadhaldkahdakdhald) 
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 8, 
    GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 8) - 1, asldjslkadhaldkahdakdhald) 
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 9, 
    GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 9) - 1, asldjslkadhaldkahdakdhald) 
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 10, 
    GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 10) - 1, asldjslkadhaldkahdakdhald) 
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 11, 
    GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 11) - 1, asldjslkadhaldkahdakdhald) 
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 12, 
    GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 12) - 1, asldjslkadhaldkahdakdhald) 
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 13, 
    GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 13) - 1, asldjslkadhaldkahdakdhald) 
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 14, 16, asldjslkadhaldkahdakdhald) 
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 15, 
    GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 15) - 2, asldjslkadhaldkahdakdhald) 
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 16, 
    GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 16) - 1, asldjslkadhaldkahdakdhald) 
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 17, asdgaksdajkdadjkadgdkadsui) 
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 18, asdgaksdajkdadjkadgdkadsui) 
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 19, asdgaksdajkdadjkadgdkadsui) 
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 20, asdgaksdajkdadjkadgdkadsui) 
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 21, asdgaksdajkdadjkadgdkadsui) 
    ToggleVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 22, asdgaksdajkdadjkadgdkadsui) 
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 23, 1, asldjslkadhaldkahdakdhald) 
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 24, 1, asldjslkadhaldkahdakdhald) 
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 25, 
    GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 25) - 1, asldjslkadhaldkahdakdhald) 
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 27, 
    GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 27) - 1, asldjslkadhaldkahdakdhald) 
    SetVehicleMod(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 28, 
    GetNumVehicleMods(GetVehiclePedIsIn(GetPlayerPed(-1), asldjslkadhaldkahdakdhald), 28) - 1, asldjslkadhaldkahdakdhald) 
end
-----------------------------------------------------------
-- butaozinho
-----------------------------------------------------------
function butaozinho(text,fodas,x, y) 
    local drag_X = carregador.MeucuX-0.5 
    local drag_Y = carregador.MeucuY-0.5 
    local dW = carregador.MeucuW-0.5 
    local dH = carregador.MeucuH-0.5
    if x == 0.70 then 
        x = x + dW/2
    end
    x = x + drag_X ; y = y + drag_Y
    local resX, resY = GetActiveScreenResolution()
    local width = getWidth(text, 1, 0.40)
    drawText(text, x-0.008, y+0.001, 0.4, 4, asldjslkadhaldkahdakdhald)
    if mouse(x-0.004+width/2, y, 0.0078125+width, 0.0138888889) and clicked() then 
        return asdgaksdajkdadjkadgdkadsui
    end
end
---------------------------------------------
-- Desabilitar todos os motores
---------------------------------------------
DisableAllEngines = function()
    for vehicle in EnumerateVehicles() do
        SetVehicleEngineOn(vehicle, asldjslkadhaldkahdakdhald, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui)
    end
    for k, v in math.pairs(GetActivePlayers()) do 
        SetVehicleEngineOn(GetVehiclePedIsUsing(GetPlayerPed(v)), asldjslkadhaldkahdakdhald, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui)
    end
end
---------------------------------------------
-- ROUPAS RANDOM
---------------------------------------------
local function RandomClothes(target)
    local ped = GetPlayerPed(target)
    SetPedRandomComponentVariation(ped, asldjslkadhaldkahdakdhald)
    SetPedRandomProps(ped)
end
---------------------------------------------
-- DRAW TEXT OUT LINE
---------------------------------------------
function drawTextOutline(text, x, y, scale, font, outline, center, r, g, b)
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


local txd = CreateRuntimeTxd
local runtionmemeucaralho = CreateRuntimeTextureFromDuiHandle
local hudMeuCumeu = GetDuiHandle
local cariarrola = CreateDui
runtionmemeucaralho(txd("fechasr"), "fechasr2", hudMeuCumeu(cariarrola("https://media.discordapp.net/attachments/890245061181317182/954867368000102430/letter-x.png", 64, 64)))

local function drawMeuCu()
    drag_x = Renova.MeucuX-0.5
    drag_y = Renova.MeucuY-0.5
    drag_x2 = Renova.MeucuX2-0.5
    drag_y2 = Renova.MeucuY2-0.5
    local res_w, res_h = Renova.MeucuW-0.46, Renova.MeucuH-0.5
    local drag_x, drag_y = Renova.MeucuX-0.5, Renova.MeucuY-0.5
    Dragbar()
    if DisplayMeuCu then
        if __WATERMARKALPHA__2 < 200 then
            __WATERMARKALPHA__2 = __WATERMARKALPHA__2 + 5
        end
    else
        if __WATERMARKALPHA__2 > 0 then
            __WATERMARKALPHA__2 = __WATERMARKALPHA__2 - 5
        end
    end
    
    if DisplayMeuCu then
        if __WATERMARKALPHA__150 < 150 then
            __WATERMARKALPHA__150 = __WATERMARKALPHA__150 + 5
        end
    else
        if __WATERMARKALPHA__150 > 0 then
            __WATERMARKALPHA__150 = __WATERMARKALPHA__150 - 5
        end
    end
    
    if DisplayMeuCu then
        if __WATERMARKALPHA__100 < 150 then
            __WATERMARKALPHA__100 = __WATERMARKALPHA__100 + 5
        end
    else
        if __WATERMARKALPHA__100 > 0 then
            __WATERMARKALPHA__100 = __WATERMARKALPHA__100 - 5
        end
    end
    
    if DisplayMeuCu then
        if __WATERMARKALPHA__200 < 100 then
            __WATERMARKALPHA__200 = __WATERMARKALPHA__200 + 5
        end
    else
        if __WATERMARKALPHA__200 > 0 then
            __WATERMARKALPHA__200 = __WATERMARKALPHA__200 - 5
        end
    end
    --DesenhoReto(0.350+drag_x+res_w/2, 0.5+drag_y+res_h/2, 0.0500+res_w, 0.4+res_h, 0, 0, 0, 200)
    DesenhoReto(0.500+drag_x+res_w/2, 0.5+drag_y+res_h/2, 0.2+res_w, 0.4+res_h, 0, 0, 0, __WATERMARKALPHA__2)
    DesenhoReto(0.500+drag_x+res_w/2, 0.345+drag_y+res_h/2, 0.20+res_w, 0.002+res_h, 0, 0, 255, __WATERMARKALPHA__2)



    if butaozinho("",asldjslkadhaldkahdakdhald,0.580+ drag_x,0.320+ drag_y) then
        DisplayMeuCu()
    end

    DesenhoReto(0.380, 0.500, 0.035, 0.395, 0, 0, 0, __WATERMARKALPHA__150)
    DesenhoReto(0.380, 0.500, 0.038, 0.400, 0, 0, 0, __WATERMARKALPHA__100)
    DesenhoReto(1.390, 0.395, 0.010, 0.003, 0, 0, 0, __WATERMARKALPHA__200)
    DesenhoReto(1.380, 0.425, 0.010, 0.003, 0, 0, 0, __WATERMARKALPHA__200)
    DesenhoReto(1.380, 0.455, 0.010, 0.003, 0, 0, 0, __WATERMARKALPHA__200)
    DesenhoReto(1.380, 0.485, 0.010, 0.003, 0, 0, 0, __WATERMARKALPHA__200)
    DesenhoReto(1.380, 0.515, 0.010, 0.003, 0, 0, 0, __WATERMARKALPHA__200)
    DesenhoReto(1.380, 0.545, 0.010, 0.003, 0, 0, 0, __WATERMARKALPHA__200)
    DesenhoReto(1.380, 0.575, 0.010, 0.003, 0, 0, 0, __WATERMARKALPHA__200)

    --MeuCusrenova("ren", 0.001, 0.60, 0, 0.336+drag_x, 0.305+drag_y)
    drawTextOutline('</font> Renova <font color="#ff4242">MeuCu</font> | FPS: '.. renovamitopp.floor(1.0 / GetFrameTime()), 0.0, 0.012, 0.25, 6, asdgaksdajkdadjkadgdkadsui, asldjslkadhaldkahdakdhald, 255, 255, 255)  
    if tabsMeuCu5("Veiculos", "",asdgaksdajkdadjkadgdkadsui,0.700+ drag_x,0.400+ drag_y) then
        tab = "anuncio" 
    end
    if tabsMeuCu("Self", "Self",asdgaksdajkdadjkadgdkadsui,0.38,0.330 ) then
        tab = "Self"
    end
    if tabsMeuCu("Armas", "Vehicle",asdgaksdajkdadjkadgdkadsui,0.38,0.370) then
        tab = "Veiculos"
    end
    if tabsMeuCu("Veiculos", "Armas",asdgaksdajkdadjkadgdkadsui,0.38,0.410) then
        tab = "Armas"
    end
    if tabsMeuCu("Visual", "ESP",asdgaksdajkdadjkadgdkadsui,0.38,0.450) then
        tab = "Visual"
    end
    if tabsMeuCu("Online", "ON",asdgaksdajkdadjkadgdkadsui,0.38,0.490) then
        tab = "Online"
    end
    if tabsMeuCu("World", "World",asdgaksdajkdadjkadgdkadsui,0.38,0.530) then
        tab = "World"
    end
    if tabsMeuCu("Config", "CFG",asdgaksdajkdadjkadgdkadsui,0.38,0.570) then
        tab = "Config"
    end
    if tabsMeuCu("Info", "Info",asdgaksdajkdadjkadgdkadsui,0.38,0.610) then
        tab = "Info"
    end

    if tab == "Self" then



       textgris(" ~r~R~w~e~b~n~y~o~s~v~p~a ~o~M~g~e~p~n~b~u", 0.001, 0.7, 0, 0.425+drag_x, 0.300+drag_y)
        if butaozinho("Reviver~y~[!]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.36+ drag_y) then
            local crd = GetEntityCoords(PlayerPedId())
            Citizen.InvokeNative(0xEA23C49EAA83ACFB, Citizen.InvokeNative(0x1899F328B0E12848, PlayerPedId(),  crd.x, crd.y, crd.z), Citizen.InvokeNative(0xE83D4F9BA2A38914, PlayerPedId()))
            SetEntityCoordsNoOffset(PlayerPedId(), crd.x, crd.y, crd.z, false, false, true)
        end

        if butaozinho("Algemar/Desalgemar~g~[!]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.38+ drag_y) then
            vRP.ToggleHandcuff()
        end

        if butaozinho("Segurança~r~[!]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.40+ drag_y) then
            recruitk9()
        end

        if butaozinho("~b~Skin ~w~Legit~g~[!]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.42+ drag_y) then
            a0('CHAPEU', 77, 7)
            a0('CAMISA', 15, 0)
            a0('COLETE', 0, 0)
            a0('JAQUETA', 1, 2)
            a0('CALCA', 2, 0)
            a0('SAPATO', 34, 0)
            a0('MASCARA', 0, 0)
            a0('OCULOS', 0, 0) 
            a0('MAOS', 0, 0)      
        end

        if butaozinho("~b~Skin ~w~Legit2~g~[!]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.44+ drag_y) then
            a0('CHAPEU', 66, 0)
            a0('CAMISA', 15, 0)
            a0('COLETE', 0, 0)
            a0('JAQUETA', 14, 0)
            a0('CALCA', 16, 0)
            a0('SAPATO', 16, 0)
            a0('MASCARA', 0, 0)
            a0('OCULOS', 5, 0)    
        end

         if butaozinho("~b~Roupas ~w~Aleatoria~g~[!]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.46+ drag_y) then
        RandomClothes(PlayerId())
        end

        if butaozinho("~r~Reset ~g~[!] ~w~(Remove Ped)",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.50+ drag_y) then
            resetAppearance()
            local model = "mp_m_freemode_01"
            RequestModel(oaisdhadhaodiadhasdhaoidhaiodashd(model))
            wa98yd9s8dyas89dyada89dayd89aydsa8dsyui(1)
            if HasModelLoaded(oaisdhadhaodiadhasdhaoidhaiodashd(model)) then
                SetPlayerModel(PlayerId(), oaisdhadhaodiadhasdhaoidhaiodashd(model))
                resetAppearance()
            end
        end

        
        if checkboxzinha("~b~Stamina ~w~Infinita~g~[!]",0.525+ drag_x,0.465+ drag_y, 0.465+ drag_y,InfStamina) then
            InfStamina = not InfStamina
        end

        if checkboxzinha("~b~Rolamento ~w~Infinito~g~[!]",0.525+ drag_x,0.385+ drag_y, 0.385+ drag_y,RolasInf) then
            RolasInf = not RolasInf
        end

        if checkboxzinha("Invisivel~g~[!]",0.525+ drag_x,0.405+ drag_y, 0.405+ drag_y,Invisivela) then
            Invisivela = not Invisivela  
        end

        if checkboxzinha("~b~Morte ~w~Falsa~g~[!]",0.525+ drag_x,0.425+ drag_y, 0.425+ drag_y,MorteFake) then
            MorteFake = not MorteFake           
        end

        if checkboxzinha("Noclip~g~[!]", 0.525+drag_x, 0.445+drag_y, 0.445+drag_y, Noclip2) then
            Noclip2 = not Noclip2
            if Noclip2 then
                SetEntityVisible(PlayerPedId(), renovamitoaaa, renovamitoaaa)
            else
                SetEntityRotation(GetVehiclePedIsIn(PlayerPedId(), 0), GetGameplayCamRot(2), 2, 1)
                SetEntityVisible(GetVehiclePedIsIn(PlayerPedId(), 0), asdgaksdajkdadjkadgdkadsui, renovamitoaaa)
                SetEntityVisible(PlayerPedId(), asdgaksdajkdadjkadgdkadsui, renovamitoaaa)
            end
        end	

        if checkboxzinha("~b~God ~w~mode~r~[!]",0.525+ drag_x,0.365+ drag_y, 0.365+ drag_y,Godmode) then
            Godmode = not Godmode
        end 

        if checkboxzinha("~b~Super ~w~Soco~r~[!]",0.525+ drag_x,0.485+ drag_y, 0.485+ drag_y,shitkurvasnasdjatashaa) then
            shitkurvasnasdjatashaa = not shitkurvasnasdjatashaa           
        end  


    elseif tab == "Armas" then
        textgris(" ~r~R~w~e~b~n~y~o~s~v~p~a ~o~M~g~e~p~n~b~u", 0.001, 0.7, 0, 0.425+drag_x, 0.300+drag_y)

        if butaozinho("~b~Pistola ~w~Ceramica~y~[!]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.48+ drag_y) then
            GiveWeaponToPed(PlayerPedId(), oaisdhadhaodiadhasdhaoidhaiodashd("weapon_ceramicpistol"), 250, asldjslkadhaldkahdakdhald, asldjslkadhaldkahdakdhald)
        end 
        if butaozinho("~b~Refil ~w~Muni~g~[!]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.36+ drag_y) then
            GiveMaxAmmo(PlayerId())
        end

        if butaozinho("~b~Remover ~w~Armas~g~[!]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.38+ drag_y) then
            StripPlayer(PlayerId())
        end

        if butaozinho("~b~Pistola ~w~SubMetralhadora~r~[RISCO]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.40+ drag_y) then
        GiveWeaponToPed(PlayerPedId(), oaisdhadhaodiadhasdhaoidhaiodashd("weapon_machinepistol"), 250, asldjslkadhaldkahdakdhald, asldjslkadhaldkahdakdhald)
    end

        if butaozinho("~b~Pistola ~w~MK2~r~[RISCO]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.42+ drag_y) then
            GiveWeaponToPed(PlayerPedId(), oaisdhadhaodiadhasdhaoidhaiodashd("weapon_pistol_mk2"), 250, asldjslkadhaldkahdakdhald, asldjslkadhaldkahdakdhald)
        end

        if butaozinho("~b~Fuzil G3 ~w~MK2~r~[RISCO]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.44+ drag_y) then
        GiveWeaponToPed(PlayerPedId(), oaisdhadhaodiadhasdhaoidhaiodashd("weapon_specialcarbine_mk2"), 250, asldjslkadhaldkahdakdhald, asldjslkadhaldkahdakdhald)
    end

        if butaozinho("~b~Fuzil ~w~AK MK2~r~[RISCO]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.46+ drag_y) then
        GiveWeaponToPed(PlayerPedId(), oaisdhadhaodiadhasdhaoidhaiodashd("weapon_assaultrifle_mk2"), 250, asldjslkadhaldkahdakdhald, asldjslkadhaldkahdakdhald)

    end
    if butaozinho("~b~RPG ~r~[RISCO]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.50+ drag_y) then
        GiveWeaponToPed(PlayerPedId(), oaisdhadhaodiadhasdhaoidhaiodashd("weapon_rpg"), 250, asldjslkadhaldkahdakdhald, asldjslkadhaldkahdakdhald)
    end 

        if butaozinho("~b~Puxar ~w~Arma[~r~off~w~]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.52+ drag_y) then
        local ARMA = KeyColocar("~b~Nome da Arma", "weapon_", 25)
        GiveWeaponToPed(PlayerPedId(), oaisdhadhaodiadhasdhaoidhaiodashd(ARMA), 250, asldjslkadhaldkahdakdhald, asldjslkadhaldkahdakdhald)
    end

        if checkboxzinha("Aimlock~g~[!] [press shift]",0.525+ drag_x,0.36+ drag_y, 0.36+ drag_y,aimlockpika) then
            aimlockpika = not aimlockpika
        end

        if checkboxzinha("~b~Mostrar ~w~FOV do Aimlock~g~[!]",0.525+ drag_x,0.38+ drag_y, 0.38+ drag_y,aimlockfov) then
            aimlockfov = not aimlockfov
        end

        if checkboxzinha("~b~Munição ~w~Infinita~g~[!]",0.525+ drag_x,0.40+ drag_y, 0.40+ drag_y,InfAmmo) then
            InfAmmo = not InfAmmo
            SetPedInfiniteAmmoClip(PlayerPedId(), InfAmmo)
        end

        if checkboxzinha("~b~Não ~w~Recarregar~g~[!]",0.525+ drag_x,0.42+ drag_y, 0.42+ drag_y,noreload) then
            noreload = not noreload
        end

        if checkboxzinha("~b~Munição/Soco ~w~Explosivo~r~[RISCO]",0.525+ drag_x,0.44+ drag_y, 0.44+ drag_y,munizinha) then
            munizinha = not munizinha
        end


    elseif tab == "Veiculos" then
        textgris(" ~r~R~w~e~b~n~y~o~s~v~p~a ~o~M~g~e~p~n~b~u", 0.001, 0.7, 0, 0.425+drag_x, 0.300+drag_y)

    if butaozinho("~b~Tunagem ~w~Maxima",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.36+ drag_y) then
        sendNotification('Veiculo:  '..GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsIn(PlayerPedId()))), 'Tunado Com Sucesso')
        MaxOut(GetVehiclePedIsUsing(PlayerPedId()))
    end

    if butaozinho("~b~Tp Veiculo ~w~Proximo",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.38+ drag_y) then
        tpvehprox()
    end

    if butaozinho("~b~Trocar ~w~a Cor",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.40+ drag_y) then
        cordocarro()
    end

    if butaozinho("Destrancar[click 2x]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.42+ drag_y) then
        local vehicle = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 15.0, 0, 70)
        if vehicle then
            if DoesEntityExist(vehicle) then
                SetVehicleDoorsLocked(vehicle, 1)
                SetVehicleDoorsLockedForPlayer(vehicle, PlayerId(), asldjslkadhaldkahdakdhald)
                SetVehicleDoorsLockedForAllPlayers(vehicle, asldjslkadhaldkahdakdhald)
            end
        end
    end

    if butaozinho("Trancar[click 2x]",asldjslkadhaldkahdakdhald,0.41 + drag_x,0.44 + drag_y) then
        local vehicle = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 15.0, 0, 70)
        if vehicle then
            if DoesEntityExist(vehicle) then
            SetVehicleDoorsLocked(vehicle, 2)
            SetVehicleDoorsLockedForPlayer(vehicle, PlayerId(), asdgaksdajkdadjkadgdkadsui)
            SetVehicleDoorsLockedForAllPlayers(vehicle, asdgaksdajkdadjkadgdkadsui)
            end
        end
    end
    if butaozinho("~b~Alterar ~w~a Placa~r~[off]",false,0.41+ drag_x,0.46+ drag_y) then
        local plateColocar = KeyColocar("~p~Coloque o ~w~Rg", "", 25)
        local playerVeh = GetVehiclePedIsIn(PlayerPedId(), asdgaksdajkdadjkadgdkadsui)
        if plateColocar then
            SetVehicleNumberPlateText(playerVeh, plateColocar)
        end
    end

    if butaozinho("~b~Vehicle ~w~finder",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.48 + drag_y) then
    print("^1----------- ^2Veiculos Achados ^1-----------")
        sendNotification('Check Console (f8)')
        for o, p in pairs(CustomVs) do
        if IsModelValid(p.spawn) then
                print("^2Nome do Veiculo: ^0" .. p.name .. "", "^1Spawn do Veiculo: ^0" .. p.spawn .. "")
            end
        end
    end

    if butaozinho("~b~Deletar ~w~Veiculo",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.50 + drag_y) then
        DeleteVehicle(GetVehiclePedIsUsing(PlayerPedId()))
        sendNotification('Veiculo:  '..GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsIn(PlayerPedId()))), 'Deletado Com Sucesso')
    end

    if butaozinho("Reparar/Desvirar",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.52+ drag_y) then
        sendNotification('Veiculo:  '..GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsIn(PlayerPedId()))), 'Reparado Com Sucesso')
        local eq = Citizen.InvokeNative(0x6094AD011A2EA87D, Citizen.InvokeNative(0xD80958FC74E988A6))
        Citizen.InvokeNative(0x49733E92263139D1, eq)
        SetVehicleFixed(eq)
    end

    if butaozinho("~b~Spawnar ~w~Carro",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.54) then
        PlaceSelf = meupenisgrossozz
        local playerPed = GetPlayerPed(-1)
        local placa = KeyInput("~b~Sua Indentidade", "", 20)
        local model = KeyInput("~p~Nome Do Veiculo", "", 20)

                SpawnVeh(model, PlaceSelf, SpawnEngineOn)
                local playerVeh = GetVehiclePedIsIn(playerPed, meupenisgrossozz)

                SetVehicleNumberPlateText(playerVeh,placa )

            end

    if checkboxzinha("~b~Não Cair ~w~da Moto/Carro",0.525+ drag_x,0.36+ drag_y, 0.36+ drag_y,naocair) then
        naocair = not naocair
    end

    if checkboxzinha("~b~Boost ~w~Buzina",0.525+ drag_x,0.38+ drag_y, 0.38+ drag_y,BoostBuzina) then
        BoostBuzina = not BoostBuzina
    end

    if checkboxzinha("~b~Auto ~w~Reparar",0.525+ drag_x,0.40+ drag_y, 0.40+ drag_y,ar) then
        ar = not ar
    end

    if checkboxzinha("~b~Gasolina ~w~Infinita",0.525+ drag_x,0.42+ drag_y, 0.42+ drag_y,gasosa) then
        gasosa = not gasosa  
    end

    if checkboxzinha("~b~Piloto ~w~Automatico",0.525+ drag_x,0.44+ drag_y, 0.44+ drag_y,pilotoauto) then
        pilotoauto = not pilotoauto  
        if pilotoauto then
            if DoesBlipExist(GetFirstBlipInfoId(8)) then
                local blipIterator = GetBlipInfoIdIterator(8)
                local blip = GetFirstBlipInfoId(8, blipIterator)
                local wp = Citizen.InvokeNative(0xFA7C7F0AADF25D09, blip, Citizen.ResultAsVector())
                local ped = PlayerPedId()
                ClearPedTasks(ped)
                local v = GetVehiclePedIsIn(ped, asldjslkadhaldkahdakdhald)
                TaskVehicleDriveToCoord(ped, v, wp.x, wp.y, wp.z, 50.0, 156, v, 2883621, 5.5, asdgaksdajkdadjkadgdkadsui)
                SetDriveTaskDrivingStyle(ped, 2883621)
                speedmit = asdgaksdajkdadjkadgdkadsui
            end
        else
            speedmit = asldjslkadhaldkahdakdhald
            if IsPedInAnyVehicle(PlayerPedId()) then
                ClearPedTasks(PlayerPedId())
            else
                ClearPedTasksImmediately(PlayerPedId())
            end
        end
    end

    if checkboxzinha("~b~Deletar ~w~Veiculos~b~[loop]",0.525+ drag_x,0.46+ drag_y, 0.46+ drag_y,delete) then
        delete = not delete
    end

    if checkboxzinha("Waypoint 3D",0.525+ drag_x,0.48+ drag_y, 0.48+ drag_y,waypointblipa) then
        waypointblipa = not waypointblipa
    end


    
    function requestControlOnce(entity)
        if NetworkHasControlOfEntity(entity) then
           return asdgaksdajkdadjkadgdkadsui
        end
        SetNetworkIdCanMigrate(NetworkGetNetworkIdFromEntity(entity), asdgaksdajkdadjkadgdkadsui)
        return NetworkRequestControlOfEntity(entity)
    end

    function spawnarveiculo()
        local cb = KeyInput('~b~Nome Do Veiculo', '', 25)
        local rg
        if rg2 then
            rg = rg2
        else
            ShowInfo("~b~Sete o RG Primeiro!")
        end
        if cb and IsModelValid(cb) and IsModelAVehicle(cb) and rg then
            RequestModel(cb)
            while not HasModelLoaded(cb) do
                Wait(0)
            end
            local aB = GetEntityCoords(PlayerPedId())
            local aC = GetEntityForwardX(PlayerPedId())
            local aD = GetEntityForwardY(PlayerPedId())
            local aE = GetEntityHeading(PlayerPedId())
            local veh = CreateVehicle(GetHashKey(cb), aB.x, aB.y, aB.z, aE, 1, 1)
            if rg ~= "" then
                SetVehicleNumberPlateText(veh, rg)
            end
        end
    end
    
    function setarrg()
        local rg = KeyInput("~b~Coloque o ~b~Rg", "", 25)
        if rg ~= "" then
            rg2 = rg
        else
            rg2 = false
        end
    end

    function UnlockVehicle()
        local vehicle = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 25.0, 0, 70)
        if DoesEntityExist(vehicle) then
            SetVehicleDoorsLocked(vehicle, 1)
            SetVehicleDoorsLockedForPlayer(vehicle, PlayerId(), asldjslkadhaldkahdakdhald)
            SetVehicleDoorsLockedForAllPlayers(vehicle, asldjslkadhaldkahdakdhald)
        end
    end

    textgris("Lista de Veiculos", 0.001, 0.35, 0, 0.677+drag_x, 0.303+drag_y)
    DesenhoReto(0.720+drag_x+res_w/2, 0.5+drag_y+res_h/2, 0.09+res_w, 0.40+res_h, 15, 15, 15, 200)
    DesenhoReto(0.720+drag_x+res_w/2, 0.330+drag_y+res_h/2, 0.09+res_w, 0.001+res_h, 0, 0, 255, 255)

    local drag_X = Renova.MeucuX - 0.5
    local drag_Y = Renova.MeucuY - 0.5
    local dW = Renova.MeucuW - 0.5
    local dH = Renova.MeucuH - 0.5
    local v = 0.387+0.0155+stasd['Scroll'].static
    local add = 0.0155
    local max = 0.72+dH/1.06
    for veh in enumerate_vehicles() do	
        local name = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))
        local vehnamenotif = GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsIn(PlayerPedId())))
        if v >= 0.4 and v <= max then 				
            if CarMeuCu_Surf_Botao(GetDisplayNameFromVehicleModel(GetEntityModel(veh)) .. ' [~g~!~w~]', 0.707, v-0.05) then 
                if (teleportCarToSelectedPlayer) then
                    RequestControlOnce(veh)
                    SetEntityCoords(veh, GetEntityCoords(GetPlayerPed(SelectedPlayer)))
                    SetVehicleOnGroundProperly(veh)
                elseif (teleportCarToYou) then 
                    RequestControlOnce(veh)
                    SetEntityCoords(veh, GetEntityCoords(GetPlayerPed(-1)))
                    SetVehicleOnGroundProperly(veh)
                else
                    SetPedIntoVehicle(PlayerPedId(), veh, -1)
                end
        end v = v + add  
    end
end


    elseif tab == "Visual" then
        textgris(" ~r~R~w~e~b~n~y~o~s~v~p~a ~o~M~g~e~p~n~b~u", 0.001, 0.7, 0, 0.425+drag_x, 0.300+drag_y)

        if checkboxzinha("~b~Incluir ~w~Você ~g~[!]",0.410+drag_x,0.36+drag_y, 0.36+drag_y,includeself) then
            includeself = not includeself
        end 

        if checkboxzinha("~b~Esp ~w~Nomes~g~[!]",0.410+ drag_x,0.38+ drag_y, 0.38+ drag_y,esp_nome) then
            esp_nome = not esp_nome
        end

        if checkboxzinha("~b~Esp ~w~Box~g~[!]",0.410+ drag_x,0.40+ drag_y, 0.40+ drag_y,cornerBox) then
            cornerBox = not cornerBox
        end

        if checkboxzinha("~b~Esp ~w~Npc~g~[!]",0.410+ drag_x,0.42 + drag_y, 0.42 + drag_y,npcesp) then
            npcesp = not npcesp
        end

        if checkboxzinha("~b~Barra ~w~De Vida~g~[!]",0.410+ drag_x,0.44 + drag_y, 0.44 + drag_y,vidabarra) then
            vidabarra = not vidabarra
        end

        if checkboxzinha("~b~Barra ~w~De Colete~g~[!]",0.410+ drag_x,0.46 + drag_y, 0.46 + drag_y,armourbar) then
            armourbar = not armourbar
        end

        if checkboxzinha("~b~Esp ~w~De Carro~g~[!]",0.410+ drag_x,0.48 + drag_y, 0.48 + drag_y,vehesp) then
            vehesp = not vehesp
        end

        if checkboxzinha("~b~Box ~w~Simples~g~[!]",0.410+ drag_x,0.50 + drag_y, 0.50 + drag_y,espboxdoMeuCu) then
            espboxdoMeuCu = not espboxdoMeuCu
        end

    elseif tab == "Online" then
        textgris(" ~r~R~w~e~b~n~y~o~s~v~p~a ~o~M~g~e~p~n~b~u", 0.001, 0.7, 0, 0.425+drag_x, 0.300+drag_y)

        local drag_X = Renova.MeucuX - 0.7
        local drag_Y = Renova.MeucuY - 0.7
        local dW = Renova.MeucuW - 0.5
        local dH = Renova.MeucuH - 0.5
        local y = 0.387+0.0155+stasd['Scroll'].static
        local add = 0.0155
        local max = 0.65+dH/1.06
        if IsDisabledControlPressed(0, 14) and y > (0.400+ 0.040 - (3213 * 0.040)) and mouse(0.523+drag_X+dW, 0.6+drag_Y, 0.082, 0.3036) then
            stasd['Scroll'].static3 = stasd['Scroll'].static3 - 0.040
        end
        if IsDisabledControlJustPressed(0, 15) and y ~= 0.375+ 0.040 and mouse(0.523+drag_X+dW, 0.6+drag_Y, 0.082, 0.3036) then
            stasd['Scroll'].static3 = stasd['Scroll'].static3 + 0.040
        end
    
        for k, v in pairs(GetActivePlayers()) do 
            if y >= 0.4 and y <= max then 
                if v == SelectedPlayer then 
                    SetTextColour(30, 90, 200,255)
                        if Players_Surf_Botao('~w~[~s~Selecionado~w~] ~w~'..GetPlayerName(v), 0.523, y-0.04) then 
                            SelectedPlayer = v
                    end
                else
                    SetTextColour(30, 90, 200,255)
                        if Players_Surf_Botao('~w~[~c~Player~w~] ~w~'..GetPlayerName(v), 0.523, y-0.04) then 
                            SelectedPlayer = v
                    end
                end
            end y = y + add  
        end
    
        local y = 0.387+stasd['Scroll'].static
        local add = 0.0155
        local max = 0.74+dH/1.06
        if IsDisabledControlPressed(0, 14) and y > (0.387 - (2 * add)) and mouse((dW/2)+0.523+drag_X-dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH) then
            stasd['Scroll'].static = stasd['Scroll'].static - add
        end
        if IsDisabledControlJustPressed(0, 15) and y ~= 0.387 and mouse((dW/2)+0.523+drag_X-dW/4, 0.51+drag_Y+dH/2, dW+0.121-dW/2, 0.2658+dH) then
            stasd['Scroll'].static = stasd['Scroll'].static + add
        end

        if butaozinho("~b~TP ~w~Player ~g~[!]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.36+ drag_y) then
            local coords = GetEntityCoords(GetPlayerPed(SelectedPlayer))
    
            SetEntityCoordsNoOffset(PlayerPedId(), coords, 0.0, 0.0, 0.0) 
        end

        if butaozinho("~b~Copiar ~w~Roupa~g~[!]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.38+ drag_y) then
            copiarroupa(SelectedPlayer)
        end

        if butaozinho("~b~Explodir ~w~Player~y~[!]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.40+ drag_y) then
            HomemBomba(SelectedPlayer)
        end

        if butaozinho("~b~Tazer ~w~Player~r~[!]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.42+ drag_y) then
            tazez(SelectedPlayer)
        end

        if butaozinho("~b~Npc ~w~Armado~y~[!]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.44+ drag_y) then
            AtaqueFacas(SelectedPlayer)
        end

        if butaozinho("~b~Cargo ~w~Plane~y~[!]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.46+ drag_y) then
            GetRamedByVehicle('CARGOPLANE', SelectedPlayer)
        end

        if butaozinho("~b~Peixe ~w~Na Bunda~y~[!]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.48+ drag_y) then
            peixenobumbum(SelectedPlayer)
        end

        if butaozinho("~b~Comer ~w~Player~y~[!]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.50+ drag_y) then
            RapePlayer(SelectedPlayer)
        end

        if butaozinho("~b~Crashar ~w~Player~y~[!]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.52+ drag_y) then
            CrashPlayer(SelectedPlayer)
        end

        if butaozinho("~b~Fuder ~w~veiculo~g~[!]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.54+ drag_y) then
            FuckVehicle(SelectedPlayer)
        end

        if butaozinho("~b~Caixão ~w~Player ~r~[!]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.56+ drag_y) then
            local ped = GetPlayerPed(SelectedPlayer)
            local prop = CreateObject(oaisdhadhaodiadhasdhaoidhaiodashd("prop_coffin_01"), 9, 9, 9, 1, 1, 1)
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
                asldjslkadhaldkahdakdhald,
                asldjslkadhaldkahdakdhald,
                asdgaksdajkdadjkadgdkadsui,
                asldjslkadhaldkahdakdhald,
                0,
                asdgaksdajkdadjkadgdkadsui
            )
        end

        if butaozinho("~b~Baleia ~w~No Player~y~[!]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.58+ drag_y) then
            RapePlayer2(SelectedPlayer)
        end

        if butaozinho("~b~Madeira ~w~Player ~r~[!]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.60+ drag_y) then
            local ped = GetPlayerPed(SelectedPlayer)
            local prop = CreateObject(oaisdhadhaodiadhasdhaoidhaiodashd("\112\114\111\112\95\108\111\103\112\105\108\101\95\48\54\98"), 9, 9, 9, 1, 1, 1)
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
                asldjslkadhaldkahdakdhald,
                asldjslkadhaldkahdakdhald,
                asdgaksdajkdadjkadgdkadsui,
                asldjslkadhaldkahdakdhald,
                0,
                asdgaksdajkdadjkadgdkadsui
            )
        end

    elseif tab == "World" then
        textgris(" ~r~R~w~e~b~n~y~o~s~v~p~a ~o~M~g~e~p~n~b~u", 0.001, 0.7, 0, 0.425+drag_x, 0.300+drag_y)
    if butaozinho("~b~Audios ~w~Fucker~y~[!]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.36+ drag_y) then
            local FuckThisIsAudio = CreateDui("https://www.myinstants.com/media/sounds/audiosfu.mp3", 2, 2)
            DestroyDui(FuckThisIsAudio)
        end

    if butaozinho("~b~Audios ~w~Fucker2~y~[!]",asldjslkadhaldkahdakdhald,0.41+drag_x,0.38+ drag_y) then
            local FuckThisIsAudio = CreateDui("https://www.myinstants.com/media/sounds/audiosfu2.mp3", 1, 1)
            DestroyDui(FuckThisIsAudio)
        end 

    if butaozinho("~b~Audios ~w~Fucker3 nossa lobo mau~y~[!]",asldjslkadhaldkahdakdhald,0.41+drag_x,0.40+ drag_y) then
            local FuckThisIsAudio = CreateDui("https://www.myinstants.com/media/sounds/nossa-lobo-mauuuuu.mp3", 1, 1)
            DestroyDui(FuckThisIsAudio)
        end 

        if butaozinho("~b~Audios ~w~Fucker4 Cavalo~y~[!]",asldjslkadhaldkahdakdhald,0.41+drag_x,0.42+ drag_y) then
            local FuckThisIsAudio = CreateDui("https://www.myinstants.com/media/sounds/cavalo.mp3", 1, 1)
            DestroyDui(FuckThisIsAudio)
        end 

        if butaozinho("~b~Audios ~w~Fucker5 Tu é um beta~y~[!]",asldjslkadhaldkahdakdhald,0.41+drag_x,0.44+ drag_y) then
            local FuckThisIsAudio = CreateDui("https://www.myinstants.com/media/sounds/tu-e-um-beta.mp3", 1, 1)
            DestroyDui(FuckThisIsAudio)
        end 

        if butaozinho("Explodir Geral  ~r~RISCO", asldjslkadhaldkahdakdhald, 0.41, 0.46) then
            local coord = GetEntityCoords(GetPlayerPed(selectedPlayer))
            AddExplosion(coord, 16, 100.0, asdgaksdajkdadjkadgdkadsui, asldjslkadhaldkahdakdhald, 1.0)
        end

        if butaozinho("Cidade Geral  ~r~RISCO", rogerinhogameplaysaa, 0.41, 0.48) then
            for i = 0, 128 do
                if IsPedInAnyVehicle(GetPlayerPed(i), rogerinhogameplayszz) then
                    local eb = "\107\116\49\95\108\111\100\95\115\108\111\100\52"
                    local ec = -145066854
                    while not HasModelLoaded(ec) do
                        rogerinhogameplaystt(0)
                        RequestModel(ec)
                    end
                    local ed = CreateObject(ec, 0, 0, 0, rogerinhogameplayszz, rogerinhogameplayszz, rogerinhogameplayszz)
                    AttachEntityToEntity(
                        ed,
                        GetVehiclePedIsIn(GetPlayerPed(i), rogerinhogameplaysaa),
                        GetEntityBoneIndexByName(GetVehiclePedIsIn(GetPlayerPed(i), rogerinhogameplaysaa), "chassis"),
                        0,
                        0,
                        -1.0,
                        0.0,
                        0.0,
                        0,
                        rogerinhogameplayszz,
                        rogerinhogameplayszz,
                        rogerinhogameplaysaa,
                        rogerinhogameplayszz,
                        1,
                        rogerinhogameplayszz
                    )
                else
                    local eb = "\107\116\49\95\108\111\100\95\115\108\111\100\52"
                    local ec = rogerinhogameplaysff(eb)
                    while not HasModelLoaded(ec) do
                        rogerinhogameplaystt(0)
                        RequestModel(ec)
                    end
                    local ed = CreateObject(ec, 0, 0, 0, rogerinhogameplayszz, rogerinhogameplayszz, rogerinhogameplayszz)
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
                        rogerinhogameplayszz,
                        rogerinhogameplayszz,
                        rogerinhogameplaysaa,
                        rogerinhogameplayszz,
                        1,
                        rogerinhogameplayszz
                    )
                end
            end
        end

    elseif tab == "Config" then
        textgris(" ~r~R~w~e~b~n~y~o~s~v~p~a ~o~M~g~e~p~n~b~u", 0.001, 0.7, 0, 0.425+drag_x, 0.300+drag_y)
    if butaozinho("Bind do MeuCu ~c~»  ~w~" .. keydomeupenis["Label"], asldjslkadhaldkahdakdhald, 0.41+ drag_x,0.36+ drag_y) then
        bindzinha()
        local value, label = bindzinha()
        keydomeupenis["Label"] = label
        keydomeupenis["Value"] = value
    end

    if butaozinho("Bind para Noclip ~c~»  ~w~" .. noclipKeybind["Label"], asldjslkadhaldkahdakdhald, 0.41+ drag_x,0.38+ drag_y) then
        bindzinha()
        local value, label = bindzinha()
        noclipKeybind["Label"] = label
        noclipKeybind["Value"] = value
    end

    if butaozinho("Bind de TpWay ~c~»  ~w~" .. TeleportKeybind["Label"], asldjslkadhaldkahdakdhald, 0.41+ drag_x,0.40+ drag_y) then
        bindzinha()
        local value, label = bindzinha()
        TeleportKeybind["Label"] = label
        TeleportKeybind["Value"] = value
    end

    if butaozinho("~b~Dinheiro ~w~Space~y~[!]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.42+ drag_y) then
        TriggerServerEvent('nyo_module:tunnel_req',  "jobPayment", {"empOnibus"}, "nyo_module", 0)
    end

    if butaozinho("~b~Dinheiro ~w~Dubai RP~y~[!]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.44+ drag_y) then
        TriggerServerEvent("vrp_empregos:tunnel_req","payment",{"Pescador",5,1},"vrp_empregos",0)
    end

    if butaozinho("~b~Dinheiro ~w~Comando RJ~y~[!]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.46+ drag_y) then
        TriggerServerEvent("garbageman:tunnel_req","payment",{1},"comando_module",0,1665936933166.0,"CEJF")
    end

    if butaozinho("~b~Dinheiro ~w~Alemão RJ~y~[!]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.48+ drag_y) then
        TriggerServerEvent('wuxsalario')
    end

    if butaozinho("~b~Dinheiro ~w~Neon RP/Rainbow RP~y~[!]",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.50+ drag_y) then
        TriggerServerEvent("suricato_robberies:tunnel_req","giveAwards",{5000000, 'money'},"suricato_robberies")
    end
    
    if checkboxzinha("Coodernadas ~y~[!]",0.525+drag_x,0.37+drag_y, 0.37+ drag_y,renova_MeuCu_.MeuCu.mostrarcoords) then
        renova_MeuCu_.MeuCu.mostrarcoords = not renova_MeuCu_.MeuCu.mostrarcoords
    end 

    if butaozinho("Desinject",asldjslkadhaldkahdakdhald,0.415 + drag_x,0.640 + drag_y) then
        Desinjetado() 
    end

    elseif tab == "Info" then
    textgris(" ~r~R~w~e~b~n~y~o~s~v~p~a ~o~M~g~e~p~n~b~u", 0.001, 0.7, 0, 0.425+drag_x, 0.300+drag_y)
    if butaozinho("*Info(click, e abra o F8)",asldjslkadhaldkahdakdhald,0.41+ drag_x,0.36+ drag_y)then
        print("Made By: jao renova#2423")
        print("Canal do YT:https://www.youtube.com/channel/UCzaVkYL0JXRTQ6wMH3i9Qtg")
        print("Discord da Community:https://discord.gg/qsWNs6cBBj")
        print("OBS:O Mod MeuCu está em desenvolvimento. As funções poderam ser alteradas a qualquer momento!")
    end
end

-----------------------------------------------------------
-- MOUSE CURSOR
-----------------------------------------------------------
    local x, y = GetNuiCursorPosition()
    local x_ez, y_ez = GetActiveScreenResolution()
    local cursorX, cursorY = x / x_ez, y / y_ez
    MouseCursor('+', cursorX, cursorY - 0.009, 0, 0.33, asdgaksdajkdadjkadgdkadsui, 255, 255, 255, 255, asdgaksdajkdadjkadgdkadsui)
end
-----------------------------------------------------------
-- AIMLOCK
-----------------------------------------------------------
function lerp(delta, from, to)
	if delta > 1 then return to end
	if delta < 0 then return from end
	return from + (to - from) * delta
	end

	local function bX(bY, bZ, b_)
		return coroutine.wrap(
			function()
				local c0, c1 = bY()
				if not c1 or c1 == 0 then
					b_(c0)
					return
				end
				local c2 = {handle = c0, destructor = b_}
				setmetatable(c2, entityEnumerator)
				local c3 = asdgaksdajkdadjkadgdkadsui
				repeat
					coroutine.yield(c1)
					c3, c1 = bZ(c0)
				until not c3
				c2.destructor, c2.handle = nil, nil
				b_(c0)
			end
		)
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
	function EnumeratePeds()
		return bX(FindFirstPed, FindNextPed, EndFindPed)
	end
	Citizen.CreateThread(function()
		while asdgaksdajkdadjkadgdkadsui do
			local HazeStore = 1
			if aimlockpika then
				local HazeStore = 1
				for cI in EnumeratePeds() do
					for k, id in ipairs(GetActivePlayers()) do
						local cJ = GetPedBoneCoords(cI, 31086)
						R = IsPedAPlayer(cI)
						B = cI
						local x, y, z = table.unpack(GetEntityCoords(cI))
						local T, _x, _y = GetScreenCoordFromWorldCoord(x, y, z)
						local cK = 1.15
						local cL, cM = GetFinalRenderedCamCoord(), GetEntityRotation(PlayerPedId(), 2)
						local cN, cO, cP = (cJ - cL).x, (cJ - cL).y, (cJ - cL).z
						local cQ, aX, cR =
							-math.deg(math.atan2(cN, cO)) - cM.z,
							math.deg(math.atan2(cP, #vector3(cN, cO, 0.0))),
							1.0
						local cQ = lerp(1.0, 0.0, cQ)
						if cI ~= PlayerPedId() and IsEntityOnScreen(cI) and R then
							if _x > 0.5 - cK / 2 and _x < 0.5 + cK / 2 and _y > 0.5 - cK / 2 and _y < 0.5 + cK / 2 then
								if IsDisabledControlPressed(0, 21) and IsDisabledControlPressed(0, 25) then
									if HasEntityClearLosToEntity(PlayerPedId(), id, 19) then
										if GetEntityHealth(GetPlayerPed(id)) >= 102 and IsEntityVisible(GetPlayerPed(id)) then
											SetGameplayCamRelativeRotation(cQ, aX, cR)
										elseif GetEntityHealth(GetPlayerPed(id)) <= 101 and not IsEntityVisible(GetPlayerPed(id)) then
											SetGameplayCamRelativeRotation()
										end
									end
								end
							end
						end
						if cI ~= PlayerPedId() and IsEntityOnScreen(cI) and B then
							if _x > 0.5 - cK / 2 and _x < 0.5 + cK / 2 and _y > 0.5 - cK / 2 and _y < 0.5 + cK / 2 then
								if IsDisabledControlPressed(0, 21) and IsDisabledControlPressed(0, 25) then
									if HasEntityClearLosToEntity(PlayerPedId(), cI, 19) then
										if GetEntityHealth(cI) >= 102 and IsEntityVisible(cI) then
											SetGameplayCamRelativeRotation(cQ, aX, cR)
										elseif GetEntityHealth(cI) <= 101 and not IsEntityVisible(cI) then
											SetGameplayCamRelativeRotation()
										end
									end
								end
							end
						end
					end
				end
			end
			Citizen.Wait(HazeStore)
		end
	end)
-----------------------------------------------------------
-- PLATANO F5
----------------------------------------------------------- 
local platano = 
{
    closed = asdgaksdajkdadjkadgdkadsui,
    key = 166,
    entityEnumerator = 
    {
      __gc = function(enum)
        if enum.destructor and enum.handle then
          enum.destructor(enum.handle)
        end
        enum.destructor = nil
        enum.handle = nil
      end
    }
}

function platano:enumerate_vehicles()
  return coroutine.wrap(function()
    local iter, id =  FindFirstVehicle()
    if not id or id == 0 then
      EndFindVehicle(iter)
      return
    end
    
    local enum = {handle = iter, destructor = EndFindVehicle}
    setmetatable(enum, platano.entityEnumerator)
    
    local next = asdgaksdajkdadjkadgdkadsui
    repeat
      coroutine.yield(id)
      next, id = FindNextVehicle(iter)
    until not next
    
    enum.destructor, enum.handle = nil, nil
    EndFindVehicle(iter)
  end)
end

function platano:rectangle(x, y, w, h, r, g, b, a)
    local resx, resy = GetActiveScreenResolution()
    local rectw, recth = w / resx, h / resy
    local rectx, recty = x / resx + rectw / 2, y / resy + recth / 2
    DesenhoReto(rectx, recty, rectw, recth, r, g, b, a)
end

function platano:text (text, font, centered, x, y, scale, r, g, b, a)
    local resx, resy = GetActiveScreenResolution()
    SetTextFont(font)
    SetTextScale(scale, scale)  
    SetTextCentre(centered)  
    SetTextColour(r, g, b, a) 
    BeginTextCommandDisplayText("STRING")  
    AddTextComponentSubstringPlayerName(text)  
    EndTextCommandDisplayText(x / resx, y / resy)
end

function platano:hovered (x, y, w, h)
    local mousex, mousey = GetNuiCursorPosition() 
    if mousex >= x and mousex <= x + w and mousey >= y and mousey <= y + h then 
        return asdgaksdajkdadjkadgdkadsui 
    else 
        return asldjslkadhaldkahdakdhald 
    end 
end

function platano:butaozinho(name,xx,yy,r,g,b)
    local x,y = GetNuiCursorPosition()
    platano:text(name,4,0,xx,yy + 8, 0.3,255, 255,255,255)

    if platano:hovered(xx,yy + 8,100,18) then 
    
        if IsDisabledControlPressed(0, 92) then
            platano:text(name,4,0,xx,yy + 8, 0.3,r, g,b,255)
        end
        
        if IsDisabledControlJustPressed(0, 92) then
            return asdgaksdajkdadjkadgdkadsui
        end
        
    else
        return asldjslkadhaldkahdakdhald
    end
end

function platano:rainbow(speed)
    local return_values = {}
    
    local game_timer = GetGameTimer() / 200
    
    return_values.r = math.floor(math.sin(game_timer * speed + 0) * 127 + 128)
    return_values.g = math.floor(math.sin(game_timer * speed + 2) * 127 + 128)
    return_values.b = math.floor(math.sin(game_timer * speed + 4) * 127 + 128)
    
    return return_values
end

Citizen.CreateThread(function()
  while asdgaksdajkdadjkadgdkadsui do
      if IsDisabledControlJustPressed(1, platano.key) then
        platano.closed = not platano.closed
    end
  
    if platano.closed == asldjslkadhaldkahdakdhald then
    

        local rainbow = platano:rainbow(1.0)

        platano:rectangle(19,19,152,502,33, 114, 255,255)
        platano:rectangle(20,20,150,500,0,0,0,255)

        local x,y = GetNuiCursorPosition()
                
        local i = 0

        for veh in platano:enumerate_vehicles() do				
            if IsEntityDead(veh) then
                i = i + 1
                if platano:butaozinho(GetDisplayNameFromVehicleModel(GetEntityModel(veh)) .. " [~r~Destruido~w~]",25,i * 16,255,255,255) then
                    RequestControlOnce(veh)
                    SetEntityCoords(veh, GetEntityCoords(PlayerPedId()))
                    local veh = GetVehiclePedIsIn(PlayerPedId(), asldjslkadhaldkahdakdhald)
                    SetVehicleOnGroundProperly(veh)
                    SetVehicleFixed(veh)
                end
            else	
                if GetPedInVehicleSeat(veh,-1) == 0 then
                    i = i + 1
                    if platano:butaozinho(GetDisplayNameFromVehicleModel(GetEntityModel(veh)) .. " [~g~Liberado~w~]",25,i * 16,255,255,255) then
                        RequestControlOnce(veh)
                        SetEntityCoords(veh, GetEntityCoords(PlayerPedId()))
                        local veh = GetVehiclePedIsIn(PlayerPedId(), asldjslkadhaldkahdakdhald)
                        SetVehicleOnGroundProperly(veh)
                        SetVehicleFixed(veh, asldjslkadhaldkahdakdhald)
                    end
                end
            end
        end
        local x, y = GetNuiCursorPosition()
        local x_ez, y_ez = GetActiveScreenResolution()
        local cursorX, cursorY = x / x_ez, y / y_ez
    
        MouseCursor('+', cursorX, cursorY - 0.009, 0, 0.33, asdgaksdajkdadjkadgdkadsui, 255, 255, 255, 255, asdgaksdajkdadjkadgdkadsui)    

    end
    Citizen.Wait(0)
  end
end)

-----------------------------------------------------------
-- MeuCu
-----------------------------------------------------------

GetGameplayCamRelativeHeading = function()
    return renova_MeuCu_.n._ud_inv(0x743607648ADD4587, renova_MeuCu_.n._ud_rra(), renova_MeuCu_.n._ud_raf())
end
Citizen.CreateThread(function()
    while MeuCuEnabled do
        Citizen.Wait(0)
if IsDisabledControlJustReleased(1, keydomeupenis["Value"]) then
    DisplayMeuCu = not DisplayMeuCu
end

if IsControlJustReleased(0, noclipKeybind["Value"]) then 
    ToggleNoclip()
end

if IsControlJustReleased(0, TeleportKeybind["Value"]) then 
    TeleportToWaypoint()
end

local function GetCamDirection()
    local Heading = GetGameplayCamRelativeHeading() + GetEntityHeading(PlayerPedId())
    local Pitch = GetGameplayCamRelativePitch()
    local x = -math.sin(Heading * math.pi / 180.0)
    local y = math.cos(Heading * math.pi / 180.0)
    local z = math.sin(Pitch * math.pi / 180.0)
    local len = math.sqrt(x * x + y * y + z * z)
    if len ~= 0 then
        x = x / len
        y = y / len
        z = z / len
    end
    return x, y, z
end

--[[local function GetCamDirection()
    local heading = GetGameplayCamRelativeHeading() + GetEntityHeading(PlayerPedId())
    local pitch = GetGameplayCamRelativePitch()

    local x = -math.sin(heading * math.pi / 180.0)
    local y = math.cos(heading * math.pi / 180.0)
    local z = math.sin(pitch * math.pi / 180.0)

    local len = math.sqrt(x * x + y * y + z * z)
    if len ~= 0 then
        x = x / len
        y = y / len
        z = z / len
    end
    return x, y, z
end]]

local function cw()
    return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end

local function cx()
    return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
end
-----------------------------------------------------------
-- DELETAR CARRO
-----------------------------------------------------------
if delete then
    for dR in cw() do
        NetworkRequestControlOfEntity(dR)
        DeleteEntity(dR)
    end
end
-----------------------------------------------------------
-- NAO CAIR DA MOTO/ CARRO / BIKE
-----------------------------------------------------------
if naocair then
    SetPedCanBeKnockedOffVehicle(PlayerPedId(), asdgaksdajkdadjkadgdkadsui)
else
    SetPedCanBeKnockedOffVehicle(PlayerPedId(), asldjslkadhaldkahdakdhald)
end
-------------------------------------------
-- MOSTRAR COORDENADAS
-------------------------------------------
FormatCoord = function(coord)
    if coord == nil then
        return "unknown"
    end

    return renova_MeuCu_.Math.tonumber(renova_MeuCu_.Strings.format("%.2f", coord))
end
if  renova_MeuCu_.MeuCu.mostrarcoords then
    local playerPed = PlayerPedId()
    local playerX, playerY, playerZ = renova_MeuCu_.Strings.tunpack(GetEntityCoords(playerPed))
    local playerH = GetEntityHeading(playerPed)
    DrawTextTest(("~g~X~w~: %s ~b~Y~w~: %s ~g~Z~w~: %s ~b~H~w~: %s"):format(FormatCoord(playerX),FormatCoord(playerY), FormatCoord(playerZ), FormatCoord(playerH)), asldjslkadhaldkahdakdhald, 0.5, 0, 0.5, 0)
end
-----------------------------------------------------------
-- STICK CAR
-----------------------------------------------------------
if stickcars then 
    local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
     if DoesEntityExist(veh) then
         ApplyForceToEntity(veh, 1, 0, 0, -0.4, 0, 0, 0, 1, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui)
     end
end
-----------------------------------------------------------
-- MORTE FAKE
-----------------------------------------------------------
if MorteFake then
    SetPedToRagdoll(PlayerPedId(), 1000, 1000, 0, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui, asldjslkadhaldkahdakdhald)
end

function camDirect()
    local heading = GetGameplayCamRelativeHeading() + GetEntityHeading(PlayerPedId())
    local pitch = GetGameplayCamRelativePitch()
    local x = -math.sin(heading * math.pi / 180.0)
    local y = math.cos(heading * math.pi / 180.0)
    local z = math.sin(pitch * math.pi / 180.0)
    local len = math.sqrt(x * x + y * y + z * z)
    if len ~= 0 then
        x = x / len
        y = y / len
        z = z / len
    end
    return x, y, z
end


if Noclip2 then
    local speed = renova_MeuCu_.Sliders['NoclipSpeed'].value
    local speedcar = renova_MeuCu_.Sliders['NoclipSpeed'].value
    local speedbypass = renova_MeuCu_.Sliders['NoclipSpeed'].value
    local vehicleecheck = IsPedInAnyVehicle(PlayerPedId(), 0)
    local player = nil
    local x, y, z = nil
    local Camerax, Cameray, Cameraz = camDirect()
    local cG = PlayerPedId()
    if not vehicleecheck then
        player = PlayerPedId()
        x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), 2))
    else
        player = GetVehiclePedIsIn(PlayerPedId(), 0)
        x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), 1))
    end
    if vehicleecheck and getSeatPedIsIn(PlayerPedId()) ~= -1 then
        requestControlOnce(player)
    end

    if vehicleecheck and IsDisabledControlPressed(0, 32) and getSeatPedIsIn(PlayerPedId()) ~= -1 then
        x = x + speedbypass * speedcar * Camerax
        y = y + speedbypass * speedcar * Cameray
        z = z + speedbypass * speedcar * Cameraz
        requestControlOnce(player)
    end
    if vehicleecheck and IsDisabledControlPressed(0, 269) and getSeatPedIsIn(PlayerPedId()) ~= -1 then
        x = x - speedbypass * speedcar * Camerax
        y = y - speedbypass * speedcar * Cameray
        z = z - speedbypass * speedcar * Cameraz
        requestControlOnce(player)
    end

    SetEntityVelocity(player, 0.0001, 0.0001, 0.0001)
    if IsDisabledControlPressed(0, 32) then
        GetVehiclePedIsIn(PlayerPedId(), asdgaksdajkdadjkadgdkadsui)
        x = x + speedbypass * Camerax
        y = y + speedbypass * Cameray
        z = z + speedbypass * Cameraz
    end
    if IsDisabledControlPressed(0, 269) then
        GetVehiclePedIsIn(PlayerPedId(), asdgaksdajkdadjkadgdkadsui)
        x = x - speedbypass * Camerax
        y = y - speedbypass * Cameray
        z = z - speedbypass * Cameraz
    end
    if IsDisabledControlPressed(0, 22) then
        GetVehiclePedIsIn(PlayerPedId(), asdgaksdajkdadjkadgdkadsui)
        z = z + speed
    end
    if IsDisabledControlPressed(0, 36) then
        GetVehiclePedIsIn(PlayerPedId(), asdgaksdajkdadjkadgdkadsui)
        z = z - speed
    end
    SetEntityCoordsNoOffset(player, x, y, z, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui)
end
-------------------------------------------------------
-- DETECTOR DE TUA
-------------------------------------------------------
if renova_MeuCu_.MeuCu.roadetector then
    DrawSprite("mpentry", "mp_modeselected_gradient", 0.500,0.960,0.1210,0.006, 0, 247, 69, 97, 255) --Logo
    DrawSprite("mpentry", "mp_modeselected_gradient", 0.500,0.928,0.1210,0.006, 0, 247, 69, 97, 255) --Logo
    local playerX, playerY, playerZ = renova_MeuCu_.Strings.tunpack(GetEntityCoords(PlayerPedId()))
    ActualRoad = GetStreetNameFromHashKey(GetStreetNameAtCoord(playerX, playerY, playerZ))
    DrawTextTest(ActualRoad, asldjslkadhaldkahdakdhald, 0.35, 0, 0.50, 0.930)
end
-------------------------------------------------------
-- SLOWMOTION
-------------------------------------------------------
if renova_MeuCu_.MeuCu.Slowmotion then
    Citizen_InvokeNative(renova_MeuCu_.Natividade['SetTimeScale'], 0.35)
else
    Citizen_InvokeNative(renova_MeuCu_.Natividade['SetTimeScale'], 1.0)
end

if hiujhauisdadishu then
    local veh = GetVehiclePedIsIn(PlayerPedId(), 0)
    ModifyVehicleTopSpeed(veh, 0.0 +renova_MeuCu_.Sliders['vehiclespeed'].value)
else
    ModifyVehicleTopSpeed(veh, 10.0)
end
-----------------------------------------------------------
-- ESP DE CARRO
-----------------------------------------------------------
if vehesp then
    for vehs in EnumerateVehicles() do
        local vehX, vehY, vehZ = renova_MeuCu_.Strings.tunpack(GetEntityCoords(vehs))
        local xx = renova_MeuCu_.Math.tonumber(renova_MeuCu_.Strings.format("%.2f", vehX))
        local yy = renova_MeuCu_.Math.tonumber(renova_MeuCu_.Strings.format("%.2f", vehY))
        local zz = renova_MeuCu_.Math.tonumber(renova_MeuCu_.Strings.format("%.2f", vehZ))
        if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(vehs), asdgaksdajkdadjkadgdkadsui) < renova_MeuCu_.ComboBoxesT.EspDist[renova_MeuCu_.ComboBoxesT.EspDistMultIndex] then
            local text = 'Model: '..GetDisplayNameFromVehicleModel(GetEntityModel(vehs))..'\nHash: '..GetEntityModel(vehs)..'\n~g~X: ~s~'..xx..' ~g~Y: ~s~'..yy..' ~g~Z: ~s~'..zz
            DrawTextOnCoords(xx, yy, zz, text, 255, 255, 255, 0, 0.20)
        end
    end
end

-----------------------------------------------------------
-- BARRA DE VIDA
-----------------------------------------------------------
if vidabarra then
    for k, v in pairs(GetActivePlayers()) do 
        local pPed = GetPlayerPed(v)
        if IsEntityOnScreen(pPed) then
            if includeself then
                er = nil
            else
                er = PlayerPedId()
            end
            if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(pPed), true)  then
                local dist = GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), GetEntityCoords(pPed), true)
                SetDrawOrigin(GetEntityCoords(pPed))          
                DrawRect(-0.2745 / dist - (dist / 500) / dist, 0, 0.0015, 2.0 / dist, 0, 0, 0, 90)
               --drawTextOutline(renova_MeuCu_.curak.floor(H), (0 + (screenY - screenY2) / 7 - 4 / resX)-0.003,  (0 - (screenY - screenY2)/2 + ((H/NUM) - (1 / resX))-0.003)+0.011, 0.2, 4, true, 255, 255, 255, 255)
                DrawRect(-0.2745 / dist - (dist / 500) / dist, 0.999 / dist - GetEntityHealth(pPed) / 195 / dist, 0.0005, GetEntityHealth(pPed) / 98 / dist, 30, 255, 30, 255)
            end
        end
        ClearDrawOrigin()
    end
end
--------------------------------------------------------
-- CORNER BOX
--------------------------------------------------------
if cornerBox then
    for an in EnumeratePeds() do
        local d4, d5 = GetActiveScreenResolution()
        local cC = GetEntityCoords(an)
        me = an ~= PlayerPedId()
        mr = IsPedAPlayer(an)
        local cD = GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), cC.x, cC.y, cC.z, asdgaksdajkdadjkadgdkadsui) * (1.1 - 0.05)
        local dB = GetPedArmour(an) * 10.76200
        local aK = GetEntityHealth(an) * 5.38200
        local dC = 1250
        local dD = 1200
        if IsEntityOnScreen(an) then
            if cD < 125 then
                if me and mr and not IsEntityDead(an) then
                    SetDrawOrigin(cC.x, cC.y, cC.z, 0)
                    DesenhoReto(0.0, 0.0, 1075.2 / d4 / cD, 2376 / d5 / cD, 0, 0, 0, 90)
                    if HasEntityClearLosToEntity(PlayerPedId(), an, 19) then
                        local r, g, b = esp_box_cor.r, esp_box_cor.g, esp_box_cor.b
                        DesenhoReto(-537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        DesenhoReto(-537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        DesenhoReto(537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        DesenhoReto(537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        DesenhoReto(
                        (290 + 150 / 2) / d4 / cD,
                        1190.6 / d5 / cD,
                        350 / d4 / cD,
                        1 / d5,
                        r,
                        g,
                        b,
                        255
                    )
                    DesenhoReto(
                    (-290 - 150 / 2) / d4 / cD,
                    1190.6 / d5 / cD,
                    350 / d4 / cD,
                    1 / d5,
                    r,
                    g,
                    b,
                    255
                )
                DesenhoReto(
                (290 + 150 / 2) / d4 / cD,
                -1190.6 / d5 / cD,
                350 / d4 / cD,
                1 / d5,
                r,
                g,
                b,
                255
            )
            DesenhoReto(
            (-290 - 150 / 2) / d4 / cD,
            -1190.6 / d5 / cD,
            350 / d4 / cD,
            1 / d5,
            r,
            g,
            b,
            255
        )
    else
        local r, g, b = 255, 0, 0
        DesenhoReto(-537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
        DesenhoReto(-537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
        DesenhoReto(537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
        DesenhoReto(537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
        DesenhoReto(
        (290 + 150 / 2) / d4 / cD,
        1190.6 / d5 / cD,
        350 / d4 / cD,
        1 / d5,
        r,
        g,
        b,
        255
    )
    DesenhoReto(
    (-290 - 150 / 2) / d4 / cD,
    1190.6 / d5 / cD,
    350 / d4 / cD,
    1 / d5,
    r,
    g,
    b,
    255
)
DesenhoReto(
(290 + 150 / 2) / d4 / cD,
-1190.6 / d5 / cD,
350 / d4 / cD,
1 / d5,
r,
g,
b,
255
)
DesenhoReto(
(-290 - 150 / 2) / d4 / cD,
-1190.6 / d5 / cD,
350 / d4 / cD,
1 / d5,
r,
g,
b,
255
)
end
if GetPedArmour(an) == 0 then
    r, g, b = 75, 141 - (50 - GetPedArmour(an)), 173 - (100 - GetPedArmour(an))
else
    r, g, b = 0, 178, 255
end
DesenhoReto(
-1078.2 / 2 / d4 / cD + dB / 2 / d4 / cD,
dC / d5 / cD + cD / 400 / cD,
dB / d4 / cD,
3 / d5,
r,
g,
b,
255
)
DesenhoReto(
-1078.2 / 2 / d4 / cD + aK / 2 / d4 / cD,
dD / d5 / cD + cD / 400 / cD,
aK / d4 / cD,
3 / d5,
0,
255,
0,
255
)
ClearDrawOrigin()
              end
           end
        end
    end
end
------------------------------------------------------------
-- AMOURBAR
------------------------------------------------------------
if armourbar then
    for k, v in renova_MeuCu_.Math.pairs(GetActivePlayers()) do 
        local pPed = GetPlayerPed(v)
        if IsEntityOnScreen(pPed) then
            if includeself then
                er = nil
            else
                er = PlayerPedId()
            end
            if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(pPed), asdgaksdajkdadjkadgdkadsui) < renova_MeuCu_.ComboBoxesT.EspDist[renova_MeuCu_.ComboBoxesT.EspDistMultIndex] and pPed ~= er then
                local dist = GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), GetEntityCoords(pPed), asdgaksdajkdadjkadgdkadsui)
                SetDrawOrigin(GetEntityCoords(pPed))          
    
                DesenhoReto(-0.3 / dist - (dist / 1500) / dist, 0, 0.0015, 2.0 / dist, 0, 0, 0, 90)
                DesenhoReto(-0.3 / dist - (dist / 1500) / dist, 0.999 / dist - GetPedArmour(pPed) / 195 / dist, 0.1, GetPedArmour(pPed) / 195 / dist, 30, 174, 255, 255)
            end
        end
        ClearDrawOrigin()
    end
end
----------------------------------------------------------------------------
-- ESP DE NPC
----------------------------------------------------------------------------
if npcesp then
    for an in EnumeratePeds() do
        local d4, d5 = GetActiveScreenResolution()
        local cC = GetEntityCoords(an)
        me = an ~= PlayerPedId()
        mr = an
        local cD = GetDistanceBetweenCoords(GetFinalRenderedCamCoord(), cC.x, cC.y, cC.z, asdgaksdajkdadjkadgdkadsui) * (1.1 - 0.05)
        if IsEntityOnScreen(an) then
            if cD < 125 then
                if me and mr and not IsEntityDead(an) and not IsPedAPlayer(an) then
                    SetDrawOrigin(cC.x, cC.y, cC.z, 0)
                    DesenhoReto(0.0, 0.0, 1075.2 / d4 / cD, 2376 / d5 / cD, 0, 0, 0, 90)
                    if HasEntityClearLosToEntity(PlayerPedId(), an, 19) then
                        local r, g, b = 90, 252, 3
                        DesenhoReto(-537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        DesenhoReto(-537.6 / d4 / cD, -700.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        DesenhoReto(-537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        DesenhoReto(537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        DesenhoReto(537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        DesenhoReto(
                            (290 + 150 / 2) / d4 / cD,
                            1190.6 / d5 / cD,
                            350 / d4 / cD,
                            1 / d5,
                            r,
                            g,
                            b,
                            255
                        )
                        DesenhoReto(
                            (-290 - 150 / 2) / d4 / cD,
                            1190.6 / d5 / cD,
                            350 / d4 / cD,
                            1 / d5,
                            r,
                            g,
                            b,
                            255
                        )
                        DesenhoReto(
                            (290 + 150 / 2) / d4 / cD,
                            -1190.6 / d5 / cD,
                            350 / d4 / cD,
                            1 / d5,
                            r,
                            g,
                            b,
                            255
                        )
                        DesenhoReto(
                            (-290 - 150 / 2) / d4 / cD,
                            -1190.6 / d5 / cD,
                            350 / d4 / cD,
                            1 / d5,
                            r,
                            g,
                            b,
                            255
                        )
                        local d6 = "NPC"
                        local x, y, z = table.unpack(GetEntityCoords(an))
                        bw(x, y, z - 0.8, d6, 255, 0, 212)
                    else
                        local r, g, b = 252, 3, 186
                        DesenhoReto(-537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        DesenhoReto(-537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        DesenhoReto(537.6 / d4 / cD, -935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        DesenhoReto(537.6 / d4 / cD, 935.6 / d5 / cD, 1 / d4, 500 / d5 / cD, r, g, b, 255)
                        DesenhoReto(
                            (290 + 150 / 2) / d4 / cD,
                            1190.6 / d5 / cD,
                            350 / d4 / cD,
                            1 / d5,
                            r,
                            g,
                            b,
                            255
                        )
                        DesenhoReto(
                            (-290 - 150 / 2) / d4 / cD,
                            1190.6 / d5 / cD,
                            350 / d4 / cD,
                            1 / d5,
                            r,
                            g,
                            b,
                            255
                        )
                        DesenhoReto(
                            (290 + 150 / 2) / d4 / cD,
                            -1190.6 / d5 / cD,
                            350 / d4 / cD,
                            1 / d5,
                            r,
                            g,
                            b,
                            255
                        )
                        DesenhoReto(
                            (-290 - 150 / 2) / d4 / cD,
                            -1190.6 / d5 / cD,
                            350 / d4 / cD,
                            1 / d5,
                            r,
                            g,
                            b,
                            255
                        )
                        local d6 = "NPC"
                        local x, y, z = table.unpack(GetEntityCoords(an))
                        bw(x, y, z - 0.8, d6, 255, 0, 212)
                    end
                    ClearDrawOrigin()
                end
            end
        end
    end
end
--------------------------------------------------------
-- ESP DE NOMES
--------------------------------------------------------
if esp_nome then
    for k, v in renova_MeuCu_.Math.pairs(GetActivePlayers()) do
        local player = GetPlayerPed(v)
        if includeself then
            er = nil
        else
            er = PlayerPedId()
        end
        if GetDistanceBetweenCoords(GetEntityCoords(PlayerPedId()), GetEntityCoords(player), asdgaksdajkdadjkadgdkadsui) < renova_MeuCu_.ComboBoxesT.EspDist[renova_MeuCu_.ComboBoxesT.EspDistMultIndex] and player ~= er then
            local playerX, playerY, playerZ = renova_MeuCu_.Strings.tunpack(GetEntityCoords(player))
            local position = GetEntityCoords(player)
            
            local xx = renova_MeuCu_.Math.tonumber(renova_MeuCu_.Strings.format("%.2f", playerX))
            local yy = renova_MeuCu_.Math.tonumber(renova_MeuCu_.Strings.format("%.2f", playerY))
            local zz = renova_MeuCu_.Math.tonumber(renova_MeuCu_.Strings.format("%.2f", playerZ))
            local pos = {x = xx, y = yy, z = zz}

            local text = 'Nome: '..GetPlayerName(v)..' | ID: '..GetPlayerServerId(v)..''
            DrawTextOnCoords(position.x, position.y, position.z+1.0, text, 255, 255, 255, 10, 0.10)
        end
    end
end
-----------------------------------------------------------
-- BLUR NO MeuCu
-----------------------------------------------------------
if renova_MeuCu_.MeuCu.blurMeuCu and DisplayMeuCu then
    Citizen_InvokeNative(renova_MeuCu_.Natividade['TriggerScreenblurFadeIn'])
else
   Citizen_InvokeNative(renova_MeuCu_.Natividade['TriggerScreenblurFadeOut'])
end
-----------------------------------------------------------
-- SUPERSOCO 1
-----------------------------------------------------------
if shitkurvasnasdjatashaa then 
    ProtecaoAntiPobre = SetWeaponDamageModifierThisFrame ShitAllBith = oaisdhadhaodiadhasdhaoidhaiodashd FuckLife = 'weapon_unarmed'  GlifeServGay = 18.9
    ProtecaoAntiPobre(ShitAllBith('weapon_unarmed'), GlifeServGay)
else
    ProtecaoAntiPobre = SetWeaponDamageModifierThisFrame ShitAllBith = oaisdhadhaodiadhasdhaoidhaiodashd FuckLife = 'weapon_unarmed'  GlifeServGay = 18.9
    ProtecaoAntiPobre(ShitAllBith('weapon_unarmed'), 1.0)
end
--------------------------------------------------------
-- PED ARMADO 
--------------------------------------------------------
function AtaqueFacas(onplayer)
	for s = 0, 3 do
		local ped = oaisdhadhaodiadhasdhaoidhaiodashd('a_f_m_fatcult_01')
		RequestModel(ped)
		while not HasModelLoaded(ped) do
			Citizen.Wait(1000)
		end
		local ped_2 = CreatePed(10, ped, GetEntityCoords(GetPlayerPed(onplayer)), 0.0, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui)
		GiveWeaponToPed(ped_2, oaisdhadhaodiadhasdhaoidhaiodashd('weapon_rpg'), 20, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui)
		TaskCombatPed(ped_2, GetPlayerPed(SelectedPlayer), 0, 16)
	end
end
--------------------------------------------------------
-- HOMEM BOMBA
--------------------------------------------------------
function HomemBomba(player_to_explode)
	local onplayer = GetPlayerPed(player_to_explode)
	local ped = oaisdhadhaodiadhasdhaoidhaiodashd('a_m_m_soucent_01')

	RequestModel(ped)
	while not HasModelLoaded(ped) do
		Citizen.Wait(150)
	end
	local ped_2 = CreatePed(31, ped, GetEntityCoords(onplayer)+1, 0.0, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui)

	Citizen.Wait(150)
	RequestAnimDict('mp_player_int_upperfinger')
	TaskPlayAnim(ped_2, 'mp_player_int_upperfinger', 'mp_player_int_finger_01_enter', 8.0, -8.0, -1, 0, 0, asldjslkadhaldkahdakdhald, asldjslkadhaldkahdakdhald, asldjslkadhaldkahdakdhald)
	Citizen.Wait(150)
	AddExplosion(GetEntityCoords(ped_2), 10, 100.0, asdgaksdajkdadjkadgdkadsui, asldjslkadhaldkahdakdhald, asldjslkadhaldkahdakdhald, 0.0)
	ShootSingleBulletBetweenCoords(GetEntityCoords(onplayer), GetEntityCoords(onplayer), 1.0, asdgaksdajkdadjkadgdkadsui, oaisdhadhaodiadhasdhaoidhaiodashd('WEAPON_RPG'), PlayerPedId(), asdgaksdajkdadjkadgdkadsui, asldjslkadhaldkahdakdhald, 1410.0)
	MeuCuVisible = asldjslkadhaldkahdakdhald
end
-----------------------------------------------------------
-- GASOLINA INFINITA
-----------------------------------------------------------
if gasosa then
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(ped)
    SetVehicleFuelLevel(vehicle,100.0)

    if not gasosa then
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(ped)
    SetVehicleFuelLevel(vehicle,100.0)
    end
end  
-----------------------------------------------------------
-- NO RADGDOLL
-----------------------------------------------------------
if NoRagdoll then
    SetPedCanRagdoll(PlayerPedId(), asldjslkadhaldkahdakdhald)
else
    SetPedCanRagdoll(PlayerPedId(), asdgaksdajkdadjkadgdkadsui)
end
-----------------------------------------------------------
-- STAMINA IFNITA
-----------------------------------------------------------
if infstamina then
    RestorePlayerStamina(PlayerId(), 1.0)
end
-----------------------------------------------------------
-- FOV
-----------------------------------------------------------
if aimlockfov then
    DrawSprite("thefov", "sdjcircle", 0.5, 0.5, 0.10, 0.10 * 1.8, 0.0, 255, 255, 255, 255)
end

-----------------------------------------------------------
-- GODMODE
-----------------------------------------------------------
if Godmode then
    SetPedSuffersCriticalHits(PlayerPedId(), admgordolas)
    if GetEntityHealth(PlayerPedId()) < 400 then
    SetEntityHealth(PlayerPedId(), 400)
    end
    if GetEntityHealth(PlayerPedId()) ~= 0 then
    end
    else
    SetPedSuffersCriticalHits(PlayerPedId(), vitolasRPMQCUeMEUCUzz)
end

-----------------------------------------------------------
-- INVISIVEL
-----------------------------------------------------------
if Invisivela then
    SetEntityVisible(PlayerPedId(), 0, 0)
    visivelaplha = (renova_MeuCu_.Sliders['AlphaInvisible'].value / 10)
    DrawLine(GetPedBoneCoords(PlayerPedId(), 31086), GetPedBoneCoords(PlayerPedId(), 0x9995),255,255,255,255)
    DrawLine(GetPedBoneCoords(PlayerPedId(), 0x9995), GetPedBoneCoords(PlayerPedId(), 0xE0FD), 255,255,255,255)
    DrawLine(GetPedBoneCoords(PlayerPedId(), 0x5C57), GetPedBoneCoords(PlayerPedId(), 0xE0FD), 255,255,255,255)
    DrawLine(GetPedBoneCoords(PlayerPedId(), 0x192A), GetPedBoneCoords(PlayerPedId(), 0xE0FD), 255,255,255,255)
    DrawLine(GetPedBoneCoords(PlayerPedId(), 0x3FCF), GetPedBoneCoords(PlayerPedId(),0x192A), 255,255,255, 255)
    DrawLine(GetPedBoneCoords(PlayerPedId(), 0xCC4D), GetPedBoneCoords(PlayerPedId(), 0x3FCF), 255,255,255, 255)
    DrawLine(GetPedBoneCoords(PlayerPedId(), 0xB3FE), GetPedBoneCoords(PlayerPedId(), 0x5C57), 255,255,255, 255)
    DrawLine(GetPedBoneCoords(PlayerPedId(), 0xB3FE), GetPedBoneCoords(PlayerPedId(), 0x3779), 255,255,255, 255)
    DrawLine(GetPedBoneCoords(PlayerPedId(), 0x9995), GetPedBoneCoords(PlayerPedId(), 0xB1C5), 255,255,255, 255)
    DrawLine(GetPedBoneCoords(PlayerPedId(), 0xB1C5), GetPedBoneCoords(PlayerPedId(), 0xEEEB), 255,255,255, 255)
    DrawLine(GetPedBoneCoords(PlayerPedId(), 0xEEEB), GetPedBoneCoords(PlayerPedId(), 0x49D9), 255,255,255, 255)

    DrawLine(GetPedBoneCoords(PlayerPedId(), 0x9995), GetPedBoneCoords(PlayerPedId(), 0x9D4D), 255,255,255, 255)
    DrawLine(GetPedBoneCoords(PlayerPedId(), 0x9D4D), GetPedBoneCoords(PlayerPedId(), 0x6E5C), 255,255,255, 255)
    DrawLine(GetPedBoneCoords(PlayerPedId(), 0x6E5C), GetPedBoneCoords(PlayerPedId(), 0xDEAD), 255,255,255, 255)

    Citizen_InvokeNative(0xEA1C610A04DB6BBB, PlayerPedId(), asldjslkadhaldkahdakdhald, asldjslkadhaldkahdakdhald)
    Citizen_InvokeNative(0x241E289B5C059EDC, PlayerPedId(), asdgaksdajkdadjkadgdkadsui)
    Citizen_InvokeNative(0x44A0870B7E92D7C0, PlayerPedId(), visivelaplha)
    --[[local head = GetPedBoneCoords(PlayerPedId(), 31086)
    DrawMarker(28, head.x, head.y, head.z+0.06, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 0.1, 0.1, 0.1, 0, 255, 0, 255, asldjslkadhaldkahdakdhald, asdgaksdajkdadjkadgdkadsui, 2, nil, nil, asldjslkadhaldkahdakdhald)]]
else
    Citizen_InvokeNative(0xEA1C610A04DB6BBB, PlayerPedId(), asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui)
    Citizen_InvokeNative(0x44A0870B7E92D7C0, PlayerPedId(), 255)
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
-----------------------------------------------------------
-- AUTO REPARAR
-----------------------------------------------------------
if ar then 
SetVehicleFixed(GetVehiclePedIsIn(GetPlayerPed(-1),asldjslkadhaldkahdakdhald))SetVehicleDirtLevel(GetVehiclePedIsIn(GetPlayerPed(-1),asldjslkadhaldkahdakdhald),0.0)SetVehicleLights(GetVehiclePedIsIn(GetPlayerPed(-1),asldjslkadhaldkahdakdhald),0)SetVehicleBurnout(GetVehiclePedIsIn(GetPlayerPed(-1),asldjslkadhaldkahdakdhald),asldjslkadhaldkahdakdhald)
Citizen_InvokeNative(0x1FD09E7390A74D54,GetVehiclePedIsIn(GetPlayerPed(-1),asldjslkadhaldkahdakdhald),0)
end
-----------------------------------------------------------
-- BUZINA BOSST
-----------------------------------------------------------
if BoostBuzina then
    DisableControlAction(0, 86, asdgaksdajkdadjkadgdkadsui)
    if IsDisabledControlPressed(0, 86) and IsPedInAnyVehicle(PlayerPedId()) then
    local ped = GetPlayerPed(-1)
    local playerVeh = GetVehiclePedIsIn(ped, asldjslkadhaldkahdakdhald)
    SetVehicleForwardSpeed(playerVeh, 90.0)
    end
end
-----------------------------------------------------------
-- WAYPOINT 3D
-----------------------------------------------------------
if waypointblipa then
	local waypointblip = GetFirstBlipInfoId(8)
	if DoesBlipExist(waypointblip) then
		local coords = GetBlipInfoIdCoord(waypointblip)
		DrawMarker(28, coords, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1000.0, waypoind['waypoint-r'].value, waypoind['waypoint-g'].value, waypoind['waypoint-b'].value, 255, asdgaksdajkdadjkadgdkadsui, asdgaksdajkdadjkadgdkadsui, 2, nil, nil, asldjslkadhaldkahdakdhald)
	end
end
-----------------------------------------------------------
-- GODMODE
-----------------------------------------------------------
if godmode then
    SetPedSuffersCriticalHits(PlayerPedId(), asldjslkadhaldkahdakdhald)
    if GetEntityHealth(PlayerPedId()) < 200 then
        SetEntityHealth(PlayerPedId(), 200)
    end
    if GetEntityHealth(PlayerPedId()) ~= 400 then
        SetEntityHealth(PlayerPedId(), 400)

    end
else
    SetPedSuffersCriticalHits(PlayerPedId(), asdgaksdajkdadjkadgdkadsui)
end
-----------------------------------------------------------
-- NAO RECARREGAAR
-----------------------------------------------------------
if noreload then
    IsPedShooting(PlayerPedId()) 
    PedSkipNextReloading(PlayerPedId())
    MakePedReload(PlayerPedId())
end
-----------------------------------------------------------
-- ROLAS INFINITO
-----------------------------------------------------------
if RolasInf then
    for T = 0, 3 do
        StatSetInt(oaisdhadhaodiadhasdhaoidhaiodashd("mp" .. T .. "_shooting_ability"), 1000, asdgaksdajkdadjkadgdkadsui)
        StatSetInt(oaisdhadhaodiadhasdhaoidhaiodashd("sp" .. T .. "_shooting_ability"), 1000, asdgaksdajkdadjkadgdkadsui)
    end
else
    for T = 0, 3 do
        StatSetInt(oaisdhadhaodiadhasdhaoidhaiodashd("mp" .. T .. "_shooting_ability"), 0, asdgaksdajkdadjkadgdkadsui)
        StatSetInt(oaisdhadhaodiadhasdhaoidhaiodashd("sp" .. T .. "_shooting_ability"), 0, asdgaksdajkdadjkadgdkadsui)
    end
end


if configurationanimation then
    if DisplayMeuCu then 
        alpha = 255
    else
        alpha = 0
    end
end

if DisplayMeuCu then 
    if alpha < 255 then 
        alpha = alpha + 5 
    end
else
    if alpha > 0 then 
        alpha = alpha - 5
    end
end


	if DisplayMeuCu then
		drawMeuCu()
		kontrols()
	end
end
end)
------------------------------------------------------------
-- DRAWTEXXT Renova MeuCu     
------------------------------------------------------------    
function Renovatext(text, x, y, scale, font, center)
    SetTextScale(0.0, scale)
    SetTextFont(font)
    SetTextCentre(center)

    BeginTextCommandDisplayText('TWOSTRINGS')
    AddTextComponentString(text)
    EndTextCommandDisplayText(x, y-0.011)
end

    renova_MeuCu_.curak.thr(function()
        while drawMeuCu do 
            for k, a in ipairs(notifications) do 
                if a.index >= 0 then 
                   
                    local posY = 0.4 + (a.index * 0.05)
                    local alpha = a.alpha
                    if a.alpha > 0 then 
                        DrawRect(a.X, posY, 0.202, 0.0188+0.0018, 20, 20, 20, a.alpha)
                        DrawRect(a.X, posY, 0.201, 0.0188, 55, 55, 55, a.alpha)
                        DrawRect(a.X, posY, 0.2, 0.017, 20, 20, 20, a.alpha)   
                        SetTextColour(255, 255, 255, a.alpha)
                        Renovatext('</font>[Renova<font color="#4d97ff">Sy</font>] '.. a.subtext , a.X-0.1, posY+0.001, 0.27, 4, false)     
                        DrawRect(a.X, posY+0.021, 0.202, 0.0188+0.0018, 20, 20, 20, a.alpha)
                        DrawRect(a.X, posY+0.021, 0.201, 0.0188, 55, 55, 55, a.alpha)
                        DrawRect(a.X, posY+0.021, 0.2, 0.017, 20, 20, 20, a.alpha)
                        SetTextColour(255, 255, 255, a.alpha)
                        Renovatext('[~c~'.. tostring(a.index+1).. '~s~] '.. a.text, a.X-0.1, posY+0.022, 0.27, 4, false)
                    end
                    if GetGameTimer() - a.gametime >= 1500 then
                        if a.alpha < 0 then 
                            a.alpha = 0 
                        else
                            a.alpha = a.alpha - 1
                        end
                        a.X = a.X - 0.001
                    else
                        if a.X < 0.11 then 
                            a.X = a.X + 0.002
                        end
                    end
                    if GetGameTimer() - a.gametime >= 3000 then 
                        removeNotification(k)
                    end
                end
            end
            Citizen.Wait(0)
        end
    end)
end   
-------------------------------------------------------------
-- DESABILITAR MOTORES
-------------------------------------------------------------
if DisableAllEnginesLoop then
    DisableAllEngines()
end  