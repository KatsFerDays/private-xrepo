package("librbxuserinfo")
    set_description("The libRbxUserInfo package")

    add_urls("https://github.com/KatsFerDays/libRbxUserInfo.git")
    add_versions("1.0.0", "5dcc40c91be6a4dcfd2dcdd961e53ac4756e5863")

    on_install(function (package)
        local configs = {}
        if package:config("shared") then
            configs.kind = "shared"
        end
        os.cp("$(scriptdir)/include", package:installdir())
        import("package.tools.xmake").install(package, configs)
    end)

    on_test(function (package)
        -- TODO check includes and interfaces
        -- assert(package:has_cfuncs("foo", {includes = "foo.h"})
    end)
