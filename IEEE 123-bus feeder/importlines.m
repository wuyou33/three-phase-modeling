function [NodeA,NodeB,Lengthft,Config] = importlines(filename)
%% Import data from spreadsheet
% Script for importing data from the following spreadsheet:
%
%    Workbook: /Users/hafez/Documents/MATLAB/Comprehensive-modeling-three-phase/ieee-123-open-dss/IEEE-123 feeder data/line data.xls
%    Worksheet: Sheet1
%
% To extend the code for use with different selected data or a different
% spreadsheet, generate a function instead of a script.

% Auto-generated by MATLAB on 2017/05/05 03:59:49

%% Import the data
[~, ~, raw] = xlsread(filename,'Sheet1');
raw = raw(4:end,:);

%% Create output variable
data = reshape([raw{:}],size(raw));

%% Allocate imported array to column variable names
NodeA = data(:,1);
NodeB = data(:,2);
Lengthft = data(:,3);
Config = data(:,4);

%% Clear temporary variables
clearvars data raw;