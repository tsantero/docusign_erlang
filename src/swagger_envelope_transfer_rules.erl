-module(swagger_envelope_transfer_rules).

-export([encode/1]).

-export_type([swagger_envelope_transfer_rules/0]).

-type swagger_envelope_transfer_rules() ::
    #{ 'endPosition' => binary(),
       'envelopeTransferRules' => list(),
       'nextUri' => binary(),
       'previousUri' => binary(),
       'resultSetSize' => binary(),
       'startPosition' => binary(),
       'totalSetSize' => binary()
     }.

encode(#{ 'endPosition' := EndPosition,
          'envelopeTransferRules' := EnvelopeTransferRules,
          'nextUri' := NextUri,
          'previousUri' := PreviousUri,
          'resultSetSize' := ResultSetSize,
          'startPosition' := StartPosition,
          'totalSetSize' := TotalSetSize
        }) ->
    #{ 'endPosition' => EndPosition,
       'envelopeTransferRules' => EnvelopeTransferRules,
       'nextUri' => NextUri,
       'previousUri' => PreviousUri,
       'resultSetSize' => ResultSetSize,
       'startPosition' => StartPosition,
       'totalSetSize' => TotalSetSize
     }.
