function upd_main()
    upd_plr()
    upd_bg()
end

function dr_main()
    cls()
    palt(0)
    palt(12) -- blue transparent
    camera(0,mid(plr_y,cam_lobound, cam_hibound))
    line(0,ground_y,128,ground_y)
    dr_bg()
    dr_plr()
end