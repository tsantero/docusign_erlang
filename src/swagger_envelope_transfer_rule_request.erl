-module(swagger_envelope_transfer_rule_request).

-export([encode/1]).

-export_type([swagger_envelope_transfer_rule_request/0]).

-type swagger_envelope_transfer_rule_request() ::
    #{ 'carbonCopyOriginalOwner' => binary(),
       'enabled' => binary(),
       'envelopeTransferRuleId' => binary(),
       'eventType' => binary(),
       'fromGroups' => list(),
       'fromUsers' => list(),
       'modifiedDate' => binary(),
       'modifiedUser' => swagger_users:swagger_users(),
       'toFolder' => swagger_folder:swagger_folder(),
       'toUser' => swagger_users:swagger_users()
     }.

encode(#{ 'carbonCopyOriginalOwner' := CarbonCopyOriginalOwner,
          'enabled' := Enabled,
          'envelopeTransferRuleId' := EnvelopeTransferRuleId,
          'eventType' := EventType,
          'fromGroups' := FromGroups,
          'fromUsers' := FromUsers,
          'modifiedDate' := ModifiedDate,
          'modifiedUser' := ModifiedUser,
          'toFolder' := ToFolder,
          'toUser' := ToUser
        }) ->
    #{ 'carbonCopyOriginalOwner' => CarbonCopyOriginalOwner,
       'enabled' => Enabled,
       'envelopeTransferRuleId' => EnvelopeTransferRuleId,
       'eventType' => EventType,
       'fromGroups' => FromGroups,
       'fromUsers' => FromUsers,
       'modifiedDate' => ModifiedDate,
       'modifiedUser' => ModifiedUser,
       'toFolder' => ToFolder,
       'toUser' => ToUser
     }.
