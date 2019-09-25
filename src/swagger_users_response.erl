-module(swagger_users_response).

-export([encode/1]).

-export_type([swagger_users_response/0]).

-type swagger_users_response() ::
    #{ 'endPosition' => binary(),
       'nextUri' => binary(),
       'previousUri' => binary(),
       'resultSetSize' => binary(),
       'startPosition' => binary(),
       'totalSetSize' => binary(),
       'users' => list()
     }.

encode(#{ 'endPosition' := EndPosition,
          'nextUri' := NextUri,
          'previousUri' := PreviousUri,
          'resultSetSize' := ResultSetSize,
          'startPosition' := StartPosition,
          'totalSetSize' := TotalSetSize,
          'users' := Users
        }) ->
    #{ 'endPosition' => EndPosition,
       'nextUri' => NextUri,
       'previousUri' => PreviousUri,
       'resultSetSize' => ResultSetSize,
       'startPosition' => StartPosition,
       'totalSetSize' => TotalSetSize,
       'users' => Users
     }.
