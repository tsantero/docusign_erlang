-module(swagger_power_form_data).

-export([encode/1]).

-export_type([swagger_power_form_data/0]).

-type swagger_power_form_data() ::
    #{ 'envelopeId' => binary(),
       'recipients' => list()
     }.

encode(#{ 'envelopeId' := EnvelopeId,
          'recipients' := Recipients
        }) ->
    #{ 'envelopeId' => EnvelopeId,
       'recipients' => Recipients
     }.
