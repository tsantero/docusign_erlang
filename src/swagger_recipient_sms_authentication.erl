-module(swagger_recipient_sms_authentication).

-export([encode/1]).

-export_type([swagger_recipient_sms_authentication/0]).

-type swagger_recipient_sms_authentication() ::
    #{ 'senderProvidedNumbers' => list(),
       'senderProvidedNumbersMetadata' => swagger_property_metadata:swagger_property_metadata()
     }.

encode(#{ 'senderProvidedNumbers' := SenderProvidedNumbers,
          'senderProvidedNumbersMetadata' := SenderProvidedNumbersMetadata
        }) ->
    #{ 'senderProvidedNumbers' => SenderProvidedNumbers,
       'senderProvidedNumbersMetadata' => SenderProvidedNumbersMetadata
     }.
