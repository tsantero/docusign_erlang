-module(swagger_address_information_input).

-export([encode/1]).

-export_type([swagger_address_information_input/0]).

-type swagger_address_information_input() ::
    #{ 'addressInformation' => swagger_address_information:swagger_address_information(),
       'displayLevelCode' => binary(),
       'receiveInResponse' => binary()
     }.

encode(#{ 'addressInformation' := AddressInformation,
          'displayLevelCode' := DisplayLevelCode,
          'receiveInResponse' := ReceiveInResponse
        }) ->
    #{ 'addressInformation' => AddressInformation,
       'displayLevelCode' => DisplayLevelCode,
       'receiveInResponse' => ReceiveInResponse
     }.
