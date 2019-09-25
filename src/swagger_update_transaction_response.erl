-module(swagger_update_transaction_response).

-export([encode/1]).

-export_type([swagger_update_transaction_response/0]).

-type swagger_update_transaction_response() ::
    #{ 'redirectionUrl' => binary()
     }.

encode(#{ 'redirectionUrl' := RedirectionUrl
        }) ->
    #{ 'redirectionUrl' => RedirectionUrl
     }.
