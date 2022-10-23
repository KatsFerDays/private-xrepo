package("librbxuserinfo")
    set_description("The libRbxUserInfo package")

    add_urls("https://github.com/KatsFerDays/libRbxUserInfo.git")
    add_versions("1.0.0", "8f77daeb80bbfab1bf16464e25609f0b81725e51")

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
