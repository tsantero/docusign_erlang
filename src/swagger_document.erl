-module(swagger_document).

-export([encode/1]).

-export_type([swagger_document/0]).

-type swagger_document() ::
    #{ 'applyAnchorTabs' => binary(),
       'display' => binary(),
       'documentBase64' => binary(),
       'documentFields' => list(),
       'documentGroup' => binary(),
       'documentId' => binary(),
       'encryptedWithKeyManager' => binary(),
       'fileExtension' => binary(),
       'fileFormatHint' => binary(),
       'htmlDefinition' => swagger_document_html_definition:swagger_document_html_definition(),
       'includeInDownload' => binary(),
       'matchBoxes' => list(),
       'name' => binary(),
       'order' => binary(),
       'pageCount' => binary(),
       'pages' => binary(),
       'pageSizes' => list(),
       'password' => binary(),
       'pdfFormFieldOption' => binary(),
       'remoteUrl' => binary(),
       'signerMustAcknowledge' => binary(),
       'tabs' => swagger_envelope_recipient_tabs:swagger_envelope_recipient_tabs(),
       'templateLocked' => binary(),
       'templateRequired' => binary(),
       'transformPdfFields' => binary(),
       'uri' => binary()
     }.

encode(#{ 'applyAnchorTabs' := ApplyAnchorTabs,
          'display' := Display,
          'documentBase64' := DocumentBase64,
          'documentFields' := DocumentFields,
          'documentGroup' := DocumentGroup,
          'documentId' := DocumentId,
          'encryptedWithKeyManager' := EncryptedWithKeyManager,
          'fileExtension' := FileExtension,
          'fileFormatHint' := FileFormatHint,
          'htmlDefinition' := HtmlDefinition,
          'includeInDownload' := IncludeInDownload,
          'matchBoxes' := MatchBoxes,
          'name' := Name,
          'order' := Order,
          'pageCount' := PageCount,
          'pages' := Pages,
          'pageSizes' := PageSizes,
          'password' := Password,
          'pdfFormFieldOption' := PdfFormFieldOption,
          'remoteUrl' := RemoteUrl,
          'signerMustAcknowledge' := SignerMustAcknowledge,
          'tabs' := Tabs,
          'templateLocked' := TemplateLocked,
          'templateRequired' := TemplateRequired,
          'transformPdfFields' := TransformPdfFields,
          'uri' := Uri
        }) ->
    #{ 'applyAnchorTabs' => ApplyAnchorTabs,
       'display' => Display,
       'documentBase64' => DocumentBase64,
       'documentFields' => DocumentFields,
       'documentGroup' => DocumentGroup,
       'documentId' => DocumentId,
       'encryptedWithKeyManager' => EncryptedWithKeyManager,
       'fileExtension' => FileExtension,
       'fileFormatHint' => FileFormatHint,
       'htmlDefinition' => HtmlDefinition,
       'includeInDownload' => IncludeInDownload,
       'matchBoxes' => MatchBoxes,
       'name' => Name,
       'order' => Order,
       'pageCount' => PageCount,
       'pages' => Pages,
       'pageSizes' => PageSizes,
       'password' => Password,
       'pdfFormFieldOption' => PdfFormFieldOption,
       'remoteUrl' => RemoteUrl,
       'signerMustAcknowledge' => SignerMustAcknowledge,
       'tabs' => Tabs,
       'templateLocked' => TemplateLocked,
       'templateRequired' => TemplateRequired,
       'transformPdfFields' => TransformPdfFields,
       'uri' => Uri
     }.
