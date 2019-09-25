-module(swagger_recipient_phone_authentication).

-export([encode/1]).

-export_type([swagger_recipient_phone_authentication/0]).

-type swagger_recipient_phone_authentication() ::
    #{ 'recipMayProvideNumber' => binary(),
       'recipMayProvideNumberMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'recordVoicePrint' => binary(),
       'recordVoicePrintMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'senderProvidedNumbers' => list(),
       'senderProvidedNumbersMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'validateRecipProvidedNumber' => binary(),
       'validateRecipProvidedNumberMetadata' => swagger_property_metadata:swagger_property_metadata()
     }.

encode(#{ 'recipMayProvideNumber' := RecipMayProvideNumber,
          'recipMayProvideNumberMetadata' := RecipMayProvideNumberMetadata,
          'recordVoicePrint' := RecordVoicePrint,
          'recordVoicePrintMetadata' := RecordVoicePrintMetadata,
          'senderProvidedNumbers' := SenderProvidedNumbers,
          'senderProvidedNumbersMetadata' := SenderProvidedNumbersMetadata,
          'validateRecipProvidedNumber' := ValidateRecipProvidedNumber,
          'validateRecipProvidedNumberMetadata' := ValidateRecipProvidedNumberMetadata
        }) ->
    #{ 'recipMayProvideNumber' => RecipMayProvideNumber,
       'recipMayProvideNumberMetadata' => RecipMayProvideNumberMetadata,
       'recordVoicePrint' => RecordVoicePrint,
       'recordVoicePrintMetadata' => RecordVoicePrintMetadata,
       'senderProvidedNumbers' => SenderProvidedNumbers,
       'senderProvidedNumbersMetadata' => SenderProvidedNumbersMetadata,
       'validateRecipProvidedNumber' => ValidateRecipProvidedNumber,
       'validateRecipProvidedNumberMetadata' => ValidateRecipProvidedNumberMetadata
     }.
