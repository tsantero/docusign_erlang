-module(swagger_account_signature_provider).

-export([encode/1]).

-export_type([swagger_account_signature_provider/0]).

-type swagger_account_signature_provider() ::
    #{ 'signatureProviderName' => binary()
     }.

encode(#{ 'signatureProviderName' := SignatureProviderName
        }) ->
    #{ 'signatureProviderName' => SignatureProviderName
     }.
