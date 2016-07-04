% Gets the current user's username.
%
% Sean Leavey
% July 2015
function username = getUsername()
    % *nix, Mac
    if isunix
        [~, username] = system('whoami');
    elseif ispc
        [~, username] = system('echo %USERNAME%');
    end
    
    % remove newlines
    username = strrep(char(username), sprintf('\n'), '');
end