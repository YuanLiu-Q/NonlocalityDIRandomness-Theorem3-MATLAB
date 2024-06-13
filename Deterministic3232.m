% File: Deterministic3232.m
% Author: Yuan Liu
% Last Modified: June 13, 2024
%
% Description:
% This MATLAB script is designed to generate all local deterministic points
% for the (3,2;3,2) Bell scenario.
%
% Each local deterministic point is encoded as a 6x6 matrix, symbolizing a
% full probability representation of a box {p(a,b|x,y)} in the (3,2;3,2)
% Bell scenario.
%
% The output of this script is a MATLAB file 'D.mat' which contains the
% generated points.
%
%



% --- Begin Code ---

% The first local deterministic point
D_1=[1,0,1,0,1,0;
    0,0,0,0,0,0;
    1,0,1,0,1,0;
    0,0,0,0,0,0;
    1,0,1,0,1,0;
    0,0,0,0,0,0];

% Rotations of the outputs
R12=[0,1,zeros(1,4);
    1,0,zeros(1,4);
    0,0,1,zeros(1,3);
    0,0,0,1,zeros(1,2);
    0,0,0,0,1,0;
    0,0,0,0,0,1];
R34=[1,zeros(1,5);
    0,1,zeros(1,4);
    0,0,0,1,0,0;
    0,0,1,0,0,0;
    0,0,0,0,1,0;
    0,0,0,0,0,1];
R56=[1,zeros(1,5);
    0,1,zeros(1,4);
    0,0,1,zeros(1,3);
    0,0,0,1,0,0;
    0,0,0,0,0,1;
    0,0,0,0,1,0];
R1234=R12*R34;
R1256=R12*R56;
R3456=R34*R56;
Rall=R12*R34*R56;

P={};
P{1}=eye(6);
P{2}=R12;
P{3}=R34;
P{4}=R56;
P{5}=R1234;
P{6}=R1256;
P{7}=R3456;
P{8}=Rall;

% Generate all local deterministic boxes by applying rotations to the first
% local deterministic box D_1
D={};
k=1;
for i=1:8
    for j=1:8
        D{k}=P{i}*D_1*P{j};
        k=k+1;
    end
end

% Save all generated points
save("D.mat","D")


