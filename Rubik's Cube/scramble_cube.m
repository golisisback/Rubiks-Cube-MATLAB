function [tiles] = scramble_cube()

tiles = initialize_cube();

sequence = randi(12,20,1);

for j = 1:20
    if sequence(j) == 1
        c = find(tiles(:,3)<-0.5);
        axis = 'z';
        theta = -90; % in degrees
    elseif sequence(j) == 2
        c = find(tiles(:,3)<-0.5);
        axis = 'z';
        theta = 90; % in degrees
    elseif sequence(j) == 3
        c = find(tiles(:,3)>0.5);
        axis = 'z';
        theta = 90;
    elseif sequence(j) == 4
        c = find(tiles(:,3)>0.5);
        axis = 'z';
        theta = -90;
    elseif sequence(j) == 5
        c = find(tiles(:,2)<-0.5);
        axis = 'y';
        theta = -90;
    elseif sequence(j) == 6
        c = find(tiles(:,2)<-0.5);
        axis = 'y';
        theta = 90;
    elseif sequence(j) == 7
        c = find(tiles(:,2)>0.5);
        axis = 'y';
        theta = 90;
    elseif sequence(j) == 8
        c = find(tiles(:,2)>0.5);
        axis = 'y';
        theta = -90;
    elseif sequence(j) == 9
        c = find(tiles(:,1)<-0.5);
        axis = 'x';
        theta = -90;
    elseif sequence(j) == 10
        c = find(tiles(:,1)<-0.5);
        axis = 'x';
        theta = 90;
    elseif sequence(j) == 11
        c = find(tiles(:,1)>0.5);
        axis = 'x';
        theta = 90;
    else
        c = find(tiles(:,1)>0.5);
        axis = 'x';
        theta = -90;
    end
    
    % execute rotation
    for i = 1:21
        tiles(c(i),:) = rotate_cube(tiles(c(i),:), axis, theta);
    end
end

plot_cube(tiles);