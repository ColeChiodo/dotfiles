------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
    output   = "eDP-1",
    mode     = "1920x1080@120.21",
    position = "0x0",
    scale    = "1",
})

-- hl.monitor({
--     output   = "HDMI-A-1",
--     mode     = "preferred",
--     position = "0x0",
--     scale    = 1,
--     mirror   = "eDP-1"
-- })

-- for i = 1, 10 do
--     hl.workspace_rule({
--         workspace = tostring(i),
--         monitor = "eDP-1"
--     })
-- end

