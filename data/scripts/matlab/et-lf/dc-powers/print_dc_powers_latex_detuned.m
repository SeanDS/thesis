function print_dc_powers_latex_detuned()
    %% Settings
    
    fieldFormat = '%.0f MHz';
    fieldScale = 1e-6;

    %% Paths
    
    % this script's directory
    directory = fileparts(mfilename('fullpath'));

    % useful functions
    addpath(genpath([directory, '/../']));
    
    %% Model
    opt = get_opt_at_operating_point();
    
    %% Fields
    fields = opt.vFrf;
    
    %% Links
    
    linkNums = [opt.getLinkNum('Laser', 'Mod1'), ...
        opt.getLinkNum('Mod2', 'PR'), ...
        opt.getLinkNum('PR', 'PRF'), ...
        opt.getLinkNum('PRF', 'POP'), ...
        opt.getLinkNum('BS', 'IX'), ...
        opt.getLinkNum('IX', 'EX'), ...
        opt.getLinkNum('IY', 'EY'), ...
        opt.getLinkNum('BS', 'SR'), ...
        opt.getLinkNum('PR', 'REFL'), ...
        opt.getLinkNum('SR', 'AS')];
    
    % link names
    linkNames = {'Input from laser', 'After modulators', ...
        'Power recycling cavity', 'Power recycling pick-off', ...
        'Michelson cavity', 'Arm cavity X', 'Arm cavity Y', ...
        'Signal recycling cavity', 'Reflected back to laser', 'Output'};
    
    %% DC fields
    fDC = opt.tickle();
    
    %% Print matrix
    
    formattedFields = {};
    for i = 1 : length(fields)
        formattedFields{i} = ['\\textbf{', sprintf(fieldFormat, fields(i) * fieldScale), '}'];
    end
    
    % add total column
    formattedFields{end + 1} = '\\textbf{Total}';
    
    fprintf(['& ', strjoin(formattedFields, ' & '), ' \\\\ \n']);

    for i = 1 : length(linkNames)
        fieldPower = {};
        totalPower = 0;
        
        for j = 1 : length(fields)
            thisFieldPower = abs(fDC(linkNums(i), j)) .^ 2;
            
            fieldPower{j} = convertToSI(thisFieldPower);
            
            totalPower = totalPower + thisFieldPower;
        end
        
        % add total
        fieldPower{end + 1} = convertToSI(totalPower);
        
        fprintf(['\\textbf{', linkNames{i}, '} & ', strjoin(fieldPower, ' & '), ' \\\\ \n']);
    end

    fprintf('\n')
end

function [prefix, value] = representSI(value)
    % loosely based on metricise, in Optickle2 lib, by Tobin Fricke
    
    if value < 0
        lf = log10(-value);
    else
        lf = log10(value);
    end

    if lf > 9
        prefix = '\\giga';
        value = value / 1e9;
    elseif lf > 6
        prefix = '\\mega';
        value = value / 1e6;
    elseif lf > 3
        prefix = '\\kilo';
        value = value / 1000;
    elseif (lf > 0) || (lf == -inf)
        prefix = '';
    elseif lf > -3
        prefix = '\\milli';
        value = value * 1000;
    elseif lf > -6
        prefix = '\\micro';
        value = value * 1e6;
    elseif lf > -9
        prefix = '\\nano';
        value = value * 1e9;
    else
        prefix = '\\pico';
        value = value * 1e12;
    end
end

function si = convertToSI(power)
    [prefix, value] = representSI(power);

    if abs(value) > 1e-14
        % kludge because sprintf can't handle backslashes that it
        % doesn't recognise
        si = ['\\SI{', sprintf('%.0f}{%s', value, prefix), '\\watt}'];
    else
        si = '0';
    end
end