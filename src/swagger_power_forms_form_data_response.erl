-module(swagger_power_forms_form_data_response).

-export([encode/1]).

-export_type([swagger_power_forms_form_data_response/0]).

-type swagger_power_forms_form_data_response() ::
    #{ 'envelopes' => list()
     }.

encode(#{ 'envelopes' := Envelopes
        }) ->
    #{ 'envelopes' => Envelopes
     }.
