-module(swagger_power_forms_request).

-export([encode/1]).

-export_type([swagger_power_forms_request/0]).

-type swagger_power_forms_request() ::
    #{ 'powerForms' => list()
     }.

encode(#{ 'powerForms' := PowerForms
        }) ->
    #{ 'powerForms' => PowerForms
     }.
