# EmmyLua for nvim-dap

This is a fork version of [EmmyLua](https://github.com/EmmyLua/VSCode-EmmyLua) for working with [nvim-dap](https://github.com/mfussenegger/nvim-dap) client.

# Usage
Example adaptor configuration:
```lua
dap.adapters.lua = {
	type = "executable",
	command = "node",
	args = { "path/to/Nvim-EmmyLua/out/debugger/EmmyDebugAdapter.js" },
	name = "lua",
}

dap.configurations.lua = {
	{
		name = "Launch EmmyLua",
		type = "lua",
		codePaths = { "${workspaceFolder}" }, -- path to search lua source file
		request = "launch",
		host = "127.0.0.1",
		port = 9966,
		ext = { ".lua", ".lua.txt", ".lua.bytes" },
	},
}
```
Add this in your lua file:
```lua
-- adjust this according to your platform
package.cpath = package.cpath .. ";path/to/Nvim-EmmyLua/debugger/emmy/windows/x64/emmy_core.dll"
local dbg = require("emmy_core")
dbg.tcpListen("localhost", 9966)
-- If you want to halt before starting debug session uncomment the following code
-- dbg.waitIDE() 
```
Run your lua code before starting debug session with `nvim-dap`.


# Build
* run `npm install` and `npm run compile`
* run `node build/prepare-version.js` and `node build/prepare.js`
