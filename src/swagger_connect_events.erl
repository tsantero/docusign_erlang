-module(swagger_connect_events).

-export([encode/1]).

-export_type([swagger_connect_events/0]).

-type swagger_connect_events() ::
    #{ 'failures' => list(),
       'logs' => list(),
       'totalRecords' => binary(),
       'type' => binary()
     }.

encode(#{ 'failures' := Failures,
          'logs' := Logs,
          'totalRecords' := TotalRecords,
          'type' := Type
        }) ->
    #{ 'failures' => Failures,
       'logs' => Logs,
       'totalRecords' => TotalRecords,
       'type' => Type
     }.
