local M = {}

local function script_path()
    local str = debug.getinfo(2, "S").source:sub(2)
    return str:match("(.*/)")
end

local root_path = vim.fs.normalize(script_path() .. "../..")

function M.get_attach_adapter()
    return {
        type = "executable",
        command = "node",
        args = { root_path .. "/out/debugger/EmmyAttachDebugAdapter.js" },
        name = "lua",
    }
end

function M.get_adapter()
    return {
        type = "executable",
        command = "node",
        args = { root_path .. "/out/debugger/EmmyDebugAdapter.js" },
        name = "lua",
    }
end

return M
