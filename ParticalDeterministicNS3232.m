% File: ParticalDeterministicNS3232.m
% Author: Yuan Liu
% Last Modified: June 13, 2024
%
% Description:
% This MATLAB script is designed to generate all partially deterministic 
% no-signaling extreme points, denoted as PDxy,for the (3,2;3,2) Bell scenario.
% (Excluding any local deterministic points.) 
%
% Each points in PDxy satisfies the no-signaling conditions and is deterministic 
% for the settings (x,y).


% Each point is encoded as a 6x6 matrix, symbolizing a full probability 
% representation of a box {p(a,b|x,y)} in the (3,2;3,2) Bell scenario.
% 
%
% The output of this script is a MATLAB file 'PD.mat' which contains the
% generated points in PD11,PD12,...PD33.
%
%


% --- Begin Code ---

% PR boxes in the (2,2;2,2) Bell scenario
a=0.5;
PR1=[a,0,a,0;
     0,a,0,a;
     a,0,0,a;
     0,a,a,0];
 PR2=[a,0,a,0;
     0,a,0,a;
     0,a,a,0;
     a,0,0,a];
 PR3=[0,a,a,0;
     a,0,0,a;
     a,0,a,0;
     0,a,0,a];
 PR4=[a,0,0,a;
     0,a,a,0;
     a,0,a,0;
     0,a,0,a];
 PR5=[a,0,0,a;
     0,a,a,0;
     0,a,0,a;
     a,0,a,0];
 PR6=[0,a,a,0;
     a,0,0,a;
     0,a,0,a;
     a,0,a,0];
 PR7=[0,a,0,a;
     a,0,a,0;
     a,0,0,a;
     0,a,a,0];
 PR8=[0,a,0,a;
     a,0,a,0;
     0,a,a,0;
     a,0,0,a];
 
% PD11: all partially deterministic no-signaling extreme points with
% settings (x=1,y=1) are determnistic
PD11={}; 
PD11{1}=[1,0,a,a,a,a;
       0,0,0,0,0,0;
       a,0,PR1(1,:);
       a,0,PR1(2,:);
       a,0,PR1(3,:);
       a,0,PR1(4,:)];
PD11{2}=[0,1,a,a,a,a;
       0,0,0,0,0,0;
       0,a,PR1(1,:);
       0,a,PR1(2,:);
       0,a,PR1(3,:);
       0,a,PR1(4,:)];
PD11{3}=[0,0,0,0,0,0;
       0,1,a,a,a,a;
       0,a,PR1(1,:);
       0,a,PR1(2,:);
       0,a,PR1(3,:);
       0,a,PR1(4,:)];
PD11{4}=[0,0,0,0,0,0;
       1,0,a,a,a,a;
       a,0,PR1(1,:);
       a,0,PR1(2,:);
       a,0,PR1(3,:);
       a,0,PR1(4,:)];
   
PD11{5}=[1,0,a,a,a,a;
       0,0,0,0,0,0;
       a,0,PR2(1,:);
       a,0,PR2(2,:);
       a,0,PR2(3,:);
       a,0,PR2(4,:)];
PD11{6}=[0,1,a,a,a,a;
       0,0,0,0,0,0;
       0,a,PR2(1,:);
       0,a,PR2(2,:);
       0,a,PR2(3,:);
       0,a,PR2(4,:)];
PD11{7}=[0,0,0,0,0,0;
       0,1,a,a,a,a;
       0,a,PR2(1,:);
       0,a,PR2(2,:);
       0,a,PR2(3,:);
       0,a,PR2(4,:)];
PD11{8}=[0,0,0,0,0,0;
       1,0,a,a,a,a;
       a,0,PR2(1,:);
       a,0,PR2(2,:);
       a,0,PR2(3,:);
       a,0,PR2(4,:)];
   
PD11{9}=[1,0,a,a,a,a;
       0,0,0,0,0,0;
       a,0,PR3(1,:);
       a,0,PR3(2,:);
       a,0,PR3(3,:);
       a,0,PR3(4,:)];
PD11{10}=[0,1,a,a,a,a;
       0,0,0,0,0,0;
       0,a,PR3(1,:);
       0,a,PR3(2,:);
       0,a,PR3(3,:);
       0,a,PR3(4,:)];
PD11{11}=[0,0,0,0,0,0;
       0,1,a,a,a,a;
       0,a,PR3(1,:);
       0,a,PR3(2,:);
       0,a,PR3(3,:);
       0,a,PR3(4,:)];
PD11{12}=[0,0,0,0,0,0;
       1,0,a,a,a,a;
       a,0,PR3(1,:);
       a,0,PR3(2,:);
       a,0,PR3(3,:);
       a,0,PR3(4,:)];
  
PD11{13}=[1,0,a,a,a,a;
       0,0,0,0,0,0;
       a,0,PR4(1,:);
       a,0,PR4(2,:);
       a,0,PR4(3,:);
       a,0,PR4(4,:)];
PD11{14}=[0,1,a,a,a,a;
       0,0,0,0,0,0;
       0,a,PR4(1,:);
       0,a,PR4(2,:);
       0,a,PR4(3,:);
       0,a,PR4(4,:)];
PD11{15}=[0,0,0,0,0,0;
       0,1,a,a,a,a;
       0,a,PR4(1,:);
       0,a,PR4(2,:);
       0,a,PR4(3,:);
       0,a,PR4(4,:)];
