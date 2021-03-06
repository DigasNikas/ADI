function [Q, t] = vi(M)
% function Q = VI(MDP)
% function [Q, t] = VI(MDP)
%
% This function computes the optimal policy for the given MDP. It outputs
% the optimal Q-function Q. It may also return the computation time.
%
% MDP is a tuple MDP = (nS, nA, P, R, Gamma, X0). It is represented as a
% struct with the following fields:
%
% . 'nS'  - The number of states of the MDP;
% . 'nA'  - The number of actions of the MDP;
% . 'P'   - A cell array in which each component P{a} is a sparse nS x nS 
%           matrix with the transition probabilities associated with action 
%           a;
% . 'R'   - A matrix with the reward function. R is either a nS x nA 
%           matrix
% in which each component R{a} is a sparse nS x nS matrix;
% . Gamma - The discount factor;

% Function constants

MAX_ERR = 1e-10; % Tolerance parameter.

Q    = zeros(M.nS, M.nA);
Qnew = zeros(M.nS, M.nA);

i = 0;
quit = 0;

% Compute optimal Q-function using dynamic programming

tic;

while (~quit)
    
    for a = 1:M.nA
        Qnew(:, a) = M.R(:, a) + M.Gamma * M.P{a} * max(Q, [], 2);
    end
    
    % Check whether stopping condition is met
    
    err = norm(Q - Qnew);
    
    if (err < MAX_ERR)
        quit = 1;
    end
    
    Q = Qnew;
    i = i + 1;    
end

t = toc;