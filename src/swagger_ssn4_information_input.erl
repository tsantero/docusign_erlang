-module(swagger_ssn4_information_input).

-export([encode/1]).

-export_type([swagger_ssn4_information_input/0]).

-type swagger_ssn4_information_input() ::
    #{ 'displayLevelCode' => binary(),
       'receiveInResponse' => binary(),
       'ssn4' => binary()
     }.

encode(#{ 'displayLevelCode' := DisplayLevelCode,
          'receiveInResponse' := ReceiveInResponse,
          'ssn4' := Ssn4
        }) ->
    #{ 'displayLevelCode' => DisplayLevelCode,
       'receiveInResponse' => ReceiveInResponse,
       'ssn4' => Ssn4
     }.
