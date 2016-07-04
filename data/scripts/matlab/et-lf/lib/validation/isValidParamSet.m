% Throws an error if the specified input par is not a valid ET parameter
% set.
%
% Sean Leavey
% sean.leavey@ligo.org
% September 2015
function valid = isValidParamSet(par)
    valid = true;

    if ~isa(par, 'ParamETLF')
        valid = false;
    end
    
    % TODO: add more checks
end