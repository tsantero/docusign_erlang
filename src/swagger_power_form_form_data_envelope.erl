-module(swagger_power_form_form_data_envelope).

-export([encode/1]).

-export_type([swagger_power_form_form_data_envelope/0]).

-type swagger_power_form_form_data_envelope() ::
    #{ 'envelopeId' => binary(),
       'recipients' => list()
     }.

encode(#{ 'envelopeId' := EnvelopeId,
          'recipients' := Recipients
        }) ->
    #{ 'envelopeId' => EnvelopeId,
       'recipients' => Recipients
     }.
