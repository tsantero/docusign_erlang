-module(swagger_envelopes).

-export([encode/1]).

-export_type([swagger_envelopes/0]).

-type swagger_envelopes() ::
    #{ 'accessControlListBase64' => binary(),
       'allowComments' => binary(),
       'allowMarkup' => binary(),
       'allowReassign' => binary(),
       'allowViewHistory' => binary(),
       'anySigner' => binary(),
       'asynchronous' => binary(),
       'attachmentsUri' => binary(),
       'authoritativeCopy' => binary(),
       'authoritativeCopyDefault' => binary(),
       'autoNavigation' => binary(),
       'brandId' => binary(),
       'brandLock' => binary(),
       'certificateUri' => binary(),
       'completedDateTime' => binary(),
       'createdDateTime' => binary(),
       'customFields' => swagger_account_custom_fields:swagger_account_custom_fields(),
       'customFieldsUri' => binary(),
       'declinedDateTime' => binary(),
       'deletedDateTime' => binary(),
       'deliveredDateTime' => binary(),
       'disableResponsiveDocument' => binary(),
       'documentsCombinedUri' => binary(),
       'documentsUri' => binary(),
       'emailBlurb' => binary(),
       'emailSettings' => swagger_envelope_email_settings:swagger_envelope_email_settings(),
       'emailSubject' => binary(),
       'enableWetSign' => binary(),
       'enforceSignerVisibility' => binary(),
       'envelopeAttachments' => list(),
       'envelopeDocuments' => list(),
       'envelopeId' => binary(),
       'envelopeIdStamping' => binary(),
       'envelopeLocation' => binary(),
       'envelopeMetadata' => swagger_envelope_metadata:swagger_envelope_metadata(),
       'envelopeUri' => binary(),
       'expireAfter' => binary(),
       'expireDateTime' => binary(),
       'expireEnabled' => binary(),
       'externalEnvelopeId' => binary(),
       'folders' => list(),
       'hasComments' => binary(),
       'hasFormDataChanged' => binary(),
       'hasWavFile' => binary(),
       'holder' => binary(),
       'initialSentDateTime' => binary(),
       'is21CFRPart11' => binary(),
       'isDynamicEnvelope' => binary(),
       'isSignatureProviderEnvelope' => binary(),
       'lastModifiedDateTime' => binary(),
       'location' => binary(),
       'lockInformation' => swagger_envelope_locks:swagger_envelope_locks(),
       'messageLock' => binary(),
       'notification' => swagger_notification:swagger_notification(),
       'notificationUri' => binary(),
       'powerForm' => swagger_power_forms:swagger_power_forms(),
       'purgeCompletedDate' => binary(),
       'purgeRequestDate' => binary(),
       'purgeState' => binary(),
       'recipients' => swagger_envelope_recipients:swagger_envelope_recipients(),
       'recipientsLock' => binary(),
       'recipientsUri' => binary(),
       'sender' => swagger_user_info:swagger_user_info(),
       'sentDateTime' => binary(),
       'signerCanSignOnMobile' => binary(),
       'signingLocation' => binary(),
       'status' => binary(),
       'statusChangedDateTime' => binary(),
       'statusDateTime' => binary(),
       'templatesUri' => binary(),
       'transactionId' => binary(),
       'useDisclosure' => binary(),
       'voidedDateTime' => binary(),
       'voidedReason' => binary()
     }.

