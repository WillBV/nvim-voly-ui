if exists("g:loaded_nvimvolyui")
    finish
endif
let g:loaded_nvimvolyui = 1

let s:lua_rocks_deps_loc = expand("<sfile>:h:r") . "/../lua/nvim-voly-ui/deps"
exe "lua package.path = package.path .. ';" . s:lua_rocks_deps_loc . "/lua-?/init.lua'"

command! -nargs=0 VolyBuild lua require("nvim-voly-ui").dev_build()
