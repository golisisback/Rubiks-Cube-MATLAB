function [tiles valid] = next_cube(input, tiles)

valid = 1;

% determine direction of rotation
if strfind(input, ' r') % right (cw)
    dir = -1;
elseif strfind(input, ' l') % left (ccw)
    dir = 1;
else
    fprintf('Invalid argument.\n\n')
    valid = 0;
    return
end

% determine all tiles that will move, and axis of rotation
if strfind(input, 'r ')
    c = find(tiles(:,3)<-0.5);
    axis = 'z';
    theta = dir * -90; % in degrees
elseif strfind(input, 'o ')
    c = find(tiles(:,3)>0.5);
    axis = 'z';
    theta = dir * 90;
elseif strfind(input, 'b ')
    c = find(tiles(:,2)<-0.5);
    axis = 'y';
    theta = dir * -90;
elseif strfind(input, 'g ')
    c = find(tiles(:,2)>0.5);
    axis = 'y';
    theta = dir * 90;
elseif strfind(input, 'y ')
    c = find(tiles(:,1)<-0.5);
    axis = 'x';
    theta = dir * -90;
elseif strfind(input, 'w ')
    c = find(tiles(:,1)>0.5);
    axis = 'x';
    theta = dir * 90;
else
    fprintf('Invalid argument.\n\n')
    valid = 0;
    return
end

% execute rotation
for i = 1:21
    tiles(c(i),:) = rotate_cube(tiles(c(i),:), axis, theta);
end
plot_cube(tiles);