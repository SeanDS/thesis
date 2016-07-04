% Function to calculate the rms signal for a given amplitude spectral
% density.
%
% signalRms = calculateRms(f, asd)
%
% Inputs:
%
% f = frequency vector [1 x nFreq]
% asd = amplutude spectral density [1 x nFreq]
%
% Outputs:
%
% signalRms = rms signal vector [1 x nFreq]
%
% If you want the effective rms motion at 1 Hz, just calculate the
% signalRms vector and extract the number corresponding to 1 Hz (note that
% the frequency vector needs to contain the value 1):
%
% rmsAt1Hz = signalRms(find(f == 1));
%
% Sean Leavey
% August 2015
function signalRms = calculateRms(f, asd)
    if ~isequal(length(f), length(asd))
        error('Specified f and asd arguments don''t have the same size');
    end

    % create empty results vector
    signalRms = zeros(1, length(f));
    
    % set the rms for the final value equal to the spectral value
    signalRms(end) = asd(end);

    % loop over each frequency, summing the rms
    for i = length(f) - 1 : -1 : 1
        % difference in frequency between this bin and the last
        deltaF = f(i + 1) - f(i);
        
        % rms value for this frequency upwards
        signalRms(i) = sqrt(signalRms(i + 1) .^ 2 + deltaF .* asd(i) .^ 2);
    end
end