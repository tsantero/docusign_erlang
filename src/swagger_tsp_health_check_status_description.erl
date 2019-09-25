-module(swagger_tsp_health_check_status_description).

-export([encode/1]).

-export_type([swagger_tsp_health_check_status_description/0]).

-type swagger_tsp_health_check_status_description() ::
    #{ 'description' => binary(),
       'error' => binary(),
       'hostname' => binary(),
       'responseSeconds' => binary(),
       'status' => binary(),
       'type' => binary()
     }.

encode(#{ 'description' := Description,
          'error' := Error,
          'hostname' := Hostname,
          'responseSeconds' := ResponseSeconds,
          'status' := Status,
          'type' := Type
        }) ->
    #{ 'description' => Description,
       'error' => Error,
       'hostname' => Hostname,
       'responseSeconds' => ResponseSeconds,
       'status' => Status,
       'type' => Type
     }.
