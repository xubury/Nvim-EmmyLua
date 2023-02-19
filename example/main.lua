package.cpath = package.cpath .. ";../debugger/emmy/windows/x64/emmy_core.dll"
local dbg = require("emmy_core")
dbg.tcpListen("localhost", 9966)
dbg.waitIDE()


local incre = function(var)
	return var + 2
end

local var = require("moduleA.moduleA")

print("var:" .. var)

var = incre(var)

print("increased var:" .. var)
