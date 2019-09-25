-module(swagger_envelope_transfer_rule).

-export([encode/1]).

-export_type([swagger_envelope_transfer_rule/0]).

-type swagger_envelope_transfer_rule() ::
    #{ 'carbonCopyOriginalOwner' => binary(),
       'enabled' => binary(),
       'envelopeTransferRuleId' => binary(),
       'eventType' => binary(),
       'fromGroup' => swagger_group:swagger_group(),
       'fromUser' => swagger_users:swagger_users(),
       'modifiedDate' => binary(),
       'modifiedUser' => swagger_users:swagger_users(),
       'toFolder' => swagger_folder:swagger_folder(),
       'toUser' => swagger_users:swagger_users()
     }.

encode(#{ 'carbonCopyOriginalOwner' := CarbonCopyOriginalOwner,
          'enabled' := Enabled,
          'envelopeTransferRuleId' := EnvelopeTransferRuleId,
          'eventType' := EventType,
          'fromGroup' := FromGroup,
          'fromUser' := FromUser,
          'modifiedDate' := ModifiedDate,
          'modifiedUser' := ModifiedUser,
          'toFolder' := ToFolder,
          'toUser' := ToUser
        }) ->
    #{ 'carbonCopyOriginalOwner' => CarbonCopyOriginalOwner,
       'enabled' => Enabled,
       'envelopeTransferRuleId' => EnvelopeTransferRuleId,
       'eventType' => EventType,
       'fromGroup' => FromGroup,
       'fromUser' => FromUser,
       'modifiedDate' => ModifiedDate,
       'modifiedUser' => ModifiedUser,
       'toFolder' => ToFolder,
       'toUser' => ToUser
     }.
