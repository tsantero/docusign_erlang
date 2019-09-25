-module(swagger_credential).

-export([encode/1]).

-export_type([swagger_credential/0]).

-type swagger_credential() ::
    #{ 'accessCode' => binary(),
       'type' => binary(),
       'value' => binary()
     }.

encode(#{ 'accessCode' := AccessCode,
          'type' := Type,
          'value' := Value
        }) ->
    #{ 'accessCode' => AccessCode,
       'type' => Type,
       'value' => Value
     }.
