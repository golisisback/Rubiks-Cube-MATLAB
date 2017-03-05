function [tiles] = rotate_cube(matrix, axis, theta)

% define rotation matrices about xyz axes
if axis == 'x'
    R = [1 0 0;0 cosd(theta) -sind(theta);0 sind(theta) cosd(theta)];
elseif axis == 'y'
    R = [cosd(theta) 0 sind(theta);0 1 0;-sind(theta) 0 cosd(theta)];
elseif axis == 'z'
    R = [cosd(theta) -sind(theta) 0;sind(theta) cosd(theta) 0;0 0 1];
else
    fprintf('Invalid argument.');
end

tiles = (R * matrix')';