-module(swagger_connect_config_results).

-export([encode/1]).

-export_type([swagger_connect_config_results/0]).

-type swagger_connect_config_results() ::
    #{ 'configurations' => list(),
       'totalRecords' => binary()
     }.

encode(#{ 'configurations' := Configurations,
          'totalRecords' := TotalRecords
        }) ->
    #{ 'configurations' => Configurations,
       'totalRecords' => TotalRecords
     }.
