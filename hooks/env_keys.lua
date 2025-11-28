--- Sets environment variables for the installed version.
--- @param ctx table
--- @field ctx.path string Installation path
--- @return table Environment variables
function PLUGIN:EnvKeys(ctx)
    -- After post_install flattens the structure, bin is at ctx.path/bin
    return {
        {
            key = "PATH",
            value = ctx.path .. "/bin"
        }
    }
end
