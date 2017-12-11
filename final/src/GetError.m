clear all
load('cells.mat') %in form cells(x,y, z, t) = value
time=[0,10,12,14,16,18,20,22];
errors = zeros(8, 1); %An array of errors for each day, matching the above time array. Created in the for loops below
                ...The reason it is 8 is to have a 0 value for time = zero
totals = zeros(8,1); %Same but for the total number of tumors
for t = 1:length(time)-1 %cycles through days, but only 10:22 so seven values. Use t+1 to offset in the saving
    errorsAtDay = 0; %clears this var to be reused
    totals(t+1) = sum(sum(sum(cells(:,:,:,t)))).*10.^(-7); %sums total tumors for graphing reasons, 
        ...does it three times to reduce to single number,
        ...then reduces it by 10^-7, which is what we graph by
    for nZ = 1:size(cells, 3) %Cycles through depths (z values)
        zSlice = cells(:, :, nZ, t); %same as the subplot data made in part 1
        BW = imbinarize(zSlice); %makes a black and white image out of the slice
        B = bwboundaries(BW); %draws boundaries based on that image.
        for i = 1:length(B) %cycles through the found boundaries, mostly one is found but sometimes two
            boundary = B{i}; %for this, the first peram controls which point it is and the second controls whether x or y
            for j = 1:size(boundary, 1) %cycles through the list of boundary pixels
                errorsAtDay = errorsAtDay + zSlice(boundary(j,1), boundary(j,2)); %matches boundary pixels with the
                ... number of tumors at that place in the slice, adds it to the number of errors
            end                
        end
    end
    errors(t+1) = errorsAtDay*10.^(-7).*(.5); %like before, puts it into workable numbers
    ...Also divides by two to counter the doubling of errorbar()
end
errorbar(time, totals, errors);
fig = gcf;
fig.XLabel.String = 'Time [ days ]'; % set X axis label
fig.YLabel.String = 'Tumor Cell Count'; % set Y axis label
