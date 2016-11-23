clear all;
clc;

% = Activities 1 and 2 = %

ETA  = 0.087;
BETA = 0.005;

% Load random data:
load random;

% "data" is a cell array, where each element corresponds to an action and
% an associated payoff

nA = length(data);
T  = length(data{1}.payoff);

% Initialize UCB1
Xucb = zeros(nA, 1); % Average/total reward per action
Nucb = ones(nA, 1);  % Number of plays per action
Rucb = zeros(1, T);  % Total reward collected by UCB

% Initialize EXP3
wexp = ones(nA, 1);  % Initial weights for EXP3
Rexp = zeros(1, T);  % Total reward collected by EXP

% Run UCB and EXP

for t = 1:T
    
    % . UCB
    
    % Action selection
    if t <= nA
        Aucb = t;
    else
        [val, Aucb] = max((Xucb./Nucb) + sqrt((2*log(t))./Nucb));
    end
    % Update Nucb and Xucb
    Nucb(Aucb) = Nucb(Aucb) + 1;
    Xucb(Aucb) = Xucb(Aucb) + data{Aucb}.payoff(t);
    
    % Store reward
    
    if t == 1
        Rucb(t) = data{Aucb}.payoff(t);
    else
        Rucb(t) = Rucb(t-1) + data{Aucb}.payoff(t);
    end
    
    % . EXP
    
    % Action selection
   
    P = ((wexp./sum(wexp))*(1-BETA))+(BETA./nA);
    Aexp = find(cumsum(P) >= rand, 1);
    
    % Update weights
    wexp(Aexp) = wexp(Aexp)*exp(ETA*(data{Aexp}.payoff(t)/P(Aexp)));
    
    % Store reward
    
    if t == 1
        Rexp(t) = data{Aexp}.payoff(t);
    else
        Rexp(t) = Rexp(t - 1) + data{Aexp}.payoff(t);
    end
end

% Resposta Actividade 2
% O EXP por ser n�o determinista apresenta valores diferentes ao correr
% diferentes vezes o programa.
% Os theorical bounds dos dois algoritmos diferem bastante, no entanto o
% theorical bound do UCB por ser determinista conta com um pior caso
% bastante pior que EXP que por n�o ser determinista pode "saltar" para a
% ac��o do lado atrav�s da distriubui��o de probabilidade que calcula.
% Existe algum regret por existirem ac��es claramente melhor que outras.

% Resposta Actividade
% Os valores vistos entre o UCB e EXP s�o semelhantes devido
% ao dataset utilizado ser bom, isto �, as ac��es a escolher s�o todas
% "boas" n�o originando regret tanto no UCB e EXP, algo que acontecia no
% dataset random.

% Compute regret
regretucb = Ropt - Rucb;
regretexp = Ropt - Rexp;

% Plot regret
figure(1);
clf;

plot(regretucb, 'b', 'LineWidth', 3);
hold on;
plot(regretexp, 'r', 'LineWidth', 3);
plot(bounds.ucb, 'b:', 'LineWidth', 3);
plot(bounds.exp, 'r:', 'LineWidth', 3);

xlabel('Time step');
ylabel('Regret');
legend('UCB', 'EXP', 'Theoretical UCB', 'Theoretical EXP');