% Prints the specified sensing matrix, in LaTeX tabular format.
%
% Sean Leavey
% sean.leavey@ligo.org
% June 2016
function print_sensing_matrix_latex(response, dofs, probes, order, varargin)
    %% Parse inputs
    if nargin > 4
        slopeFormat = varargin{1};
    else
        slopeFormat = '%2.2e';
    end
    
    if nargin > 5
        angleFormat = varargin{2};
    else
        angleFormat = '%2.2f';
    end

    %% Print matrix
    
    formattedDofs = {};
    for i = 1 : length(dofs)
        formattedDofs{i} = ['\\textbf{', cell2mat(dofs(order(i))), '}'];
    end
        
    fprintf(['& ', strjoin(formattedDofs, ' & '), ' \\\\ \n']);

    for i = 1 : length(probes)
        fResp = {};
        for j = 1 : length(dofs)
            fResp{j} = ['\\num{', sprintf(slopeFormat, abs(response(order(j), i))), '} (\\SI{', sprintf(angleFormat, angle(response(order(j), i)) * 180 / pi), '}{\\degree})'];
        end
        
        fprintf(['\\textbf{', probes{i}, '} & ', strjoin(fResp, ' & '), ' \\\\ \n']);
    end

    fprintf('\n')
end