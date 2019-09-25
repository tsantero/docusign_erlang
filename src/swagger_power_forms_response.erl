-module(swagger_power_forms_response).

-export([encode/1]).

-export_type([swagger_power_forms_response/0]).

-type swagger_power_forms_response() ::
    #{ 'endPosition' => integer(),
       'nextUri' => binary(),
       'powerForms' => list(),
       'previousUri' => binary(),
       'resultSetSize' => integer(),
       'startPosition' => integer(),
       'totalSetSize' => integer()
     }.

encode(#{ 'endPosition' := EndPosition,
          'nextUri' := NextUri,
          'powerForms' := PowerForms,
          'previousUri' := PreviousUri,
          'resultSetSize' := ResultSetSize,
          'startPosition' := StartPosition,
          'totalSetSize' := TotalSetSize
        }) ->
    #{ 'endPosition' => EndPosition,
       'nextUri' => NextUri,
       'powerForms' => PowerForms,
       'previousUri' => PreviousUri,
       'resultSetSize' => ResultSetSize,
       'startPosition' => StartPosition,
       'totalSetSize' => TotalSetSize
     }.
