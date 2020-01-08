-module(lobby_find).
-export([lobby/0]).

% Include the player record file
-include_lib("player.hrl").

% Export the function lobby()

lobby() ->
	% Setup the Achievements
	{ok, AchieveCheck} = io:read("Enter a number: "),
	A1 = [{"A1", "B1"}, {"A2", "B3"}],
	A2 = [{"A1", "B3"}],
	A3 = [{"A2", "B2"},{"A3", "B3"}],
	A4 = [{"A1", "B2"},{"A2", "B3"}],
	A5 = [{"A3", "B3"}],
	A6 = [{"A1", "B2"},{"A2", "B3"}],

	% Setup the players

	P1 =#player{name="Joe", gamer_tag="KillerJoe", points=100, achievements=A1},
	P2 =#player{name="Jane", gamer_tag="KillerJane", points=100, achievements=A2},
	P3 =#player{name="James", gamer_tag="KillerJames", points=100, achievements=A3},
	P4 =#player{name="John", gamer_tag="KillerJohn", points=100, 	achievements=A4},
	P5 =#player{name="Jackie", gamer_tag="KillerJackie", points=100, 	achievements=A5},
	P6 =#player{name="June", gamer_tag="KillerJune", points=100, 	achievements=A6},
	
	% Check if elements match

	Che1 = AchieveCheck == element(5, P1),
	Che2 = AchieveCheck == element(5, P2),
	Che3 = AchieveCheck == element(5, P3),
	Che4 = AchieveCheck == element(5, P4),
	Che5 = AchieveCheck == element(5, P5),
	Che6 = AchieveCheck == element(5, P6),
	

	io:fwrite("Found Matches: ~p~n"),
if
	Che1 ->
		io:fwrite([element(2, P1)]);
	Che2 ->
		io:fwrite([element(2, P2)]);
	Che3 ->
		io:fwrite([element(2, P3)]);
	Che4 ->
		io:fwrite([element(2, P4)]);
	Che5 ->
		io:fwrite([element(2, P5)]);
	Che6 ->
		io:fwrite([element(2, P6)])
end.


