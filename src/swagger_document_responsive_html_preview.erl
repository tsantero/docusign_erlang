-module(swagger_document_responsive_html_preview).

-export([encode/1]).

-export_type([swagger_document_responsive_html_preview/0]).

-type swagger_document_responsive_html_preview() ::
    #{ 'htmlDefinitions' => list()
     }.

encode(#{ 'htmlDefinitions' := HtmlDefinitions
        }) ->
    #{ 'htmlDefinitions' => HtmlDefinitions
     }.
