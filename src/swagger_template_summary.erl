-module(swagger_template_summary).

-export([encode/1]).

-export_type([swagger_template_summary/0]).

-type swagger_template_summary() ::
    #{ 'applied' => binary(),
       'documentId' => binary(),
       'documentName' => binary(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'name' => binary(),
       'templateId' => binary(),
       'templateMatch' => swagger_template_match:swagger_template_match(),
       'uri' => binary()
     }.

encode(#{ 'applied' := Applied,
          'documentId' := DocumentId,
          'documentName' := DocumentName,
          'errorDetails' := ErrorDetails,
          'name' := Name,
          'templateId' := TemplateId,
          'templateMatch' := TemplateMatch,
          'uri' := Uri
        }) ->
    #{ 'applied' => Applied,
       'documentId' => DocumentId,
       'documentName' => DocumentName,
       'errorDetails' => ErrorDetails,
       'name' => Name,
       'templateId' => TemplateId,
       'templateMatch' => TemplateMatch,
       'uri' => Uri
     }.
