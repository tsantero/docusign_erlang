-module(swagger_ssn9_information_input).

-export([encode/1]).

-export_type([swagger_ssn9_information_input/0]).

-type swagger_ssn9_information_input() ::
    #{ 'displayLevelCode' => binary(),
       'ssn9' => binary()
     }.

encode(#{ 'displayLevelCode' := DisplayLevelCode,
          'ssn9' := Ssn9
        }) ->
    #{ 'displayLevelCode' => DisplayLevelCode,
       'ssn9' => Ssn9
     }.
