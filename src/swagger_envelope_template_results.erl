-module(swagger_envelope_template_results).

-export([encode/1]).

-export_type([swagger_envelope_template_results/0]).

-type swagger_envelope_template_results() ::
    #{ 'endPosition' => binary(),
       'envelopeTemplates' => list(),
       'folders' => list(),
       'nextUri' => binary(),
       'previousUri' => binary(),
       'resultSetSize' => binary(),
       'startPosition' => binary(),
       'totalSetSize' => binary()
     }.

encode(#{ 'endPosition' := EndPosition,
          'envelopeTemplates' := EnvelopeTemplates,
          'folders' := Folders,
          'nextUri' := NextUri,
          'previousUri' := PreviousUri,
          'resultSetSize' := ResultSetSize,
          'startPosition' := StartPosition,
          'totalSetSize' := TotalSetSize
        }) ->
    #{ 'endPosition' => EndPosition,
       'envelopeTemplates' => EnvelopeTemplates,
       'folders' => Folders,
       'nextUri' => NextUri,
       'previousUri' => PreviousUri,
       'resultSetSize' => ResultSetSize,
       'startPosition' => StartPosition,
       'totalSetSize' => TotalSetSize
     }.
