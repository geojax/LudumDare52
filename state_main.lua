function upd_main()
    upd_plr()
    upd_bg()
end

function dr_main()
    palt(0)
    palt(12) -- blue transparent
    camera(plr_x-110,min(plr_y,cam_lobound))
    line(0,ground_y,128,ground_y)
    dr_bg()
    dr_plr()
end