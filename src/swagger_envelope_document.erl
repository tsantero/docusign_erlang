-module(swagger_envelope_document).

-export([encode/1]).

-export_type([swagger_envelope_document/0]).

-type swagger_envelope_document() ::
    #{ 'addedRecipientIds' => list(),
       'attachmentTabId' => binary(),
       'authoritativeCopy' => binary(),
       'authoritativeCopyMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'availableDocumentTypes' => list(),
       'containsPdfFormFields' => binary(),
       'display' => binary(),
       'displayMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'documentFields' => list(),
       'documentGroup' => binary(),
       'documentId' => binary(),
       'documentIdGuid' => binary(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'includeInDownload' => binary(),
       'includeInDownloadMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'name' => binary(),
       'nameMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'order' => binary(),
       'pages' => list(),
       'signerMustAcknowledge' => binary(),
       'signerMustAcknowledgeMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'templateLocked' => binary(),
       'templateRequired' => binary(),
       'type' => binary(),
       'uri' => binary()
     }.

encode(#{ 'addedRecipientIds' := AddedRecipientIds,
          'attachmentTabId' := AttachmentTabId,
          'authoritativeCopy' := AuthoritativeCopy,
          'authoritativeCopyMetadata' := AuthoritativeCopyMetadata,
          'availableDocumentTypes' := AvailableDocumentTypes,
          'containsPdfFormFields' := ContainsPdfFormFields,
          'display' := Display,
          'displayMetadata' := DisplayMetadata,
          'documentFields' := DocumentFields,
          'documentGroup' := DocumentGroup,
          'documentId' := DocumentId,
          'documentIdGuid' := DocumentIdGuid,
          'errorDetails' := ErrorDetails,
          'includeInDownload' := IncludeInDownload,
          'includeInDownloadMetadata' := IncludeInDownloadMetadata,
          'name' := Name,
          'nameMetadata' := NameMetadata,
          'order' := Order,
          'pages' := Pages,
          'signerMustAcknowledge' := SignerMustAcknowledge,
          'signerMustAcknowledgeMetadata' := SignerMustAcknowledgeMetadata,
          'templateLocked' := TemplateLocked,
          'templateRequired' := TemplateRequired,
          'type' := Type,
          'uri' := Uri
        }) ->
    #{ 'addedRecipientIds' => AddedRecipientIds,
       'attachmentTabId' => AttachmentTabId,
       'authoritativeCopy' => AuthoritativeCopy,
       'authoritativeCopyMetadata' => AuthoritativeCopyMetadata,
       'availableDocumentTypes' => AvailableDocumentTypes,
       'containsPdfFormFields' => ContainsPdfFormFields,
       'display' => Display,
       'displayMetadata' => DisplayMetadata,
       'documentFields' => DocumentFields,
       'documentGroup' => DocumentGroup,
       'documentId' => DocumentId,
       'documentIdGuid' => DocumentIdGuid,
       'errorDetails' => ErrorDetails,
       'includeInDownload' => IncludeInDownload,
       'includeInDownloadMetadata' => IncludeInDownloadMetadata,
       'name' => Name,
       'nameMetadata' => NameMetadata,
       'order' => Order,
       'pages' => Pages,
       'signerMustAcknowledge' => SignerMustAcknowledge,
       'signerMustAcknowledgeMetadata' => SignerMustAcknowledgeMetadata,
       'templateLocked' => TemplateLocked,
       'templateRequired' => TemplateRequired,
       'type' => Type,
       'uri' => Uri
     }.
