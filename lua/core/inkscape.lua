-- File: inkscape.lua

local M = {}

function M.open_with_filename()
    local user_input = vim.fn.input("Enter path and filename for SVG file (or type 'new' for a new document): ")
    if user_input == "new" then
        local latex_filename = vim.fn.input("Enter LaTeX filename (without extension): ")
        if latex_filename ~= "" then
            local svg_filename = latex_filename .. ".svg"
            vim.cmd(":!inkscape --verb=FileNew && :e " ..
            svg_filename .. " <bar> w <bar> !inkscape " .. svg_filename .. "<CR>")
        else
            print("Invalid LaTeX filename.")
        end
    elseif user_input ~= "" then
        local command = string.format(":e %s <bar> w <bar> !inkscape %s<CR>", user_input, user_input)
        vim.cmd(command)
    else
        print("No input provided.")
    end
end

return M

