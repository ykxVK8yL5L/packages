-- Created By [CTCGFW]Project-OpenWrt
-- https://github.com/project-openwrt

local uci = luci.model.uci.cursor()


mp = Map("gost", translate("Gost"))
mp.description = translate("A simple security tunnel written in Golang.")

mp:section(SimpleSection).template = "gost/gost_status"

s = mp:section(TypedSection, "gost")
s.anonymous=true
s.addremove=false

enable = s:option(Flag, "enable", translate("Enable"))
enable.default = 0
enable.rmempty = false

run_command = s:option(Value, "run_command", translate("Command"))
run_command.rmempty = false


forward_server = s:option(ListValue,"forward_server",translate("Forward Server"))
forward_server.rmempty = true
uci:foreach("gost","gost",function(s)
	for k,v in ipairs(s.forward_url) do
		forward_server:value(v)
	end
end)
 
forward_urls = s:option(DynamicList,"forward_url",translate("Forward URL"))
forward_urls.rmempty = true



return mp
