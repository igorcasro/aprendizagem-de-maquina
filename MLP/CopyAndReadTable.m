function data = CopyAndReadTable(FullFilename, range)
%COPYANDREADTABLE copies file and reads table.
%
% Copies a file to the 'tempdir' , then used readtable to 
% read the contents. Afterwards the temp file is deleted.
% 
% Meindert Norg, 2021.
[~,name,ext]        = fileparts(FullFilename);
tempFullFilename    = fullfile(tempdir,[name,ext]);
copyfile(FullFilename,tempFullFilename);
data                = readtable(tempFullFilename, 'Range', range);
delete(tempFullFilename);
end