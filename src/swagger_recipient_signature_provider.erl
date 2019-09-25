-module(swagger_recipient_signature_provider).

-export([encode/1]).

-export_type([swagger_recipient_signature_provider/0]).

-type swagger_recipient_signature_provider() ::
    #{ 'sealDocumentsWithTabsOnly' => binary(),
       'sealName' => binary(),
       'signatureProviderName' => binary(),
       'signatureProviderNameMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'signatureProviderOptions' => swagger_recipient_signature_provider_options:swagger_recipient_signature_provider_options()
     }.

encode(#{ 'sealDocumentsWithTabsOnly' := SealDocumentsWithTabsOnly,
          'sealName' := SealName,
          'signatureProviderName' := SignatureProviderName,
          'signatureProviderNameMetadata' := SignatureProviderNameMetadata,
          'signatureProviderOptions' := SignatureProviderOptions
        }) ->
    #{ 'sealDocumentsWithTabsOnly' => SealDocumentsWithTabsOnly,
       'sealName' => SealName,
       'signatureProviderName' => SignatureProviderName,
       'signatureProviderNameMetadata' => SignatureProviderNameMetadata,
       'signatureProviderOptions' => SignatureProviderOptions
     }.
