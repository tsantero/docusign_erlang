-module(swagger_bulk_recipients_update_response).

-export([encode/1]).

-export_type([swagger_bulk_recipients_update_response/0]).

-type swagger_bulk_recipients_update_response() ::
    #{ 'signer' => swagger_signer:swagger_signer()
     }.

encode(#{ 'signer' := Signer
        }) ->
    #{ 'signer' => Signer
     }.
