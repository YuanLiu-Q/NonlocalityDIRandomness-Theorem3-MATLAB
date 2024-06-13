% File: I3322.m
% Author: Yuan Liu
% Last Modified: June 13, 2024
%
% Description:
% This MATLAB script is used to maximize the I3322 expression (expression of 
% one of the two types of facet inequality in the (3,2;3,2) Bell scenario) 
% under the constraints that 1. no-signaling conditions; 2.normalization conditions; 
% 3.facet inequalities of the intersection polytope (of all partially 
% deterministic polytopes POLY11,POLY12,...,POLY33).
%
% To execute this script, the CVX (and the correspounidng solver(s), eg. MOSEK) 
% package is required.
%
%
%

% --- Begin Code ---
% --- Begin Code ---

%Load the intersection polytope
load('POLY.mat')
%maximaize the I3322 inequality
cvx_begin
variable x(36)
maximize x(1)+x(2)-x(3)-x(5)+x(7)-x(13)-x(15)+x(17)-x(25)+x(27)
subject to
    % All facets inequalities of partically deterministic polytopes POLY11,POLY12,...,POLY33
    POLY.A*x<=POLY.b;
    % The no-signaling conditions and normalization conditions
    POLY.Ae*x==POLY.be; 
cvx_end