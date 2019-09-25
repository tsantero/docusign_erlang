-module(swagger_bulk_recipient_signature_provider).

-export([encode/1]).

-export_type([swagger_bulk_recipient_signature_provider/0]).

-type swagger_bulk_recipient_signature_provider() ::
    #{ 'name' => binary(),
       'value' => binary()
     }.

encode(#{ 'name' := Name,
          'value' := Value
        }) ->
    #{ 'name' => Name,
       'value' => Value
     }.
