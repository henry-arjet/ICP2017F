nExperiments=100000;
stay = 0;
change = 0;
for i = 1:nExperiments
    doors = randperm(3); %With 1 being the winning door
    choice = randi(3); % chose either the first second or third door
    if (doors(choice) == 1) %If the door I chose was the winning door, which is the one with the value of one, not the one that comes first.
        stay = stay + 1;
    else
        change = change + 1; %Because if you picked the wrong door, staying would lose, but the only option to change to is the right door, so it's an automatic win if you selected the wrong door in the first place.
    end
end
stay = stay/100000;
change = change/100000;

barNames={'Win Chance Staying'; 'Win Chance Switching'};
bar([stay,change]);
set(gca,'xticklabel',barNames);

    
