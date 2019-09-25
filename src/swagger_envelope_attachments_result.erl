-module(swagger_envelope_attachments_result).

-export([encode/1]).

-export_type([swagger_envelope_attachments_result/0]).

-type swagger_envelope_attachments_result() ::
    #{ 'attachments' => list()
     }.

encode(#{ 'attachments' := Attachments
        }) ->
    #{ 'attachments' => Attachments
     }.
