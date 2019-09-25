-module(swagger_recipient_signature_information).

-export([encode/1]).

-export_type([swagger_recipient_signature_information/0]).

-type swagger_recipient_signature_information() ::
    #{ 'fontStyle' => binary(),
       'signatureInitials' => binary(),
       'signatureName' => binary()
     }.

encode(#{ 'fontStyle' := FontStyle,
          'signatureInitials' := SignatureInitials,
          'signatureName' := SignatureName
        }) ->
    #{ 'fontStyle' => FontStyle,
       'signatureInitials' => SignatureInitials,
       'signatureName' => SignatureName
     }.
