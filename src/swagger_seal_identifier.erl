-module(swagger_seal_identifier).

-export([encode/1]).

-export_type([swagger_seal_identifier/0]).

-type swagger_seal_identifier() ::
    #{ 'sealDisplayName' => binary(),
       'sealName' => binary()
     }.

encode(#{ 'sealDisplayName' := SealDisplayName,
          'sealName' := SealName
        }) ->
    #{ 'sealDisplayName' => SealDisplayName,
       'sealName' => SealName
     }.
