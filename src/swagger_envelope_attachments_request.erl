-module(swagger_envelope_attachments_request).

-export([encode/1]).

-export_type([swagger_envelope_attachments_request/0]).

-type swagger_envelope_attachments_request() ::
    #{ 'attachments' => list()
     }.

encode(#{ 'attachments' := Attachments
        }) ->
    #{ 'attachments' => Attachments
     }.
