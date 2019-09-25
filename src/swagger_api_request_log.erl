-module(swagger_api_request_log).

-export([encode/1]).

-export_type([swagger_api_request_log/0]).

-type swagger_api_request_log() ::
    #{ 'createdDateTime' => binary(),
       'description' => binary(),
       'requestLogId' => binary(),
       'status' => binary()
     }.

encode(#{ 'createdDateTime' := CreatedDateTime,
          'description' := Description,
          'requestLogId' := RequestLogId,
          'status' := Status
        }) ->
    #{ 'createdDateTime' => CreatedDateTime,
       'description' => Description,
       'requestLogId' => RequestLogId,
       'status' => Status
     }.
