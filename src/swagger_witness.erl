-module(swagger_witness).

-export([encode/1]).

-export_type([swagger_witness/0]).

-type swagger_witness() ::
    #{ 'accessCode' => binary(),
       'accessCodeMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'addAccessCodeToEmail' => binary(),
       'agentCanEditEmail' => binary(),
       'agentCanEditName' => binary(),
       'autoNavigation' => binary(),
       'bulkRecipientsUri' => binary(),
       'canSignOffline' => binary(),
       'clientUserId' => binary(),
       'completedCount' => binary(),
       'creationReason' => binary(),
       'customFields' => list(),
       'declinedDateTime' => binary(),
       'declinedReason' => binary(),
       'defaultRecipient' => binary(),
       'deliveredDateTime' => binary(),
       'deliveryMethod' => binary(),
       'deliveryMethodMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'documentVisibility' => list(),
       'email' => binary(),
       'emailMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'emailNotification' => swagger_recipient_email_notification:swagger_recipient_email_notification(),
       'embeddedRecipientStartURL' => binary(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'excludedDocuments' => list(),
       'faxNumber' => binary(),
       'faxNumberMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'firstName' => binary(),
       'firstNameMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'fullName' => binary(),
       'fullNameMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'idCheckConfigurationName' => binary(),
       'idCheckConfigurationNameMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'idCheckInformationInput' => swagger_id_check_information_input:swagger_id_check_information_input(),
       'identityVerification' => swagger_recipient_identity_verification:swagger_recipient_identity_verification(),
       'inheritEmailNotificationConfiguration' => binary(),
       'isBulkRecipient' => binary(),
       'isBulkRecipientMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'lastName' => binary(),
       'lastNameMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'lockedRecipientPhoneAuthEditable' => binary(),
       'lockedRecipientSmsEditable' => binary(),
       'name' => binary(),
       'nameMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'note' => binary(),
       'noteMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'offlineAttributes' => swagger_offline_attributes:swagger_offline_attributes(),
       'phoneAuthentication' => swagger_recipient_phone_authentication:swagger_recipient_phone_authentication(),
       'recipientAttachments' => list(),
       'recipientAuthenticationStatus' => swagger_authentication_status:swagger_authentication_status(),
       'recipientFeatureMetadata' => list(),
       'recipientId' => binary(),
       'recipientIdGuid' => binary(),
       'recipientSignatureProviders' => list(),
       'recipientSuppliesTabs' => binary(),
       'recipientType' => binary(),
       'recipientTypeMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'requireIdLookup' => binary(),
       'requireIdLookupMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'requireSignerCertificate' => binary(),
       'requireSignOnPaper' => binary(),
       'roleName' => binary(),
       'routingOrder' => binary(),
       'routingOrderMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'sentDateTime' => binary(),
       'signatureInfo' => swagger_recipient_signature_information:swagger_recipient_signature_information(),
       'signedDateTime' => binary(),
       'signInEachLocation' => binary(),
       'signInEachLocationMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'signingGroupId' => binary(),
       'signingGroupIdMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'signingGroupName' => binary(),
       'signingGroupUsers' => list(),
       'smsAuthentication' => swagger_recipient_sms_authentication:swagger_recipient_sms_authentication(),
       'socialAuthentications' => list(),
       'status' => binary(),
       'statusCode' => binary(),
       'tabs' => swagger_envelope_recipient_tabs:swagger_envelope_recipient_tabs(),
       'templateLocked' => binary(),
       'templateRequired' => binary(),
       'totalTabCount' => binary(),
       'userId' => binary(),
       'witnessFor' => binary(),
       'witnessForGuid' => binary()
     }.

