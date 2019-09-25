-module(swagger_envelope_event).

-export([encode/1]).

-export_type([swagger_envelope_event/0]).

-type swagger_envelope_event() ::
    #{ 'envelopeEventStatusCode' => binary(),
       'includeDocuments' => binary()
     }.

encode(#{ 'envelopeEventStatusCode' := EnvelopeEventStatusCode,
          'includeDocuments' := IncludeDocuments
        }) ->
    #{ 'envelopeEventStatusCode' => EnvelopeEventStatusCode,
       'includeDocuments' => IncludeDocuments
     }.
