-module(swagger_envelope_audit_event).

-export([encode/1]).

-export_type([swagger_envelope_audit_event/0]).

-type swagger_envelope_audit_event() ::
    #{ 'eventFields' => list()
     }.

encode(#{ 'eventFields' := EventFields
        }) ->
    #{ 'eventFields' => EventFields
     }.
