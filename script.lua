gs = _G or _ENV
pageMemory = pageMemory or 0
lang = {
    ['ru'] = {
        "УБРАТЬ МАТЕРИАЛЫ С КУЗНЕЧНОГО СТОЛА",
        "УБРАТЬ МАТЕРИАЛЫ СО СТОЛА КОНСТРУКТОРА",
        "РАЗБЛОКИРОВАТЬ ВСЕ ОРУЖИЕ НА СТОЛЕ КУЗНЕЦА",
        "ИЗМЕНИТЬ СОЗДАННЫЕ ПРЕДМЕТЫ НА СТОЛЕ КУЗНЕЦА",
        "УСТАНОВИТЬ ЦЕНУ ТОВАРОВ У ПРОДАВЦА",
        "РАЗБЛОКИРОВАТЬ ВСЕ САДОВЫЕ УЧАСТКИ",
        "ВЫРАСТИТЬ ВСЕ РАСТЕНИЯ",
        "РАЗБЛОКИРОВАТЬ МОТОЦИКЛ",
        --"ДОБАВИТЬ ЗДОРОВЬЯ, БРОНИ, ЭНЕРГИИ",
        'ОГРОМНЫЙ УРОН',
        'УБРАТЬ КОЛИЧЕСТВО ПОКУПОК У ПРОДАВЦА',
        "УБРАТЬ КОЛИЧЕСТВО ПОПЫТОК BOSS RUSH",
        "УСТАНОВИТЬ КОЛИЧЕСТВО СЕМЯН",
        "УСТАНОВИТЬ КОЛИЧЕСТВО МАТЕРИАЛОВ",
        "УСТАНОВИТЬ КОЛИЧЕСТВО КУПОНОВ",
        "УСТАНОВИТЬ ЦЕНУ ДЛЯ ПИТОМЦЕВ",
        "УСТАНОВИТЬ ЦЕНУ ДЛЯ ГЕРОЕВ",
        "УСТАНОВИТЬ ЦЕНУ ДЛЯ СКИЛЛОВ",
        "УСТАНОВИТЬ ЦЕНУ ДЛЯ СКИНОВ",
        "ДОБАВИТЬ МОНЕТЫ",
        'НЕТ СТЕН',
        'ВЫХОД'
    },
    ['en_US'] = {
        'REMOVE MATERIALS IN THE BLACKSMITH TABLE',
        "REMOVE MATERIALS FROM THE DESIGNER'S TABLE",
        'UNLOCK ALL WEAPON IN THE BLACKSMITH TABLE',
        "CHANGE THE CREATED ITEMS ON THE BLACKSMITH'S TABLE",
        'SET THE PRICE OF ITEMS FROM THE MERCHANT',
        "UNLOCK ALL GARDEN PLOTS",
        'GROW ALL THE SEEDS',
        "UNLOCK MOTORCYCLE",
        --'ADD HEALTH, ARMOR, ENERGY',
        'HUGE DAMAGE',
        'RESET SELLER',
        "REMOVE THE NUMBER OF BOSS RUSH ATTEMPTS",
        'SET COUNT SEEDS',
        'SET MATERIALS COUNT',
        'SET TOKENS COUNT',
        'SET PET PRICE',
        'SET HERO PRICE',
        'SET SKILL PRICE',
        'SET SKIN PRICE',
        'ADD COINS',
        'NO WALLS',
        'EXIT'
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
        RGSaveManager = 'Сохранения найдены',
        Emtry = 'Пусто',
        ErrorLib = 'Game Guardian не нашёл нужную библиотеку. Скрипт запустится, но будет работать частично некорректно',
        ErrorAlert = 'При выполнении функции произошла ошибка',
        SkinMaterialRelation = 'Чертежи скинов получены'
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
        RGSaveManager = 'Saves were found',
        Emtry = 'Emtry',
        ErrorLib = "Game Guardian didn't find the right library. The script will run, but it will work partially incorrectly",
        ErrorAlert = 'An error occurred while executing the function',
        SkinMaterialRelation = 'Blueprint of skins have been received'
    },
}

lang_main = setmetatable(lang[gg.getLocale()] or lang['en_US'], {__index = langClass[gg.getLocale()] or langClass['en_US']})

function switch(check,table,e)
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
            end
        )
    })[2]
end

