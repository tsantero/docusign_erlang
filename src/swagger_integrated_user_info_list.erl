-module(swagger_integrated_user_info_list).

-export([encode/1]).

-export_type([swagger_integrated_user_info_list/0]).

-type swagger_integrated_user_info_list() ::
    #{ 'allUsersSelected' => binary(),
       'endPosition' => binary(),
       'nextUri' => binary(),
       'previousUri' => binary(),
       'resultSetSize' => binary(),
       'startPosition' => binary(),
       'totalSetSize' => binary(),
       'users' => list()
     }.

encode(#{ 'allUsersSelected' := AllUsersSelected,
          'endPosition' := EndPosition,
          'nextUri' := NextUri,
          'previousUri' := PreviousUri,
          'resultSetSize' := ResultSetSize,
          'startPosition' := StartPosition,
          'totalSetSize' := TotalSetSize,
          'users' := Users
        }) ->
    #{ 'allUsersSelected' => AllUsersSelected,
       'endPosition' => EndPosition,
       'nextUri' => NextUri,
       'previousUri' => PreviousUri,
       'resultSetSize' => ResultSetSize,
       'startPosition' => StartPosition,
       'totalSetSize' => TotalSetSize,
       'users' => Users
     }.
