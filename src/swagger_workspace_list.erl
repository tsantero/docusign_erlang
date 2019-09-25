-module(swagger_workspace_list).

-export([encode/1]).

-export_type([swagger_workspace_list/0]).

-type swagger_workspace_list() ::
    #{ 'endPosition' => binary(),
       'resultSetSize' => binary(),
       'startPosition' => binary(),
       'totalSetSize' => binary(),
       'workspaces' => list()
     }.

encode(#{ 'endPosition' := EndPosition,
          'resultSetSize' := ResultSetSize,
          'startPosition' := StartPosition,
          'totalSetSize' := TotalSetSize,
          'workspaces' := Workspaces
        }) ->
    #{ 'endPosition' => EndPosition,
       'resultSetSize' => ResultSetSize,
       'startPosition' => StartPosition,
       'totalSetSize' => TotalSetSize,
       'workspaces' => Workspaces
     }.
