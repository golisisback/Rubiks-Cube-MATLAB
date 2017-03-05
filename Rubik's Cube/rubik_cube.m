% Rubik's Cube

clc
close all
clear all

% initialize Rubik's cube
tiles = initialize_cube();
history = cell(500,1);
i = 1;
fprintf('-----COMMANDS-----\n')
fprintf('- NEXT MOVE: {r, b, g, y, w, o} <space> {l, r}\n')
fprintf('    e.g. To rotate blue side ccw --> b l\n')
fprintf('- SHUFFLING CUBE: shuffle, scramble\n')
fprintf('- MOVE HISTORY: history\n')
fprintf('- RESETTING CUBE: reset, solve\n')
fprintf('- QUIT PROGRAM: quit, exit\n\n')

while true
    
    % ask user for next move
    fprintf('Next Move: ');
    next_move = input('', 's');
    
    if strcmp(next_move, 'reset') || strcmp(next_move, 'solve')
        tiles = initialize_cube();
        history = cell(500,1);
        i = 1;
    elseif strcmp(next_move, 'exit') || strcmp(next_move, 'quit')
        break
    elseif strcmp(next_move, 'history')
        for j = 1:sum(~cellfun('isempty', history))
            fprintf('%d: %s\n', j, history{j});
        end
        fprintf('\n');
    elseif strcmp(next_move, 'scramble') || strcmp(next_move, 'shuffle')
        tiles = scramble_cube();
        history = cell(500,1);
        i = 1;
    else
        [tiles valid] = next_cube(next_move, tiles); % compute next move
        if valid
            history{i} = next_move;
            i = i + 1;
        end
    end
    
end