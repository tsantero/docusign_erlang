-module(swagger_event_notification).

-export([encode/1]).

-export_type([swagger_event_notification/0]).

-type swagger_event_notification() ::
    #{ 'envelopeEvents' => list(),
       'includeCertificateOfCompletion' => binary(),
       'includeCertificateWithSoap' => binary(),
       'includeDocumentFields' => binary(),
       'includeDocuments' => binary(),
       'includeEnvelopeVoidReason' => binary(),
       'includeSenderAccountAsCustomField' => binary(),
       'includeTimeZone' => binary(),
       'loggingEnabled' => binary(),
       'recipientEvents' => list(),
       'requireAcknowledgment' => binary(),
       'signMessageWithX509Cert' => binary(),
       'soapNameSpace' => binary(),
       'url' => binary(),
       'useSoapInterface' => binary()
     }.

encode(#{ 'envelopeEvents' := EnvelopeEvents,
          'includeCertificateOfCompletion' := IncludeCertificateOfCompletion,
          'includeCertificateWithSoap' := IncludeCertificateWithSoap,
          'includeDocumentFields' := IncludeDocumentFields,
          'includeDocuments' := IncludeDocuments,
          'includeEnvelopeVoidReason' := IncludeEnvelopeVoidReason,
          'includeSenderAccountAsCustomField' := IncludeSenderAccountAsCustomField,
          'includeTimeZone' := IncludeTimeZone,
          'loggingEnabled' := LoggingEnabled,
          'recipientEvents' := RecipientEvents,
          'requireAcknowledgment' := RequireAcknowledgment,
          'signMessageWithX509Cert' := SignMessageWithX509Cert,
          'soapNameSpace' := SoapNameSpace,
          'url' := Url,
          'useSoapInterface' := UseSoapInterface
        }) ->
    #{ 'envelopeEvents' => EnvelopeEvents,
       'includeCertificateOfCompletion' => IncludeCertificateOfCompletion,
       'includeCertificateWithSoap' => IncludeCertificateWithSoap,
       'includeDocumentFields' => IncludeDocumentFields,
       'includeDocuments' => IncludeDocuments,
       'includeEnvelopeVoidReason' => IncludeEnvelopeVoidReason,
       'includeSenderAccountAsCustomField' => IncludeSenderAccountAsCustomField,
       'includeTimeZone' => IncludeTimeZone,
       'loggingEnabled' => LoggingEnabled,
       'recipientEvents' => RecipientEvents,
       'requireAcknowledgment' => RequireAcknowledgment,
       'signMessageWithX509Cert' => SignMessageWithX509Cert,
       'soapNameSpace' => SoapNameSpace,
       'url' => Url,
       'useSoapInterface' => UseSoapInterface
     }.
