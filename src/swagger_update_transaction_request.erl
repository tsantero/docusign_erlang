-module(swagger_update_transaction_request).

-export([encode/1]).

-export_type([swagger_update_transaction_request/0]).

-type swagger_update_transaction_request() ::
    #{ 'code' => binary(),
       'message' => binary(),
       'state' => binary()
     }.

encode(#{ 'code' := Code,
          'message' := Message,
          'state' := State
        }) ->
    #{ 'code' => Code,
       'message' => Message,
       'state' => State
     }.
