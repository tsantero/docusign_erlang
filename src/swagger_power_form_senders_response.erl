-module(swagger_power_form_senders_response).

-export([encode/1]).

-export_type([swagger_power_form_senders_response/0]).

-type swagger_power_form_senders_response() ::
    #{ 'endPosition' => integer(),
       'nextUri' => binary(),
       'powerFormSenders' => list(),
       'previousUri' => binary(),
       'resultSetSize' => integer(),
       'startPosition' => integer(),
       'totalSetSize' => integer()
     }.

encode(#{ 'endPosition' := EndPosition,
          'nextUri' := NextUri,
          'powerFormSenders' := PowerFormSenders,
          'previousUri' := PreviousUri,
          'resultSetSize' := ResultSetSize,
          'startPosition' := StartPosition,
          'totalSetSize' := TotalSetSize
        }) ->
    #{ 'endPosition' => EndPosition,
       'nextUri' => NextUri,
       'powerFormSenders' => PowerFormSenders,
       'previousUri' => PreviousUri,
       'resultSetSize' => ResultSetSize,
       'startPosition' => StartPosition,
       'totalSetSize' => TotalSetSize
     }.
