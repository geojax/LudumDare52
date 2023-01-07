function _init()
    grav=.1
    ground_y=127
    draw=dr_main
    update=upd_main
    cam_lobound=10
    init_plr()
    init_bg()
end

function _update()
    update()
end

function _draw()
    cls()
    draw()
end