% Collapses I and Q quadratures of sensing matrix into magnitude and phase
%
% Sean Leavey
% July 2016

function sensingMatrix = convert_iq_to_complex(rawSensingMatrix, dofs, probeNames, dcProbeNames)
    % rotate each signal to make it a pure real number
    rawSensingMatrix = sign(real(rawSensingMatrix)) .* abs(rawSensingMatrix);
    
    % prepare final sensing matrix
    sensingMatrix = zeros(length(dofs), length(probeNames) - length(dcProbeNames));

    % collapse into a imagenary number so that one element contains both
    % the amplitude and phase
    % phase and its amplitude.

    % index count for final sensing matrix
    count = 1;
    
    % flag to skip Q probes when preceded by an I
    skip = false;

    for n = 1 : length(probeNames)
        if any(ismember(dcProbeNames, probeNames(n)))
            % probe is DC, so just add it as normal
            sensingMatrix(:, count) = rawSensingMatrix(:, n);
        else
            % skip because we've already paired this Q probe with an I
            if skip
                % reset skip
                skip = false;
                
                continue
            end
            
            fprintf('Pairing %s and %s\n', cell2mat(probeNames(n)), cell2mat(probeNames(n + 1)));
            
            % probe is an I/Q pair, so collapse it
            sensingMatrix(:, count) = rawSensingMatrix(:, n) + 1i .* rawSensingMatrix(:, n + 1);
            
            % set skip flag
            skip = true;
        end
        
        % increment count
        count = count + 1;
    end
end