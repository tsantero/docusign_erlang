-module(swagger_recipient_email_notification).

-export([encode/1]).

-export_type([swagger_recipient_email_notification/0]).

-type swagger_recipient_email_notification() ::
    #{ 'emailBody' => binary(),
       'emailBodyMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'emailSubject' => binary(),
       'emailSubjectMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'supportedLanguage' => binary(),
       'supportedLanguageMetadata' => swagger_property_metadata:swagger_property_metadata()
     }.

encode(#{ 'emailBody' := EmailBody,
          'emailBodyMetadata' := EmailBodyMetadata,
          'emailSubject' := EmailSubject,
          'emailSubjectMetadata' := EmailSubjectMetadata,
          'supportedLanguage' := SupportedLanguage,
          'supportedLanguageMetadata' := SupportedLanguageMetadata
        }) ->
    #{ 'emailBody' => EmailBody,
       'emailBodyMetadata' => EmailBodyMetadata,
       'emailSubject' => EmailSubject,
       'emailSubjectMetadata' => EmailSubjectMetadata,
       'supportedLanguage' => SupportedLanguage,
       'supportedLanguageMetadata' => SupportedLanguageMetadata
     }.
