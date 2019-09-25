-module(swagger_signature_type).

-export([encode/1]).

-export_type([swagger_signature_type/0]).

-type swagger_signature_type() ::
    #{ 'isDefault' => binary(),
       'type' => binary()
     }.

encode(#{ 'isDefault' := IsDefault,
          'type' := Type
        }) ->
    #{ 'isDefault' => IsDefault,
       'type' => Type
     }.
