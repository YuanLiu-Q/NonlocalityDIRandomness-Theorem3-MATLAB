% File: ParticalDeterministicFacet3232.m
% Author: Yuan Liu
% Last Modified: June 13, 2024
%
% Description:
% This MATLAB script is designed to compute the H-representation of the 
% partially deterministic polytope POLYxy for the (3,2;3,2) Bell scenario. 
%
% To execute this script, the MPT3 (Multi-Parametric Toolbox 3, 
% https://www.mpt3.org/) package is required.
%
% The output of this script is a MATLAB file 'POLY.mat' which is the
% H-representation of the intersection of all partially deterministic 
% polytopes POLY11,POLY12,...,POLY33
%
%

% --- Begin Code ---

% Load all partially deterministic no-signaling extreme points
load('PD.mat')
load('D.mat')

% Arrange boxes into vectors
V11=[];
V12=[];
V13=[];
V21=[];
V22=[];
V23=[];
V31=[];
V32=[];
V33=[];
 for i=1:32
     V11=[V11,reshape(PD11{i},[],1)];
     V12=[V12,reshape(PD12{i},[],1)];
     V13=[V13,reshape(PD13{i},[],1)];
     V21=[V21,reshape(PD21{i},[],1)];
     V22=[V22,reshape(PD22{i},[],1)];
     V23=[V23,reshape(PD23{i},[],1)];
     V31=[V31,reshape(PD31{i},[],1)];
     V32=[V32,reshape(PD32{i},[],1)];
     V33=[V33,reshape(PD33{i},[],1)];
 end
 
 for i=1:64
     V11=[V11,reshape(D{i},[],1)];
     V12=[V12,reshape(D{i},[],1)];
     V13=[V13,reshape(D{i},[],1)];
     V21=[V21,reshape(D{i},[],1)];
     V22=[V22,reshape(D{i},[],1)];
     V23=[V23,reshape(D{i},[],1)];
     V31=[V31,reshape(D{i},[],1)];
     V32=[V32,reshape(D{i},[],1)];
     V33=[V33,reshape(D{i},[],1)];
 end
 
 % Generating the partially deterministic polytope POLYxy from its V-representation
 POLY11 = Polyhedron(V11');
 POLY12 = Polyhedron(V12');
 POLY13 = Polyhedron(V13');
 POLY21 = Polyhedron(V21');
 POLY22 = Polyhedron(V22');
 POLY23 = Polyhedron(V23');
 POLY31 = Polyhedron(V31');
 POLY32 = Polyhedron(V32');
 POLY33 = Polyhedron(V33');
 
 
 % Generation of the intersection polytope of POLY11,POLY12,...,POLY33 from
 % their H-representations
 
A=[POLY11.A;POLY12.A;POLY13.A;
   POLY21.A;POLY22.A;POLY23.A;
   POLY31.A;POLY32.A;POLY33.A];
b=[POLY11.b;POLY12.b;POLY13.b;
   POLY21.b;POLY22.b;POLY23.b;
   POLY31.b;POLY32.b;POLY33.b];
Ae=[POLY11.Ae;POLY12.Ae;POLY13.Ae;
   POLY21.Ae;POLY22.Ae;POLY23.Ae;
   POLY31.Ae;POLY32.Ae;POLY33.Ae];
be=[POLY11.be;POLY12.be;POLY13.be;
   POLY21.be;POLY22.be;POLY23.be;
   POLY31.be;POLY32.be;POLY33.be];

POLY = Polyhedron('A', A, 'b', b, 'Ae', Ae, 'be', be)

% Save the intersection polytope
save("POLY.mat","POLY")

