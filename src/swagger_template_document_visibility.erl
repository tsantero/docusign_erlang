-module(swagger_template_document_visibility).

-export([encode/1]).

-export_type([swagger_template_document_visibility/0]).

-type swagger_template_document_visibility() ::
    #{ 'documentVisibility' => list()
     }.

encode(#{ 'documentVisibility' := DocumentVisibility
        }) ->
    #{ 'documentVisibility' => DocumentVisibility
     }.
