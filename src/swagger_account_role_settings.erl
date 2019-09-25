-module(swagger_account_role_settings).

-export([encode/1]).

-export_type([swagger_account_role_settings/0]).

-type swagger_account_role_settings() ::
    #{ 'allowAccountManagement' => binary(),
       'allowAccountManagementMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'allowApiAccess' => binary(),
       'allowApiAccessMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'allowApiAccessToAccount' => binary(),
       'allowApiAccessToAccountMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'allowApiSendingOnBehalfOfOthers' => binary(),
       'allowApiSendingOnBehalfOfOthersMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'allowApiSequentialSigning' => binary(),
       'allowApiSequentialSigningMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'allowBulkSending' => binary(),
       'allowBulkSendingMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'allowDocuSignDesktopClient' => binary(),
       'allowDocuSignDesktopClientMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'allowedAddressBookAccess' => binary(),
       'allowedAddressBookAccessMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'allowedTemplateAccess' => binary(),
       'allowedTemplateAccessMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'allowedToBeEnvelopeTransferRecipient' => binary(),
       'allowedToBeEnvelopeTransferRecipientMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'allowEnvelopeSending' => binary(),
       'allowEnvelopeSendingMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'allowESealRecipients' => binary(),
       'allowESealRecipientsMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'allowPowerFormsAdminToAccessAllPowerFormEnvelopes' => binary(),
       'allowPowerFormsAdminToAccessAllPowerFormEnvelopesMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'allowSendersToSetRecipientEmailLanguage' => binary(),
       'allowSendersToSetRecipientEmailLanguageMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'allowSignerAttachments' => binary(),
       'allowSignerAttachmentsMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'allowSupplementalDocuments' => binary(),
       'allowSupplementalDocumentsMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'allowTaggingInSendAndCorrect' => binary(),
       'allowTaggingInSendAndCorrectMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'allowVaulting' => binary(),
       'allowVaultingMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'allowWetSigningOverride' => binary(),
       'allowWetSigningOverrideMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'canCreateWorkspaces' => binary(),
       'canCreateWorkspacesMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'disableDocumentUpload' => binary(),
       'disableDocumentUploadMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'disableOtherActions' => binary(),
       'disableOtherActionsMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'enableApiRequestLogging' => binary(),
       'enableApiRequestLoggingMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'enableRecipientViewingNotifications' => binary(),
       'enableRecipientViewingNotificationsMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'enableSequentialSigningInterface' => binary(),
       'enableSequentialSigningInterfaceMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'enableTransactionPointIntegration' => binary(),
       'enableTransactionPointIntegrationMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'powerFormRole' => binary(),
       'powerFormRoleMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'receiveCompletedSelfSignedDocumentsAsEmailLinks' => binary(),
       'receiveCompletedSelfSignedDocumentsAsEmailLinksMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'signingUiVersionMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'supplementalDocumentsMustAccept' => binary(),
       'supplementalDocumentsMustAcceptMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'supplementalDocumentsMustRead' => binary(),
       'supplementalDocumentsMustReadMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'supplementalDocumentsMustView' => binary(),
       'supplementalDocumentsMustViewMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'useNewDocuSignExperienceInterface' => binary(),
       'useNewDocuSignExperienceInterfaceMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'useNewSendingInterface' => binary(),
       'useNewSendingInterfaceMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'vaultingMode' => binary(),
       'vaultingModeMetadata' => swagger_settings_metadata:swagger_settings_metadata()
     }.

