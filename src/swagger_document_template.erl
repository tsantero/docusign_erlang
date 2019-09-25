-module(swagger_document_template).

-export([encode/1]).

-export_type([swagger_document_template/0]).

-type swagger_document_template() ::
    #{ 'documentEndPage' => binary(),
       'documentId' => binary(),
       'documentStartPage' => binary(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'templateId' => binary()
     }.

encode(#{ 'documentEndPage' := DocumentEndPage,
          'documentId' := DocumentId,
          'documentStartPage' := DocumentStartPage,
          'errorDetails' := ErrorDetails,
          'templateId' := TemplateId
        }) ->
    #{ 'documentEndPage' => DocumentEndPage,
       'documentId' => DocumentId,
       'documentStartPage' => DocumentStartPage,
       'errorDetails' => ErrorDetails,
       'templateId' => TemplateId
     }.
