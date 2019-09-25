-module(swagger_responsive_html_preview).

-export([encode/1]).

-export_type([swagger_responsive_html_preview/0]).

-type swagger_responsive_html_preview() ::
    #{ 'htmlDefinitions' => list()
     }.

encode(#{ 'htmlDefinitions' := HtmlDefinitions
        }) ->
    #{ 'htmlDefinitions' => HtmlDefinitions
     }.
