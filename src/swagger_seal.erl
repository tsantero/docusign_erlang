-module(swagger_seal).

-export([encode/1]).

-export_type([swagger_seal/0]).

-type swagger_seal() ::
    #{ 'configuration' => maps:map(),
       'sealIdentifier' => binary()
     }.

encode(#{ 'configuration' := Configuration,
          'sealIdentifier' := SealIdentifier
        }) ->
    #{ 'configuration' => Configuration,
       'sealIdentifier' => SealIdentifier
     }.
