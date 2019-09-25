-module(swagger_document_template_list).

-export([encode/1]).

-export_type([swagger_document_template_list/0]).

-type swagger_document_template_list() ::
    #{ 'documentTemplates' => list()
     }.

encode(#{ 'documentTemplates' := DocumentTemplates
        }) ->
    #{ 'documentTemplates' => DocumentTemplates
     }.
