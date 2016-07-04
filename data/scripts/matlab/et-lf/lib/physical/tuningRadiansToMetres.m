% Converts a tuning in radians to a mirror offset in metres.
%
% Sean Leavey
% sean.leavey@ligo.org
% April 2015
function length = tuningRadiansToMetres(tuning, lambda)
    length = tuning * lambda / (2 * pi);
end