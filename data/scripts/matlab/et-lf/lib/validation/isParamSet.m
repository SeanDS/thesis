% Throws an error if the specified input par is not a valid SpeedMeterLib
% parameter set.
%
% Sean Leavey
% July 2015
function valid = isParamSet(par)
    valid = true;

    if ~isa(par, 'ParETLF')
        valid = false;
    end
    
    % TODO: add more checks
end