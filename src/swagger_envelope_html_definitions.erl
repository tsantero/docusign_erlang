-module(swagger_envelope_html_definitions).

-export([encode/1]).

-export_type([swagger_envelope_html_definitions/0]).

-type swagger_envelope_html_definitions() ::
    #{ 'htmlDefinitions' => list()
     }.

encode(#{ 'htmlDefinitions' := HtmlDefinitions
        }) ->
    #{ 'htmlDefinitions' => HtmlDefinitions
     }.
