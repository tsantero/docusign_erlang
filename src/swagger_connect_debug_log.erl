-module(swagger_connect_debug_log).

-export([encode/1]).

-export_type([swagger_connect_debug_log/0]).

-type swagger_connect_debug_log() ::
    #{ 'connectConfig' => binary(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'eventDateTime' => binary(),
       'eventDescription' => binary(),
       'payload' => binary()
     }.

encode(#{ 'connectConfig' := ConnectConfig,
          'errorDetails' := ErrorDetails,
          'eventDateTime' := EventDateTime,
          'eventDescription' := EventDescription,
          'payload' := Payload
        }) ->
    #{ 'connectConfig' => ConnectConfig,
       'errorDetails' => ErrorDetails,
       'eventDateTime' => EventDateTime,
       'eventDescription' => EventDescription,
       'payload' => Payload
     }.
