% Returns a log-spaced frequency vector based on the user's preferences
% specified in the struct 'input'. Generally, 'input' is itself created by
% simInputParser().
%
% Note that this function is only useful for the Optickle simulations,
% because Finesse cannot take a Matlab frequency vector as a frequency
% input.
%
% Sean Leavey
% sean.leavey@ligo.org
% September 2015
function f = getFrequencyVectorFromInput(input)
    if ~isstruct(input)
        error('Specified input is not a struct');
    end
    
    if input.useExistingFreqs
        f = input.f;
    else
        f = logspace(log10(input.fLow), log10(input.fHigh), input.fCount); 
    end
end