PD11{16}=[0,0,0,0,0,0;
       1,0,a,a,a,a;
       a,0,PR4(1,:);
       a,0,PR4(2,:);
       a,0,PR4(3,:);
       a,0,PR4(4,:)];
   
   
 PD11{17}=[1,0,a,a,a,a;
       0,0,0,0,0,0;
       a,0,PR5(1,:);
       a,0,PR5(2,:);
       a,0,PR5(3,:);
       a,0,PR5(4,:)];
PD11{18}=[0,1,a,a,a,a;
       0,0,0,0,0,0;
       0,a,PR5(1,:);
       0,a,PR5(2,:);
       0,a,PR5(3,:);
       0,a,PR5(4,:)];
PD11{19}=[0,0,0,0,0,0;
       0,1,a,a,a,a;
       0,a,PR5(1,:);
       0,a,PR5(2,:);
       0,a,PR5(3,:);
       0,a,PR5(4,:)];
PD11{20}=[0,0,0,0,0,0;
       1,0,a,a,a,a;
       a,0,PR5(1,:);
       a,0,PR5(2,:);
       a,0,PR5(3,:);
       a,0,PR5(4,:)];
   
PD11{21}=[1,0,a,a,a,a;
       0,0,0,0,0,0;
       a,0,PR6(1,:);
       a,0,PR6(2,:);
       a,0,PR6(3,:);
       a,0,PR6(4,:)];
PD11{22}=[0,1,a,a,a,a;
       0,0,0,0,0,0;
       0,a,PR6(1,:);
       0,a,PR6(2,:);
       0,a,PR6(3,:);
       0,a,PR6(4,:)];
PD11{23}=[0,0,0,0,0,0;
       0,1,a,a,a,a;
       0,a,PR6(1,:);
       0,a,PR6(2,:);
       0,a,PR6(3,:);
       0,a,PR6(4,:)];
PD11{24}=[0,0,0,0,0,0;
       1,0,a,a,a,a;
       a,0,PR6(1,:);
       a,0,PR6(2,:);
       a,0,PR6(3,:);
       a,0,PR6(4,:)];
   
PD11{25}=[1,0,a,a,a,a;
       0,0,0,0,0,0;
       a,0,PR7(1,:);
       a,0,PR7(2,:);
       a,0,PR7(3,:);
       a,0,PR7(4,:)];
PD11{26}=[0,1,a,a,a,a;
       0,0,0,0,0,0;
       0,a,PR7(1,:);
       0,a,PR7(2,:);
       0,a,PR7(3,:);
       0,a,PR7(4,:)];
PD11{27}=[0,0,0,0,0,0;
       0,1,a,a,a,a;
       0,a,PR7(1,:);
       0,a,PR7(2,:);
       0,a,PR7(3,:);
       0,a,PR7(4,:)];
PD11{28}=[0,0,0,0,0,0;
       1,0,a,a,a,a;
       a,0,PR7(1,:);
       a,0,PR7(2,:);
       a,0,PR7(3,:);
       a,0,PR7(4,:)];   

   
PD11{29}=[1,0,a,a,a,a;
       0,0,0,0,0,0;
       a,0,PR8(1,:);
       a,0,PR8(2,:);
       a,0,PR8(3,:);
       a,0,PR8(4,:)];
PD11{30}=[0,1,a,a,a,a;
       0,0,0,0,0,0;
       0,a,PR8(1,:);
       0,a,PR8(2,:);
       0,a,PR8(3,:);
       0,a,PR8(4,:)];
PD11{31}=[0,0,0,0,0,0;
       0,1,a,a,a,a;
       0,a,PR8(1,:);
       0,a,PR8(2,:);
       0,a,PR8(3,:);
       0,a,PR8(4,:)];
PD11{32}=[0,0,0,0,0,0;
       1,0,a,a,a,a;
       a,0,PR8(1,:);
       a,0,PR8(2,:);
       a,0,PR8(3,:);
       a,0,PR8(4,:)];

% Rotations of the settings
P={};
%R13_24
P{1}=[0,0,1,0,0,0;
        0,0,0,1,0,0;
        1,0,0,0,0,0;
        0,1,0,0,0,0;
        0,0,0,0,1,0;
        0,0,0,0,0,1;];
%R15_26
P{2}=[0,0,0,0,1,0;
        0,0,0,0,0,1;
        0,0,1,0,0,0;
        0,0,0,1,0,0;
        1,0,0,0,0,0;
        0,1,0,0,0,0;];
 %R35_46
%  P{3}=[1,zeros(1,5);
%       0,1,zeros(1,4);
%       0,0,0,0,1,0;
%       0,0,0,0,0,1;
%       0,0,1,0,0,0;
%       0,0,0,1,0,0];


% Generate all partially deterministic no-signaling extreme points PDxy
% with other settings (x,y) are determnistic by applying rotations to
% points in PD11
  PD21={};
  for i=1:32
      PD21{i}=P{1}*PD11{i};
  end
  PD31={};
  for i=1:32
      PD31{i}=P{2}*PD11{i};
  end
    PD12={};
  for i=1:32
      PD12{i}=PD11{i}*P{1};
  end
  PD13={};
  for i=1:32
      PD13{i}=PD11{i}*P{2};
  end
  
    PD22={};
  for i=1:32
      PD22{i}=P{1}*PD11{i}*P{1};
  end
  PD23={};
  for i=1:32
      PD23{i}=P{1}*PD11{i}*P{2};
  end
  
      PD32={};
  for i=1:32
      PD32{i}=P{2}*PD11{i}*P{1};
  end
  PD33={};
  for i=1:32
      PD33{i}=P{2}*PD11{i}*P{2};
  end
  
% Save all generated points
save("PD.mat","PD11","PD12","PD13","PD21","PD22","PD23","PD31","PD32","PD33")