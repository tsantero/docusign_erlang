-module(swagger_error_details).

-export([encode/1]).

-export_type([swagger_error_details/0]).

-type swagger_error_details() ::
    #{ 'errorCode' => binary(),
       'message' => binary()
     }.

encode(#{ 'errorCode' := ErrorCode,
          'message' := Message
        }) ->
    #{ 'errorCode' => ErrorCode,
       'message' => Message
     }.
