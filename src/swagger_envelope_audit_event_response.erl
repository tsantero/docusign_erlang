-module(swagger_envelope_audit_event_response).

-export([encode/1]).

-export_type([swagger_envelope_audit_event_response/0]).

-type swagger_envelope_audit_event_response() ::
    #{ 'auditEvents' => list()
     }.

encode(#{ 'auditEvents' := AuditEvents
        }) ->
    #{ 'auditEvents' => AuditEvents
     }.
