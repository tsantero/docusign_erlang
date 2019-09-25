-module(swagger_envelope_purge_configuration).

-export([encode/1]).

-export_type([swagger_envelope_purge_configuration/0]).

-type swagger_envelope_purge_configuration() ::
    #{ 'purgeEnvelopes' => binary(),
       'redactPII' => binary(),
       'removeTabsAndEnvelopeAttachments' => binary(),
       'retentionDays' => binary()
     }.

encode(#{ 'purgeEnvelopes' := PurgeEnvelopes,
          'redactPII' := RedactPII,
          'removeTabsAndEnvelopeAttachments' := RemoveTabsAndEnvelopeAttachments,
          'retentionDays' := RetentionDays
        }) ->
    #{ 'purgeEnvelopes' => PurgeEnvelopes,
       'redactPII' => RedactPII,
       'removeTabsAndEnvelopeAttachments' => RemoveTabsAndEnvelopeAttachments,
       'retentionDays' => RetentionDays
     }.
