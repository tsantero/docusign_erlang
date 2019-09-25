-module(swagger_envelope_document_visibility).

-export([encode/1]).

-export_type([swagger_envelope_document_visibility/0]).

-type swagger_envelope_document_visibility() ::
    #{ 'documentVisibility' => list()
     }.

encode(#{ 'documentVisibility' := DocumentVisibility
        }) ->
    #{ 'documentVisibility' => DocumentVisibility
     }.
