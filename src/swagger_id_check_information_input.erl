-module(swagger_id_check_information_input).

-export([encode/1]).

-export_type([swagger_id_check_information_input/0]).

-type swagger_id_check_information_input() ::
    #{ 'addressInformationInput' => swagger_address_information_input:swagger_address_information_input(),
       'dobInformationInput' => swagger_dob_information_input:swagger_dob_information_input(),
       'ssn4InformationInput' => swagger_ssn4_information_input:swagger_ssn4_information_input(),
       'ssn9InformationInput' => swagger_ssn9_information_input:swagger_ssn9_information_input()
     }.

encode(#{ 'addressInformationInput' := AddressInformationInput,
          'dobInformationInput' := DobInformationInput,
          'ssn4InformationInput' := Ssn4InformationInput,
          'ssn9InformationInput' := Ssn9InformationInput
        }) ->
    #{ 'addressInformationInput' => AddressInformationInput,
       'dobInformationInput' => DobInformationInput,
       'ssn4InformationInput' => Ssn4InformationInput,
       'ssn9InformationInput' => Ssn9InformationInput
     }.
