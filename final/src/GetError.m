clear all
load('cells.mat') %in form cells(x,y, z, t) = value
time=[10,12,14,16,18,20,22] ;
errors = zeros(7, 1);
saveB = 0;
savedB = [];
for t = 1:length(time)
    errorsAtDay = 0
    for nZ = 1:size(cells, 3)
        zSlice = cells(:, :, nZ, t); %same as the subplot data made in part 1
        BW = imbinarize(zSlice);
        B = bwboundaries(BW);
        for i = 1:length(B)
            boundary = B{i}; %for this, the first peram controls which point it is and the second controls whether x or y
            for j = 1:size(boundary, 1)
                errorsAtDay = errorsAtDay + zSlice(boundary(j,1), boundary(j,2));
            end                
        end
    end
    errors(t) = errorsAtDay*10.^(-7);
end

