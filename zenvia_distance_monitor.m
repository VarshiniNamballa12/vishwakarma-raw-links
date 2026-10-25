
% ZENVIA - Industrial Automation
% Module 1: Distance Monitoring and Machine Safety

clc;
clear;
close all;

% Set safety threshold in centimeters
threshold = 50;

% Ask user to enter simulated object distance
distance = input('Enter object distance (cm): ');

% Display system information
fprintf('\n===== ZENVIA SAFETY SYSTEM =====\n');
fprintf('Object Distance: %.2f cm\n', distance);
fprintf('Safety Threshold: %.2f cm\n', threshold);

% Check distance and determine machine status
if distance < 0
    disp('Invalid distance. Enter a non-negative value.');
elseif distance < threshold
    disp('Machine Status: STOPPED');
    disp('WARNING: Object is too close!');
else
    disp('Machine Status: RUNNING');
    disp('Distance condition satisfied.');
end
