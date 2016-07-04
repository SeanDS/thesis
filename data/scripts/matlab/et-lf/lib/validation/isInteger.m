% Throws an error if the specified input is not integer.
%
% Sean Leavey
% sean.leavey@ligo.org
% July 2015
function truth = isInteger(number)
    truth = (mod(number, 1) == 0);
end