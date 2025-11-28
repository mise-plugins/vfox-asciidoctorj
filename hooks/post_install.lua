local file = require("file")

--- Called after installation is complete to flatten the directory structure.
--- @param ctx table
--- @field ctx.rootPath string Installation root path
--- @field ctx.version string Installed version
function PLUGIN:PostInstall(ctx)
    local source_dir = ctx.rootPath .. "/asciidoctorj-" .. ctx.version

    -- Move bin directory to root
    local bin_src = source_dir .. "/bin"
    local bin_dst = ctx.rootPath .. "/bin"
    os.rename(bin_src, bin_dst)

    -- Move lib directory to root (needed for runtime)
    local lib_src = source_dir .. "/lib"
    local lib_dst = ctx.rootPath .. "/lib"
    os.rename(lib_src, lib_dst)

    -- Remove the now-empty version directory
    os.remove(source_dir)
end
