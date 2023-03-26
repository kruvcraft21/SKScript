gs = _G or _ENV
pageMemory = pageMemory or 0
lang = {
    ['ru'] = {
        "УБРАТЬ МАТЕРИАЛЫ С КУЗНЕЧНОГО СТОЛА",
        "УБРАТЬ МАТЕРИАЛЫ СО СТОЛА КОНСТРУКТОРА",
        "РАЗБЛОКИРОВАТЬ ВСЕ ОРУЖИЕ НА СТОЛЕ КУЗНЕЦА",
        "ДОБАВИТЬ ВСЕ БАФЫ",
        "УВЕЛИЧИТЬ ДОБАВЛЕННЫЕ АТРИБУТЫ",
        "ИЗМЕНИТЬ СОЗДАННЫЕ ПРЕДМЕТЫ НА СТОЛЕ КУЗНЕЦА",
        "УСТАНОВИТЬ ЦЕНУ ТОВАРОВ У ПРОДАВЦА",
        "РАЗБЛОКИРОВАТЬ ВСЕ САДОВЫЕ УЧАСТКИ",
        "ВЫРАСТИТЬ ВСЕ РАСТЕНИЯ",
        "РАЗБЛОКИРОВАТЬ МОТОЦИКЛ",
        --"ДОБАВИТЬ ЗДОРОВЬЯ, БРОНИ, ЭНЕРГИИ",
        'ОГРОМНЫЙ УРОН',
        'УБРАТЬ КОЛИЧЕСТВО ПОКУПОК У ПРОДАВЦА',
        'ЗАРЯДИТЬ ВОЛНОВОД',
        "НЕТ ПЕРЕЗАРЯДКИ НАВЫКОВ",
        "УБРАТЬ КОЛИЧЕСТВО ПОПЫТОК BOSS RUSH",
        -- "ПОЛУЧИТЬ ЗОЛОТЫЕ ТРОФЕИ ЗА СЕЗОНЫ",
        "УСТАНОВИТЬ КОЛИЧЕСТВО СЕМЯН",
        "УСТАНОВИТЬ КОЛИЧЕСТВО МАТЕРИАЛОВ",
        "УСТАНОВИТЬ КОЛИЧЕСТВО КУПОНОВ",
        "УСТАНОВИТЬ ЦЕНУ ДЛЯ ПИТОМЦЕВ",
        "УСТАНОВИТЬ ЦЕНУ ДЛЯ ГЕРОЕВ",
        "УСТАНОВИТЬ ЦЕНУ ДЛЯ СКИЛЛОВ",
        "УСТАНОВИТЬ ЦЕНУ ДЛЯ СКИНОВ",
        "УСТАНОВИТЬ ЦЕНУ СКИНА ЛОББИ",
        "ДОБАВИТЬ МОНЕТЫ",
        'НЕТ СТЕН',
        'ВЫХОД'
    },
    ['en_US'] = {
        'REMOVE MATERIALS IN THE BLACKSMITH TABLE',
        "REMOVE MATERIALS FROM THE DESIGNER'S TABLE",
        'UNLOCK ALL WEAPON IN THE BLACKSMITH TABLE',
        'ADD ALL BUFFS',
        "INCREASE ADDED ATTRIBUTES",
        "CHANGE THE CREATED ITEMS ON THE BLACKSMITH'S TABLE",
        'SET THE PRICE OF ITEMS FROM THE MERCHANT',
        "UNLOCK ALL GARDEN PLOTS",
        'GROW ALL THE SEEDS',
        "UNLOCK MOTORCYCLE",
        --'ADD HEALTH, ARMOR, ENERGY',
        'HUGE DAMAGE',
        'RESET SELLER',
        'CHARGE THE WAVEGUIDE',
        "NO SKILL COOLDOWN",
        "REMOVE THE NUMBER OF BOSS RUSH ATTEMPTS",
        -- "GET GOLD TROPHIES FOR THE SEASONS",
        'SET COUNT SEEDS',
        'SET MATERIALS COUNT',
        'SET TOKENS COUNT',
        'SET PET PRICE',
        'SET HERO PRICE',
        'SET SKILL PRICE',
        'SET SKIN PRICE',
        'SET SKIN LOBBY PRICE',
        'ADD COINS',
        'NO WALLS',
        'EXIT'
    },
    ['zh_CN'] = {
        '锻造台不用材料',
        "设计台不用材料",
        '解锁锻造台的所有武器',
        '添加所有好的buff',
        "(机翻)增加添加属性",
        "修改锻造台上的物品",
        '设定商品的价格',
        "解锁所有花园地块",
        '?种下所有的种子',
        "解锁摩托车",
        --'添加生命值、护甲和能量',
        '超高的伤害(修改当前武器)',
        '?重置商人',
        '修改枭首者选择界面右上角的百分比',
        "大招无cd",
        "修改地牢波数",
        -- "?获得每一季的金牌奖杯",
        '设置种子数量',
        '设置材料数量',
        '设置试用券数量',
        '设置宠物价格',
        '设置英雄价格',
        '设置技能价格',
        '设置皮肤价格',
        '设置皮肤大堂价格',
        '添加金币',
        '穿墙',
        '退出脚本'
    },
}
langClass = {
    ['ru'] = {
        SkillInfo = "Скиллы найдены",
        RGCharacterInfo = "Герои найдены",
        RGPetInfo = "Питомцы найдены",
        ItemData = "Информация о предметах найдена",
        ItemBluePrint = "Чертежи получены",
        WeaponsConfig = "Оружия были найдены",
        StatisticData = "Данные найдены",
        TermData = "Данные найдены",
        UIForge = "Стол найден",
        RGGameProcess = "Игровая сессия найдена",
        ItemSellPlaceGem = "Предметы на продажу найдены",
        PlantInfo = "Растения найдены",
        AppNoSK = 'Выбранный процесс не является игрой Soul knight',
        ErrorData = 'Скрипт будет работать некорректно',
        ManualSK = 'Прочтите инструкцию по установке VMOS Pro для корректной работы скрипта',
        RoleAttributePlayer = 'Данные игрока были найдены',
        RGGameSceneManager = 'Игровая сцена найдена',
        RGHand = 'Рука найдена',
        WeaponInfoRow = 'Оружия найдены',
        WeaponInfo = 'Оружия найдены',
        RGSaveManager = 'Сохранения найдены',
        Emtry = 'Пусто',
        ErrorLib = 'Game Guardian не нашёл нужную библиотеку. Скрипт запустится, но будет работать частично некорректно',
        ErrorAlert = 'При выполнении функции произошла ошибка',
        SkinMaterialRelation = 'Чертежи скинов получены',
        BattleData = 'Боевые данные найдены',
        TroopAchievement = "Достижения первого сезона были найдены",
        ArtifactsAchievement = "Достижения второго сезона были найдены",
        DecorateSkinsData = "Получена информация о скинах лобби",
    },
    ['en_US'] = {
        SkillInfo = "Skills found",
        RGCharacterInfo = "Heroes found",
        RGPetInfo = "Pets found",
        ItemData = "Information about items found",
        ItemBluePrint = "The drawings have been received",
        WeaponsConfig = "The weapons were found",
        StatisticData = "Data found",
        TermData = "Data found",
        UIForge = "The table is found",
        RGGameProcess = "Game session found",
        ItemSellPlaceGem = "Items for sale found",
        PlantInfo = "Plants found",
        AppNoSK = 'The selected process is not a Soul knight game',
        ErrorData = 'The script will not work correctly',
        ManualSK = 'Read the instructions for installing VMOS Pro for the script to work correctly',
        RoleAttributePlayer = "The player's data was found",
        RGGameSceneManager = 'Game scene found',
        RGHand = 'Hand found',
        WeaponInfoRow = 'Weapons found',
        WeaponInfo = 'Weapons found',
        RGSaveManager = 'Saves were found',
        Emtry = 'Emtry',
        ErrorLib = "Game Guardian didn't find the right library. The script will run, but it will work partially incorrectly",
        ErrorAlert = 'An error occurred while executing the function',
        SkinMaterialRelation = 'Blueprint of skins have been received',
        BattleData = 'Battle data found',
        TroopAchievement = "Achievements of the first season were found",
        ArtifactsAchievement = "Achievements of the second season were found",
        DecorateSkinsData = "Received information about lobby skins",
    },
}

lang_main = setmetatable(lang[gg.getLocale()] or lang['en_US'], {__index = langClass[gg.getLocale()] or langClass['en_US']})

Utf16 = {}

for s in string.gmatch('АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯабвгдеёжзийклмнопрстуфхцчшщъыьэюя', "..") do
    local char = gg.bytes(s,'UTF-16LE')
    Utf16[char[1] + (char[2] * 256)] = s
end

for s in string.gmatch("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz_/0123456789-'", ".") do
    local char = gg.bytes(s,'UTF-16LE')
    Utf16[char[1] + (char[2] * 256)] = s
end

function switch(check, table, e, ...)
    return ({
        xpcall(
            table[check],
            function ()
                return table[check] or (
                    function()
                        if type(e) ~= 'function' then return e end
                        return e()
                    end
                )()
            end,
            ...
        )
    })[2]
end

Protect = {
    ErrorHandler = function(err)
        gg.alert(lang_main['ErrorAlert'])
        print(err)
    end,
    Call = function(self, fun, ...) 
        return ({xpcall(fun, self.ErrorHandler, ...)})[2]
    end
}

function CheckTableIsNil(t)
    if (not t) or type(t) ~= 'table' or #t == 0 then return true end
    for k,v in pairs(t) do
        if (not v) or v == '' then return true end
    end
    return false
end

function GetNameTableInGlobalSpace(table)
    for k,v in pairs(gs) do
        if v == table then return k end
    end
    return ""
end

function GetInfoFropApps()
    local data = gg.getRangesList('global-metadata.dat') 
    local il2cpp = gg.getRangesList('libil2cpp.so')
    local info = gg.getTargetInfo()
    if info then return data, il2cpp, info.x64, info.targetSdkVersion end
    if #il2cpp ~= 0 then
        local check = string.gsub(il2cpp[1].internalName,'%/.-%/lib/','')
        check = switch(check,{
            ['arm64/libil2cpp.so'] = true,
            ['arm/libil2cpp.so'] = false
        })
        if check ~= nil then return data, il2cpp, check, info.targetSdkVersion end
    end
    return nil, nil, nil, nil
end

function GetAppData()
    local info = gg.getTargetInfo()
    if not info then 
        info = gg.alert(lang_main.ErrorData .. "\n" .. lang_main.ManualSK, 'OK', 'COPY LINK')
        if info == 2 then gg.copyText('http://crusher.ucoz.net/index/manual/0-6') end
        return GetInfoFropApps()
    end
    return gg.getRangesList('global-metadata.dat'), gg.getRangesList('libil2cpp.so'), info.x64, info.targetSdkVersion
end

