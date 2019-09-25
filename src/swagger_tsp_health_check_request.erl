-module(swagger_tsp_health_check_request).

-export([encode/1]).

-export_type([swagger_tsp_health_check_request/0]).

-type swagger_tsp_health_check_request() ::
    #{ 'appVersion' => binary(),
       'description' => binary(),
       'error' => binary(),
       'status' => binary(),
       'statusDescription' => list()
     }.

encode(#{ 'appVersion' := AppVersion,
          'description' := Description,
          'error' := Error,
          'status' := Status,
          'statusDescription' := StatusDescription
        }) ->
    #{ 'appVersion' => AppVersion,
       'description' => Description,
       'error' => Error,
       'status' => Status,
       'statusDescription' => StatusDescription
     }.