encode(#{ 'accessControlListBase64' := AccessControlListBase64,
          'allowComments' := AllowComments,
          'allowMarkup' := AllowMarkup,
          'allowReassign' := AllowReassign,
          'allowViewHistory' := AllowViewHistory,
          'anySigner' := AnySigner,
          'asynchronous' := Asynchronous,
          'attachmentsUri' := AttachmentsUri,
          'authoritativeCopy' := AuthoritativeCopy,
          'authoritativeCopyDefault' := AuthoritativeCopyDefault,
          'autoNavigation' := AutoNavigation,
          'brandId' := BrandId,
          'brandLock' := BrandLock,
          'certificateUri' := CertificateUri,
          'completedDateTime' := CompletedDateTime,
          'createdDateTime' := CreatedDateTime,
          'customFields' := CustomFields,
          'customFieldsUri' := CustomFieldsUri,
          'declinedDateTime' := DeclinedDateTime,
          'deletedDateTime' := DeletedDateTime,
          'deliveredDateTime' := DeliveredDateTime,
          'disableResponsiveDocument' := DisableResponsiveDocument,
          'documentsCombinedUri' := DocumentsCombinedUri,
          'documentsUri' := DocumentsUri,
          'emailBlurb' := EmailBlurb,
          'emailSettings' := EmailSettings,
          'emailSubject' := EmailSubject,
          'enableWetSign' := EnableWetSign,
          'enforceSignerVisibility' := EnforceSignerVisibility,
          'envelopeAttachments' := EnvelopeAttachments,
          'envelopeDocuments' := EnvelopeDocuments,
          'envelopeId' := EnvelopeId,
          'envelopeIdStamping' := EnvelopeIdStamping,
          'envelopeLocation' := EnvelopeLocation,
          'envelopeMetadata' := EnvelopeMetadata,
          'envelopeUri' := EnvelopeUri,
          'expireAfter' := ExpireAfter,
          'expireDateTime' := ExpireDateTime,
          'expireEnabled' := ExpireEnabled,
          'externalEnvelopeId' := ExternalEnvelopeId,
          'folders' := Folders,
          'hasComments' := HasComments,
          'hasFormDataChanged' := HasFormDataChanged,
          'hasWavFile' := HasWavFile,
          'holder' := Holder,
          'initialSentDateTime' := InitialSentDateTime,
          'is21CFRPart11' := Is21CFRPart11,
          'isDynamicEnvelope' := IsDynamicEnvelope,
          'isSignatureProviderEnvelope' := IsSignatureProviderEnvelope,
          'lastModifiedDateTime' := LastModifiedDateTime,
          'location' := Location,
          'lockInformation' := LockInformation,
          'messageLock' := MessageLock,
          'notification' := Notification,
          'notificationUri' := NotificationUri,
          'powerForm' := PowerForm,
          'purgeCompletedDate' := PurgeCompletedDate,
          'purgeRequestDate' := PurgeRequestDate,
          'purgeState' := PurgeState,
          'recipients' := Recipients,
          'recipientsLock' := RecipientsLock,
          'recipientsUri' := RecipientsUri,
          'sender' := Sender,
          'sentDateTime' := SentDateTime,
          'signerCanSignOnMobile' := SignerCanSignOnMobile,
          'signingLocation' := SigningLocation,
          'status' := Status,
          'statusChangedDateTime' := StatusChangedDateTime,
          'statusDateTime' := StatusDateTime,
          'templatesUri' := TemplatesUri,
          'transactionId' := TransactionId,
          'useDisclosure' := UseDisclosure,
          'voidedDateTime' := VoidedDateTime,
          'voidedReason' := VoidedReason
        }) ->
    #{ 'accessControlListBase64' => AccessControlListBase64,
       'allowComments' => AllowComments,
       'allowMarkup' => AllowMarkup,
       'allowReassign' => AllowReassign,
       'allowViewHistory' => AllowViewHistory,
       'anySigner' => AnySigner,
       'asynchronous' => Asynchronous,
       'attachmentsUri' => AttachmentsUri,
       'authoritativeCopy' => AuthoritativeCopy,
       'authoritativeCopyDefault' => AuthoritativeCopyDefault,
       'autoNavigation' => AutoNavigation,
       'brandId' => BrandId,
       'brandLock' => BrandLock,
       'certificateUri' => CertificateUri,
       'completedDateTime' => CompletedDateTime,
       'createdDateTime' => CreatedDateTime,
       'customFields' => CustomFields,
       'customFieldsUri' => CustomFieldsUri,
       'declinedDateTime' => DeclinedDateTime,
       'deletedDateTime' => DeletedDateTime,
       'deliveredDateTime' => DeliveredDateTime,
       'disableResponsiveDocument' => DisableResponsiveDocument,
       'documentsCombinedUri' => DocumentsCombinedUri,
       'documentsUri' => DocumentsUri,
       'emailBlurb' => EmailBlurb,
       'emailSettings' => EmailSettings,
       'emailSubject' => EmailSubject,
       'enableWetSign' => EnableWetSign,
       'enforceSignerVisibility' => EnforceSignerVisibility,
       'envelopeAttachments' => EnvelopeAttachments,
       'envelopeDocuments' => EnvelopeDocuments,
       'envelopeId' => EnvelopeId,
       'envelopeIdStamping' => EnvelopeIdStamping,
       'envelopeLocation' => EnvelopeLocation,
       'envelopeMetadata' => EnvelopeMetadata,
       'envelopeUri' => EnvelopeUri,
       'expireAfter' => ExpireAfter,
       'expireDateTime' => ExpireDateTime,
       'expireEnabled' => ExpireEnabled,
       'externalEnvelopeId' => ExternalEnvelopeId,
       'folders' => Folders,
       'hasComments' => HasComments,
       'hasFormDataChanged' => HasFormDataChanged,
       'hasWavFile' => HasWavFile,
       'holder' => Holder,
       'initialSentDateTime' => InitialSentDateTime,
       'is21CFRPart11' => Is21CFRPart11,
       'isDynamicEnvelope' => IsDynamicEnvelope,
       'isSignatureProviderEnvelope' => IsSignatureProviderEnvelope,
       'lastModifiedDateTime' => LastModifiedDateTime,
       'location' => Location,
       'lockInformation' => LockInformation,
       'messageLock' => MessageLock,
       'notification' => Notification,
       'notificationUri' => NotificationUri,
       'powerForm' => PowerForm,
       'purgeCompletedDate' => PurgeCompletedDate,
       'purgeRequestDate' => PurgeRequestDate,
       'purgeState' => PurgeState,
       'recipients' => Recipients,
       'recipientsLock' => RecipientsLock,
       'recipientsUri' => RecipientsUri,
       'sender' => Sender,
       'sentDateTime' => SentDateTime,
       'signerCanSignOnMobile' => SignerCanSignOnMobile,
       'signingLocation' => SigningLocation,
       'status' => Status,
       'statusChangedDateTime' => StatusChangedDateTime,
       'statusDateTime' => StatusDateTime,
       'templatesUri' => TemplatesUri,
       'transactionId' => TransactionId,
       'useDisclosure' => UseDisclosure,
       'voidedDateTime' => VoidedDateTime,
       'voidedReason' => VoidedReason
     }.