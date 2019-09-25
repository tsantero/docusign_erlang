-module(swagger_external_claim).

-export([encode/1]).

-export_type([swagger_external_claim/0]).

-type swagger_external_claim() ::
    #{ 'acquiredTime' => binary(),
       'claimName' => binary(),
       'provider' => binary(),
       'value' => binary()
     }.

encode(#{ 'acquiredTime' := AcquiredTime,
          'claimName' := ClaimName,
          'provider' := Provider,
          'value' := Value
        }) ->
    #{ 'acquiredTime' => AcquiredTime,
       'claimName' => ClaimName,
       'provider' => Provider,
       'value' => Value
     }.
