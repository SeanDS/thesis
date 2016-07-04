% Overrides the specified function argument with the specified value in the
% arguments that succeed. Returns the new argument list with the specified
% value overridden.
%
% Sean Leavey
% sean.leavey@ligo.org
% September 2015
function varargin = overrideArgument(argName, argVal, varargin)
    % check that varargin is properly defined if it's non-empty
    for i = 1 : length(varargin)
        if isa(varargin{i}, 'cell')
            error('Specified varargin argument is not unwrapped. Call overrideArgument using ''varargin{:}'' instead of ''varargin''.');
        end
    end

    % find index of argument
    iArg = find(strcmp(varargin, argName));
    
    % does argument exist in list?
    if iArg
        % overrride value and warn user
        warning('Overriding input argument %s', argName);
        
        varargin{iArg + 1} = argVal;
    else
        % add argument to end of list
        varargin{end + 1} = argName;
        varargin{end + 1} = argVal;
    end
end