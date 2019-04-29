-- switch workspace for Logitech G302
hs.eventtap.new({4,25},
    function(e)
        local pressedMouseButton = e:getProperty(hs.eventtap.event.properties['mouseEventButtonNumber'])
        if pressedMouseButton == 4 then
            hs.eventtap.keyStroke({"fn", "ctrl"}, "left")
        end
        if pressedMouseButton == 3 then
            hs.eventtap.keyStroke({"fn", "ctrl"}, "right")
        end
    end
):start()