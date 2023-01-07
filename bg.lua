function init_bg()
    corns={}
    corn_y=ground_y-18
    for i=1,20 do
        add(corns,{x=i*8})
    end
end

function upd_bg()
    for c in all(corns) do
        if(c.x>128)c.x=-8
        c.x -= plr_dx
    end
end

function dr_bg()
    for c in all(corns) do
        rect(c.x,corn_y,c.x+8,ground_y)
    end
end