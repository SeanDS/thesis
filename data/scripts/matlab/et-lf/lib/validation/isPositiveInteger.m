% Throws an error if the specified input is not integer and greater than
% zero.
%
% Sean Leavey
% sean.leavey@ligo.org
% December 2015
function truth = isPositiveInteger(number)
    truth = (mod(number, 1) == 0) && isPositive(number);
end