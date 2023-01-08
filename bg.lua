function init_bg()
    corns={}
    corn_y=ground_y-24
    for i=1,20 do
        add(corns, {x=i*8})
    end

    back_corns_offset=0
    clouds_y=-50
    clouds_offset=0
end

function upd_bg()
    back_corns_offset-=plr_dx*.5
    clouds_offset-=plr_dx*.75
    if (back_corns_offset > 4) back_corns_offset-=4
    if (clouds_offset > 16) clouds_offset -= 16
    for c in all(corns) do
        if(c.x>128)c.x-=128
        c.x -= plr_dx
    end
end

function dr_bg()
    for x=back_corns_offset-8,back_corns_offset+136,4 do
        rect(x, ground_y-30,x+4,ground_y-20,5)
    end

    for x=clouds_offset-8,clouds_offset+136,16 do
        rect(x, clouds_y, x + 16, clouds_y + 8)
    end

    for c in all(corns) do
        rect(c.x,corn_y,c.x+8,ground_y,6)
    end
end