encode(#{ 'allowAccountManagement' := AllowAccountManagement,
          'allowAccountManagementMetadata' := AllowAccountManagementMetadata,
          'allowApiAccess' := AllowApiAccess,
          'allowApiAccessMetadata' := AllowApiAccessMetadata,
          'allowApiAccessToAccount' := AllowApiAccessToAccount,
          'allowApiAccessToAccountMetadata' := AllowApiAccessToAccountMetadata,
          'allowApiSendingOnBehalfOfOthers' := AllowApiSendingOnBehalfOfOthers,
          'allowApiSendingOnBehalfOfOthersMetadata' := AllowApiSendingOnBehalfOfOthersMetadata,
          'allowApiSequentialSigning' := AllowApiSequentialSigning,
          'allowApiSequentialSigningMetadata' := AllowApiSequentialSigningMetadata,
          'allowBulkSending' := AllowBulkSending,
          'allowBulkSendingMetadata' := AllowBulkSendingMetadata,
          'allowDocuSignDesktopClient' := AllowDocuSignDesktopClient,
          'allowDocuSignDesktopClientMetadata' := AllowDocuSignDesktopClientMetadata,
          'allowedAddressBookAccess' := AllowedAddressBookAccess,
          'allowedAddressBookAccessMetadata' := AllowedAddressBookAccessMetadata,
          'allowedTemplateAccess' := AllowedTemplateAccess,
          'allowedTemplateAccessMetadata' := AllowedTemplateAccessMetadata,
          'allowedToBeEnvelopeTransferRecipient' := AllowedToBeEnvelopeTransferRecipient,
          'allowedToBeEnvelopeTransferRecipientMetadata' := AllowedToBeEnvelopeTransferRecipientMetadata,
          'allowEnvelopeSending' := AllowEnvelopeSending,
          'allowEnvelopeSendingMetadata' := AllowEnvelopeSendingMetadata,
          'allowESealRecipients' := AllowESealRecipients,
          'allowESealRecipientsMetadata' := AllowESealRecipientsMetadata,
          'allowPowerFormsAdminToAccessAllPowerFormEnvelopes' := AllowPowerFormsAdminToAccessAllPowerFormEnvelopes,
          'allowPowerFormsAdminToAccessAllPowerFormEnvelopesMetadata' := AllowPowerFormsAdminToAccessAllPowerFormEnvelopesMetadata,
          'allowSendersToSetRecipientEmailLanguage' := AllowSendersToSetRecipientEmailLanguage,
          'allowSendersToSetRecipientEmailLanguageMetadata' := AllowSendersToSetRecipientEmailLanguageMetadata,
          'allowSignerAttachments' := AllowSignerAttachments,
          'allowSignerAttachmentsMetadata' := AllowSignerAttachmentsMetadata,
          'allowSupplementalDocuments' := AllowSupplementalDocuments,
          'allowSupplementalDocumentsMetadata' := AllowSupplementalDocumentsMetadata,
          'allowTaggingInSendAndCorrect' := AllowTaggingInSendAndCorrect,
          'allowTaggingInSendAndCorrectMetadata' := AllowTaggingInSendAndCorrectMetadata,
          'allowVaulting' := AllowVaulting,
          'allowVaultingMetadata' := AllowVaultingMetadata,
          'allowWetSigningOverride' := AllowWetSigningOverride,
          'allowWetSigningOverrideMetadata' := AllowWetSigningOverrideMetadata,
          'canCreateWorkspaces' := CanCreateWorkspaces,
          'canCreateWorkspacesMetadata' := CanCreateWorkspacesMetadata,
          'disableDocumentUpload' := DisableDocumentUpload,
          'disableDocumentUploadMetadata' := DisableDocumentUploadMetadata,
          'disableOtherActions' := DisableOtherActions,
          'disableOtherActionsMetadata' := DisableOtherActionsMetadata,
          'enableApiRequestLogging' := EnableApiRequestLogging,
          'enableApiRequestLoggingMetadata' := EnableApiRequestLoggingMetadata,
          'enableRecipientViewingNotifications' := EnableRecipientViewingNotifications,
          'enableRecipientViewingNotificationsMetadata' := EnableRecipientViewingNotificationsMetadata,
          'enableSequentialSigningInterface' := EnableSequentialSigningInterface,
          'enableSequentialSigningInterfaceMetadata' := EnableSequentialSigningInterfaceMetadata,
          'enableTransactionPointIntegration' := EnableTransactionPointIntegration,
          'enableTransactionPointIntegrationMetadata' := EnableTransactionPointIntegrationMetadata,
          'powerFormRole' := PowerFormRole,
          'powerFormRoleMetadata' := PowerFormRoleMetadata,
          'receiveCompletedSelfSignedDocumentsAsEmailLinks' := ReceiveCompletedSelfSignedDocumentsAsEmailLinks,
          'receiveCompletedSelfSignedDocumentsAsEmailLinksMetadata' := ReceiveCompletedSelfSignedDocumentsAsEmailLinksMetadata,
          'signingUiVersionMetadata' := SigningUiVersionMetadata,
          'supplementalDocumentsMustAccept' := SupplementalDocumentsMustAccept,
          'supplementalDocumentsMustAcceptMetadata' := SupplementalDocumentsMustAcceptMetadata,
          'supplementalDocumentsMustRead' := SupplementalDocumentsMustRead,
          'supplementalDocumentsMustReadMetadata' := SupplementalDocumentsMustReadMetadata,
          'supplementalDocumentsMustView' := SupplementalDocumentsMustView,
          'supplementalDocumentsMustViewMetadata' := SupplementalDocumentsMustViewMetadata,
          'useNewDocuSignExperienceInterface' := UseNewDocuSignExperienceInterface,
          'useNewDocuSignExperienceInterfaceMetadata' := UseNewDocuSignExperienceInterfaceMetadata,
          'useNewSendingInterface' := UseNewSendingInterface,
          'useNewSendingInterfaceMetadata' := UseNewSendingInterfaceMetadata,
          'vaultingMode' := VaultingMode,
          'vaultingModeMetadata' := VaultingModeMetadata
        }) ->
    #{ 'allowAccountManagement' => AllowAccountManagement,
       'allowAccountManagementMetadata' => AllowAccountManagementMetadata,
       'allowApiAccess' => AllowApiAccess,
       'allowApiAccessMetadata' => AllowApiAccessMetadata,
       'allowApiAccessToAccount' => AllowApiAccessToAccount,
       'allowApiAccessToAccountMetadata' => AllowApiAccessToAccountMetadata,
       'allowApiSendingOnBehalfOfOthers' => AllowApiSendingOnBehalfOfOthers,
       'allowApiSendingOnBehalfOfOthersMetadata' => AllowApiSendingOnBehalfOfOthersMetadata,
       'allowApiSequentialSigning' => AllowApiSequentialSigning,
       'allowApiSequentialSigningMetadata' => AllowApiSequentialSigningMetadata,
       'allowBulkSending' => AllowBulkSending,
       'allowBulkSendingMetadata' => AllowBulkSendingMetadata,
       'allowDocuSignDesktopClient' => AllowDocuSignDesktopClient,
       'allowDocuSignDesktopClientMetadata' => AllowDocuSignDesktopClientMetadata,
       'allowedAddressBookAccess' => AllowedAddressBookAccess,
       'allowedAddressBookAccessMetadata' => AllowedAddressBookAccessMetadata,
       'allowedTemplateAccess' => AllowedTemplateAccess,
       'allowedTemplateAccessMetadata' => AllowedTemplateAccessMetadata,
       'allowedToBeEnvelopeTransferRecipient' => AllowedToBeEnvelopeTransferRecipient,
       'allowedToBeEnvelopeTransferRecipientMetadata' => AllowedToBeEnvelopeTransferRecipientMetadata,
       'allowEnvelopeSending' => AllowEnvelopeSending,
       'allowEnvelopeSendingMetadata' => AllowEnvelopeSendingMetadata,
       'allowESealRecipients' => AllowESealRecipients,
       'allowESealRecipientsMetadata' => AllowESealRecipientsMetadata,
       'allowPowerFormsAdminToAccessAllPowerFormEnvelopes' => AllowPowerFormsAdminToAccessAllPowerFormEnvelopes,
       'allowPowerFormsAdminToAccessAllPowerFormEnvelopesMetadata' => AllowPowerFormsAdminToAccessAllPowerFormEnvelopesMetadata,
       'allowSendersToSetRecipientEmailLanguage' => AllowSendersToSetRecipientEmailLanguage,
       'allowSendersToSetRecipientEmailLanguageMetadata' => AllowSendersToSetRecipientEmailLanguageMetadata,
       'allowSignerAttachments' => AllowSignerAttachments,
       'allowSignerAttachmentsMetadata' => AllowSignerAttachmentsMetadata,
       'allowSupplementalDocuments' => AllowSupplementalDocuments,
       'allowSupplementalDocumentsMetadata' => AllowSupplementalDocumentsMetadata,
       'allowTaggingInSendAndCorrect' => AllowTaggingInSendAndCorrect,
       'allowTaggingInSendAndCorrectMetadata' => AllowTaggingInSendAndCorrectMetadata,
       'allowVaulting' => AllowVaulting,
       'allowVaultingMetadata' => AllowVaultingMetadata,
       'allowWetSigningOverride' => AllowWetSigningOverride,
       'allowWetSigningOverrideMetadata' => AllowWetSigningOverrideMetadata,
       'canCreateWorkspaces' => CanCreateWorkspaces,
       'canCreateWorkspacesMetadata' => CanCreateWorkspacesMetadata,
       'disableDocumentUpload' => DisableDocumentUpload,
       'disableDocumentUploadMetadata' => DisableDocumentUploadMetadata,
       'disableOtherActions' => DisableOtherActions,
       'disableOtherActionsMetadata' => DisableOtherActionsMetadata,
       'enableApiRequestLogging' => EnableApiRequestLogging,
       'enableApiRequestLoggingMetadata' => EnableApiRequestLoggingMetadata,
       'enableRecipientViewingNotifications' => EnableRecipientViewingNotifications,
       'enableRecipientViewingNotificationsMetadata' => EnableRecipientViewingNotificationsMetadata,
       'enableSequentialSigningInterface' => EnableSequentialSigningInterface,
       'enableSequentialSigningInterfaceMetadata' => EnableSequentialSigningInterfaceMetadata,
       'enableTransactionPointIntegration' => EnableTransactionPointIntegration,
       'enableTransactionPointIntegrationMetadata' => EnableTransactionPointIntegrationMetadata,
       'powerFormRole' => PowerFormRole,
       'powerFormRoleMetadata' => PowerFormRoleMetadata,
       'receiveCompletedSelfSignedDocumentsAsEmailLinks' => ReceiveCompletedSelfSignedDocumentsAsEmailLinks,
       'receiveCompletedSelfSignedDocumentsAsEmailLinksMetadata' => ReceiveCompletedSelfSignedDocumentsAsEmailLinksMetadata,
       'signingUiVersionMetadata' => SigningUiVersionMetadata,
       'supplementalDocumentsMustAccept' => SupplementalDocumentsMustAccept,
       'supplementalDocumentsMustAcceptMetadata' => SupplementalDocumentsMustAcceptMetadata,
       'supplementalDocumentsMustRead' => SupplementalDocumentsMustRead,
       'supplementalDocumentsMustReadMetadata' => SupplementalDocumentsMustReadMetadata,
       'supplementalDocumentsMustView' => SupplementalDocumentsMustView,
       'supplementalDocumentsMustViewMetadata' => SupplementalDocumentsMustViewMetadata,
       'useNewDocuSignExperienceInterface' => UseNewDocuSignExperienceInterface,
       'useNewDocuSignExperienceInterfaceMetadata' => UseNewDocuSignExperienceInterfaceMetadata,
       'useNewSendingInterface' => UseNewSendingInterface,
       'useNewSendingInterfaceMetadata' => UseNewSendingInterfaceMetadata,
       'vaultingMode' => VaultingMode,
       'vaultingModeMetadata' => VaultingModeMetadata
     }.