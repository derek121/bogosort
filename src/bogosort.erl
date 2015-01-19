-module(bogosort).

-export([sort/1, sort/2]).

%%% Sort with natural ordering
sort(L) ->
  sort(L, fun(M, N) -> M =< N end).

%%% Sort with provided fun to compare elements
sort(L, F) ->
  random:seed(erlang:now()),
  sort2(L, F).

sort2(L, F) ->
  case is_sorted(L, F) of
    true ->
      L;
    _ -> 
      sort2(shuffle(L), F)
  end.

is_sorted([], _F) ->
  true;
is_sorted([_E], _F) ->
  true;
is_sorted([H1 | T1=[H2 | _T2]], F) ->
  case F(H1, H2) of
    true -> is_sorted(T1, F);
    _ -> false
  end.

%%% Based on http://www.codecodex.com/wiki/Shuffle_an_array
shuffle(L) ->
  WithRandom = [{random:uniform(), X} || X <- L],
  [X || {_Rand, X} <- lists:sort(WithRandom)].

