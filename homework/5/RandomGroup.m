rng(131313);
nstudents = 99;

sourceTable = readtable('students.csv');
perm = randperm(nstudents);
studentTriple = cell(nstudents/3,3);
 
for i = 1:nstudents/3
    studentTriple(i,:) = [ sourceTable{perm(i),2}, sourceTable{perm(nstudents/3+i),2},...
    sourceTable{perm(2*nstudents/3+i),2}];
end
xlswrite('student triples.xlsx', studentTriple);