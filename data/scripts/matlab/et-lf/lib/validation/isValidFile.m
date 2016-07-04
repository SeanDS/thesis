% Throws an error if the specified input path is not a valid file.
%
% Sean Leavey
% sean.leavey@ligo.org
% July 2015
function valid = isValidFile(path)
    valid = exist(path, 'file');
end