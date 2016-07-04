% Throws an error if the specified input path is not a valid path to a Kat
% binary.
%
% Sean Leavey
% sean.leavey@ligo.org
% September 2015
function valid = isValidKatPath(path)
    if ~exist('FT_check_for_kat_binary', 'file')
        error('The function FT_check_for_kat_binary is not on the Matlab path. This function should only be used when SimTools has been added to the path.');
    end

    valid = false;

    if ~(isequal(path, ''))
        FT = FT_init_Finesse('name', 'kat', 'path', path);
        
        try
            FT_check_for_kat_binary(FT);
            
            valid = true;
        catch
            
        end
    end
end