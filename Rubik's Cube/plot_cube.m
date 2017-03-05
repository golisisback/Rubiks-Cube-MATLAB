function [] = plot_cube(tiles)

subplot(2,2,1)
[az, el] = view;
if az == 0 && el == 90
    view(3)
else
    [az, el] = view;
    view(az, el)
end
axis vis3d

tile_colors = [1 0 0;
    1 .5 0;
    0 0 1;
    0 1 0;
    1 1 0;
    1 1 1];

for i = 1:length(tiles)
    
    x = tiles(i,1); y = tiles(i,2); z = tiles(i,3);
    
    if z > 1.25 || z < -1.25
        patch([x-.5 x+.5 x+.5 x-.5], [y-.5 y-.5 y+.5 y+.5], [z z z z], tile_colors(floor((i-1)/9)+1,:));
    elseif y > 1.25 || y < -1.25
        patch([x-.5 x+.5 x+.5 x-.5], [y y y y], [z-.5 z-.5 z+.5 z+.5], tile_colors(floor((i-1)/9)+1,:));
    elseif x > 1.25 || x < -1.25
        patch([x x x x], [y-.5 y+.5 y+.5 y-.5], [z-.5 z-.5 z+.5 z+.5], tile_colors(floor((i-1)/9)+1,:));
    end
    
    hold on
    
end

hold off