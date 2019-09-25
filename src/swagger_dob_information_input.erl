-module(swagger_dob_information_input).

-export([encode/1]).

-export_type([swagger_dob_information_input/0]).

-type swagger_dob_information_input() ::
    #{ 'dateOfBirth' => binary(),
       'displayLevelCode' => binary(),
       'receiveInResponse' => binary()
     }.

encode(#{ 'dateOfBirth' := DateOfBirth,
          'displayLevelCode' := DisplayLevelCode,
          'receiveInResponse' := ReceiveInResponse
        }) ->
    #{ 'dateOfBirth' => DateOfBirth,
       'displayLevelCode' => DisplayLevelCode,
       'receiveInResponse' => ReceiveInResponse
     }.
