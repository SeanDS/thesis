% Saves a figure in various formats to the specified directory.
%
% Sean Leavey
% July 2015
function exportFigure(fig, varargin)    
    %% Validate inputs
    
    if ~ishandle(fig)
        error('Specified figure is not valid');
    end
    
    if nargin > 1
        dir = varargin{1};
    else
        dir = '.';
    end
    
    if nargin > 2
        prefix = varargin{2};
    else
        prefix = '';
    end
    
    %% Get script
    
    % get stack
    stack = dbstack('-completenames');
    
    % calling filename
    script = stack(end).name;

    %% Get username
    
    username = getUsername();
    
    %% Adjust size
    
    % store old units
    oldUnits = fig.get('Units');
    
    % set units to centimeters for paper size
    fig.set('Units', 'centimeters');
    
    % get figure size
    figSize = fig.get('Position');

    % set paper size
    fig.set('PaperSize', [figSize(3), figSize(4)]);
    fig.set('PaperPositionMode', 'manual');
    fig.set('PaperPosition', [0, 0, figSize(3), figSize(4)]);
    
    %% Save
    
    % time
    time = datestr(now(), 'yyyy-mm-dd-HH-MM-SS');
    
    % filename
    % if this script is called directly, just use the prefix
    if strcmp(stack(end).file, [mfilename('fullpath'), '.m'])
        filename = prefix;
    % otherwise use prefix, script name, calling user and current time
    else
        filename = sprintf('%s-%s-%s-%s', prefix, script, username, time);
    end
    
    % check path
    path = strcat(dir, filesep, filename);
    
    if ~exist(dir, 'dir')
        if ~mkdir(dir)
            error('Cannot make the directory %s', dir);
        end
    end
    
    % save in various formats
    saveas(fig, path, 'pdf');
    saveas(fig, path, 'png');
    saveas(fig, path, 'fig');
    
    %% Restore old units
    
    fig.set('Units', oldUnits);
end