-module(swagger_document_html_definition_originals).

-export([encode/1]).

-export_type([swagger_document_html_definition_originals/0]).

-type swagger_document_html_definition_originals() ::
    #{ 'htmlDefinitions' => list()
     }.

encode(#{ 'htmlDefinitions' := HtmlDefinitions
        }) ->
    #{ 'htmlDefinitions' => HtmlDefinitions
     }.
