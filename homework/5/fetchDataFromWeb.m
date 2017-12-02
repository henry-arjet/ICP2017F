webTriggers = webread('http://www.shahmoradi.org/ICP2017F/homework/5-problems/triggers.txt');
triggers = strsplit(webTriggers, '\n');
dataDir = 'swift/';
mkdir(dataDir);
missingFileCounter = 0;

for i=1:length(triggers);
    dataRepos = 'http://www.shahmoradi.org/ICP2017F/homework/5-problems/swift/';
    filename = ['GRB', triggers{i}, '_ep_flu.txt'];
    dataURL = [dataRepos, filename];

    try
        data = webread(dataURL);
        fileID = fopen([dataDir, filename], 'w');
        fprintf(fileID, '%s', data);
        fclose(fileID)
    catch
        missingFileCounter = missingFileCounter + 1;
        disp('The requested file does not exist on the web! Skipping...');
    end
end
disp(['Total number of missing files: ',num2str(missingFileCounter)]);
