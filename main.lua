function _init()
    grav=.1
    draw=dr_main
    update=upd_main
    init_plr()
end

function _update()
    update()
end

function _draw()
    cls()
    draw()
end