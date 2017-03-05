function [tiles] = initialize_cube()
% generate solved cube

tiles = [-1 -1 -1.5;
    0 -1 -1.5;
    1 -1 -1.5;
    -1 0 -1.5;
    0 0 -1.5;
    1 0 -1.5;
    -1 1 -1.5;
    0 1 -1.5;
    1 1 -1.5;
    
    -1 -1 1.5;
    0 -1 1.5;
    1 -1 1.5;
    -1 0 1.5;
    0 0 1.5;
    1 0 1.5;
    -1 1 1.5;
    0 1 1.5;
    1 1 1.5;
    
    -1 -1.5 -1;
    -1 -1.5 0;
    -1 -1.5 1;
    0 -1.5 -1;
    0 -1.5 0;
    0 -1.5 1;
    1 -1.5 -1;
    1 -1.5 0;
    1 -1.5 1;
    
    -1 1.5 -1;
    -1 1.5 0;
    -1 1.5 1;
    0 1.5 -1;
    0 1.5 0;
    0 1.5 1;
    1 1.5 -1;
    1 1.5 0;
    1 1.5 1;
    
    -1.5 -1 -1;
    -1.5 -1 0;
    -1.5 -1 1;
    -1.5 0 -1;
    -1.5 0 0;
    -1.5 0 1;
    -1.5 1 -1;
    -1.5 1 0;
    -1.5 1 1;
    
    1.5 -1 -1;
    1.5 -1 0;
    1.5 -1 1;
    1.5 0 -1;
    1.5 0 0;
    1.5 0 1;
    1.5 1 -1;
    1.5 1 0;
    1.5 1 1];

% plot cube
plot_cube(tiles);