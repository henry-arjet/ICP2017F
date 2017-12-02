directory = dir('C:\Users\Henry\git\ICP2017F\homework\5\swift');
plottables = 0;
table = [0,0];
for i = 3:size(directory)
    if(directory(i).bytes > 0)
        newArray = table2array(readtable(['swift/', directory(i).name]));
        try
            if(all(newArray(:,2) < 0.0))
                table = [table ; newArray];
                plottables = plottables + 1;
            end
        catch
        end
    end
end

scatter(exp(table(:,2)), table(:,1), 1,'red','filled','MarkerFaceAlpha',.1,'MarkerEdgeAlpha',.1);
title(['Plot of E_{peak} vs Fluence for ',num2str(plottables), ' Swift GRB events']) 
xlabel('Fluence [ergs/cm^2]');
ylabel('E_{peak}');
set( gca, 'xscale', 'log', 'yscale', 'log')
xlim([1.0e-8 1.0e-2]);
ylim([1 1.0e04]);
saveas(gcf,'swiftDataplot.png')