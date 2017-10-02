a = 2;
% A number cant be a var
a = b;
% Same
x = 2;
y = x + 4; % is it 6?
% x is not X
pi = 4 * atan(1);
% random ; breaks up the line
disp(pi);
% needs a ; at the end so it keeps running
pi = 3.14159;
% cant mix ' with ", also won't work because its chars not a number
disp(tan(pi));
c = 4^3^2^3;
d = ((c-78564)/(c + 32));
% _ is not a var, mising a (
year = 2017;
disp(['The year is ', num2str(year)]); % does it display 2017 correctly?
%needs comma and to be a string

stuff = {'a' 'b' 4 21 'c'};
beginning = stuff(1);
% matlab is a language that starts at 1, so stuff (0) doesn't exist
End = stuff(5);
% 'end' already means something
discount = .12;
% '%' is comment, not percent
AMOUNT = 120.;
%I don't even know what's supposed to be happening here, but I know that
%the minus just messes up the syntax
amount = 120;
% Same with the $
and = 'duck';
% duck is not a defined var, so we'll make it a string
class = 'INF1100, gr 2';
% cant mix and match ' and "
continue_ = x > 0;
fox = false;
% since fox has yet to be defined, I assume this is meant to do that
% It needs a single = though
wolf = fox == true;
Persian = ['Persian' ' is ' 'a' ' human ' 'language'];
% just use spacing
Spanish = {'Spanish ' 'is ' ' another'  'language'};
% one too many }s
disp(['Persian is not the same as Spanish']);
%needs to be 1