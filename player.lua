function init_plr()
    plr_x=110
    plr_y=0
    plr_dy=0
    plr_dx=0
    plr_energy=10
    term_v_glide=3
    term_v_dive=10
    flap_strength=2
end

function upd_plr()
    --input
    -- flap when up is pressed.
    if btnp(2) then
        plr_dy-=flap_strength 
        plr_dx=min(-1,plr_dx * .8)
    end

    -- dive when down is pressed, otherwise glide.
    if btn(3) then
        plr_dy+=grav 
        plr_dx-=grav
    else
        plr_dy=mid(plr_dy+grav,term_v_glide,-term_v_glide)
    end
    plr_y+=plr_dy
end

function dr_plr()
    rect(plr_x,plr_y,plr_x+16,plr_y+16)
end