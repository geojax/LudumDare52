function init_plr()
    plr_x=0
    plr_y=0
    plr_dy=0
    plr_energy=10
    term_v=3
    flap_strength=2
end

function upd_plr()
    -- down to gain speed and angle downward
    -- up to flap wings, uses energy
    if(btnp(2))plr_dy-=flap_strength
    if(btnp(3))plr_dy+=flap_strength

    plr_dy=mid(plr_dy+grav,term_v,-term_v)
    plr_y+=plr_dy
end

function dr_plr()
    rect(plr_x,plr_y,plr_x+16,plr_y+16)
end