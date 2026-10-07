local function reset_view()
    for _, p in ipairs({
        "video-rotate", "video-zoom", "video-pan-x", "video-pan-y", "video-align-x", "video-align-y"
    }) do mp.set_property_number(p, 0) end
    mp.set_property("vf", "")
end

mp.register_script_message("reset-view", reset_view)
mp.register_event("file-loaded", reset_view)
