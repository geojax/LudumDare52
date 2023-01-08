function init_plr()
    plr_x=0 -- world position
    plr_draw_x=110 -- drawn position
    plr_y=0
    plr_dy=0
    plr_dx=0
    plr_energy=1
    flap_cost=0.1
    term_v_glide=3
    term_v_dive=10
    term_v_hor=-5
    flap_strength=3
end

function upd_plr()
    --input
    -- flap when up is pressed.
    if btnp(2) then
        plr_dy -= flap_strength
        plr_dx = min(-1, plr_dx * .9)
        plr_energy -= flap_cost
    end

    -- dive when down is pressed, otherwise glide.
    if btn(3) then
        plr_dy+=.25
        plr_dx=max(plr_dx - grav, term_v_hor)
    else
        plr_dy=mid(plr_dy+grav,term_v_glide,-term_v_glide)
    end

    --slow down when right is pressed
    if btnp(1) then
        plr_dx *= .8
    end
    plr_y+=plr_dy
    plr_x+=plr_dx
end

function dr_plr()
    rect(plr_draw_x,plr_y,plr_draw_x+16,plr_y+16)
end