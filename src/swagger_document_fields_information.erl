-module(swagger_document_fields_information).

-export([encode/1]).

-export_type([swagger_document_fields_information/0]).

-type swagger_document_fields_information() ::
    #{ 'documentFields' => list()
     }.

encode(#{ 'documentFields' := DocumentFields
        }) ->
    #{ 'documentFields' => DocumentFields
     }.
