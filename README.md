# EmmyLua for nvim-dap

This is a fork version of [EmmyLua](https://github.com/EmmyLua/VSCode-EmmyLua) for working with [nvim-dap](https://github.com/mfussenegger/nvim-dap) client.

# Usage
Example adaptor configuration:
```lua

local emmylua = require("emmylua")

dap.adapters.lua = emmylua.get_attach_adapter()

dap.configurations.lua = {
    {
        name = "Attach EmmyLua process",
        type = "lua",
        codePaths = { "${workspaceFolder}" },
        request = "attach",
        pid = require("dap.utils").pick_process,
        ext = { ".lua" },
    },
}

```

# Build
* run `npm install` and `npm run compile`
* run `node build/prepare-version.js` and `node build/prepare.js`
