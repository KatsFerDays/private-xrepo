package("librbxuserinfo")
    set_description("The libRbxUserInfo package")

    add_urls("https://github.com/KatsFerDays/libRbxUserInfo.git")
    add_versions("1.0.0", "27e234bf48f9e34e70d171020f88be750e66fc16")

    on_install(function (package)
        local configs = {}
        if package:config("shared") then
            configs.kind = "shared"
        end
        import("package.tools.xmake").install(package, configs)
    end)

    on_test(function (package)
        -- TODO check includes and interfaces
        -- assert(package:has_cfuncs("foo", {includes = "foo.h"})
    end)
