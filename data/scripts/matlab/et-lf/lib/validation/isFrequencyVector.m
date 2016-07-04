% Throws an error if the specified input f is not a finite, positive,
% numeric vector.
%
% Sean Leavey
% sean.leavey@ligo.org
% July 2015
function valid = isFrequencyVector(f)
    valid = true;
    
    try
        validateattributes(f, {'numeric'}, {'finite', 'positive'});
    catch
        valid = false;
    end
end