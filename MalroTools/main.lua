--[[
MoreLuau by Malrous

MoreLuau is a extension for scripting in Roblox that adds way more scripting power for exploit script developers

]]--

if getgenv().MoreLuauPrintErrors == true then
    function methoderr(pr1, pr2)
        print("[ERROR]: MoreLuau | " .. pr1 .. " is not supported (called " .. pr2)

--vars
local RS = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")
local Player = game:GetService("Players").LocalPlayer
local CoreGui = game:GetService("CoreGui")

--core
local funcs = {} -- main table for the functions

-- script functions
local function shuffle(str)
	local t = {}
	for i = 1, #str do
		t[i] = str:sub(i, i)
	end
	for i = #t, 2, -1 do
		local j = math.random(i)
		t[i], t[j] = t[j], t[i]
	end
	return table.concat(t)
end

function b64(data)
    if base64.encode then
        return base64.encode(data)
    else
    local b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    return ((data:gsub('.', function(x) 
        local r,b='',x:byte()
        for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
        return r;
    end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then return '' end
        local c=0
        for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
        return b:sub(c+1,c+1)
    end)..({ '', '==', '=' })[#data%3+1])
end

function unb64(data)
    if base64.decode then
        return base64.decode(data)
    else
    local b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    data = string.gsub(data, '[^'..b..'=]', '')
    return (data:gsub('.', function(x)
        if (x == '=') then return '' end
        local r,f='',(b:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
        return r;
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 8) then return '' end
        local c=0
        for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
        return string.char(c)
    end))
end

function encrypt(str)
    str1 = string.reverse(b64(str))
    for i = 1, 5 do
        str1 = b64(str1)
    end
    return b64(string.reverse(str1))
end

function decrypt(str)
    return unb64(string.reverse(unb64(unb64(unb64(unb64(unb64()))))))
    str1 = string.reverse(b64(str))
    for i = 1, 5 do
        str1 = b64(str1)
    end
    return b64(string.reverse(str1))
end

-- |Functions| --

funcs.EncryptString = function(str)
    return encrypt(str)
end

--[[local MoreLuau = {
    FindFirstDescendant = function(instance, obj)
        return instance:FindFirstChild(obj,true)
    end

    FindFirstDescendantOfClass = function(instance, name)
        for i,v in pairs(instance:GetDescendants()) do
            if v.ClassName == name then
            return dsdnt
            else
        end
    end

    FindFirstDescendantWhichIsA = function(instance, name)
        for i,v in pairs(instance:GetDescendants()) do
            local dsdnt = instance:FindFirstChild(name,true)
            if dsdnt:IsA(name) then
            return dsdnt
            end
        end
    end

    EncryptString = function(str)
    return encrypt(str)
    end

    Base64String = function(str)
    return b64(str)
    end

    SafeInstance = function(class, parent)
        local instance = Instance.new(class)
        instance.Name = b64(shuffle("randomstring"))
        if parent then
        instance.Parent = parent
        else
        instance.Parent = nil
        end
    end
    SafeGetService = function(instance)
        local service = Instance.new()
    end

    RestoreNilInstances = function(instance) -- Parents them to a folder named "NilInstances" in workspace
        if not getnilinstances() then
            methoderr("getnilinstances", "RestoreNilInstances")
        else
            Instance.new("NilInstances", workspace)
            for i,v in pairs(getnilinstances()) do
                v.Parent = workspace.NilInstances
            end
        end
    end

    ProtectGui = function(gui) -- best m
        if syn.protect_gui then
            syn.protect_gui(gui)
        elseif gethui() then
            gui.Parent = gethui()
        else
        local protected_service = game:GetService("CoreGui"):Clone()
        protected_service.Name = shuffle("\80\82\79\84\69\67\84\69\68\95\67\79\82\69\71\85\73")
        gui.Name = b64(shuffle("mlroprotectedgui"))
        gui.Parent = protected_service
    end
}

]]--

--Version [REDACTED]
