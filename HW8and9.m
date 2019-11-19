%HW8

% Problem 1: Modeling population growth
% The simplest model for a growing population assumes that each current
% individual has equal likelihood to divide, which yields a differential
% equation dx/dt = a*x where a is the division rate. It is easy to see that
% this will grow exponentially without bound. A simple modification is to
% assume that the growth rate slows done as the population reaches some
% maximum value N so that dx/dt = a*x*(1-x/N). Defining X = x/N, we have 
% dX/dt = a*X*(1-X).  
% Part 1. This equation has two fixed points at 0 and 1. Explain the
% meaning of these two points.
% Part 2: Evaluate the stability of these fixed points. Does it depend on
% the value of the parameter a? 
% Part 3: Write a function that takes two inputs - the initial condition x0
% and the a parameter and integrates the equation forward in time. Make
% your code return two variables - the timecourse of X and the time
% required for the population to reach 99% of its maximum value. 
% Part 4: The logistic equation has an exact solution: 
%  x(t) = 1/(1+(1/x0-1)*exp(-a*t)) use this to derive an expression for the
%  time require to reach 99% of population max and plot a comparison of
%  this solution with the numerical value determined by integration 
%  (a) for all values of x0: 0<x0<=1 for a = 3
%  and (b) for all values of a: 0 < a <= 5 for x0 = 0.1.
% Part 5: Another possible model is to consider discrete generations
% instead allowing the population to vary continuously. e.g. X(t+1) = a*
% X(t)*(1-X(t)). Consider this model and vary the a parameter in the range 0
% < a <= 4. For each value of a choose 200 random starting points  0 < x0 < 1 
% and iterate the equation forward to steady state. For each final
% value Xf, plot the point in the plane (a,Xf) so that at the end you will
% have produced a bifucation diagram showing all possible final values of
% Xf at each value of a. Explain your results. 

% Problem 2. Genetic toggle switches. 
% Consider a genetic system of two genes A and B in which each gene
% product represses the expression of the other. Make the following
% assumptions: 
% a. Repression is cooperative:  each promotor region of one gene has 4
% binding sites for the other protein and that all of these need to be
% occupied for the gene to be repressed. 
% b. You can ignore the intermediate mRNA production so that the product of
% the synthesis of one gene can be assumed to directly repress the other
% c. the system is prefectly symmetric so that the degradation
% times, binding strengths etc are the same for both genes. 
% d. You can choose time and concentration scales so that all Michaelis
% binding constants and degradation times are equal to 1. 
%
% Part 1. Write down a two equation model (one for each gene product) for
% this system. Your model should have one free parameter corresponding to the
% maximum rate of expression of the gene, call it V. 
%
% Part 2. Write code to integrate your model in time and plot the results for V = 5 for two cases, 
% one in which A0 > B0 and one in which B0 > A0. 
%
% Part 3. By any means you want, write code to produce a bifurcation diagram showing all
% fixed points of the system as a function of the V parameter. 

% Problem 3. Toggle switches continued. 
% Continue with the model from part 2 but now assume that each gene
% autoactivates itself cooperatively with 4 binding sites, all of which
% need to be bound for the gene to be transcribed. Assume that the
% repressive and activating components of the model are additive, that is the
% net rate of transcription is equal to that for the repression only model
% from Problem 2 with the activation component added on. Continue to make
% all the assumptions noted above for this new model. 
% Repeat all three parts of Problem 2 for this new model. Comment on the
% differences between the two models. 

% (These two questions will be considered HW9 if attempted)

% Problem 4. Consider three models, your two toggle switch models from
% problems 2 and 3 and the following model. 
% dx/dt = y
% dy/dt = (1-x^2)*y - x
% For the toggle switch models, choose your parameters such that
% your system is in the bistable or multistable regime. 
% In each case, write code to make a plot showing the fixed points, null-
% clines, and vector flow field. Comment on what your plot shows in 1-2
% sentences in each case. 

% Problem 5. Consider a four reaction model for a gene:
% 0 --> M, M--> 0, M --> M + P, P --> 0
% where 0 denotes nothing (i.e. no M or P). Let the rates for these reactions be k1, k2, k3, and k4 respectively
% One can consider M to the mRNA for the gene and P to the protein. 
%
% Part 1. Briefly explain the model, what does each reaction correspond to?
% Part 2. Write down an ordinary differential equation version of the model
% and use it compute the value of the values of M and P at the fixed point
% as a function of the four rate constants. 
% Part 3. Write code to implement a Gillespie algorithm simultion of this
% system. Start with k1 = k3 = 10, k2 = k4 = 1. PLot a few trajectories of
% length 200 time units. 
% Part 4. Use your Gillespie simulation with the same parameters as before
% except vary k1 between 1 and 100. In each case, use simulated
% trajectories to compute the mean and standard deviation of the
% distribution. Plot these values a function of k1. Make sure you run your
% trajectories long enough to accumulate statistics. 
% Part 5. Repeat 4 but this time vary k3 between 1 and 100 and plot as a
% function of k3. 
% Part 6. Use simlations to make plots of the probability of having n molecules of P for 
% the cases k1 = 1;k3 = 100, and k1 = 100; k3 = 1. Explain brielfly your
% results in Parts 4,5, and 6. 
%