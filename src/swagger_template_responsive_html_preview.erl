-module(swagger_template_responsive_html_preview).

-export([encode/1]).

-export_type([swagger_template_responsive_html_preview/0]).

-type swagger_template_responsive_html_preview() ::
    #{ 'htmlDefinitions' => list()
     }.

encode(#{ 'htmlDefinitions' := HtmlDefinitions
        }) ->
    #{ 'htmlDefinitions' => HtmlDefinitions
     }.
