-module(swagger_signature_provider_required_option).

-export([encode/1]).

-export_type([swagger_signature_provider_required_option/0]).

-type swagger_signature_provider_required_option() ::
    #{ 'requiredSignatureProviderOptionIds' => list(),
       'signerType' => binary()
     }.

encode(#{ 'requiredSignatureProviderOptionIds' := RequiredSignatureProviderOptionIds,
          'signerType' := SignerType
        }) ->
    #{ 'requiredSignatureProviderOptionIds' => RequiredSignatureProviderOptionIds,
       'signerType' => SignerType
     }.
