% == Initial definitions for the MDP lab == %

% States

nS = 14;

% Actions

nA = 6;

N = 1;
S = 2;
E = 3;
W = 4;
C = 5;
I = 6; 

% Transition probability matrix

P = cell(1, 6);

P{N} = [1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.3, 0.7, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.3, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.3, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.7, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.3, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.8, 0.2; ...
        0.7, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3];
    
P{S} = [0.3, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7; ...
        0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.3, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.7, 0.3, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.7, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.7, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.7, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.3];

P{E} = [0.3, 0.7, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.3, 0.7, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.3, 0.7, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.3, 0.7, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.3, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.3, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.7, 0.3, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.2, 0.8, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0];

P{W} = [1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.7, 0.3, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.7, 0.3, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.7, 0.3, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.7, 0.3, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.7, 0.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.7, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.7, 0.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.3, 0.7, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0; ...
        0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1.0];
    
 P{C} = eye(14);
 P{I} = eye(14);

% Reward function

ORE_REWARD    = 2;
METAL_REWARD  = 2;
STONE_REWARD  = 0;
ENERGY_REWARD = -0.1;
DAMAGE_REWARD = -2;

% Ex 5 rewards
% ORE_REWARD    = 1.9;
% METAL_REWARD  = 2;
% STONE_REWARD  = 0;
% ENERGY_REWARD = -0.1;
% DAMAGE_REWARD = -3;

r = zeros(nS, nA);

% Energy use 
r(:, N:C) = ENERGY_REWARD;

% Volcano damage
r(10, :) = r(10, :) + 0.9 * DAMAGE_REWARD;

% Collection rewards

r(:, C) =  r(:, C) + STONE_REWARD;
r(12, C) = ENERGY_REWARD + 0.35 * ORE_REWARD + 0.05 * METAL_REWARD + 0.6 * STONE_REWARD;

% Policy
pol1 = [S, W, S, S, W, S, S, W, W, S, W, C, E, S]';
pol = [S, W, S, S, W, W, N, N, I, S, W, C, E, S]';


% Exercicio 3 e 4
quit = false;

gm = 0.9;

    rpol = [r(1,pol(1)), r(2,pol(2)), r(3,pol(3)), r(4,pol(4)), r(5,pol(5)), r(6,pol(6)), r(7,pol(7)), r(8,pol(8)) ,r(9,pol(9)), r(10,pol(10)),...
            r(11,pol(11)), r(12,pol(12)), r(13,pol(13)), r(14,pol(14))]';
        
    Ppol = [P{pol(1)}(1,:); P{pol(2)}(2,:); P{pol(3)}(3,:); P{pol(4)}(4,:); P{pol(5)}(5,:); P{pol(6)}(6,:);P{pol(7)}(7,:);P{pol(8)}(8,:); ...
            P{pol(9)}(9,:); P{pol(10)}(10,:); P{pol(11)}(11,:);P{pol(12)}(12,:); P{pol(13)}(13,:); P{pol(14)}(14,:)];
    
    Vpol = (eye(14) - gm * Ppol) \ rpol; 
disp(Vpol);  


%Actividade 3 resultado
%     1.1546
%     0.8594
%    -1.2995
%    -1.2585
%    -1.2231
%    -1.1925
%    -1.2231
%    -1.2585
%    -1.2995
%    -1.3471
%     2.8836
%     3.5000
%     1.8929
%     1.4966

%Actividade 4 resultado
%     1.1546
%     0.8594
%    -1.2995
%    -1.2585
%    -1.2231
%    -1.1925
%    -1.1661
%    -1.1434
%          0
%    -1.3471
%     2.8836
%     3.5000
%     1.8929
%     1.4966

% A Politica 2 � a melhor por estar mais perto da optimal policy

%EXERCICIO 5

i = 0;
while (~quit)
    rpol = [r(1,pol(1)), r(2,pol(2)), r(3,pol(3)), r(4,pol(4)), r(5,pol(5)), r(6,pol(6)), r(7,pol(7)), r(8,pol(8)) ,r(9,pol(9)), r(10,pol(10)),...
            r(11,pol(11)), r(12,pol(12)), r(13,pol(13)), r(14,pol(14))]';
        
    Ppol = [P{pol(1)}(1,:); P{pol(2)}(2,:); P{pol(3)}(3,:); P{pol(4)}(4,:); P{pol(5)}(5,:); P{pol(6)}(6,:);P{pol(7)}(7,:);P{pol(8)}(8,:); ...
            P{pol(9)}(9,:); P{pol(10)}(10,:); P{pol(11)}(11,:);P{pol(12)}(12,:); P{pol(13)}(13,:); P{pol(14)}(14,:)];
    
    Vpol = (eye(14) - gm * Ppol) \ rpol;
    
    Qn = r(:,N) + gm * P{N} * Vpol;
    Qs = r(:,S) + gm * P{S} * Vpol;
    Qe = r(:,E) + gm * P{E} * Vpol;
    Qw = r(:,W) + gm * P{W} * Vpol;
    Qc = r(:,C) + gm * P{C} * Vpol;
    Qi = r(:,I) + gm * P{I} * Vpol;
    
    [~, polnew] = max([Qn, Qs, Qe, Qw, Qc, Qi], [], 2);
    
    quit = all(polnew == pol);
    
    i = i + 1;
    pol = polnew;
end
t = toc;

%Results
fprintf('Finished after %i iterations and %.3f seconds.\n\n', i, t);
fprintf('Optimal value function:\n');
disp(Vpol);

% Finished after 5 iterations and 588.013 seconds.
% Optimal value function:
%     1.1546
%     0.8594
%     0.6047
%     0.3849
%     0.1952
%     0.0315
%          0
%          0
%          0
%    -1.3471
%     2.8836
%     3.5000
%     1.8929
%     1.4966