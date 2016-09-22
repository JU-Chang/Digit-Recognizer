%get a validation dataset from training set
clear;clc
trainFile = 'train.csv';
valFile = 'val.csv';
fidId_t = fopen(trainFile);
fidId_v = fopen(valFile); 
N = csvread(trainFile,1); 
[row,col]=size(N);
% M = textscan(fidId_t,'%s',1);
csvwrite(valFile,N,11,col);
close(trainFile);
close(valFile);