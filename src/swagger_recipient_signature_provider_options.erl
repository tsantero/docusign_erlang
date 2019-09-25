-module(swagger_recipient_signature_provider_options).

-export([encode/1]).

-export_type([swagger_recipient_signature_provider_options/0]).

-type swagger_recipient_signature_provider_options() ::
    #{ 'cpfNumber' => binary(),
       'cpfNumberMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'oneTimePassword' => binary(),
       'oneTimePasswordMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'signerRole' => binary(),
       'signerRoleMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'sms' => binary(),
       'smsMetadata' => swagger_property_metadata:swagger_property_metadata()
     }.

encode(#{ 'cpfNumber' := CpfNumber,
          'cpfNumberMetadata' := CpfNumberMetadata,
          'oneTimePassword' := OneTimePassword,
          'oneTimePasswordMetadata' := OneTimePasswordMetadata,
          'signerRole' := SignerRole,
          'signerRoleMetadata' := SignerRoleMetadata,
          'sms' := Sms,
          'smsMetadata' := SmsMetadata
        }) ->
    #{ 'cpfNumber' => CpfNumber,
       'cpfNumberMetadata' => CpfNumberMetadata,
       'oneTimePassword' => OneTimePassword,
       'oneTimePasswordMetadata' => OneTimePasswordMetadata,
       'signerRole' => SignerRole,
       'signerRoleMetadata' => SignerRoleMetadata,
       'sms' => Sms,
       'smsMetadata' => SmsMetadata
     }.
