-module(swagger_envelope_documents).

-export([encode/1]).

-export_type([swagger_envelope_documents/0]).

-type swagger_envelope_documents() ::
    #{ 'envelopeDocuments' => list(),
       'envelopeId' => binary()
     }.

encode(#{ 'envelopeDocuments' := EnvelopeDocuments,
          'envelopeId' := EnvelopeId
        }) ->
    #{ 'envelopeDocuments' => EnvelopeDocuments,
       'envelopeId' => EnvelopeId
     }.