Protect = {
    ErrorHandler = function(err)
        gg.alert(lang_main['ErrorAlert'])
        print(err)
    end,
    Call = function(self, fun, ...) 
        xpcall(fun, self.ErrorHandler, ...)
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

function CheckIsGame(PackageName)
    local data = gg.getRangesList('global-metadata.dat') 
    if data == nil or data[1] == nil or data[1].start <= 0 or string.find(data[1].internalName,PackageName) == nil then
        gg.alert(lang_main.AppNoSK .. '\n' .. lang_main.ErrorData)
        return nil
    end
    return data
end

function CheckIsUnityGame()
    local il2cpp = gg.getRangesList('libil2cpp.so')
    if il2cpp == nil or il2cpp[1] == nil or il2cpp[1].start <= 0 then
        gg.alert(lang_main.AppNoSK .. '\n' .. lang_main.ErrorData) 
        return {}, 'Is not Unity Game' 
    end
    return il2cpp, 'true' 
end

function GetInfoFropApps()
    --local data = CheckIsGame('com.ChillyRoom.DungeonShooter') -- local data = gg.getRangesList('global-metadata.dat') 
    local data = gg.getRangesList('global-metadata.dat') 
    local il2cpp, code = CheckIsUnityGame()
    local info = gg.getTargetInfo()
    if info and code == 'true' then return info.x64, data end
    if #il2cpp ~= 0 then
        local check = string.gsub(il2cpp[1].internalName,'%/.-%/lib/','')
        check = switch(check,{
            ['arm64/libil2cpp.so'] = true,
            ['arm/libil2cpp.so'] = false
        })
        if check ~= nil then return data, check, il2cpp end
    end
    return nil, nil, nil
end

function GetAppData()
    local info = gg.getTargetInfo()
    if not info then 
        info = gg.alert(lang_main.ErrorData .. "\n" .. lang_main.ManualSK, 'OK', 'COPY LINK')
        if info == 2 then gg.copyText('http://crusher.ucoz.net/index/manual/0-6') end
        return GetInfoFropApps()
    end
    return gg.getRangesList('global-metadata.dat'), info.x64, gg.getRangesList('libil2cpp.so')
end

data, platform, libil = GetAppData()

foril2cpp = {
    ['num'] = function(id) return platform and foril2cpp[id .. 'x64'] or foril2cpp[id .. 'x32'] end,
    ['1x64'] = 0x10,
    ['1x32'] = 0x8,
    ['2x64'] = '!/lib/arm64-v8a/libil2cpp.so',
    ['2x32'] = '!/lib/armeabi-v7a/libil2cpp.so',
    ['3x64'] = 0x8,
    ['3x32'] = 0x4,
    ['4x64'] = 0x18,
    ['4x32'] = 0xC,
    ['5x64'] = 0xC,
    ['5x32'] = 0x8,
    ['type'] = function() return platform and gg.TYPE_QWORD or gg.TYPE_DWORD end,
    ['value'] = function(ret)
        if not platform then return ret & 0xFFFFFFFF end
        return ret
    end
}
if #libil == 0 then
    local splitconf = gg.getRangesList('split_config.')
    gg.setRanges(gg.REGION_CODE_APP)
    for k,v in ipairs(splitconf) do
        if (v.state == 'Xa') then
            gg.searchNumber(':il2cpp',gg.TYPE_BYTE,false,gg.SIGN_EQUAL,v.start,v['end'])
            if (gg.getResultsCount() > 0) then
                libil[#libil + 1] = v
            end
        end
    end
end

function setupValues(gf,gm,typeset)
    gg.setValues({{address = gf,flags = typeset and typeset or gg.TYPE_DWORD,value = gm:gsub('.', function (c) return string.format('%02X', string.byte(c)) end)..'r'}})
end

function il2cppname(namefucntion)
    fandress = {}
    namefucntion = "00 " .. namefucntion:gsub('.', function (c) return string.format('%02X', string.byte(c)) .. " " end) .. "00"
    gg.clearResults()
    gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS | gg.REGION_C_BSS | gg.REGION_C_DATA | gg.REGION_OTHER)
    gg.searchNumber('h ' .. namefucntion,gg.TYPE_WORD,false,gg.SIGN_EQUAL,data[1].start,data[1]['end'])
    if gg.getResultsCount() == 0 then return {},'the function was not found' end
    gg.searchNumber('h ' .. string.sub(namefucntion,4,5)) 
    local r = gg.getResults(10000)
    gg.clearResults()
    for j = 1,#r do
        local adres = {r[j]}
        if gg.BUILD < 16126 then 
            gg.searchNumber(string.format("%8.8X", adres[1].address) .. 'h',foril2cpp.type())
        else 
            gg.loadResults(adres)
            gg.searchPointer(0)
        end
        adres = gg.getResults(1000)
        if gg.getResultsCount() == 0 and fandress[1] == nil and j == #r then return {},'the function pointer was not found' end
        gg.clearResults()
        for h = 1,#adres do
            adress = {adres[h]}
            adress[1].address = adress[1].address - foril2cpp.num(1)
            adress = gg.getValues(adress)
            finaladdres = foril2cpp.value(adress[1].value)
            if (finaladdres > libil[1].start and finaladdres < libil[#libil]['end']) then 
                fandress[#fandress + 1] = {
                    addressmethod = finaladdres,
                    address = adress[1].address
                }
            end
        end
    end
    return fandress,'true'
end

function addresspath(StartAddress, ...)
    args = {...}
    for i = 1,#args do
        StartAddress = i ~= 1 and StartAddress + 0x4 or StartAddress
        setupValues(StartAddress,args[i])
    end
end

function CreatAlf()
    local tablechar = gg.bytes("АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯабвгдеёжзийклмнопрстуфхцчшщъыьэюяABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz_/0123456789-'",'UTF-16LE')
    local tablegg = {}

    for k,v in ipairs(tablechar) do
        if k%2 > 0 then
            tablegg[#tablegg + 1] = v == 1 and string.format('0%x',v) or string.format('%x',v)
        else
            tablegg[#tablegg] = string.format('%x',v) .. tablegg[#tablegg]
        end
    end

    local tablechar = {}

    for token in string.gmatch('АБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯабвгдеёжзийклмнопрстуфхцчшщъыьэюя', "..") do
        tablechar[#tablechar + 1] = token
    end

    for token in string.gmatch("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz_/0123456789-'", ".") do
        tablechar[#tablechar + 1] = token
    end

    gs.alfUTF16 = {}

    for k,v in pairs(tablegg) do
        gs.alfUTF16[tonumber(v,16)] = tablechar[k]
    end
end

function ReadString(link)
    if not alfUTF16 then CreatAlf() end 
    num = gg.getValues({{address = link + (platform and 0x10 or 0x8),flags = gg.TYPE_DWORD}})[1].value
    local result = ""
    if num > 0 and num < 200 then
        for i = 1, num + 1 do
            local key = gg.getValues({{address = link + (platform and 0x10 or 0x8) + (i * 0x2),flags = gg.TYPE_WORD}})[1].value
            result = result .. (key == 32 and " " or (alfUTF16[key] or ""))
        end
    end
    return result
end

function GetRegionValue(address) 
    return gg.getValuesRange({address})[1]
end

function StringToTable(s)
    if not alfUTF16 then CreatAlf() end 
    rTable = {}
    for str in string.gmatch(s,".") do
        for k,v in pairs(alfUTF16) do
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

local function fixvalue32(value)
    return platform and value or value & 0xFFFFFFFF
end

function IsClass(address)
    return (fixvalue32(address) > fixvalue32(data[1].start) and fixvalue32(address) < fixvalue32(data[1]['end']))
end

Unity = {
    DefaultOffset1 = platform and 0x10 or 0x8,
    DefaultOffset2 = platform and 0x8 or 0x4,
    DefaultOffset3 = platform and 0xB8 or 0x5C,
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
        local r, FilterInstances = gg.getResults(gg.getResultsCount()), {}
        for k,v in ipairs(gg.getValuesRange(r)) do
            FilterInstances[#FilterInstances + 1] = v == 'A' and {address = r[k].value, flags = r[k].flags} or nil
        end
        gg.clearResults()
        gg.loadResults(FilterInstances)
        FilterInstances = gg.getResults(gg.getResultsCount())
        gg.clearResults()
        return FilterInstances
    end,
    GetInstance = function(self)
        local Instances, ClassName = {}, GetNameTableInGlobalSpace(self)
        gg.clearResults()
        gg.setRanges(0)
        gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_HEAP | gg.REGION_ANONYMOUS | gg.REGION_C_BSS | gg.REGION_C_DATA | gg.REGION_OTHER | gg.REGION_C_ALLOC)
        gg.searchNumber("Q 00 '" .. ClassName .. "' 00",gg.TYPE_BYTE,false,gg.SIGN_EQUAL,data[1].start,data[1]['end'])
        gg.searchNumber("Q '" .. ClassName .. "' ")
        gg.searchPointer(0)
        local result = gg.getResults(gg.getResultsCount())
        gg.clearResults()
        for key,value in ipairs(result) do
            if IsClass(gg.getValues({{address = value.address + self.DefaultOffset2,flags = value.flags}})[1].value) then
                gg.loadResults({value})
                gg.searchPointer(self.DefaultOffset1)
                local r = gg.getResults(gg.getResultsCount())
                for k,v in ipairs(gg.getValuesRange(r)) do
                    Instances[#Instances + 1] = v == 'A' and r[k] or nil
                end
                Instances = self.FilterObject(Instances)
                -- print(ClassName .. ' -> ' .. #Instances)
                gg.toast(lang_main[ClassName] or "")
            end
        end
        gg.clearResults()
        return Instances
    end,
    GetLocalInstance = function(self) 
        local Instances, ClassName = {}, GetNameTableInGlobalSpace(self)
        gg.clearResults()
        gg.setRanges(0)
        gg.setRanges(gg.REGION_C_HEAP | gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS | gg.REGION_C_BSS | gg.REGION_C_DATA | gg.REGION_OTHER)
        gg.searchNumber("Q 00 '" .. ClassName .. "' 00",gg.TYPE_BYTE,false,gg.SIGN_EQUAL,data[1].start,data[1]['end'])
        gg.searchNumber("Q '" .. ClassName .. "' ")
        gg.searchPointer(0)
        local result = gg.getResults(gg.getResultsCount())
        gg.clearResults()
        for key,value in ipairs(result) do
            if IsClass(gg.getValues({{address = value.address + self.DefaultOffset2,flags = value.flags}})[1].value) then
                local tmp = gg.getValues({{address = value.address - self.DefaultOffset1 + self.DefaultOffset3,flags = value.flags}})
                table.move(gg.getValues({{address = tmp[1].value,flags = tmp[1].flags}}),1,1,#Instances + 1,Instances)
                gg.toast(lang_main[ClassName] or "")
            end
        end
        gg.clearResults()
        return Instances
    end,
    GetIl2cppFunc = function(...)
        local args = {...}
        if args[1] == nil or args[1] == "" or args[1] == " " then return {},"you didn't enter the function" end 
        local retaddress = {}
        for keyname,namefucntion in ipairs(args) do
            local finaladdres,errorcode = il2cppname(namefucntion)
            if #finaladdres == 0 then return finaladdres,errorcode end
            for k,v in ipairs(finaladdres) do
                local adrescheck = gg.getValues({{address = v.address + foril2cpp.num(4),flags = foril2cpp.type()}})
                local aclass = adrescheck[1].value
                adrescheck = gg.getValues({{address = adrescheck[1].value + foril2cpp.num(1),flags = foril2cpp.type()}})
                   adrescheck = gg.getValues({{address = adrescheck[1].value,flags = gg.TYPE_BYTE}})
                local printclass = ""
                while adrescheck[1].value ~= 0 do
                    if adrescheck[1].value then printclass = printclass .. string.char(adrescheck[1].value & 0xff) end
                    adrescheck = gg.getValues({{address = adrescheck[1].address + 0x1,flags = gg.TYPE_BYTE}})
                end 
                retaddress[#retaddress + 1] = {
                    NameFucntion = namefucntion,
                    Offset = string.format("%8.8X",v.addressmethod - Unity.GetStartLibAddress(v.addressmethod)),
                    AddressInMemory = string.format("%8.8X",v.addressmethod),
                    AddressOffset = v.address,
                    Class = printclass,
                    ClassAddress = string.format('%X', aclass)
                   }
            end
        end
        return retaddress,'true'
    end,
    From = function (self, a)
        return setmetatable({address = a, mClass = self}, {
            __index = function(self, key)
                local check = switch((self.address and self.mClass) and (self.mClass[key] and 1 or -1) or 0 , {[0] = 'Не все поля заполнены', [-1] = 'В таблице нет поля ' .. key})
                return check and error(check) or ((type(self.mClass[key]) == 'function') 
                    and (function(self, ...) return self.mClass[key](self.mClass, self.address, ...) end)
                    or self.mClass[key])
            end
        })
    end
}

function Unity:SetPrice(price)
    for k,v in ipairs(self:GetInstance()) do
        gg.setValues({{address = v.address + self.GetPrice(),flags = gg.TYPE_DWORD,value = price}})
    end
end

function Unity:Unlock()
    local offset, type = self.GetUnlock()
    for k,v in ipairs(self:GetInstance()) do
        gg.setValues({{address = v.address + offset,flags = type, value = 1}})
    end
end

function SetUnityClass(t)
    return setmetatable(t,{__index = Unity})
end

function SetSubClass(SubClass, MainClass) 
    return setmetatable(SubClass, {__index = MainClass})
end

EnumClass = {
    From = function (self, a)
        return setmetatable({address = a, mClass = self}, {
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

List['string'] = SetSubClass({    
    subType = 'char',
    mainType = 'link',
    EditList = function(self, list, newTable, saveOld)
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
            pageMemory = pageMemory == 0 and gg.allocatePage(gg.PROT_READ | gg.PROT_WRITE, list) or pageMemory
            MainTable = saveOld and EditTableLink(MainTable) or {}
            for i = 1, #newTable do
                local addTable = StringToTable(newTable[i])
                MainTable[#MainTable + 1] = pageMemory
                pageMemory = pageMemory + Massiv:CreateMassiv(pageMemory, SubHead, self.subType, addTable)
            end
            self:SetNumItem(list,#MainTable)
            self:SetLink(list,pageMemory)
            pageMemory = pageMemory + Massiv:CreateMassiv(pageMemory,MainHead,self.mainType,MainTable)
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
            pageMemory = pageMemory == 0 and gg.allocatePage(gg.PROT_READ | gg.PROT_WRITE, list) or pageMemory
            str = StringToTable(str)
            Massiv:SetElement(link, pageMemory, self.mainType, index)
            pageMemory = pageMemory + Massiv:CreateMassiv(pageMemory, SubHead, self.subType, str)
        end
    end,
    Filter = function(t)
        for k,v in pairs(t) do
            t[k] = v.value == 0 and lang_main.Emtry or ReadString(v.value)
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
    local SetMass = {
        {
            address = address,
            value = head,
            flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD,
        },
        {
            address = address + self[T].firstStep,
            flags = gg.TYPE_DWORD,
            value = SizeMassiv
        }
    }
    for i = 1, SizeMassiv do
        SetMass[#SetMass + 1] = {
            address = address + self[T].firstStep + self[T].skip + (self[T].step * i),
            flags = self[T].size,
            value = Mtable[i]
        }
    end
    gg.setValues(SetMass)
    return self[T].firstStep + (self[T].step * (SizeMassiv % 2 > 0 and SizeMassiv + 1 or SizeMassiv)) + 0x8
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
            firstStep = platform and 0x18 or 0xC,
            step = platform and 0x18 or 0x10
        },
        struct = {
            missKey = platform and 0x10 or 0xC,
            firstStep = platform and 0x18 or 0xC,
            step = platform and 0x18 or 0x10
        }
    }
})

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

function Dictionary:GetNumItem(dictionary)
    return gg.getValues({{address = dictionary + self.num,flags = gg.TYPE_DWORD}})[1].value
end

function Dictionary:GetLink(dictionary)
    return gg.getValues({{address = dictionary + self.link,flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD}})[1].value
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

SkillInfo = SetUnityClass({
    price = platform and 0x54 or 0x38,
    GetPrice = function()
        return SkillInfo.price
    end
})

RGCharacterInfo = SetUnityClass({
    unlock_gem = platform and 0x20 or 0x14,
    GetPrice = function()
        return RGCharacterInfo.unlock_gem
    end,
    unlock = platform and 0x18 or 0xC,
    GetUnlock = function()
        return RGCharacterInfo.unlock , gg.TYPE_BYTE
    end,
    skin_list = platform and 0x28 or 0x1C,
    SetSkinPrice = function(self,num)
        for k,v in ipairs(self:GetInstance()) do
            for item,table in ipairs(Massiv:From(gg.getValues({{address = v.address + self.skin_list,flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD}})[1].value):GetAllElement('int')) do
                gg.setValues({{
                    address = table.address, 
                    flags = table.flags,
                    value = (item ~= 1 and table.value ~= 1) and num or table.value
                }})
            end
        end
    end
})

RGPetInfo = SetUnityClass({
    unlock_gem = platform and 0x14 or 0xC,
    GetPrice = function()
        return RGPetInfo.unlock_gem
    end,
    unlock = platform and 0x10 or 0x8,
    GetUnlock = function()
        return RGPetInfo.unlock , gg.TYPE_BYTE
    end
})

RoomComodityData = SetUnityClass({
    count = platform and 0x18 or 0xc, 
    GetCount = function(self, address)
        return gg.getValues({{address = address + self.count, flags = gg.TYPE_DWORD}})[1].value
    end
})

ItemData = SetUnityClass({
    tokenTickets = platform and 0x58 or 0x30,
    materials = platform and 0x50 or 0x2C,
    seeds = platform and 0x48 or 0x28,
    bossrush_time = platform and 0xa0 or 0x54,
    sellerRefreshTime = platform and 0x18 or 0xc,
    commodities = platform and 0x20 or 0x14,
    weaponAdd = {
        'weapon_276',
        'weapon_276',
        'weapon_276',
        'weapon_276'
    },
    itemUnlock = platform and 0x28 or 0x18,
    forgeWeapons = platform and 0x30 or 0x1C,
    SetTokens = function(self,value)
        for k,v in ipairs(self:GetInstance()) do
            Dictionary:SetAllItemStringInt(gg.getValues({{address = v.address + self.tokenTickets,flags = v.flags}})[1].value,value)
        end
    end,
    SetMaterials = function(self,value)
        for k,v in ipairs(self:GetInstance()) do
            Dictionary:SetAllItemStringInt(gg.getValues({{address = v.address + self.materials,flags = v.flags}})[1].value,value)
        end
    end,
    SetSeeds = function(self,value)
        for k,v in ipairs(self:GetInstance()) do
            Dictionary:SetAllItemStringInt(gg.getValues({{address = v.address + self.seeds,flags = v.flags}})[1].value,value)
        end
    end,
    SetPlant = function(self)
        for k,v in ipairs(self:GetLocalInstance()) do
            List['string']:EditList(gg.getValues({{address = v.value + self.itemUnlock, flags = v.flags}})[1].value, {
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
            local linkList = gg.getValues({{address = v.value + self.forgeWeapons, flags = v.flags}})[1].value
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
            List['string']:EditList(gg.getValues({{address = v.value + self.itemUnlock, flags = v.flags}})[1].value, {'Motorcycle'}, true)
        end
    end,
    EditTimesBossRush = function(self)
        for k,v in ipairs(self:GetLocalInstance()) do
            gg.setValues({{address = v.value + self.bossrush_time, flags = gg.TYPE_DWORD, value = 0}})
        end
    end,
    ResetSeller = function(self)
        for k,v in ipairs(self:GetLocalInstance()) do
            gg.setValues({{address = v.value + self.sellerRefreshTime, flags = gg.TYPE_DWORD, value = 0}})
            local items = {}
            for n,cl in ipairs(Massiv:From(List:GetLink(gg.getValues({{address = v.value + self.commodities, flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD}})[1].value)):GetAllElement('link')) do
                local item = RoomComodityData:From(cl.value)
                if (item:GetCount() == 0) then 
                    items[#items + 1] = {
                        address = item.address + item.mClass.count,
                        value = 1,
                        flags = gg.TYPE_DWORD
                    }
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
    material_list = platform and 0x18 or 0x10,
    HackSkinMaterial = function(self) 
        for k,v in ipairs(self:GetInstance()) do
            local list = List:From(gg.getValues({{address = v.address + self.material_list, flags = v.flags}})[1].value)
            if (list:GetNumItem() > 0) then list:SetNumItem(0) end
        end
    end
})

ItemBluePrint = SetUnityClass({
    noBlueprint = platform and 0xF0 or 0x88,
    researchMaterial = platform and 0xE8 or 0x84,
    HackBluePrint = function(self)
        for k,v in ipairs(self:GetInstance()) do
            local dec = Dictionary:From(gg.getValues({{address = v.address + self.researchMaterial,flags = v.flags}})[1].value)
            if (GetRegionValue(dec.address) == "A") then 
                if (gg.getValues({{address = v.address + self.noBlueprint,flags = gg.TYPE_BYTE}})[1].value == 0) then gg.setValues({{address = v.address + self.noBlueprint,flags = gg.TYPE_BYTE, value = 1}}) end
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
    RemoveMaterials = function(self)
        for k,v in ipairs(self:GetLocalInstance()) do
            local dec = Dictionary:From(v.value)
            for key,value,length in lpairs(dec:GetAllItemStringToStruct(self.SizeStruct,self.Materials,platform and gg.TYPE_QWORD or gg.TYPE_DWORD)) do
                Dictionary:SetNumItem(value.value,0)
                gg.toast(key .. '/' .. length)
            end
            local Prices = dec:GetAllItemStringToStruct(self.SizeStruct,self.Price,gg.TYPE_DWORD)
            for _,value in ipairs(Prices) do value.value = 2 end
            gg.setValues(Prices)
        end
    end
})

StatisticData = SetUnityClass({
    object2ObtainTime = platform and 0x20 or 0x10,
    SetTimesWeapon = function(self,value)
        for k,v in ipairs(self:GetInstance()) do
            Dictionary:SetAllItemStringInt(gg.getValues({{address = v.address + self.object2ObtainTime,flags = v.flags}})[1].value,value)
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
                local tmpString = ReadString(CheckTerm)
                if string.find(tmpString,'weapon/') then
                    local tmp = gg.getValues({{address = v.address + self.Languages,flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD}})[1].value
                    tmp = gg.getValues({{address = tmp + self.English,flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD}})[1].value
                    WeaponTable[string.gsub(tmpString,'%weapon/.-','')] = ReadString(tmp)
                end
            end
            gg.toast(k .. '/' .. length)
        end
        return WeaponTable
    end
})

WeaponInfoRow = SetUnityClass({
    forgeable = platform and 0x39 or 0x21,
    IsRun = false,
    SetForgeAble = function (self)
        for k,v in ipairs(self:GetInstance()) do
            v = {
                address = v.address + self.forgeable,
                flags = gg.TYPE_BYTE
            }
            if gg.getValues({v})[1].value == 0 then
                v.value = 1
                gg.setValues({v})
            end
        end
        self.IsRun = true
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
        if not WeaponInfoRow.IsRun then WeaponInfoRow:SetForgeAble() end 
    end
})

RGGameProcess = SetUnityClass({
    coin_value = platform and 0x1C or 0x10,
    this_index = platform and 0x18 or 0xC,
    AddCoin = function(self,num)
        for k,v in ipairs(self:GetInstance()) do
            local coin_value = gg.getValues({{address = v.address + self.coin_value,flags = gg.TYPE_DWORD}})[1].value
            local this_index = gg.getValues({{address = v.address + self.this_index,flags = gg.TYPE_DWORD}})[1].value
            if coin_value >= 0 and coin_value < 1000000000 and this_index >= 0 and this_index < 1000000000 then
                gg.setValues({{address = v.address + self.coin_value,flags = gg.TYPE_DWORD, value = coin_value + num}})
            end
        end
    end
})

RGItem = {
    item_value = platform and 0x70 or 0x38
}

ItemSellPlaceGem = SetUnityClass({
    saveItems = {},
    unlockByTv = platform and 0xc8 or 0x70,
    the_item = platform and 0xd8 or 0x78,
    SetPrice = function(self,num)
        for k,v in ipairs(self:GetInstance()) do
            local unlockByTv = gg.getValues({{address = v.address + self.unlockByTv,flags = gg.TYPE_BYTE}})[1].value
            switch(unlockByTv, {
                [0] = function() 
                    local the_item = gg.getValues({{address = v.address + self.the_item,flags = v.flags}})[1].value
                    if (GetRegionValue(the_item) == "A") then
                        gg.setValues({{address = self.saveItems[v.address] and the_item + RGWeapon.item_value or the_item + RGItem.item_value, flags = gg.TYPE_DWORD,value = num}})
                    end
                end,
                [1] = function()
                    local the_item = gg.getValues({{address = v.address + self.the_item,flags = v.flags}})[1].value
                    self.saveItems[v.address] = true
                    gg.setValues({
                        {
                            address = v.address + self.unlockByTv,
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
    state = platform and 0x18 or 0xC,
    GrowAllSeeds = function(self)
        local EditPlot = {}
        for k,v in ipairs(self:GetInstance()) do
            local state = gg.getValues({{address = v.address + self.state, flags = gg.TYPE_DWORD}})[1].value
            EditPlot[#EditPlot + 1] = (state >= 0 and state < 4) and {address = v.address + self.state,flags = gg.TYPE_DWORD,value = 4} or nil 
        end
        gg.setValues(EditPlot)
    end
})

VacantWallListener = SetUnityClass({
    IsRun = false,
    RemoveVacWall = function (self)
        for k,v in ipairs(self.GetIl2cppFunc('OnTriggerEnter2D')) do
            if v.Class == GetNameTableInGlobalSpace(self) then
                addresspath(tonumber(v.AddressInMemory,16),platform and "\xc0\x03\x5f\xd6" or "\x1e\xff\x2f\xe1")
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

RoleAttributeProxy = {
    Client = platform and 0x10 or 0x8,
    GetClient = function(self)
        return gg.getValues({{address = RGController:GetRoleAttribute() + self.Client,flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD}})[1].value
    end
}

RGController = { --!!!
    roleAttributeProxy = platform and 0xE0 or 0x84,
    rigibody = platform and 0x28 or 0x18,
    GetRoleAttribute = function (self)
        local instance = RGGameSceneManager:GetController()
        return gg.getValues({{address = instance + self.roleAttributeProxy,flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD}})[1].value
    end,
    GetRigidbody2D = function (self)
        local instance = RGGameSceneManager:GetController()
        local RB = gg.getValues({{address = instance + self.rigibody,flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD}})[1].value
        return gg.getValues({{address = RB ,flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD}})
    end
}

RGGameSceneManager = SetUnityClass({
    controller = platform and 0x28 or 0x14,
    GetController = function (self)
        for k,v in ipairs(self:GetLocalInstance()) do
            return gg.getValues({{address = v.value + self.controller,flags = v.flags}})[1].value
        end
    end
})

IntNumberStats = {
    OriginValue = platform and 0x10 or 0x8
}

RoleAttributePlayer = SetUnityClass({--!!!
    _max_armor = platform and 0x58 or 0x3C,
    armor = platform and 0x5C or 0x40,
    max_energy = platform and 0x60 or 0x48,
    _energy = platform and 0x64 or 0x4C,
    max_hp = platform and 0x24 or 0x18,
    hp = platform and 0x28 or 0x1C,
    --MaxArmor = platform and 0x58 or 0x44,
    AddState = function(self,max_hp,_max_armor,max_energy,delta_hp,delta_armor,delta_energy)
        for k,v in ipairs(self:GetInstance()) do
            local CheckHp,CheckArmor,CheckEnergy = table.unpack(gg.getValues({
                {
                    address = v.address + self.max_hp,
                    flags = gg.TYPE_DWORD
                },
                {
                    address = v.address + self._max_armor,
                    flags = gg.TYPE_DWORD
                },
                {
                    address = v.address + self.max_energy,
                    flags = gg.TYPE_DWORD
                },
            }))
            if CheckHp.value == max_hp and CheckArmor.value == _max_armor and CheckEnergy.value == max_energy then
                local MaxArmor = gg.getValues({{address = v.address + self.MaxArmor,flags = v.flags}})[1].value
                local OriginValue = gg.getValues({{address = MaxArmor + IntNumberStats.OriginValue,flags = gg.TYPE_DWORD}})[1].value
                gg.setValues({
                    {
                        address = v.address + self.max_hp,
                        flags = gg.TYPE_DWORD,
                        value = max_hp + delta_hp
                    },
                    {
                        address = v.address + self.hp,
                        flags = gg.TYPE_DWORD,
                        value = max_hp + delta_hp
                    },
                    {
                        address = v.address + self._max_armor,
                        flags = gg.TYPE_DWORD,
                        value = _max_armor + delta_armor
                    },
                    {
                        address = MaxArmor + IntNumberStats.OriginValue,
                        flags = gg.TYPE_DWORD,
                        value = OriginValue + delta_armor
                    },
                    {
                        address = v.address + self.armor,
                        flags = gg.TYPE_DWORD,
                        value = _max_armor + delta_armor
                    },
                    {
                        address = v.address + self.max_energy,
                        flags = gg.TYPE_DWORD,
                        value = max_energy + delta_energy
                    },
                    {
                        address = v.address + self._energy,
                        flags = gg.TYPE_DWORD,
                        value = max_energy + delta_energy
                    }
                })
            end
        end
    end,
    AddStates = function (self,delta_hp,delta_armor,delta_energy)
        local instance = RoleAttributeProxy:GetClient()
        --local MaxArmor = gg.getValues({{address = instance + self.MaxArmor,flags = platform and gg.TYPE_QWORD or gg.TYPE_DWORD}})[1].value
        --local OriginValue = gg.getValues({{address = MaxArmor + IntNumberStats.OriginValue,flags = gg.TYPE_DWORD}})[1].value
        local MaxHp,MaxDef,MaxEnergy = table.unpack(gg.getValues({
            {
                address = instance + self.max_hp,
                flags = gg.TYPE_DWORD
            },
            {
                address = instance + self._max_armor,
                flags = gg.TYPE_DWORD
            },
            {
                address = instance + self.max_energy,
                flags = gg.TYPE_DWORD
            },
        }))
        gg.setValues({
            {
                address = instance + self.max_hp,
                flags = gg.TYPE_DWORD,
                value = MaxHp.value + delta_hp
            },
            {
                address = instance + self.hp,
                flags = gg.TYPE_DWORD,
                value = MaxHp.value + delta_hp
            },
            {
                address = instance + self._max_armor,
                flags = gg.TYPE_DWORD,
                value = MaxDef.value + delta_armor
            },
            --[[{
                address = MaxArmor + IntNumberStats.OriginValue,
                flags = gg.TYPE_DWORD,
                value = OriginValue + delta_armor
            },]]
            {
                address = instance + self.armor,
                flags = gg.TYPE_DWORD,
                value = MaxDef.value + delta_armor
            },
            {
                address = instance + self.max_energy,
                flags = gg.TYPE_DWORD,
                value = MaxEnergy.value + delta_energy
            },
            {
                address = instance + self._energy,
                flags = gg.TYPE_DWORD,
                value = MaxEnergy.value + delta_energy
            }
        })
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
    pet_list = platform and 0x20 or 0x10,
    char_list = platform and 0x18 or 0xC,
    SetPricePet = function (self, price)
        for k,v in ipairs(self:GetInstance()) do
            for key,value in ipairs(Massiv:GetAllElement(gg.getValues({{address = v.address + self.pet_list, flags = v.flags}})[1].value,"link")) do
                gg.setValues({{address = value.value + RGPetInfo.unlock_gem, flags = gg.TYPE_DWORD, value = price}})
            end
        end
    end,
    SetPriceChar = function(self, price)
        for k,v in ipairs(self:GetInstance()) do
            for key,value in ipairs(Massiv:GetAllElement(gg.getValues({{address = v.address + self.char_list, flags = v.flags}})[1].value,"link")) do
                gg.setValues({{address = value.value + RGCharacterInfo.unlock_gem, flags = gg.TYPE_DWORD, value = price}})
            end
        end
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
        -- ItemBluePrint:HackBluePrint()
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
            -- ItemData:SetSeeds(num[1])
        end
    end,
    ['SET MATERIALS COUNT'] = function ()
        local num = gg.prompt({'ВВЕДИТЕ НУЖНОЕ КОЛИЧЕСТВО\nENTER THE REQUIRED AMOUNT'},{[1] = 5},{'number'})
        if CheckTableIsNil(num) then 
            gg.alert("ВЫ НЕ ВВЕЛИ КОЛИЧЕСТВО\nYOU DIDN'T ENTER THE QUANTITY") 
        else
            Protect:Call(ItemData.SetMaterials, ItemData, num[1])
            -- ItemData:SetMaterials(num[1])
        end
    end,
    ['SET TOKENS COUNT'] = function ()
        local num = gg.prompt({'ВВЕДИТЕ НУЖНОЕ КОЛИЧЕСТВО\nENTER THE REQUIRED AMOUNT'},{[1] = 5},{'number'})
        if CheckTableIsNil(num) then 
            gg.alert("ВЫ НЕ ВВЕЛИ КОЛИЧЕСТВО\nYOU DIDN'T ENTER THE QUANTITY") 
        else
            Protect:Call(ItemData.SetTokens, ItemData, num[1])
            -- ItemData:SetTokens(num[1])
        end
    end,
    ['SET PET PRICE'] = function ()
        local num = gg.prompt({'ВВЕДИТЕ НУЖНУЮ ЦЕНУ\nENTER THE DESIRED PRICE'},{[1] = 5},{'number'})
        if CheckTableIsNil(num) then 
            gg.alert("ВЫ НЕ ВВЕЛИ ЦЕНУ\nYOU DIDN'T ENTER THE PRICE") 
        else
            Protect:Call(RGSaveManager.SetPricePet, RGSaveManager, num[1])
            --RGPetInfo:SetPrice(num[1])
            -- RGSaveManager:SetPricePet(num[1])
        end
    end,
    ['SET HERO PRICE'] = function ()
        local num = gg.prompt({'ВВЕДИТЕ НУЖНУЮ ЦЕНУ\nENTER THE DESIRED PRICE'},{[1] = 5},{'number'})
        if CheckTableIsNil(num) then 
            gg.alert("ВЫ НЕ ВВЕЛИ ЦЕНУ\nYOU DIDN'T ENTER THE PRICE") 
        else
            Protect:Call(RGSaveManager.SetPriceChar, RGSaveManager, num[1])
            --RGCharacterInfo:SetPrice(num[1])
            -- RGSaveManager:SetPriceChar(num[1])
        end
    end,
    ['SET SKILL PRICE'] = function ()
        local num = gg.prompt({'ВВЕДИТЕ НУЖНУЮ ЦЕНУ\nENTER THE DESIRED PRICE'},{[1] = 5},{'number'})
        if CheckTableIsNil(num) then 
            gg.alert("ВЫ НЕ ВВЕЛИ ЦЕНУ\nYOU DIDN'T ENTER THE PRICE") 
        else
            Protect:Call(SkillInfo.SetPrice, SkillInfo, num[1])
            -- SkillInfo:SetPrice(num[1])
        end
    end,
    ["SET THE NUMBER OF WEAPONS RECEIVED"] = function ()
        local num = gg.prompt({'ВВЕДИТЕ НУЖНОЕ КОЛИЧЕСТВО\nENTER THE REQUIRED AMOUNT'},{[1] = 5},{'number'})
        if CheckTableIsNil(num) then 
            gg.alert("ВЫ НЕ ВВЕЛИ КОЛИЧЕСТВО\nYOU DIDN'T ENTER THE QUANTITY") 
        else
            Protect:Call(StatisticData.SetTimesWeapon, StatisticData, num[1])
            -- StatisticData:SetTimesWeapon(num[1])
        end
    end,
    ['UNLOCK ALL WEAPON IN THE BLACKSMITH TABLE'] = function()
        Protect:Call(UIForge.UnlockAllWeapon, UIForge)
        -- UIForge:UnlockAllWeapon()
        gg.alert("ЕСЛИ ВЗЛОМ НЕ СРАБОТАЛ,ТО ПРОСТО ПОВТОРИТЕ ЕГО ЕЩЁ РАЗ\nIF THE HACK DIDN'T WORK,JUST TRY IT AGAIN")
    end,
    ['ADD COINS'] = function()
        local num = gg.prompt({'ВВЕДИТЕ НУЖНОЕ КОЛИЧЕСТВО\nENTER THE REQUIRED AMOUNT'},{[1] = 5},{'number'})
        if CheckTableIsNil(num) then 
            gg.alert("ВЫ НЕ ВВЕЛИ КОЛИЧЕСТВО\nYOU DIDN'T ENTER THE QUANTITY") 
        else
            Protect:Call(RGGameProcess.AddCoin, RGGameProcess, num[1])
            -- RGGameProcess:AddCoin(num[1])
        end
    end,
    ['SET THE PRICE OF ITEMS FROM THE MERCHANT'] = function()
        local num = gg.prompt({'ВВЕДИТЕ НУЖНУЮ ЦЕНУ\nENTER THE DESIRED PRICE'},{[1] = 5},{'number'})
        if CheckTableIsNil(num) then 
            gg.alert("ВЫ НЕ ВВЕЛИ ЦЕНУ\nYOU DIDN'T ENTER THE PRICE") 
        else
            Protect:Call(ItemSellPlaceGem.SetPrice, ItemSellPlaceGem, num[1])
            -- ItemSellPlaceGem:SetPrice(num[1])
        end
    end,
    ['SET SKIN PRICE'] = function()
        local num = gg.prompt({'ВВЕДИТЕ НУЖНУЮ ЦЕНУ\nENTER THE DESIRED PRICE'},{[1] = 5},{'number'})
        if CheckTableIsNil(num) then 
            gg.alert("ВЫ НЕ ВВЕЛИ ЦЕНУ\nYOU DIDN'T ENTER THE PRICE") 
        else
            Protect:Call(RGCharacterInfo.SetSkinPrice, RGCharacterInfo, num[1])
            -- RGCharacterInfo:SetSkinPrice(num[1])
        end
    end,
    ['GROW ALL THE SEEDS'] = function()
        Protect:Call(PlantInfo.GrowAllSeeds, PlantInfo)
        -- PlantInfo:GrowAllSeeds()
        gg.alert("ЕСЛИ ВЗЛОМ НЕ СРАБОТАЛ,ТО ПРОСТО ПОВТОРИТЕ ЕГО ЕЩЁ РАЗ\nIF THE HACK DIDN'T WORK,JUST TRY IT AGAIN")
    end,
    MaxHp = 0,
    MaxArmor = 0,
    MaxEnergy = 0,
    DeltaHp = 0,
    DeltaEnergy = 0,
    DeltaArmor = 0,
    ['ADDSTATEVER1'] = function()
        local state = gg.prompt({
            'ВВЕДИТЕ МАКСИМАЛЬНОЕ КОЛИЧЕСТВО ЗДОРОВЬЯ\nENTER THE MAXIMUM AMOUNT OF HEALTH',
            'ВВЕДИТЕ МАКСИМАЛЬНОЕ КОЛИЧЕСТВО БРОНИ\nENTER THE MAXIMUM AMOUNT OF ARMOR',
            'ВВЕДИТЕ МАКСИМАЛЬНОЕ КОЛИЧЕСТВО ЭНЕРГИИ\nENTER THE MAXIMUM AMOUNT OF ENERGY',
            'ВВЕДИТЕ СКОЛЬКО ДОБАВИТЬ ЗДОРОВЬЯ\nENTER HOW MUCH HEALTH TO ADD',
            'ВВЕДИТЕ СКОЛЬКО ДОБАВИТЬ БРОНИ\nENTER HOW MUCH ARMOR TO ADD',
            'ВВЕДИТЕ СКОЛЬКО ДОБАВИТЬ ЭНЕРГИИ\nENTER HOW MUCH ENERGY TO ADD',
        },
        {
            functions.MaxHp,functions.MaxArmor,functions.MaxEnergy,functions.DeltaHp,functions.DeltaArmor,functions.DeltaEnergy
        },
        {'number','number','number','number','number','number'}
        )
        if CheckTableIsNil(state) then
            gg.alert("ВЫ НЕ ВВЕЛИ ВСЕ ДАННЫЕ\nYOU DIDN'T ENTER ALL THE DATA")
        else
            functions.MaxHp,functions.MaxArmor,functions.MaxEnergy,functions.DeltaHp,functions.DeltaArmor,functions.DeltaEnergy = state[1],state[2],state[3],state[4],state[5],state[6]
            RoleAttributePlayer:AddState(state[1],state[2],state[3],state[4],state[5],state[6])
        end
    end,
    ['ADD HEALTH, ARMOR, ENERGY'] = function ()
        gg.alert('ВРЕМЕННО НЕ РАБОТАЕТ\nTEMPORARILY NOT WORKING')
        -- local state = gg.prompt({
        --     'ВВЕДИТЕ СКОЛЬКО ДОБАВИТЬ ЗДОРОВЬЯ\nENTER HOW MUCH HEALTH TO ADD',
        --     'ВВЕДИТЕ СКОЛЬКО ДОБАВИТЬ БРОНИ\nENTER HOW MUCH ARMOR TO ADD',
        --     'ВВЕДИТЕ СКОЛЬКО ДОБАВИТЬ ЭНЕРГИИ\nENTER HOW MUCH ENERGY TO ADD',
        -- },
        -- {
        --     functions.DeltaHp,functions.DeltaArmor,functions.DeltaEnergy
        -- },
        -- {'number','number','number'})
        -- if CheckTableIsNil(state) then
        --     gg.alert("ВЫ НЕ ВВЕЛИ ВСЕ ДАННЫЕ\nYOU DIDN'T ENTER ALL THE DATA")
        -- else
        --     functions.DeltaHp,functions.DeltaArmor,functions.DeltaEnergy = state[1],state[2],state[3]
        --     RoleAttributePlayer:AddStates(state[1],state[2],state[3])
        -- end
    end,
    ['HUGE DAMAGE'] = function()
        Protect:Call(RGWeapon.EditFrontWeapon, RGWeapon)
        -- RGWeapon:EditFrontWeapon()
        gg.alert("ЕСЛИ ВЗЛОМ НЕ СРАБОТАЛ,ТО ПРОСТО ПОВТОРИТЕ ЕГО ЕЩЁ РАЗ\nIF THE HACK DIDN'T WORK,JUST TRY IT AGAIN")
    end,
    ['NO WALLS'] = function ()
        Protect:Call(Rigidbody2D.NoClip, Rigidbody2D)
        -- Rigidbody2D:NoClip()
        gg.alert("ЕСЛИ ВЗЛОМ НЕ СРАБОТАЛ,ТО ПРОСТО ПОВТОРИТЕ ЕГО ЕЩЁ РАЗ\nIF THE HACK DIDN'T WORK,JUST TRY IT AGAIN")
    end,
    ["UNLOCK ALL GARDEN PLOTS"] = function()
        Protect:Call(ItemData.SetPlant, ItemData)
        -- ItemData:SetPlant()
        gg.alert("ЕСЛИ ВЗЛОМ НЕ СРАБОТАЛ,ТО ПРОСТО ПОВТОРИТЕ ЕГО ЕЩЁ РАЗ\nIF THE HACK DIDN'T WORK,JUST TRY IT AGAIN")
    end,
    ["CHANGE THE CREATED ITEMS ON THE BLACKSMITH'S TABLE"] = function()
        Protect:Call(ItemData.SetItemForge, ItemData)
        -- ItemData:SetItemForge()
    end,
    ["UNLOCK MOTORCYCLE"] = function()
        Protect:Call(ItemData.AddMotor, ItemData)
        -- ItemData:AddMotor()
        gg.alert("ЕСЛИ ВЗЛОМ НЕ СРАБОТАЛ,ТО ПРОСТО ПОВТОРИТЕ ЕГО ЕЩЁ РАЗ\nIF THE HACK DIDN'T WORK,JUST TRY IT AGAIN")
    end,
    ["REMOVE THE NUMBER OF BOSS RUSH ATTEMPTS"] = function()
        Protect:Call(ItemData.EditTimesBossRush, ItemData)
        -- ItemData:EditTimesBossRush()
        gg.alert("ЕСЛИ ВЗЛОМ НЕ СРАБОТАЛ,ТО ПРОСТО ПОВТОРИТЕ ЕГО ЕЩЁ РАЗ\nIF THE HACK DIDN'T WORK,JUST TRY IT AGAIN")
    end,
    ['RESET SELLER'] = function()
        Protect:Call(ItemData.ResetSeller, ItemData)
        gg.alert("ЕСЛИ ВЗЛОМ НЕ СРАБОТАЛ,ТО ПРОСТО ПОВТОРИТЕ ЕГО ЕЩЁ РАЗ\nIF THE HACK DIDN'T WORK,JUST TRY IT AGAIN")
    end
}

-- ItemBluePrint:EditSelectedBluePrint()

while true do
    if gg.isVisible() or x ~= nil then
        gg.setVisible(false)
        x = gg.choice(lang_main, nil)
        if x ~= nil and functions[lang['en_US'][x]] then functions[lang['en_US'][x]]() end
    end
    gg.sleep(100)
end

--[[

⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄
⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⣀⣀⣀⠄⠄⠄⠄⡀⠄⠄⡀⠠⣤⣄⠄⠄⠄⠄⠄
⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠈⠉⢉⡏⠄⠄⠄⢸⡇⠄⣼⠇⠄⢀⡏⠄⠄⠄⠄⠄
⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⣸⣧⡤⣤⡀⠈⠓⠚⣿⠄⠄⣸⠳⠶⢶⡀⠄⠄
⠄⠄⠄⠄⣀⡀⠄⠄⠄⠄⠄⠄⣿⠁⠄⣸⡇⣀⣠⡴⠟⠄⠄⣿⣀⣀⣼⠇⠄⠄
⠄⣠⣶⣿⣿⣿⣿⠆⠄⠄⠄⠄⠻⠦⠶⠋⠄⠉⠄⠄⠄⠄⠄⠉⠉⠉⠁⠄⠄⠄
⢰⣿⣿⡿⠛⠉⠉⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄
⢸⣿⣿⡇⠄⠄⠄⠄⠄⠄⠄⠄⠄⢀⣀⣠⣤⣀⣀⠄⠄⠄⠄⢀⣀⣀⣀⡀⠄⠄
⠄⢿⣿⣧⠄⠄⠄⠄⠄⠄⢀⣴⣿⣿⣿⣿⣿⣿⣿⣷⣄⠄⣼⣿⣿⣿⣿⣿⣦⠄
⠄⠘⣿⣿⣧⡀⠄⠄⠄⢠⣾⣿⣿⣿⣿⣿⣿⣿⢿⣿⣿⡀⠹⠿⠛⠉⢹⣿⣿⡄
⠄⠄⠈⢿⣿⣿⣄⠄⢠⣿⣿⣿⣇⣍⢹⣿⣯⣰⣼⣿⡿⠁⠄⠄⠄⢀⣾⣿⣿⠃
⠄⠄⠄⠈⢿⣿⣿⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠁⠄⠄⢀⣴⣾⣿⡿⠃⠄
⠄⠄⠄⠄⠈⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣤⣶⣿⣿⣿⠟⠋⠄⠄⠄
⠄⠄⠄⠄⠄⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠉⠄⠄⠄⠄⠄⠄
⠄⠄⠄⠄⠄⠄⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠁⠄⠄⠄⠄⠄⠄⠄⠄
⠄⠄⠄⠄⠄⠄⢸⣿⣿⣿⣿⠋⠉⠉⠉⠘⣿⣿⣿⣿⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄
⠄⠄⠄⠄⠄⠄⢸⣿⣿⣿⡏⠄⠄⠄⠄⠄⢹⣿⣿⣿⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄
⠄⠄⠄⠄⠄⠄⢸⣿⣿⣿⡇⠄⠄⠄⠄⠄⠸⣿⣿⣿⡄⠄⠄⠄⠄⠄⠄⠄⠄⠄
⠄⠄⠄⠄⠄⠄⣿⣿⣿⣿⠄⠄⠄⠄⠄⠄⠄⣿⣿⣿⣷⠄⠄⠄⠄⠄⠄⠄⠄⠄
⠄⠄⠄⠄⠄⠄⣿⣿⣿⡇⠄⠄⠄⠄⠄⠄⠄⢸⣿⣿⣿⡆⠄⠄⠄⠄⠄⠄⠄⠄
⠄⠄⠄⠄⠄⢰⣿⣿⣿⣄⠄⠄⠄⠄⠄⠄⠄⠈⣿⣿⣿⣿⣶⡄⠄⠄⠄⠄⠄⠄
⠄⠄⠄⠄⠄⠈⠻⣿⣿⡟⠄⠄⠄⠄⠄⠄⠄⠄⢿⣿⣿⣿⠿⠃⠄⠄⠄⠄⠄⠄
⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄

.
⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⣀⣀⣀⣠⣤⣤⣄⣀⣀⣀⡀
⠄⠄⠄⠄⠄⠄⠄⠄⠄⣀⠤⠖⠊⠉⠁⠄⠄⠄⠄⠄⠄⠄⠄⠈⠉⠙⠲⢤⡀
⠄⠄⠄⠄⠄⠄⠄⡤⠊⠁⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠈⢦⡀
⠄⠄⠄⠄⠄⠄⡜⠄⠄⠄⠄⠄⠄⢀⡀⠄⠄⠄⠄⠄⠄⠄⠄⠄⢢⠄⠄⠄⠄⠄⢳
⠄⠄⠄⠄⠄⣸⠁⠄⠄⠄⠄⠄⠄⠄⠱⡀⠄⠄⠄⠄⠄⠄⠄⡀⠈⠄⡀⠄⠄⠄⠈⡇
⠄⠄⠄⠄⠄⡏⠄⠄⠄⠄⠄⠄⠄⠄⡰⠁⠄⠄⠄⠄⠄⠄⠄⠘⡆⡜⠁⠄⠄⠄⠄⢧⡀
⠄⠄⠄⠄⠄⡇⠄⠄⠄⠄⠄⠄⠄⠸⡀⠄⠄⠄⠄⠄⣀⣤⡂⠄⠇⠱⠄⡀⠄⠄⠄⠄⡇
⠄⠄⠄⠄⠄⢇⠄⠄⠄⠄⠄⠄⠄⠄⠈⢄⡀⢠⣟⢭⣥⣤⠽⡆⠄⡶⣊⣉⣲⣤⢀⡞
⠄⠄⠄⠄⠄⠘⣆⠄⠄⠄⠄⠄⠄⡀⠄⠐⠂⠘⠄⣈⣙⡡⡴⠄⠄⠙⣄⠙⣛⠜⠘⣆
⠄⠄⠄⠄⠄⠄⠈⢦⡀⠄⠄⠄⢸⠁⠄⠄⠄⠄⠄⠄⠄⠊⠄⠄⠄⠄⡸⠛⠄⠄⠄⢸
⠄⠄⠄⠄⠄⠄⠄⠄⠈⠓⠦⢄⣘⣄⠄⠄⠄⠄⠄⠄⠄⡠⠄⠄⠄⠄⣇⡀⠄⠄⣠⠎
⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⣸⠁⠈⡟⠒⠲⣄⠄⠄⡰⠇⠖⢄⠄⠄⡹⡇⢀⠎
⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⢀⡇⠄⠄⡇⠄⠄⠹⠄⡞⠄⠄⢀⠤⣍⠭⡀⢱⢸
⠄⠄⠄⠄⠄⠄⢀⣀⣀⣠⠞⠄⠄⢠⡇⠄⠄⠄⠄⠁⠄⢴⠥⠤⠦⠦⡼⠄⢸
⣀⣤⣴⣶⣿⣿⡟⠁⠄⠋⠄⠄⠄⢸⠁⠄⠄⠄⠄⠄⠄⠄⠑⣠⢤⠐⠁⠄⢸
⣿⣿⣿⣿⣿⡟⠄⠄⠄⠄⠄⠄⠄⢸⡀⠄⠄⠄⠄⠄⠄⠄⠄⠬⠥⣄⠄⠄⠈⠲⡄
⣿⣿⣿⣿⣿⡇⠄⠄⠄⠄⠄⠄⠄⠄⠙⠦⣄⠄⠄⠄⠄⠄⠄⠄⠄⠈⢳⠄⠄⢀⣿⡀
⣿⣿⣿⣿⣿⣧⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠈⠙⠒⠦⠤⢤⣄⣀⣠⠤⢿⣶⣶⣿⣿⣿⣶⣤⡀
⣿⣿⣿⣿⣿⣿⣷⣄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⠄⢀⡼⠁⠄⠄⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣄
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣦⣤⣤⣀⣀⣀⣀⣀⣀⣀⣤⣤⣤⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿

]]