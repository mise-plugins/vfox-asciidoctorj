--- Sets environment variables for the installed version.
--- @param ctx table
--- @field ctx.path string Installation path
--- @field ctx.version string Installed version
--- @return table Environment variables
function PLUGIN:EnvKeys(ctx)
    -- The zip extracts to asciidoctorj-{version}/bin/
    local bin_path = ctx.path .. "/asciidoctorj-" .. ctx.version .. "/bin"
    return {
        {
            key = "PATH",
            value = bin_path
        }
    }
end
