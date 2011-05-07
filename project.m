%Term Project: CS177 Script file for all problems
%mentioned in the tutorial.
%Author: Mehreen Asad
%Date: 05/04/2011

%Problem 1:
syms x; %Declare symbolic variable x
f = (sin(x)^2*cos(x))/ (2+3*sin(x))^2 % function to be integrated
P1=int(f) %Integral of the function
pretty(P1)% Showing in mathematical format

subplot(2,2,1)
ezplot(f)  % for function plot

subplot(2,2,2)
ezplot(P1)  % for Integral plot.


%Problem 2:

syms R y H; %Declare symbolic variables.
dV = pi*R^3*(1-y/H)^2 %equation to be integrated.
P2=int(dV,0,H) % Integral of the equation.


%Problem 3:
syms T v V w t; %Declare symbolic variables
v=V*cos(w*t)
T=(2*pi)/w

vrms=sqrt(1/T*int(v^2,t,0,T))
[vrms how]=simple(vrms) % how gives the method for simplification


%Problem 4:

R=3;  %Radius
L=8;  %Length
syms w y h  %Declare symbolic variables
w=2*sqrt(R^2-(R-y)^2) %Create symbolic expression w in terms of symbolic variables
S = L*w  %Create the expression that will be integrated.
V = int(S,y,0,h) % Use the int command for determining integral
Vscale = [40:40:200] % create a vector with values of V
for i=1:5  %Each pass in the loop solves h for one value of V
    Veq=V-Vscale(i); %Create the equation for h to be solved
    h_ans(i)=solve(Veq);  %Use the solve command to solve for h
end

h_scale=double(h_ans)  % double command is used for computing numeric values.




