-module(swagger_envelope_documents_result).

-export([encode/1]).

-export_type([swagger_envelope_documents_result/0]).

-type swagger_envelope_documents_result() ::
    #{ 'envelopeDocuments' => list(),
       'envelopeId' => binary()
     }.

encode(#{ 'envelopeDocuments' := EnvelopeDocuments,
          'envelopeId' := EnvelopeId
        }) ->
    #{ 'envelopeDocuments' => EnvelopeDocuments,
       'envelopeId' => EnvelopeId
     }.