data, libil, platform, sdk = GetAppData()

if #libil == 0 then
    local splitconf = gg.getRangesList('split_config.')
    gg.setRanges(gg.REGION_CODE_APP)
    for k,v in ipairs(splitconf) do
        if (v.state == 'Xa') then
            gg.searchNumber(':il2cpp',gg.TYPE_BYTE,false,gg.SIGN_EQUAL,v.start,v['end'])
            if (gg.getResultsCount() > 0) then
                libil[#libil + 1] = v
            end
            gg.clearResults()
        end
    end
end

function setupValues(gf,gm,typeset)
    gg.setValues({{address = gf,flags = typeset and typeset or gg.TYPE_DWORD,value = gm:gsub('.', function (c) return string.format('%02X', string.byte(c)) end)..'r'}})
end

function Il2CppName(NameFucntion)
    local FinalMethods, name = {}, "00 " .. NameFucntion:gsub('.', function (c) return string.format('%02X', string.byte(c)) .. " " end) .. "00"
    gg.clearResults()
    gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS | gg.REGION_C_BSS | gg.REGION_C_DATA | gg.REGION_OTHER)
    gg.searchNumber('h ' .. name, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, data[1].start, data[#data]['end'])
    if gg.getResultsCount() == 0 then error('the "' .. NameFucntion .. '" function was not found') end
    gg.searchNumber('h ' .. string.sub(name,4,5)) 
    local r = gg.getResults(gg.getResultsCount())
    gg.clearResults()
    for key, value in ipairs(r) do
        if gg.BUILD < 16126 then 
            gg.searchNumber(string.format("%8.8X", fixvalue32(value.address)) .. 'h', Unity.MainType)
        else 
            gg.loadResults({value})
            gg.searchPointer(0)
        end
        local MethodsInfo = gg.getResults(gg.getResultsCount())
        gg.clearResults()
        for k, v in ipairs(MethodsInfo) do
            v.address = v.address - Unity.MethodNameOffset
            local FinalAddress = fixvalue32(gg.getValues({v})[1].value)
            if (FinalAddress > libil[1].start and FinalAddress < libil[#libil]['end']) then 
                FinalMethods[#FinalMethods + 1] = {
                    AddressMethod = FinalAddress,
                    Address = v.address
                }
            end
        end
    end
    if (#FinalMethods == 0) then error('the "' .. NameFucntion .. '" function pointer was not found') end
    return FinalMethods
end

function addresspath(StartAddress, ...)
    args = {...}
    for i = 1,#args do
        StartAddress = i ~= 1 and StartAddress + 0x4 or StartAddress
        setupValues(StartAddress,args[i])
    end
end

function GetRegionValue(address) 
    return gg.getValuesRange({address})[1]
end

function StringToTable(s)
    rTable = {}
    for str in string.gmatch(s,".") do
        for k,v in pairs(Utf16) do
            rTable[#rTable + 1] = v == str and k or nil
        end
    end
    return rTable
end

function EditTableLink(t)
    for k,v in pairs(t) do
        if type(v) ~= 'number' then t[k] = v.value end
    end
    return t
end

function lpairs(...)
    return (
        function(t,key)
            return table.unpack(setmetatable({next(t, key)},{
                __add = function (self,value) 
                    self[3] = value 
                    return self 
                end
            }) + #t)
        end
    ), ..., nil
end

function GetAddressMemory(startAddress, add)
    local localPageMemory = ((pageMemory == 0) or (((pageMemory & 0xFFF) + add) > 3500)) and gg.allocatePage(gg.PROT_READ | gg.PROT_WRITE, startAddress) or pageMemory
    pageMemory = localPageMemory + add
    return localPageMemory
end

function fixvalue32(value)
    return platform and value & 0x00FFFFFFFFFFFFFF or value & 0xFFFFFFFF
end

function MyLenTable(t)
    local ret = 0
    for k,v in pairs(t) do ret = ret + 1 end
    return ret
end

function DataCheck(address)
    return (fixvalue32(address) > fixvalue32(data[1].start) and fixvalue32(address) < fixvalue32(data[1]['end']))
end

function PatchByteCodes(add, Bytescodes)
    local patch = {}
    for code in string.gmatch(Bytescodes, '.') do
        patch[#patch + 1] = {
            address = add,
            value = string.byte(code),
            flags = gg.TYPE_BYTE
        }       
        add = add + 1
    end
    gg.setValues(patch)
end

---@param Address number
ReadCompressedUInt32 = function(Address)
    local val, offset = 0, 0
    local read = gg.getValues(
                     {
            { -- [1]
                address = Address,
                flags = gg.TYPE_BYTE
            },
            { -- [2]
                address = Address + 1,
                flags = gg.TYPE_BYTE
            },
            { -- [3]
                address = Address + 2,
                flags = gg.TYPE_BYTE
            },
            { -- [4]
                address = Address + 3,
                flags = gg.TYPE_BYTE
            }
        })
    local read1 = read[1].value & 0xFF
    offset = 1
    if (read1 & 0x80) == 0 then
        val = read1
    elseif (read1 & 0xC0) == 0x80 then
        val = (read1 & ~0x80) << 8
        val = val | (read[2].value & 0xFF)
        offset = offset + 1
    elseif (read1 & 0xE0) == 0xC0 then
        val = (read1 & ~0xC0) << 24
        val = val | ((read[2].value & 0xFF) << 16)
        val = val | ((read[3].value & 0xFF) << 8)
        val = val | (read[4].value & 0xFF)
        offset = offset + 3
    elseif read1 == 0xF0 then
        val = gg.getValues(
                  {
                {
                    address = Address + 1,
                    flags = gg.TYPE_DWORD
                }
            })[1].value
        offset = offset + 4
    elseif read1 == 0xFE then
        val = 0xffffffff - 1
    elseif read1 == 0xFF then
        val = 0xffffffff
    end
    return val, offset
end



---@param Address number
ReadCompressedInt32 = function(Address)
    local encoded, offset = ReadCompressedUInt32(Address)

    if encoded == 0xffffffff then
        return -2147483647 - 1
    end

    local isNegative = (encoded & 1) == 1
    encoded = encoded >> 1
    if isNegative then
        return -(encoded + 1)
    end
    return encoded, offset
end


Unity = {
    ClassNameOffset = platform and 0x10 or 0x8,
    StaticFieldsOffset = platform and 0xB8 or 0x5C,
    ParentOffset = platform and 0x58 or 0x2C,
    NumFields = platform and 0x120 or 0xA8,
    FieldsLink = platform and 0x80 or 0x40,
    FieldsStep = platform and 0x20 or 0x14,
    FieldsOffset = platform and 0x18 or 0xC, 
    TypeMetadataHandle = platform and 0x68 or 0x34,
    MethodClassOffset = platform and 0x18 or 0xC, 
    MethodNameOffset = platform and 0x10 or 0x8,
    MainType = platform and gg.TYPE_QWORD or gg.TYPE_DWORD,
    GetClass = function(self, ClassName)
        gg.clearResults()
        gg.setRanges(0)
        gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_HEAP | gg.REGION_ANONYMOUS | gg.REGION_C_BSS | gg.REGION_C_DATA | gg.REGION_OTHER | gg.REGION_C_ALLOC)
        gg.searchNumber("Q 00 '" .. ClassName .. "' 00",gg.TYPE_BYTE,false,gg.SIGN_EQUAL,data[1].start,data[1]['end'])
        gg.searchNumber("Q '" .. ClassName .. "' ")
        gg.searchPointer(0)
        local res = gg.getResults(gg.getResultsCount())
        gg.clearResults()
        if (#res > 1) then
            for k,v in ipairs(res) do
                local assembly = gg.getValues({{address = v.address - Unity.ClassNameOffset,flags = v.flags}})[1].value
                if Unity.Utf8ToString(gg.getValues({{address = assembly,flags = v.flags}})[1].value):find(".dll") then res[1] = v end
            end
        end
        if not self.ClassLoad then self:SetFields(res[1].address - Unity.ClassNameOffset) end
        return res[1]
    end,
    LoadEnum = function(self)
        local ClassName = GetNameTableInGlobalSpace(self)
        gg.clearResults()
        gg.setRanges(0)
        gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_HEAP | gg.REGION_ANONYMOUS | gg.REGION_C_BSS | gg.REGION_C_DATA | gg.REGION_OTHER | gg.REGION_C_ALLOC)
        gg.searchNumber("Q 00 '" .. ClassName .. "' 00",gg.TYPE_BYTE,false,gg.SIGN_EQUAL,data[1].start,data[1]['end'])
        gg.searchNumber("Q '" .. ClassName .. "' ")
        gg.searchPointer(0)
        local res = gg.getResults(gg.getResultsCount())
        gg.clearResults()
        if (#res > 1) then
            for k,v in ipairs(res) do
                local assembly = gg.getValues({{address = v.address - Unity.ClassNameOffset,flags = v.flags}})[1].value
                if Unity.Utf8ToString(gg.getValues({{address = assembly,flags = v.flags}})[1].value):find(".dll") then res[1] = v end
            end
        end
        if not self.ClassLoad then self:SetConstFields(res[1].address - Unity.ClassNameOffset) end
    end,
    GetStartLibAddress = function(Address)
        local start = 0
        for k,v in ipairs(libil) do
            if (fixvalue32(Address) > fixvalue32(v.start) and fixvalue32(Address) < fixvalue32(v['end'])) then start = v.start end
        end
        return start
    end,
    FilterObject = function (Instances)
        gg.clearResults()
        gg.loadResults(Instances)
        gg.searchPointer(0)
        if gg.getResultsCount() <= 0 and platform and sdk >= 30 then
            local FixInstances = {}
            for k,v in ipairs(Instances) do
                v.address = v.address | 0xB400000000000000
                gg.searchNumber(tostring(v.address | 0xB400000000000000), gg.TYPE_QWORD)
                local RefToObject = gg.getResults(gg.getResultsCount())
                RefToObject:move(1, #RefToObject, #FixInstances + 1, FixInstances)
                gg.clearResults()
            end
            gg.loadResults(FixInstances)
        end
        local r, FilterInstances = gg.getResults(gg.getResultsCount()), {}
        for k,v in ipairs(gg.getValuesRange(r)) do
            FilterInstances[#FilterInstances + 1] = v == 'A' and {address = fixvalue32(r[k].value), flags = r[k].flags} or nil
        end
        gg.clearResults()
        gg.loadResults(FilterInstances)
        FilterInstances = gg.getResults(gg.getResultsCount())
        gg.clearResults()
        return FilterInstances
    end,
    GetInstance = function(self)
        local Instances, ClassName = {}, GetNameTableInGlobalSpace(self)
        local MemClass = self:GetClass(ClassName)
        gg.loadResults({MemClass})
        gg.searchPointer(self.ClassNameOffset)
        if gg.getResultsCount() <= 0 and platform and sdk >= 30 then
            gg.searchNumber(tostring(MemClass.address - self.ClassNameOffset | 0xB400000000000000), gg.TYPE_QWORD)
        end
        local r = gg.getResults(gg.getResultsCount())
        for k,v in ipairs(gg.getValuesRange(r)) do
            Instances[#Instances + 1] = v == 'A' and r[k] or nil
        end
        Instances = self.FilterObject(Instances)
        -- print(ClassName .. ' -> ' .. #Instances)
        gg.toast(lang_main[ClassName] or "")
        gg.clearResults()
        return Instances
    end,
    GetLocalInstance = function(self) 
        local Instances, ClassName = {}, GetNameTableInGlobalSpace(self)
        local MemClass = self:GetClass(ClassName)
        local tmp = gg.getValues({{address = MemClass.address - self.ClassNameOffset + self.StaticFieldsOffset,flags = MemClass.flags}})
        table.move(gg.getValues({{address = tmp[1].value,flags = tmp[1].flags}}),1,1,#Instances + 1,Instances)
        gg.toast(lang_main[ClassName] or "")
        gg.clearResults()
        return Instances
    end,
    GetParentLocalInstance = function(self) 
        local Instances, ClassName = {}, GetNameTableInGlobalSpace(self)
        local MemClass = self:GetClass(ClassName)
        local tmp = gg.getValues({{address = MemClass.address - self.ClassNameOffset + self.ParentOffset,flags = MemClass.flags}})[1].value
        tmp = gg.getValues({{address = tmp + self.StaticFieldsOffset,flags = MemClass.flags}})
        table.move(gg.getValues({{address = tmp[1].value,flags = tmp[1].flags}}),1,1,#Instances + 1,Instances)
        gg.toast(lang_main[ClassName] or "")
        gg.clearResults()
        return Instances
    end,
    Utf8ToString = function(Address)
        local bytes, char = {}, {address = fixvalue32(Address), flags = gg.TYPE_BYTE}
        while gg.getValues({char})[1].value > 0 do
            bytes[#bytes + 1] = {address = char.address, flags = char.flags}
            char.address = char.address + 0x1
        end
        return tostring(setmetatable(gg.getValues(bytes), {
            __tostring = function(self)
                for k,v in ipairs(self) do
                    self[k] = string.char(v.value) 
                end
                return table.concat(self)
            end
        }))
    end,
    Utf16ToString = function(Address)
        local bytes, strAddress = {}, fixvalue32(Address) + (platform and 0x10 or 0x8)
        local num = gg.getValues({{address = strAddress,flags = gg.TYPE_DWORD}})[1].value
        if num > 0 and num < 200 then
            for i = 1, num + 1 do
                bytes[#bytes + 1] = {address = strAddress + (i << 1), flags = gg.TYPE_WORD}
            end
        end
        return #bytes > 0 and tostring(setmetatable(gg.getValues(bytes), {
            __tostring = function(self)
                
                local code = {"return "}
                for i, v in ipairs(self) do
                    code[#code + 1] = string.format([[\u{%x}]], v.value & 0xFFFF)
                end

                code[#code + 1] = '"'
                local read, err = load(table.concat(code))
                return read and read() or lang_main.Emtry
            end
        })) or ""
    end,
    GetIl2cppFunc = function(...)
        local args, RetIl2CppFuncs = {...}, {}
        if args[1] == nil or args[1] == "" or args[1] == " " then return {},"you didn't enter the function" end 
        for keyname,namefucntion in ipairs(args) do
            local finaladdres = Il2CppName(namefucntion)
            for k,v in pairs(finaladdres) do
                if (k ~= 'Error') then
                    local AddressClass = fixvalue32(gg.getValues({{address = v.Address + Unity.MethodClassOffset,flags = Unity.MainType}})[1].value)
                    RetIl2CppFuncs[#RetIl2CppFuncs + 1] = {
                        NameFucntion = namefucntion,
                        Offset = string.format("%X",v.AddressMethod - Unity.GetStartLibAddress(v.AddressMethod)),
                        AddressInMemory = string.format("%X",v.AddressMethod),
                        AddressOffset = v.Address,
                        Class = Unity.Utf8ToString(gg.getValues({{address = AddressClass + Unity.ClassNameOffset,flags = Unity.MainType}})[1].value),
                        ClassAddress = string.format('%X', AddressClass)
                    }
                else
                    RetIl2CppFuncs[#RetIl2CppFuncs + 1] = {
                        NameFucntion = namefucntion,
                        Error = v
                    }
                end
            end
        end
        return RetIl2CppFuncs,'true'
    end,
    GetDefaultValue = function(self, index)
        local consts = gg.getValues({
            {
                address = data[1].start + 0x40,
                flags = gg.TYPE_DWORD
            },
            {
                address = data[1].start + 0x44,
                flags = gg.TYPE_DWORD
            },
            {
                address = data[1].start + 0x48,
                flags = gg.TYPE_DWORD
            }
        })
        gg.clearResults()
        gg.setRanges(0)
        gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_HEAP | gg.REGION_ANONYMOUS | gg.REGION_C_BSS | gg.REGION_C_DATA | gg.REGION_OTHER | gg.REGION_C_ALLOC)
        gg.searchNumber(
            tostring(index), 
            gg.TYPE_DWORD, 
            false, 
            gg.SIGN_EQUAL, 
            data[1].start + consts[1].value, 
            data[1].start + consts[1].value + consts[2].value
        )
        if gg.getResultsCount() > 0 then
            local Il2CppFieldDefaultValue = gg.getResults(1)
            gg.clearResults()
            local dataIndex = gg.getValues({{address = Il2CppFieldDefaultValue[1].address + 8, flags = gg.TYPE_DWORD}})[1].value
            local val = ReadCompressedInt32(dataIndex + data[1].start + consts[3].value)
            return val
        end
        return nil
    end,
    From = function (self, a)
        if not self.ClassLoad then self:SetFields(gg.getValues({{address = fixvalue32(a), flags = Unity.MainType}})[1].value) end
        return setmetatable({address = a, mClass = self}, {
            __index = function(self, key)
                local check = switch((self.address and self.mClass) and (self.mClass[key] and 1 or -1) or 0 , {[0] = 'Не все поля заполнены', [-1] = 'В таблице нет поля ' .. key})
                return check and error(check) or ((type(self.mClass[key]) == 'function') 
                    and (function(self, ...) return self.mClass[key](self.mClass, self.address, ...) end)
                    or self.mClass[key])
            end
        })
    end,
    GetNumFields = function(self, ClassAddress)
        return gg.getValues({{address = ClassAddress + self.NumFields, flags = gg.TYPE_WORD}})[1].value
    end,
    GetLinkFields = function(self, ClassAddress)
        return gg.getValues({{address = ClassAddress + self.FieldsLink, flags = Unity.MainType}})[1].value
    end,
    SetFields = function(self, AddressClass)
        AddressClass = fixvalue32(AddressClass)
        self.ClassLoad = true
        local FieldsCount, FieldsLink = self:GetNumFields(AddressClass), fixvalue32(self:GetLinkFields(AddressClass)) 
        for i = 1, FieldsCount do
            local field = FieldsLink + ((i-1) * self.FieldsStep)
            local fieldInfo = gg.getValues({
                {--NameField
                    address = field,
                    flags = Unity.MainType
                },
                {--Offset
                    address = field + self.FieldsOffset,
                    flags = gg.TYPE_WORD
                },
            })
            self.Fields[self.Utf8ToString(fixvalue32(fieldInfo[1].value))] = fieldInfo[2].value
        end
    end,
    SetConstFields = function(self, AddressClass)
        AddressClass = fixvalue32(AddressClass)
        self.ClassLoad = true
        local ClassChar = gg.getValues({
            {
                address = AddressClass + self.NumFields,
                flags = gg.TYPE_WORD
            },
            {
                address = AddressClass + self.FieldsLink,
                flags = Unity.MainType
            },
            {
                address = AddressClass + self.TypeMetadataHandle,
                flags = Unity.MainType
            }
        })
        local FieldsLink = fixvalue32(ClassChar[2].value)
        local fieldStart = gg.getValues({{address = fixvalue32(ClassChar[3].value) + 0x20, flags = gg.TYPE_DWORD}})[1].value
        for i = 1, ClassChar[1].value do
            local field = FieldsLink + ((i-1) * self.FieldsStep)
            local fieldInfo = gg.getValues({
                {--NameField
                    address = field,
                    flags = Unity.MainType
                },
                {--Offset
                    address = field + self.FieldsOffset,
                    flags = gg.TYPE_WORD
                },
            })
            local fieldIndex = i + fieldStart - 1
            local offsetField = fieldInfo[2].value
            self.Fields[self.Utf8ToString(fixvalue32(fieldInfo[1].value))] = offsetField > 0 
                and nil 
                or self:GetDefaultValue(i + fieldStart - 1)
        end
    end,
}

function SetUnityClass(t)
    t.ClassLoad = false
    t.Fields = {}
    return setmetatable(t,{__index = Unity})
end

function SetSubClass(SubClass, MainClass) 
    return setmetatable(SubClass, {__index = MainClass})
end

EnumClass = {
    From = function (self, a)
        return setmetatable({address = fixvalue32(a), mClass = self}, {
            __index = function(self, key)
                local check = switch((self.address and self.mClass) and (self.mClass[key] and 1 or -1) or 0 , {[0] = 'Не все поля заполнены', [-1] = 'В таблице нет поля ' .. key})
                return check and error(check) or ((type(self.mClass[key]) == 'function') 
                    and (function(self, ...) return self.mClass[key](self.mClass, self.address, ...) end)
                    or self.mClass[key])
            end
        })
    end
}

function SetEnumClass(t)
    return setmetatable(t, {__index = EnumClass})
end

List = SetEnumClass({
    num = platform and 0x18 or 0xC, 
    link = platform and 0x10 or 0x8,
})

function List:GetNumItem(list)
    return gg.getValues({{address = list + self.num, flags = gg.TYPE_DWORD}})[1].value
end

function List:SetNumItem(list,n)
    gg.setValues({
        {address = list + self.num,flags = gg.TYPE_DWORD,value = n},
        {address = list + self.num + 0x4,flags = gg.TYPE_DWORD,value = n}
    })
end

function List:GetLink(list)
    return gg.getValues({{address = list + self.link,flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD}})[1].value
end

function List:SetLink(list,link)
    gg.setValues({{address = list + self.link,flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD,value = link}})
end

List['int'] = SetSubClass({
    ElementToTable = function(tabl)
        local resTab = {}
        for k,v in ipairs(tabl) do
            resTab[#resTab + 1] = type(v) ~= 'number' and v.value or v
        end
        return resTab
    end,
    EditList = function(self, list, newTable, saveOld)
        local MainTable, MainHead, num = {}, 0, List:GetNumItem(list)
        if (not (num < 0)) and num < 200 then
            local link = List:GetLink(list)
            MainHead = gg.getValues({{address = link, flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD}})[1].value
            if (saveOld) then table.move(self.ElementToTable(Massiv:GetAllElement(link, 'int')), 1, num, #MainTable + 1, MainTable) end
            table.move(newTable, 1, #newTable, #MainTable + 1, MainTable)
            self:SetNumItem(list, #MainTable)
            self:SetLink(list, Massiv:CreateMassiv(list, MainHead, 'int', MainTable))
        end
    end
}, List)

List['string'] = SetSubClass({    
    subType = 'char',
    mainType = 'link',
    EditList = function(self, list, newTable, saveOld, IsNewTableLink)
        local MainTable, MainHead, SubHead, num  = {}, 0, 0, List:GetNumItem(list)
        if num > 0 and num < 200 then
            local link = List:GetLink(list)
            MainHead = gg.getValues({{address = link, flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD}})[1].value
            table.move(Massiv:GetAllElement(link, self.mainType),1,num,#MainTable + 1,MainTable)
            for _,val in pairs(MainTable) do
                if (val.value ~= 0 and SubHead == 0) then
                    SubHead = gg.getValues({{address = val.value , flags = val.flags}})[1].value
                end
            end
        end
        if SubHead ~= 0 then
            MainTable = saveOld and EditTableLink(MainTable) or {}
            if not IsNewTableLink then
                for i = 1, #newTable do
                    local addTable = StringToTable(newTable[i])
                    MainTable[#MainTable + 1] = Massiv:CreateMassiv(list, SubHead, self.subType, addTable)
                end
            else
                newTable = EditTableLink(newTable)
                table.move(newTable, 1, #newTable, #MainTable + 1, MainTable)
            end
            self:SetNumItem(list,#MainTable)
            self:SetLink(list,Massiv:CreateMassiv(list,MainHead,self.mainType,MainTable))
        end
    end,
    EditIndexList = function(self, list, index, str)
        local MainTable, SubHead, num, link = {}, 0, self:GetNumItem(list), self:GetLink(list)
        if num > 0 and num < 200 then
            table.move(Massiv:GetAllElement(link, self.mainType),1,num,#MainTable + 1,MainTable)
            for _,val in pairs(MainTable) do
                if (val.value ~= 0 and SubHead == 0) then
                    SubHead = gg.getValues({{address = val.value, flags = val.flags}})[1].value
                end
            end
        end
        if SubHead ~= 0 then
            str = StringToTable(str)
            Massiv:SetElement(link, Massiv:CreateMassiv(list, SubHead, self.subType, str), self.mainType, index)
        end
    end,
    Filter = function(t)
        for k,v in pairs(t) do
            t[k] = v.value == 0 and lang_main.Emtry or Unity.Utf16ToString(v.value)
        end
        return t
    end,
    GetList = function(self, list)
        local num, resTab = self:GetNumItem(list), {}
        if num > 0 and num < 200 then
            resTab = Massiv:GetAllElement(self:GetLink(list), 'link')
            resTab = self.Filter(resTab)
        end
        return resTab
    end
},List)

Massiv = SetEnumClass({
    GetElementCount = function(self,link,T)
        return gg.getValues({{address = link + self[T].firstStep,flags = gg.TYPE_DWORD}})[1].value
    end,
    ['int'] = {
        firstStep = platform and 0x18 or 0xC,
        step = 0x4,
        size = gg.TYPE_DWORD,
        skip = platform and 0x4 or 0,
    },
    ['link'] = {
        firstStep = platform and 0x18 or 0xC,
        step = platform and 0x8 or 0x4,
        size = platform and gg.TYPE_QWORD or gg.TYPE_DWORD,
        skip = 0,
    },
    ['char'] = {
        firstStep = platform and 0x10 or 0x8,
        step = 0x2,
        size = gg.TYPE_WORD,
        skip = 0x2,
    }
})

-- Lua Table to C# Massiv
function Massiv:CreateMassiv(address,head,T,Mtable)
    local SizeMassiv = #Mtable 
    local SizeInMemory = self[T].firstStep + (self[T].step * (SizeMassiv % 2 > 0 and SizeMassiv + 1 or SizeMassiv)) + 0x8
    local addressInMemory = GetAddressMemory(address, SizeInMemory)
    local SetMass = {
        {
            address = addressInMemory,
            value = head,
            flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD,
        },
        {
            address = addressInMemory + self[T].firstStep,
            flags = gg.TYPE_DWORD,
            value = SizeMassiv
        }
    }
    for i = 1, SizeMassiv do
        SetMass[#SetMass + 1] = {
            address = addressInMemory + self[T].firstStep + self[T].skip + (self[T].step * i),
            flags = self[T].size,
            value = Mtable[i]
        }
    end
    gg.setValues(SetMass)
    return addressInMemory
end

function Massiv:SetAllElement(link, value, T)
    local count = self:GetElementCount(link,T)
    local MassivItem = {}
    for i = 1,count do
        MassivItem[#MassivItem + 1] = {
            address = link + self[T].firstStep + self[T].skip + (self[T].step * i),
            flags = self[T].size,
            value = value
        }
    end
    gg.setValues(MassivItem)
end

function Massiv:SetElement(link, value, T, index)
    local MassivItem = {
        [1] = {
            address = link + self[T].firstStep + self[T].skip + (self[T].step * index),
            flags = self[T].size,
            value = value
        }
    }
    gg.setValues(MassivItem)
end

function Massiv:GetAllElement(link, T)
    local count = Massiv:GetElementCount(link, T)
    local MassivItem = {}
    for i = 1,count do
        MassivItem[#MassivItem + 1] = {
            address = link + self[T].firstStep + self[T].skip + (self[T].step * i),
            flags = self[T].size,
        }
    end
    return gg.getValues(MassivItem)
end

Dictionary = SetEnumClass({
    num = platform and 0x20 or 0x10,
    link = platform and 0x18 or 0xC,
    string = {
        keySize = platform and 0x8 or 0x4,
        int = {
            valueSize = 0x4,
            missKey = platform and 0x10 or 0xC,
            firstStep = platform and 0x18 or 0xC,
            step = platform and 0x18 or 0x10
        },
        struct = {
            missKey = platform and 0x10 or 0xC,
            firstStep = platform and 0x18 or 0xC,
            step = platform and 0x18 or 0x10
        }
    },
    int = {
        keySize = 0x4,
        int = {
            skip = platform and 0x4 or 0,
            valueSize = 0x4,
            firstStep = platform and 0x18 or 0xC,
            step = platform and 0x14 or 0x10,
            missKey = 0xC,
            hashCode = 0x4,
            next = 0x8,
            key = 0xC,
            value = 0x10,
            size = 0x10
        }
    }
})

function Dictionary:HasKey(dic, key)
    local d = Dictionary:GetAllItemIntInt(dic)
    return d[key] ~= nil, d
end

function Dictionary:GetAllItemIntInt(dic)
    local link, num, tab = self:GetLink(dic), self:GetNumItem(dic), {}
    if (not (num < 1) and num < 200 and link ~= 0) then
        for i = 1, num do
            local tmp = gg.getValues({
                {
                    address = link + self['int']['int'].firstStep + self['int']['int'].skip + (self['int']['int'].size * (i - 1)) + self['int']['int'].key,
                    flags = gg.TYPE_DWORD
                },
                {
                    address = link + self['int']['int'].firstStep + self['int']['int'].skip + (self['int']['int'].size * (i - 1)) + self['int']['int'].value,
                    flags = gg.TYPE_DWORD
                }
            })
            tab[tmp[1].value] = tmp[2].value
        end
    end
    return tab
end

function Dictionary:SetItemIntInt(dic, key, val)
    local numItem = self:GetNumItem(dic)
    local linkmass = self:GetLink(dic)
    if numItem > 0 and numItem < 1000 then
        for i = 1, numItem do
            local k = {
                address = linkmass + self['int']['int'].firstStep + self['int']['int'].skip + (self['int']['int'].size * (i - 1)) + self['int']['int'].key,
                flags = gg.TYPE_DWORD,
            }
            if (gg.getValues({k})[1].value == key) then
                gg.setValues({{
                    address = linkmass + self['int']['int'].firstStep + self['int']['int'].skip + (self['int']['int'].size * (i - 1)) + self['int']['int'].value,
                    flags = gg.TYPE_DWORD,
                    value = val
                }})
            end
        end
    end
end

function Dictionary:SetItemsIntIntTable(dic, tab)
    local numItem = self:GetNumItem(dic)
    local linkmass, resultTable = self:GetLink(dic), {}
    if numItem > 0 and numItem < 1000 then
        for i = 1, numItem do
            local k = gg.getValues({{
                address = linkmass + self['int']['int'].firstStep + self['int']['int'].skip + (self['int']['int'].size * (i - 1)) + self['int']['int'].key,
                flags = gg.TYPE_DWORD
            }})[1].value
            if (tab[k]) then
                resultTable[#resultTable + 1] = {
                    address = linkmass + self['int']['int'].firstStep + self['int']['int'].skip + (self['int']['int'].size * (i - 1)) + self['int']['int'].value,
                    flags = gg.TYPE_DWORD,
                    value = tab[k]
                }
            end
        end
        if (#resultTable > 0) then gg.setValues(resultTable) end
    end
end

function Dictionary:CreateDictionary(dic, tab, fristType, secondType)
    local link, num, i = self:GetLink(dic), MyLenTable(tab), 0
    local Head = gg.getValues({{address = link, flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD}})[1].value
    local addressInMemory = GetAddressMemory(link, (self[fristType][secondType].firstStep + self['int']['int'].skip + (self[fristType][secondType].size * num)))
    local NewDictionary = {
        {
            address = addressInMemory,
            value = Head,
            flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD,
        },
        {
            address = addressInMemory + self[fristType][secondType].firstStep,
            flags = gg.TYPE_DWORD,
            value = num,
        }
    }
    for k,v in pairs(tab) do
        i = i + 1
        table.move({
            {
                address = addressInMemory + self[fristType][secondType].firstStep + self['int']['int'].skip + (self[fristType][secondType].size * (i - 1)) + self[fristType][secondType].hashCode,
                value = k,
                flags = gg.TYPE_DWORD
            },
            {
                address = addressInMemory + self[fristType][secondType].firstStep + self['int']['int'].skip + (self[fristType][secondType].size * (i - 1)) + self[fristType][secondType].next,
                value = i - 2,
                flags = gg.TYPE_DWORD
            },
            {
                address = addressInMemory + self[fristType][secondType].firstStep + self['int']['int'].skip + (self[fristType][secondType].size * (i - 1)) + self[fristType][secondType].key,
                value = k,
                flags = gg.TYPE_DWORD
            },
            {
                address = addressInMemory + self[fristType][secondType].firstStep + self['int']['int'].skip + (self[fristType][secondType].size * (i - 1)) + self[fristType][secondType].value,
                value = v,
                flags = gg.TYPE_DWORD
            },
        }, 1,4,#NewDictionary + 1, NewDictionary)
    end
    gg.setValues(NewDictionary)
    self:SetLink(dic, addressInMemory) 
    self:SetNumItem(dic, num)
end

function Dictionary:GetAllItemStringToStruct(dic,sizeStruct,offsetField,type)
    local numItem = self:GetNumItem(dic)
    local linkmass = self:GetLink(dic)
    if numItem > 0 and numItem < 1000 then
        local structItem = {}
        for i = 1, numItem do
            structItem[i] = {
                address = linkmass + self.string.struct.firstStep + ((self.string.struct.missKey + self.string.keySize) * i) + (sizeStruct * (i - 1)) + offsetField,
                flags = type
            }
        end
        return gg.getValues(structItem)
    end
    return {}
end

function Dictionary:SetNumItem(dictionary,value)
    local numItem, reg = self:GetNumItem(dictionary), GetRegionValue(dictionary)
    if numItem > 0 and numItem < 1000 and reg == "A" then
        gg.setValues({{address = dictionary + self.num,flags = gg.TYPE_DWORD,value = value}})
    end
end

function Dictionary:GetNumItemForTable(dictionary, val)
    return {address = dictionary + self.num, value = val, flags = gg.TYPE_DWORD}
end

function Dictionary:GetNumItem(dictionary)
    return gg.getValues({{address = dictionary + self.num,flags = gg.TYPE_DWORD}})[1].value
end

function Dictionary:GetLink(dictionary)
    return gg.getValues({{address = dictionary + self.link,flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD}})[1].value
end

function Dictionary:SetLink(dictionary, newDictionary)
    gg.setValues({{address = dictionary + self.link, flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD, value = newDictionary}})
end

function Dictionary:SetAllItemStringInt(dic,value)
    local numItem = self:GetNumItem(dic)
    local linkmass = self:GetLink(dic)
    if numItem > 0 and numItem < 1000 then
        local intItem = {}
        for i = 1, numItem do
            intItem[i] = {
                address = linkmass + self.string.int.firstStep + (self.string.int.step * i),
                flags = gg.TYPE_DWORD,
                value = value
            }
        end
        gg.setValues(intItem)
    end
end

function Dictionary:SetItemStringInt(dic, key, val)
    local numItem = self:GetNumItem(dic)
    local linkmass = self:GetLink(dic)
    if numItem > 0 and numItem < 1000 then
        for i = 1, numItem do
            local tmp = {
                address = linkmass + self.string.int.firstStep + (self.string.int.missKey * i) + (self.string.keySize * (i - 1)),
                flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD,
            }
            if (Unity.Utf16ToString(gg.getValues({tmp})[1].value) == key) then
                gg.setValues({{
                    address = linkmass + self.string.int.firstStep + ((self.string.int.missKey + self.string.keySize) * i),
                    flags = gg.TYPE_DWORD,
                    value = val
                }})
            end
        end
    end
end

SkillInfo = SetUnityClass({
    GetTableForCd = function(self, add)
        return {address = add + self.Fields.cd, flags = gg.TYPE_FLOAT, value = 0.01}
    end,
    SetPrice = function(self, price)
        local skills = {}
        for k, v in ipairs(self:GetInstance()) do
            skills[#skills + 1] = {
                address = v.address + self.Fields.price,
                value = price,
                flags = gg.TYPE_DWORD
            }
        end
        gg.setValues(skills)
    end
})

RGCharacterInfo = SetUnityClass({
    GetTableForUnlockGem = function(self, add, num)
        return {address = add + self.Fields.unlock_gem, flags = gg.TYPE_DWORD, value = num}
    end,
    GetTableForSkins = function(self, add, num)
        local skin = {}
        for k,v in ipairs(Massiv:From(gg.getValues({{address = add + self.Fields.skin_list,flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD}})[1].value):GetAllElement('int')) do
            if (k ~= 1 and v.value ~= 1) then
                v.value = num
                skin[#skin + 1] = v
            end
        end
        return skin
    end,
    SetSkinPrice = function(self,num)
        local skins = {}
        for k,v in ipairs(self:GetInstance()) do
            for item,tab in ipairs(Massiv:From(gg.getValues({{address = v.address + self.Fields.skin_list,flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD}})[1].value):GetAllElement('int')) do
                if (item ~= 1 and tab.value ~= 1) then 
                    tab.value = num 
                    skins[#skins + 1] = tab
                end
            end
        end
        gg.setValues(skins)
    end
})

RGPetInfo = SetUnityClass({
    GetTableForUnlockGem = function(self, add, num)
        return {address = add + self.Fields.unlock_gem, flags = gg.TYPE_DWORD, value = num}
    end
})

RoomComodityData = SetUnityClass({
    GetCount = function(self, address)
        return gg.getValues({{address = address + self.Fields.count, flags = gg.TYPE_DWORD}})[1].value
    end,
    GetTabelForReset = function(self, add)
        return {address = add + self.Fields.count, value = 1, flags = gg.TYPE_DWORD}
    end
})

ItemData = SetUnityClass({
    SetTokens = function(self,value)
        for k,v in ipairs(self:GetLocalInstance()) do
            Dictionary:SetAllItemStringInt(gg.getValues({{address = v.value + self.Fields.tokenTickets,flags = v.flags}})[1].value,value)
        end
    end,
    SetMaterials = function(self,value)
        for k,v in ipairs(self:GetLocalInstance()) do
            Dictionary:SetAllItemStringInt(gg.getValues({{address = v.value + self.Fields.materials,flags = v.flags}})[1].value,value)
        end
    end,
    SetSeeds = function(self,value)
        for k,v in ipairs(self:GetLocalInstance()) do
            Dictionary:SetAllItemStringInt(gg.getValues({{address = v.value + self.Fields.seeds,flags = v.flags}})[1].value,value)
        end
    end,
    SetPlant = function(self)
        for k,v in ipairs(self:GetLocalInstance()) do
            List['string']:EditList(gg.getValues({{address = v.value + self.Fields.itemUnlock, flags = v.flags}})[1].value, {
                'plant_pot3',
                'plant_pot4',
                'plant_pot5',
                'plant_pot6',
                'plant_pot7',
            }, true)
        end
    end,
    SetItemForge = function (self)
        for k,v in ipairs(self:GetLocalInstance()) do
            local linkList = gg.getValues({{address = v.value + self.Fields.forgeWeapons, flags = v.flags}})[1].value
            local list = List['string']:GetList(linkList)
            local weaponNum = gg.choice(list)
            if weaponNum then 
                local weaponName = gg.prompt(
                    {'ВВЕДИТЕ ID ОРУЖИЯ\nENTER THE WEAPON ID'}, 
                    {list[weaponNum] ~= lang_main.Emtry and list[weaponNum] or ''}, 
                    {'text'}
                )
                if not CheckTableIsNil(weaponName) then
                    List['string']:EditIndexList(linkList, weaponNum, weaponName[1])
                    gg.alert("ЕСЛИ ВЗЛОМ НЕ СРАБОТАЛ,ТО ПРОСТО ПОВТОРИТЕ ЕГО ЕЩЁ РАЗ\nIF THE HACK DIDN'T WORK,JUST TRY IT AGAIN")
                else
                    gg.alert("ВЫ НЕ ВВЕЛИ ID ОРУЖИЯ\nYOU DIDN'T ENTER THE WEAPON ID")
                end
            else
                gg.alert("ВЫ НЕ ВЫБРАЛИ ОРУЖИЕ ДЛЯ РЕДАКТИРОВАНИЯ\nYOU HAVE NOT SELECTED A WEAPON TO EDIT")
            end
        end
    end,
    AddMotor = function(self)
        for k,v in ipairs(self:GetLocalInstance()) do
            List['string']:EditList(gg.getValues({{address = v.value + self.Fields.itemUnlock, flags = v.flags}})[1].value, {'Motorcycle'}, true)
        end
    end,
    EditTimesBossRush = function(self)
        for k,v in ipairs(self:GetLocalInstance()) do
            gg.setValues({{address = v.value + self.Fields.bossrush_time, flags = gg.TYPE_DWORD, value = 0}})
        end
    end,
    ResetSeller = function(self)
        for k,v in ipairs(self:GetLocalInstance()) do
            gg.setValues({{address = v.value + self.Fields.sellerRefreshTime, flags = gg.TYPE_DWORD, value = 0}})
            local items = {}
            for n,cl in ipairs(Massiv:From(List:GetLink(gg.getValues({{address = v.value + self.Fields.commodities, flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD}})[1].value)):GetAllElement('link')) do
                local item = RoomComodityData:From(cl.value)
                if (item:GetCount() == 0) then 
                    items[#items + 1] = item:GetTabelForReset()
                end
            end
            gg.setValues(items)
        end
    end
})

UIWeaponStation = SetUnityClass({
    GetBluePrint = function(self)
        local ret = {}
        for k,v in ipairs(self:GetInstance()) do
            ret[#ret + 1] = gg.getValues({{address = v.address + 0x110, flags = v.flags}})[1].value
        end
        return ret
    end
})

SkinMaterialRelation = SetUnityClass({
    HackSkinMaterial = function(self) 
        for k,v in ipairs(self:GetInstance()) do
            local list = List:From(gg.getValues({{address = v.address + self.Fields.material_list, flags = v.flags}})[1].value)
            if (list:GetNumItem() > 0) then list:SetNumItem(0) end
        end
    end
})

ItemBluePrint = SetUnityClass({
    HackBluePrint = function(self)
        for k,v in ipairs(self:GetInstance()) do
            local dec = Dictionary:From(gg.getValues({{address = v.address + self.Fields.researchMaterial,flags = v.flags}})[1].value)
            if (GetRegionValue(dec.address) == "A") then 
                if (gg.getValues({{address = v.address + self.Fields.noBlueprint,flags = gg.TYPE_BYTE}})[1].value == 0) then gg.setValues({{address = v.address + self.Fields.noBlueprint,flags = gg.TYPE_BYTE, value = 1}}) end
                if (dec:GetNumItem() > 0) then dec:SetNumItem(0) end
            end
        end
    end,
    EditSelectedBluePrint = function(self)
        for k,v in ipairs(UIWeaponStation:GetBluePrint()) do
            print("Вроде бы запустилось")
            local dec = gg.getValues({{address = v + self.researchMaterial,flags = gg.TYPE_QWORD}})[1].value
            if gg.getValues({{address = v + self.noBlueprint,flags = gg.TYPE_BYTE}})[1].value == 0 and Dictionary:GetNumItem(dec) > 0 and GetRegionValue(dec) == "A" then
                Dictionary:SetNumItem(dec, 0)
                gg.setValues({{address = v + self.noBlueprint,flags = gg.TYPE_BYTE, value = 1}})
            end
        end
    end
})

WeaponsConfig = SetUnityClass({ 
    Price = platform and 0x18 or 0xC,
    Key = platform and 0x18 or 0xC,
    Materials = platform and 0x20 or 0x10,
    SizeStruct = platform and 0x38 or 0x1C,
    DisableUnlockByPick = platform and 0x8 and 0x4,
    RemoveMaterials = function(self)
        local vals = {}
        for k,v in ipairs(self:GetLocalInstance()) do
            local dec = Dictionary:From(v.value)
            for key,value,length in lpairs(dec:GetAllItemStringToStruct(self.SizeStruct, self.Materials, v.flags)) do
                vals[#vals + 1] = Dictionary:GetNumItemForTable(value.value, 0)
                gg.toast(key .. '/' .. length)
            end
            local Prices = dec:GetAllItemStringToStruct(self.SizeStruct,self.Price,gg.TYPE_DWORD)
            for _,value in ipairs(Prices) do value.value = 1 end
            table.move(Prices, 1, #Prices, #vals + 1, vals)
        end
        gg.setValues(vals)
    end,
    DisableLock = function(self)
        local weapons = {}
        for k,v in ipairs(self:GetLocalInstance()) do
            local dec = Dictionary:From(v.value)
            local DisableUnlockByPick = dec:GetAllItemStringToStruct(self.SizeStruct, self.DisableUnlockByPick, gg.TYPE_DWORD)
            for _, value in ipairs(DisableUnlockByPick) do value.value = 1 end
            table.move(DisableUnlockByPick, 1, #DisableUnlockByPick, #weapons + 1, weapons)
        end
    end
})

TroopAchievement = SetUnityClass({
    GetAllAchiv = function(self)
        local achivelink = {}
        for k, v in ipairs(self:GetLocalInstance()) do
            local BronzeKeys = Massiv:From(fixvalue32(gg.getValues({{address = v.address + self.Fields.BronzeKeys, flags = v.flags}})[1].value)):GetAllElement('link')
            local SilverKeys = Massiv:From(fixvalue32(gg.getValues({{address = v.address + self.Fields.SilverKeys, flags = v.flags}})[1].value)):GetAllElement('link')
            local GoldKeys = Massiv:From(fixvalue32(gg.getValues({{address = v.address + self.Fields.GoldKeys, flags = v.flags}})[1].value)):GetAllElement('link')
            table.move(BronzeKeys, 1, #BronzeKeys, #achivelink + 1, achivelink)
            table.move(SilverKeys, 1, #SilverKeys, #achivelink + 1, achivelink)
            table.move(GoldKeys, 1, #GoldKeys, #achivelink + 1, achivelink)
        end
        return achivelink
    end
})

ArtifactsAchievement = SetUnityClass({
    GetAllAchiv = function(self)
        local achivelink = {}
        for k, v in ipairs(self:GetLocalInstance()) do
            local copper_achievements = Massiv:From(fixvalue32(gg.getValues({{address = v.address + self.Fields.copper_achievements, flags = v.flags}})[1].value)):GetAllElement('link')
            local silver_achievements = Massiv:From(fixvalue32(gg.getValues({{address = v.address + self.Fields.silver_achievements, flags = v.flags}})[1].value)):GetAllElement('link')
            local gold_achievements = Massiv:From(fixvalue32(gg.getValues({{address = v.address + self.Fields.gold_achievements, flags = v.flags}})[1].value)):GetAllElement('link')
            table.move(copper_achievements, 1, #copper_achievements, #achivelink + 1, achivelink)
            table.move(silver_achievements, 1, #silver_achievements, #achivelink + 1, achivelink)
            table.move(gold_achievements, 1, #gold_achievements, #achivelink + 1, achivelink)
        end
        return achivelink
    end
})

StatisticData = SetUnityClass({
    object2ObtainTime = platform and 0x20 or 0x10,
    event2Count = platform and 0x28 or 0x14,
    SetTimesWeapon = function(self,value)
        for k,v in ipairs(self:GetInstance()) do
            Dictionary:SetAllItemStringInt(gg.getValues({{address = v.address + self.object2ObtainTime,flags = v.flags}})[1].value,value)
        end
    end,
    SetPower = function(self)
        for k,v in ipairs(self:GetInstance()) do
            Dictionary:From(gg.getValues({{address = v.address + self.Fields.event2Count, flags = v.flags}})[1].value):SetItemStringInt('hero_char_useable_value', 100)
        end
    end,
    GetPrizeSeason = function(self)
        local troopAchive = TroopAchievement:GetAllAchiv()
        local ArtifactsAchiv = ArtifactsAchievement:GetAllAchiv()
        for k, v in ipairs(self:GetInstance()) do
            local recordedEvents = List["string"]:From(gg.getValues({{address = v.address + self.Fields.recordedEvents, flags = v.flags}})[1].value)
            recordedEvents:EditList(troopAchive, true, true)
            recordedEvents:EditList(ArtifactsAchiv, true, true)
        end
    end
})

TermData = SetUnityClass({
    Term = platform and 0x10 or 0x8,
    Languages = 0x28,
    Russiano = 0x68,
    English = 0x20,
    GetAllWeapon = function(self)
        local WeaponTable = {}
        for k,v,length in lpairs(self:GetInstance()) do
            local CheckTerm = gg.getValues({{address = v.address + self.Term,flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD}})[1].value
            if CheckTerm ~= 0 then
                local tmpString = self.Utf16ToString(CheckTerm)
                if string.find(tmpString,'weapon/') then
                    local tmp = gg.getValues({{address = v.address + self.Languages,flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD}})[1].value
                    tmp = gg.getValues({{address = tmp + self.English,flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD}})[1].value
                    WeaponTable[string.gsub(tmpString,'%weapon/.-','')] = self.Utf16ToString(tmp)
                end
            end
            gg.toast(k .. '/' .. length)
        end
        return WeaponTable
    end
})

WeaponInfo = SetUnityClass({
    UnlockAllWeapon = function(self)
        local items = {}
        for k,v in ipairs(self:GetLocalInstance()) do
            for key,weapon in ipairs(Massiv:From(List:GetLink(gg.getValues({{address = v.value + self.Fields.weapons, flags = v.flags}})[1].value)):GetAllElement('link')) do
                local item = WeaponInfoRow:From(weapon.value)
                if (item:Getforgeable() == 0) then items[#items + 1] = item:GetTableforforgeable() end
            end
        end
        gg.setValues(items)
    end
})

WeaponInfoRow = SetUnityClass({
    Getforgeable = function(self, add) 
        return gg.getValues({{address = add + self.Fields.forgeable, flags = gg.TYPE_BYTE}})[1].value
    end,
    GetTableforforgeable = function(self, add)
        return {address = add + self.Fields.forgeable, flags = gg.TYPE_BYTE, value = 1}
    end
})

UIForge = SetUnityClass({
    forgableCount = 0,
    UnlockAllWeapon = function(self)
        for k,v in ipairs(self:GetLocalInstance()) do
            local forgableCount = {{address = v.address + self.forgableCount,flags = gg.TYPE_DWORD}}
            if gg.getValues(forgableCount)[1].value >= 0 and gg.getValues(forgableCount)[1].value < 100 then 
                forgableCount[1].value = 0
                gg.setValues(forgableCount)
            end
        end
        for k,v in ipairs(self.GetIl2cppFunc('IsUnlocked')) do
            if (not v.Error) and v.Class == GetNameTableInGlobalSpace(self) then
                PatchByteCodes(tonumber(v.AddressInMemory,16), platform and "\x20\x00\x80\x52\xc0\x03\x5f\xd6" or "\x01\x00\xa0\xe3\x1e\xff\x2f\xe1")
            end
        end
    end
})

RGGameProcess = SetUnityClass({
    AddCoin = function(self,num)
        for k,v in ipairs(self:GetParentLocalInstance()) do
            local coin_value = gg.getValues({{address = v.value + self.Fields.coin_value,flags = gg.TYPE_DWORD}})[1].value
            local this_index = gg.getValues({{address = v.value + self.Fields.this_index,flags = gg.TYPE_DWORD}})[1].value
            if this_index >= 0 and this_index < 1000000000 then
                gg.setValues({{address = v.value + self.Fields.coin_value,flags = gg.TYPE_DWORD, value = coin_value + num}})
            end
        end
    end
})

RGItem = {
    item_value = platform and 0x70 or 0x38
}

ItemSellPlaceGem = SetUnityClass({
    saveItems = {},
    SetPrice = function(self,num)
        for k,v in ipairs(self:GetInstance()) do
            local unlockByTv = gg.getValues({{address = v.address + self.Fields.unlockByTv,flags = gg.TYPE_BYTE}})[1].value
            switch(unlockByTv, {
                [0] = function() 
                    local the_item = gg.getValues({{address = v.address + self.Fields.the_item,flags = v.flags}})[1].value
                    if (GetRegionValue(the_item) == "A") then
                        gg.setValues({{address = self.saveItems[v.address] and the_item + RGWeapon.item_value or the_item + RGItem.item_value, flags = gg.TYPE_DWORD,value = num}})
                    end
                end,
                [1] = function()
                    local the_item = gg.getValues({{address = v.address + self.Fields.the_item,flags = v.flags}})[1].value
                    self.saveItems[v.address] = true
                    gg.setValues({
                        {
                            address = v.address + self.Fields.unlockByTv,
                            flags = gg.TYPE_BYTE,
                            value = 0
                        },
                        {
                            address = the_item + RGWeapon.item_value,
                            flags = gg.TYPE_DWORD,
                            value = num
                        }
                    })
                end
            })
        end
    end
})

PlantInfo = SetUnityClass({
    GrowAllSeeds = function(self)
        local EditPlot = {}
        for k,v in ipairs(self:GetInstance()) do
            local state = gg.getValues({{address = v.address + self.Fields.state, flags = gg.TYPE_DWORD}})[1].value
            EditPlot[#EditPlot + 1] = (state >= 0 and state < 4) and {address = v.address + self.Fields.state,flags = gg.TYPE_DWORD,value = 4} or nil 
        end
        gg.setValues(EditPlot)
    end
})

VacantWallListener = SetUnityClass({
    IsRun = false,
    RemoveVacWall = function (self)
        for k,v in ipairs(self.GetIl2cppFunc('OnTriggerEnter2D')) do
            if (not v.Error) and v.Class == GetNameTableInGlobalSpace(self) then
                PatchByteCodes(tonumber(v.AddressInMemory,16), platform and "\xc0\x03\x5f\xd6" or "\x1e\xff\x2f\xe1")
            end
        end
        self.IsRun = true
    end
})

Rigidbody2D = {
    Tmp1 = platform and 0x28 or 0x24,
    Tmp2 = platform and 0x24 or 0x20,
    m_CachedPtr = platform and 0x10 or 0x8,
    NoClip = function (self)
        local Instance = RGController:GetRigidbody2D()
        local m_CachedPtr = gg.getValues({{address = Instance[1].address + self.m_CachedPtr,flags = Instance[1].flags}})
        gg.loadResults({{address = m_CachedPtr[1].value,flags = gg.TYPE_DWORD}})
        gg.searchPointer(0)
        local r = gg.getResults(gg.getResultsCount())
        for key,value in ipairs(r) do
            local tmp1 = gg.getValues({{address = value.address - self.Tmp1,flags = gg.TYPE_FLOAT}})
            if tmp1[1].value == 1 then 
                gg.setValues({{address = value.address - self.Tmp1,flags = gg.TYPE_FLOAT,value = -1},{address = value.address - self.Tmp2,flags = gg.TYPE_FLOAT,value = -1}})
            end
        end
        gg.clearResults()
        if not VacantWallListener.IsRun then VacantWallListener:RemoveVacWall() end
    end,
    GetRigidbody2DPlayer = function (self)
        local Instance = RGController:GetRigidbody2D()
        local m_CachedPtr = gg.getValues({{address = Instance[1].address + self.m_CachedPtr,flags = Instance[1].flags}})
        gg.loadResults({{address = m_CachedPtr[1].value,flags = gg.TYPE_DWORD}})
        gg.searchPointer(0)
        local r = gg.getResults(gg.getResultsCount())
        gg.addListItems(r)
        gg.clearResults()
    end
}

RGController = { --!!!
    rigibody = platform and 0x28 or 0x18,
    GetRigidbody2D = function (self)
        local instance = RGGameSceneManager:GetController()
        local RB = gg.getValues({{address = instance + self.rigibody,flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD}})[1].value
        return gg.getValues({{address = RB ,flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD}})
    end,
    NoSkillCd = function(self)
        local instance, skills = RGGameSceneManager:GetController(), {}
        for k,v in ipairs(Massiv:GetAllElement(gg.getValues({{address = instance + 0x170, flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD}})[1].value, 'link')) do
            skills[#skills + 1] = SkillInfo:From(v.value):GetTableForCd()
        end
        gg.setValues(skills)
    end
}

RGGameSceneManager = SetUnityClass({
    GetController = function (self)
        for k,v in ipairs(self:GetLocalInstance()) do
            return gg.getValues({{address = v.value + self.Fields.controller,flags = v.flags}})[1].value
        end
    end
})

RGHand = SetUnityClass({
    front_weapon = platform and 0x20 or 0x10,
    GetFrontWeapon = function(self)
        local Weapons = {}
        for k,v in ipairs(self:GetInstance()) do
            local RGWeapon = gg.getValues({{address = v.address + self.front_weapon,flags = v.flags}})[1].value
            Weapons[#Weapons + 1] = RGWeapon ~= 0 and RGWeapon or nil
        end
        return Weapons
    end
})

RGWeapon = {
    item_value = platform and 0x38 or 0x20,
    dmgMultiFactor = platform and 0x50 or 0x30,
    EditFrontWeapon = function(self)
        for k,v in ipairs(RGHand:GetFrontWeapon()) do
            gg.setValues({{address = v + self.dmgMultiFactor,flags = gg.TYPE_FLOAT,value = 5000000}})
        end
    end
}

RGSaveManager = SetUnityClass({
    SetPricePet = function (self, price)
        local pets = {}
        for k,v in ipairs(self:GetLocalInstance()) do
            for key,value in ipairs(Massiv:GetAllElement(gg.getValues({{address = v.value + self.Fields.pet_list, flags = v.flags}})[1].value,"link")) do
                pets[#pets + 1] = RGPetInfo:From(value.value):GetTableForUnlockGem(price)
            end
        end
        gg.setValues(pets)
    end,
    SetPriceChar = function(self, price)
        local chars = {}
        for k,v in ipairs(self:GetLocalInstance()) do
            for key,value in ipairs(Massiv:GetAllElement(gg.getValues({{address = v.value + self.Fields.char_list, flags = v.flags}})[1].value,"link")) do
                chars[#chars + 1] = RGCharacterInfo:From(value.value):GetTableForUnlockGem(price)
            end
        end
        gg.setValues(chars)
    end,
    SetSkinPrice = function(self, price)
        local skins = {}
        for k,v in ipairs(self:GetLocalInstance()) do
            for key,value in ipairs(Massiv:GetAllElement(gg.getValues({{address = v.value + self.Fields.char_list, flags = v.flags}})[1].value,"link")) do
                local skin = RGCharacterInfo:From(value.value):GetTableForSkins(price)
                table.move(skin, 1, #skin, #skins + 1, skins)
            end
        end
        gg.setValues(skins)
    end,
})

-- emBuff = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,1000,1001,1003,1004,1005,1006,1007,1008,1009}

emBuff = SetUnityClass({})

BattleData = SetUnityClass({
    GetAllBuffs = function(self)
        for k, v in ipairs(self:GetLocalInstance()) do
            local list = gg.getValues({{address = v.value + self.Fields.buffs, flags = v.flags}})[1].value
            if not emBuff.ClassLoad then
                emBuff:LoadEnum()
            end
            local emBuffField = {}
            for key, value in pairs(emBuff.Fields) do
                if key ~= "value__" and key ~= "MoveEnhanceAttack" then
                    table.insert(emBuffField, #emBuffField + 1, value)
                end
            end
            if (list ~= 0) then List['int']:EditList(list, emBuffField, true) end
        end
    end,
    IncreaseAttribute = function(self)
        for k,v in ipairs(self:GetLocalInstance()) do
            local dic = gg.getValues({{address = v.value + self.Fields.attributeAddition, flags = v.flags}})[1].value
            local Attribute, fun1, fun2 = Dictionary:GetAllItemIntInt(dic), function(value) return value + 100 end, function () return 1 end
            if (#Attribute > 0) then
                for key, value in pairs(Attribute) do
                    Attribute[key] = switch(key, {
                        [0] = fun1,
                        [1] = fun1,
                        [2] = fun1,
                        [3] = fun1,
                        [4] = fun1,
                        [5] = fun1,
                        [6] = fun1,
                        [9] = fun2,
                        [10] = fun1,
                    }, nil, value)
                end
                Dictionary:SetItemsIntIntTable(dic, Attribute)
            end
        end
    end,
})

ItemDrinkSeller = SetUnityClass({
    drinkDistribute = 0xA8,
    Test = function(self)
        for k,v in ipairs(self:GetInstance()) do
            for key, drink in ipairs(Massiv:GetAllElement(gg.getValues({{address = v.address + self.drinkDistribute, flags = v.flags}})[1].value,"link")) do
                local tmp = gg.getValues({{address = drink.value + 0x10, flags = gg.TYPE_QWORD}})[1].value
                tmp = gg.getValues({{address = tmp + 0x10, flags = gg.TYPE_QWORD}})[1].value
                print(Unity.Utf8ToString(gg.getValues({{address = tmp + 0x60, flags = gg.TYPE_QWORD}})[1].value))
            end
        end
    end
})

RoleAttributeProxy = SetUnityClass({
    NoSkillCooldown = function(self)
        for k,v in ipairs(self.GetIl2cppFunc('get_skill_ready')) do
            if (not v.Error) and v.Class == GetNameTableInGlobalSpace(self) then
                PatchByteCodes(tonumber(v.AddressInMemory,16), platform and "\x20\x00\x80\x52\xc0\x03\x5f\xd6" or "\x01\x00\xa0\xe3\x1e\xff\x2f\xe1")
            end
        end
    end
})

DecorateSkinsData = SetUnityClass({
    SetPriceForSkins = function(self, value)
        local skins = {}
        local price = {}
        value = tostring(value)
        for k, v in ipairs(self:GetInstance()) do
            skins[#skins + 1] = {
                address = v.address + self.Fields.UnlockMethod,
                flags = gg.TYPE_DWORD
            }
        end
        skins = gg.getValues(skins)
        for k, v in ipairs(skins) do 
            if v.value ~= 1 then
                v.value = -6
                price[#price + 1] = {
                    address = v.address - self.Fields.UnlockMethod + self.Fields.UnlockValue,
                    flags = Unity.MainType
                }
            end
        end
        gg.setValues(skins)
        price = gg.getValues(price)
        for k, v in ipairs(price) do
            local oldPrice = gg.getValues({{address = fixvalue32(v.value), flags = v.flags}})[1]
            local head = oldPrice.value
            v.value = Massiv:CreateMassiv(oldPrice.address, head, 'char', StringToTable(value))
        end
        gg.setValues(price)
    end
})

functions = {
    ['EXIT'] = function()
        if not pcall(dropboxfile,"MainMenu.lua") then os.exit() end
    end,
    ['REMOVE MATERIALS IN THE BLACKSMITH TABLE'] = function()
        Protect:Call(WeaponsConfig.RemoveMaterials, WeaponsConfig)
        gg.alert("ЕСЛИ ВЗЛОМ НЕ СРАБОТАЛ,ТО ПРОСТО ПОВТОРИТЕ ЕГО ЕЩЁ РАЗ\nIF THE HACK DIDN'T WORK,JUST TRY IT AGAIN")
    end,
    ["REMOVE MATERIALS FROM THE DESIGNER'S TABLE"] = function ()
        Protect:Call(ItemBluePrint.HackBluePrint, ItemBluePrint)
        Protect:Call(SkinMaterialRelation.HackSkinMaterial, SkinMaterialRelation)
        gg.alert("ЕСЛИ ВЗЛОМ НЕ СРАБОТАЛ,ТО ПРОСТО ПОВТОРИТЕ ЕГО ЕЩЁ РАЗ\nIF THE HACK DIDN'T WORK,JUST TRY IT AGAIN")
    end,
    ['SET COUNT SEEDS'] = function ()
        local num = gg.prompt({'ВВЕДИТЕ НУЖНОЕ КОЛИЧЕСТВО\nENTER THE REQUIRED AMOUNT'},{[1] = 5},{'number'})
        if CheckTableIsNil(num) then 
            gg.alert("ВЫ НЕ ВВЕЛИ КОЛИЧЕСТВО\nYOU DIDN'T ENTER THE QUANTITY") 
        else
            Protect:Call(ItemData.SetSeeds, ItemData, num[1])
        end
    end,
    ['SET MATERIALS COUNT'] = function ()
        local num = gg.prompt({'ВВЕДИТЕ НУЖНОЕ КОЛИЧЕСТВО\nENTER THE REQUIRED AMOUNT'},{[1] = 5},{'number'})
        if CheckTableIsNil(num) then 
            gg.alert("ВЫ НЕ ВВЕЛИ КОЛИЧЕСТВО\nYOU DIDN'T ENTER THE QUANTITY") 
        else
            Protect:Call(ItemData.SetMaterials, ItemData, num[1])
        end
    end,
    ['SET TOKENS COUNT'] = function ()
        local num = gg.prompt({'ВВЕДИТЕ НУЖНОЕ КОЛИЧЕСТВО\nENTER THE REQUIRED AMOUNT'},{[1] = 5},{'number'})
        if CheckTableIsNil(num) then 
            gg.alert("ВЫ НЕ ВВЕЛИ КОЛИЧЕСТВО\nYOU DIDN'T ENTER THE QUANTITY") 
        else
            Protect:Call(ItemData.SetTokens, ItemData, num[1])
        end
    end,
    ['SET PET PRICE'] = function ()
        local num = gg.prompt({'ВВЕДИТЕ НУЖНУЮ ЦЕНУ\nENTER THE DESIRED PRICE'},{[1] = 5},{'number'})
        if CheckTableIsNil(num) then 
            gg.alert("ВЫ НЕ ВВЕЛИ ЦЕНУ\nYOU DIDN'T ENTER THE PRICE") 
        else
            Protect:Call(RGSaveManager.SetPricePet, RGSaveManager, num[1])
        end
    end,
    ['SET HERO PRICE'] = function ()
        local num = gg.prompt({'ВВЕДИТЕ НУЖНУЮ ЦЕНУ\nENTER THE DESIRED PRICE'},{[1] = 5},{'number'})
        if CheckTableIsNil(num) then 
            gg.alert("ВЫ НЕ ВВЕЛИ ЦЕНУ\nYOU DIDN'T ENTER THE PRICE") 
        else
            Protect:Call(RGSaveManager.SetPriceChar, RGSaveManager, num[1])
        end
    end,
    ['SET SKILL PRICE'] = function ()
        local num = gg.prompt({'ВВЕДИТЕ НУЖНУЮ ЦЕНУ\nENTER THE DESIRED PRICE'},{[1] = 5},{'number'})
        if CheckTableIsNil(num) then 
            gg.alert("ВЫ НЕ ВВЕЛИ ЦЕНУ\nYOU DIDN'T ENTER THE PRICE") 
        else
            Protect:Call(SkillInfo.SetPrice, SkillInfo, num[1])
        end
    end,
    ["SET THE NUMBER OF WEAPONS RECEIVED"] = function ()
        local num = gg.prompt({'ВВЕДИТЕ НУЖНОЕ КОЛИЧЕСТВО\nENTER THE REQUIRED AMOUNT'},{[1] = 5},{'number'})
        if CheckTableIsNil(num) then 
            gg.alert("ВЫ НЕ ВВЕЛИ КОЛИЧЕСТВО\nYOU DIDN'T ENTER THE QUANTITY") 
        else
            Protect:Call(StatisticData.SetTimesWeapon, StatisticData, num[1])
        end
    end,
    ['UNLOCK ALL WEAPON IN THE BLACKSMITH TABLE'] = function()
        Protect:Call(UIForge.UnlockAllWeapon, UIForge)
        Protect:Call(WeaponInfo.UnlockAllWeapon, WeaponInfo)
        -- Protect:Call(WeaponsConfig.DisableLock, WeaponsConfig)
        gg.alert("ЕСЛИ ВЗЛОМ НЕ СРАБОТАЛ,ТО ПРОСТО ПОВТОРИТЕ ЕГО ЕЩЁ РАЗ\nIF THE HACK DIDN'T WORK,JUST TRY IT AGAIN")
    end,
    ['ADD COINS'] = function()
        local num = gg.prompt({'ВВЕДИТЕ НУЖНОЕ КОЛИЧЕСТВО\nENTER THE REQUIRED AMOUNT'},{[1] = 5},{'number'})
        if CheckTableIsNil(num) then 
            gg.alert("ВЫ НЕ ВВЕЛИ КОЛИЧЕСТВО\nYOU DIDN'T ENTER THE QUANTITY") 
        else
            Protect:Call(RGGameProcess.AddCoin, RGGameProcess, num[1])
        end
    end,
    ['SET THE PRICE OF ITEMS FROM THE MERCHANT'] = function()
        local num = gg.prompt({'ВВЕДИТЕ НУЖНУЮ ЦЕНУ\nENTER THE DESIRED PRICE'},{[1] = 5},{'number'})
        if CheckTableIsNil(num) then 
            gg.alert("ВЫ НЕ ВВЕЛИ ЦЕНУ\nYOU DIDN'T ENTER THE PRICE") 
        else
            Protect:Call(ItemSellPlaceGem.SetPrice, ItemSellPlaceGem, num[1])
        end
    end,
    ['SET SKIN PRICE'] = function()
        local num = gg.prompt({'ВВЕДИТЕ НУЖНУЮ ЦЕНУ\nENTER THE DESIRED PRICE'},{[1] = 5},{'number'})
        if CheckTableIsNil(num) then 
            gg.alert("ВЫ НЕ ВВЕЛИ ЦЕНУ\nYOU DIDN'T ENTER THE PRICE") 
        else
            Protect:Call(RGSaveManager.SetSkinPrice, RGSaveManager, num[1])
        end
    end,
    ['GROW ALL THE SEEDS'] = function()
        Protect:Call(PlantInfo.GrowAllSeeds, PlantInfo)
        gg.alert("ЕСЛИ ВЗЛОМ НЕ СРАБОТАЛ,ТО ПРОСТО ПОВТОРИТЕ ЕГО ЕЩЁ РАЗ\nIF THE HACK DIDN'T WORK,JUST TRY IT AGAIN")
    end,
    ['HUGE DAMAGE'] = function()
        Protect:Call(RGWeapon.EditFrontWeapon, RGWeapon)
        gg.alert("ЕСЛИ ВЗЛОМ НЕ СРАБОТАЛ,ТО ПРОСТО ПОВТОРИТЕ ЕГО ЕЩЁ РАЗ\nIF THE HACK DIDN'T WORK,JUST TRY IT AGAIN")
    end,
    ['NO WALLS'] = function ()
        Protect:Call(Rigidbody2D.NoClip, Rigidbody2D)
        gg.alert("ЕСЛИ ВЗЛОМ НЕ СРАБОТАЛ,ТО ПРОСТО ПОВТОРИТЕ ЕГО ЕЩЁ РАЗ\nIF THE HACK DIDN'T WORK,JUST TRY IT AGAIN")
    end,
    ["UNLOCK ALL GARDEN PLOTS"] = function()
        Protect:Call(ItemData.SetPlant, ItemData)
        gg.alert("ЕСЛИ ВЗЛОМ НЕ СРАБОТАЛ,ТО ПРОСТО ПОВТОРИТЕ ЕГО ЕЩЁ РАЗ\nIF THE HACK DIDN'T WORK,JUST TRY IT AGAIN")
    end,
    ["CHANGE THE CREATED ITEMS ON THE BLACKSMITH'S TABLE"] = function()
        Protect:Call(ItemData.SetItemForge, ItemData)
    end,
    ["UNLOCK MOTORCYCLE"] = function()
        Protect:Call(ItemData.AddMotor, ItemData)
        gg.alert("ЕСЛИ ВЗЛОМ НЕ СРАБОТАЛ,ТО ПРОСТО ПОВТОРИТЕ ЕГО ЕЩЁ РАЗ\nIF THE HACK DIDN'T WORK,JUST TRY IT AGAIN")
    end,
    ["REMOVE THE NUMBER OF BOSS RUSH ATTEMPTS"] = function()
        Protect:Call(ItemData.EditTimesBossRush, ItemData)
        gg.alert("ЕСЛИ ВЗЛОМ НЕ СРАБОТАЛ,ТО ПРОСТО ПОВТОРИТЕ ЕГО ЕЩЁ РАЗ\nIF THE HACK DIDN'T WORK,JUST TRY IT AGAIN")
    end,
    ['RESET SELLER'] = function()
        Protect:Call(ItemData.ResetSeller, ItemData)
        gg.alert("ЕСЛИ ВЗЛОМ НЕ СРАБОТАЛ,ТО ПРОСТО ПОВТОРИТЕ ЕГО ЕЩЁ РАЗ\nIF THE HACK DIDN'T WORK,JUST TRY IT AGAIN")
    end,
    ['CHARGE THE WAVEGUIDE'] = function()
        Protect:Call(StatisticData.SetPower, StatisticData) 
        gg.alert("ЕСЛИ ВЗЛОМ НЕ СРАБОТАЛ,ТО ПРОСТО ПОВТОРИТЕ ЕГО ЕЩЁ РАЗ\nIF THE HACK DIDN'T WORK,JUST TRY IT AGAIN")   
    end,
    ['ADD ALL BUFFS'] = function()
        Protect:Call(BattleData.GetAllBuffs, BattleData)
        gg.alert("ЕСЛИ ВЗЛОМ НЕ СРАБОТАЛ,ТО ПРОСТО ПОВТОРИТЕ ЕГО ЕЩЁ РАЗ\nIF THE HACK DIDN'T WORK,JUST TRY IT AGAIN")
    end,
    ['INCREASE ADDED ATTRIBUTES'] = function()
        Protect:Call(BattleData.IncreaseAttribute, BattleData)
        gg.alert("ЕСЛИ ВЗЛОМ НЕ СРАБОТАЛ,ТО ПРОСТО ПОВТОРИТЕ ЕГО ЕЩЁ РАЗ\nIF THE HACK DIDN'T WORK,JUST TRY IT AGAIN")
    end,
    ['NO SKILL COOLDOWN'] = function()
        Protect:Call(RoleAttributeProxy.NoSkillCooldown, RoleAttributeProxy)
        gg.alert("ЕСЛИ ВЗЛОМ НЕ СРАБОТАЛ,ТО ПРОСТО ПОВТОРИТЕ ЕГО ЕЩЁ РАЗ\nIF THE HACK DIDN'T WORK,JUST TRY IT AGAIN")
    end,
    ["GET GOLD TROPHIES FOR THE SEASONS"] = function()
        Protect:Call(StatisticData.GetPrizeSeason, StatisticData)
        gg.alert("ЕСЛИ ВЗЛОМ НЕ СРАБОТАЛ,ТО ПРОСТО ПОВТОРИТЕ ЕГО ЕЩЁ РАЗ\nIF THE HACK DIDN'T WORK,JUST TRY IT AGAIN")
    end,
    ['SET SKIN LOBBY PRICE'] = function()
        local num = gg.prompt({'ВВЕДИТЕ НУЖНУЮ ЦЕНУ\nENTER THE DESIRED PRICE'},{[1] = 5},{'number'})
        if CheckTableIsNil(num) then 
            gg.alert("ВЫ НЕ ВВЕЛИ ЦЕНУ\nYOU DIDN'T ENTER THE PRICE") 
        else
            Protect:Call(DecorateSkinsData.SetPriceForSkins, DecorateSkinsData, num[1])
        end
    end
}

while true do
    if gg.isVisible() or x ~= nil then
        gg.setVisible(false)
        x = gg.choice(lang_main, nil)
        if x ~= nil and functions[lang['en_US'][x]] then functions[lang['en_US'][x]]() end
    end
    gg.sleep(100)
end