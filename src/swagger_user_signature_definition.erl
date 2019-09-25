-module(swagger_user_signature_definition).

-export([encode/1]).

-export_type([swagger_user_signature_definition/0]).

-type swagger_user_signature_definition() ::
    #{ 'dateStampProperties' => swagger_date_stamp_properties:swagger_date_stamp_properties(),
       'disallowUserResizeStamp' => binary(),
       'externalID' => binary(),
       'imageType' => binary(),
       'isDefault' => binary(),
       'nrdsId' => binary(),
       'nrdsLastName' => binary(),
       'phoneticName' => binary(),
       'signatureFont' => binary(),
       'signatureId' => binary(),
       'signatureInitials' => binary(),
       'signatureName' => binary(),
       'stampFormat' => binary(),
       'stampSizeMM' => binary()
     }.

encode(#{ 'dateStampProperties' := DateStampProperties,
          'disallowUserResizeStamp' := DisallowUserResizeStamp,
          'externalID' := ExternalID,
          'imageType' := ImageType,
          'isDefault' := IsDefault,
          'nrdsId' := NrdsId,
          'nrdsLastName' := NrdsLastName,
          'phoneticName' := PhoneticName,
          'signatureFont' := SignatureFont,
          'signatureId' := SignatureId,
          'signatureInitials' := SignatureInitials,
          'signatureName' := SignatureName,
          'stampFormat' := StampFormat,
          'stampSizeMM' := StampSizeMM
        }) ->
    #{ 'dateStampProperties' => DateStampProperties,
       'disallowUserResizeStamp' => DisallowUserResizeStamp,
       'externalID' => ExternalID,
       'imageType' => ImageType,
       'isDefault' => IsDefault,
       'nrdsId' => NrdsId,
       'nrdsLastName' => NrdsLastName,
       'phoneticName' => PhoneticName,
       'signatureFont' => SignatureFont,
       'signatureId' => SignatureId,
       'signatureInitials' => SignatureInitials,
       'signatureName' => SignatureName,
       'stampFormat' => StampFormat,
       'stampSizeMM' => StampSizeMM
     }.
