-module(swagger_template_document_visibility_list).

-export([encode/1]).

-export_type([swagger_template_document_visibility_list/0]).

-type swagger_template_document_visibility_list() ::
    #{ 'documentVisibility' => list()
     }.

encode(#{ 'documentVisibility' := DocumentVisibility
        }) ->
    #{ 'documentVisibility' => DocumentVisibility
     }.
