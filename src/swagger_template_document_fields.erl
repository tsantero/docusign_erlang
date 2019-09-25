-module(swagger_template_document_fields).

-export([encode/1]).

-export_type([swagger_template_document_fields/0]).

-type swagger_template_document_fields() ::
    #{ 'documentFields' => list()
     }.

encode(#{ 'documentFields' := DocumentFields
        }) ->
    #{ 'documentFields' => DocumentFields
     }.
