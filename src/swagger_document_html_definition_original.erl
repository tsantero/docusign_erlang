-module(swagger_document_html_definition_original).

-export([encode/1]).

-export_type([swagger_document_html_definition_original/0]).

-type swagger_document_html_definition_original() ::
    #{ 'documentId' => binary(),
       'documentIdGuid' => binary(),
       'htmlDefinition' => swagger_document_html_definition:swagger_document_html_definition()
     }.

encode(#{ 'documentId' := DocumentId,
          'documentIdGuid' := DocumentIdGuid,
          'htmlDefinition' := HtmlDefinition
        }) ->
    #{ 'documentId' => DocumentId,
       'documentIdGuid' => DocumentIdGuid,
       'htmlDefinition' => HtmlDefinition
     }.
