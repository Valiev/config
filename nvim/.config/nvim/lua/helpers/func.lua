local Func = {}

function Func.map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    opts = opts or {}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function Func.nmap(lhs, rhs, opts)
    return Func.map("n", lhs, rhs, opts)
end

function Func.imap(lhs, rhs, opts)
    return Func.map("i", lhs, rhs, opts)
end

function Func.vmap(lhs, rhs, opts)
    return Func.map("v", lhs, rhs, opts)
end

function Func.xmap(lhs, rhs, opts)
    return Func.map("x", lhs, rhs, opts)
end

return Func
