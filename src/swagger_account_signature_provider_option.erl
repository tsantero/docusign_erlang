-module(swagger_account_signature_provider_option).

-export([encode/1]).

-export_type([swagger_account_signature_provider_option/0]).

-type swagger_account_signature_provider_option() ::
    #{ 'signatureProviderOptionDisplayName' => binary(),
       'signatureProviderOptionId' => binary(),
       'signatureProviderOptionName' => binary()
     }.

encode(#{ 'signatureProviderOptionDisplayName' := SignatureProviderOptionDisplayName,
          'signatureProviderOptionId' := SignatureProviderOptionId,
          'signatureProviderOptionName' := SignatureProviderOptionName
        }) ->
    #{ 'signatureProviderOptionDisplayName' => SignatureProviderOptionDisplayName,
       'signatureProviderOptionId' => SignatureProviderOptionId,
       'signatureProviderOptionName' => SignatureProviderOptionName
     }.
