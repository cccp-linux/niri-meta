local function align(edge)
    local d = mp.get_property_native("osd-dimensions")
    local sw, sh = d.w - d.ml - d.mr, d.h - d.mt - d.mb -- scaled image size

    local function pan(prop, delta)
        mp.set_property_number(prop, mp.get_property_number(prop) + delta)
    end

        if edge == "left"   then pan("video-pan-x", -d.ml / sw)
    elseif edge == "right"  then pan("video-pan-x",  d.mr / sw)
    elseif edge == "top"    then pan("video-pan-y", -d.mt / sh)
    elseif edge == "bottom" then pan("video-pan-y",  d.mb / sh)
    end
end

mp.register_script_message("align", align)