encode(#{ 'accessCode' := AccessCode,
          'accessCodeMetadata' := AccessCodeMetadata,
          'addAccessCodeToEmail' := AddAccessCodeToEmail,
          'agentCanEditEmail' := AgentCanEditEmail,
          'agentCanEditName' := AgentCanEditName,
          'autoNavigation' := AutoNavigation,
          'bulkRecipientsUri' := BulkRecipientsUri,
          'canSignOffline' := CanSignOffline,
          'clientUserId' := ClientUserId,
          'completedCount' := CompletedCount,
          'creationReason' := CreationReason,
          'customFields' := CustomFields,
          'declinedDateTime' := DeclinedDateTime,
          'declinedReason' := DeclinedReason,
          'defaultRecipient' := DefaultRecipient,
          'deliveredDateTime' := DeliveredDateTime,
          'deliveryMethod' := DeliveryMethod,
          'deliveryMethodMetadata' := DeliveryMethodMetadata,
          'documentVisibility' := DocumentVisibility,
          'email' := Email,
          'emailMetadata' := EmailMetadata,
          'emailNotification' := EmailNotification,
          'embeddedRecipientStartURL' := EmbeddedRecipientStartURL,
          'errorDetails' := ErrorDetails,
          'excludedDocuments' := ExcludedDocuments,
          'faxNumber' := FaxNumber,
          'faxNumberMetadata' := FaxNumberMetadata,
          'firstName' := FirstName,
          'firstNameMetadata' := FirstNameMetadata,
          'fullName' := FullName,
          'fullNameMetadata' := FullNameMetadata,
          'idCheckConfigurationName' := IdCheckConfigurationName,
          'idCheckConfigurationNameMetadata' := IdCheckConfigurationNameMetadata,
          'idCheckInformationInput' := IdCheckInformationInput,
          'identityVerification' := IdentityVerification,
          'inheritEmailNotificationConfiguration' := InheritEmailNotificationConfiguration,
          'isBulkRecipient' := IsBulkRecipient,
          'isBulkRecipientMetadata' := IsBulkRecipientMetadata,
          'lastName' := LastName,
          'lastNameMetadata' := LastNameMetadata,
          'lockedRecipientPhoneAuthEditable' := LockedRecipientPhoneAuthEditable,
          'lockedRecipientSmsEditable' := LockedRecipientSmsEditable,
          'name' := Name,
          'nameMetadata' := NameMetadata,
          'note' := Note,
          'noteMetadata' := NoteMetadata,
          'offlineAttributes' := OfflineAttributes,
          'phoneAuthentication' := PhoneAuthentication,
          'recipientAttachments' := RecipientAttachments,
          'recipientAuthenticationStatus' := RecipientAuthenticationStatus,
          'recipientFeatureMetadata' := RecipientFeatureMetadata,
          'recipientId' := RecipientId,
          'recipientIdGuid' := RecipientIdGuid,
          'recipientSignatureProviders' := RecipientSignatureProviders,
          'recipientSuppliesTabs' := RecipientSuppliesTabs,
          'recipientType' := RecipientType,
          'recipientTypeMetadata' := RecipientTypeMetadata,
          'requireIdLookup' := RequireIdLookup,
          'requireIdLookupMetadata' := RequireIdLookupMetadata,
          'requireSignerCertificate' := RequireSignerCertificate,
          'requireSignOnPaper' := RequireSignOnPaper,
          'roleName' := RoleName,
          'routingOrder' := RoutingOrder,
          'routingOrderMetadata' := RoutingOrderMetadata,
          'sentDateTime' := SentDateTime,
          'signatureInfo' := SignatureInfo,
          'signedDateTime' := SignedDateTime,
          'signInEachLocation' := SignInEachLocation,
          'signInEachLocationMetadata' := SignInEachLocationMetadata,
          'signingGroupId' := SigningGroupId,
          'signingGroupIdMetadata' := SigningGroupIdMetadata,
          'signingGroupName' := SigningGroupName,
          'signingGroupUsers' := SigningGroupUsers,
          'smsAuthentication' := SmsAuthentication,
          'socialAuthentications' := SocialAuthentications,
          'status' := Status,
          'statusCode' := StatusCode,
          'tabs' := Tabs,
          'templateLocked' := TemplateLocked,
          'templateRequired' := TemplateRequired,
          'totalTabCount' := TotalTabCount,
          'userId' := UserId,
          'witnessFor' := WitnessFor,
          'witnessForGuid' := WitnessForGuid
        }) ->
    #{ 'accessCode' => AccessCode,
       'accessCodeMetadata' => AccessCodeMetadata,
       'addAccessCodeToEmail' => AddAccessCodeToEmail,
       'agentCanEditEmail' => AgentCanEditEmail,
       'agentCanEditName' => AgentCanEditName,
       'autoNavigation' => AutoNavigation,
       'bulkRecipientsUri' => BulkRecipientsUri,
       'canSignOffline' => CanSignOffline,
       'clientUserId' => ClientUserId,
       'completedCount' => CompletedCount,
       'creationReason' => CreationReason,
       'customFields' => CustomFields,
       'declinedDateTime' => DeclinedDateTime,
       'declinedReason' => DeclinedReason,
       'defaultRecipient' => DefaultRecipient,
       'deliveredDateTime' => DeliveredDateTime,
       'deliveryMethod' => DeliveryMethod,
       'deliveryMethodMetadata' => DeliveryMethodMetadata,
       'documentVisibility' => DocumentVisibility,
       'email' => Email,
       'emailMetadata' => EmailMetadata,
       'emailNotification' => EmailNotification,
       'embeddedRecipientStartURL' => EmbeddedRecipientStartURL,
       'errorDetails' => ErrorDetails,
       'excludedDocuments' => ExcludedDocuments,
       'faxNumber' => FaxNumber,
       'faxNumberMetadata' => FaxNumberMetadata,
       'firstName' => FirstName,
       'firstNameMetadata' => FirstNameMetadata,
       'fullName' => FullName,
       'fullNameMetadata' => FullNameMetadata,
       'idCheckConfigurationName' => IdCheckConfigurationName,
       'idCheckConfigurationNameMetadata' => IdCheckConfigurationNameMetadata,
       'idCheckInformationInput' => IdCheckInformationInput,
       'identityVerification' => IdentityVerification,
       'inheritEmailNotificationConfiguration' => InheritEmailNotificationConfiguration,
       'isBulkRecipient' => IsBulkRecipient,
       'isBulkRecipientMetadata' => IsBulkRecipientMetadata,
       'lastName' => LastName,
       'lastNameMetadata' => LastNameMetadata,
       'lockedRecipientPhoneAuthEditable' => LockedRecipientPhoneAuthEditable,
       'lockedRecipientSmsEditable' => LockedRecipientSmsEditable,
       'name' => Name,
       'nameMetadata' => NameMetadata,
       'note' => Note,
       'noteMetadata' => NoteMetadata,
       'offlineAttributes' => OfflineAttributes,
       'phoneAuthentication' => PhoneAuthentication,
       'recipientAttachments' => RecipientAttachments,
       'recipientAuthenticationStatus' => RecipientAuthenticationStatus,
       'recipientFeatureMetadata' => RecipientFeatureMetadata,
       'recipientId' => RecipientId,
       'recipientIdGuid' => RecipientIdGuid,
       'recipientSignatureProviders' => RecipientSignatureProviders,
       'recipientSuppliesTabs' => RecipientSuppliesTabs,
       'recipientType' => RecipientType,
       'recipientTypeMetadata' => RecipientTypeMetadata,
       'requireIdLookup' => RequireIdLookup,
       'requireIdLookupMetadata' => RequireIdLookupMetadata,
       'requireSignerCertificate' => RequireSignerCertificate,
       'requireSignOnPaper' => RequireSignOnPaper,
       'roleName' => RoleName,
       'routingOrder' => RoutingOrder,
       'routingOrderMetadata' => RoutingOrderMetadata,
       'sentDateTime' => SentDateTime,
       'signatureInfo' => SignatureInfo,
       'signedDateTime' => SignedDateTime,
       'signInEachLocation' => SignInEachLocation,
       'signInEachLocationMetadata' => SignInEachLocationMetadata,
       'signingGroupId' => SigningGroupId,
       'signingGroupIdMetadata' => SigningGroupIdMetadata,
       'signingGroupName' => SigningGroupName,
       'signingGroupUsers' => SigningGroupUsers,
       'smsAuthentication' => SmsAuthentication,
       'socialAuthentications' => SocialAuthentications,
       'status' => Status,
       'statusCode' => StatusCode,
       'tabs' => Tabs,
       'templateLocked' => TemplateLocked,
       'templateRequired' => TemplateRequired,
       'totalTabCount' => TotalTabCount,
       'userId' => UserId,
       'witnessFor' => WitnessFor,
       'witnessForGuid' => WitnessForGuid
     }.
