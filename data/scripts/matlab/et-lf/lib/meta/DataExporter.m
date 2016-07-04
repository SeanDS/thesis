% Class to export matrices with complex data to CSV, with various options.
% For instance, this can export a CSV file with complex numbers formatted
% in Python style X+Yj (as opposed to Matlab style X+Yi) style.
%
% Sean Leavey
% November 2015
classdef DataExporter < matlab.mixin.SetGet
    properties(Access = public)
        data;
        dataheaders;
        format = '%e';
        complexformat = '%.16f';
    end
    
    methods
        function self = DataExporter()
        end
        
        function checkPayload(self)
            if isempty(self.get('data'))
                error('Data set is empty');
            end
            
            if ~isnumeric(self.get('data'))
                error('Specified data must be numeric');
            end
            
            if ~iscell(self.get('dataheaders'))
                error('Specified dataheaders must be a cell array');
            end
            
            if size(self.get('data'), 2) ~= length(self.get('dataheaders'))
                error('Number of columns of data does not match number of titles');
            end
        end
        
        % exports to CSV
        function exportCsv(self, filename, varargin)
            % check data
            self.checkPayload();
            
            %% Parse inputs
            
            parser = inputParser();
            parser.KeepUnmatched = true;
            
            % delimiter
            parser.addParameter('delimiter', ',', @isstr);
            
            % end line character
            % FIXME: validate endline character
            parser.addParameter('endline', '\r\n', @isstr);
            
            % python compatible
            parser.addParameter('python', false, @islogical);
            
            % parse inputs
            parser.parse(varargin{:});
    
            % assign results
            input = parser.Results;
            
            %% Check for special complex number handling
            thisData = self.get('data');
            
            nDataColumns = size(thisData, 2);
            complex = zeros(1, nDataColumns);
            
            for i = 1 : nDataColumns
                complex(i) = ~isreal(thisData(:, i));
            end
            
            hasComplex = any(complex == true);
            
            % set imaginary character
            if input.python
                imagChar = 'j';
            else
                imagChar = 'i';
            end
            
            %% Write CSV file
            
            % open file
            fid = fopen(filename, 'w');
            
            % write headers
            fprintf(fid, ['%s', input.delimiter], self.dataheaders{:});
            fprintf(fid, input.endline);
            
            % write data
            for i = 1 : size(thisData, 1)
                row = thisData(i, :);
                
                if hasComplex
                    % loop over rows individually                    
                    for j = 1 : nDataColumns                        
                        if complex(j)
                            % this column is complex
                            column = sprintf([self.get('complexformat'), '+', self.get('complexformat'), imagChar], real(row(j)), imag(row(j)));
                            
                            % replace instances of "+-" with "-"
                            column = strrep(column, '+-', '-');
                        else
                            column = sprintf(self.get('format'), row(j));
                        end
                        
                        fprintf(fid, sprintf(['%s', input.delimiter], column));
                    end
                else
                    fprintf(fid, [self.format, input.delimiter], row.');
                end
                
                % write endline character
                fprintf(fid, input.endline);
            end
            
            % close file
            fclose(fid);
        end
    end
end