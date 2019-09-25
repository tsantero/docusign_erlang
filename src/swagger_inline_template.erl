-module(swagger_inline_template).

-export([encode/1]).

-export_type([swagger_inline_template/0]).

-type swagger_inline_template() ::
    #{ 'customFields' => swagger_account_custom_fields:swagger_account_custom_fields(),
       'documents' => list(),
       'envelope' => swagger_envelopes:swagger_envelopes(),
       'recipients' => swagger_envelope_recipients:swagger_envelope_recipients(),
       'sequence' => binary()
     }.

encode(#{ 'customFields' := CustomFields,
          'documents' := Documents,
          'envelope' := Envelope,
          'recipients' := Recipients,
          'sequence' := Sequence
        }) ->
    #{ 'customFields' => CustomFields,
       'documents' => Documents,
       'envelope' => Envelope,
       'recipients' => Recipients,
       'sequence' => Sequence
     }.
