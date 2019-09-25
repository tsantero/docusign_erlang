-module(swagger_account_signature_providers).

-export([encode/1]).

-export_type([swagger_account_signature_providers/0]).

-type swagger_account_signature_providers() ::
    #{ 'signatureProviders' => list()
     }.

encode(#{ 'signatureProviders' := SignatureProviders
        }) ->
    #{ 'signatureProviders' => SignatureProviders
     }.
