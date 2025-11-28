--- Sets environment variables for the installed version.
--- @param ctx table
--- @field ctx.path string Installation path
--- @field ctx.version string Installed version
--- @return table Environment variables
function PLUGIN:EnvKeys(ctx)
    -- The zip extracts to asciidoctorj-{version}/bin/
    return {
        {
            key = "PATH",
            value = ctx.path .. "/asciidoctorj-" .. ctx.version .. "/bin"
        }
    }
end
