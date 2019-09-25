-module(swagger_comment).

-export([encode/1]).

-export_type([swagger_comment/0]).

-type swagger_comment() ::
    #{ 'envelopeId' => binary(),
       'hmac' => binary(),
       'id' => binary(),
       'mentions' => list(),
       'read' => boolean(),
       'sentByEmail' => binary(),
       'sentByFullName' => binary(),
       'sentByImageId' => binary(),
       'sentByInitials' => binary(),
       'sentByRecipientId' => binary(),
       'sentByUserId' => binary(),
       'signingGroupId' => binary(),
       'signingGroupName' => binary(),
       'subject' => binary(),
       'tabId' => binary(),
       'text' => binary(),
       'threadId' => binary(),
       'threadOriginatorId' => binary(),
       'timestamp' => binary(),
       'timeStampFormatted' => binary(),
       'visibleTo' => list()
     }.

encode(#{ 'envelopeId' := EnvelopeId,
          'hmac' := Hmac,
          'id' := Id,
          'mentions' := Mentions,
          'read' := Read,
          'sentByEmail' := SentByEmail,
          'sentByFullName' := SentByFullName,
          'sentByImageId' := SentByImageId,
          'sentByInitials' := SentByInitials,
          'sentByRecipientId' := SentByRecipientId,
          'sentByUserId' := SentByUserId,
          'signingGroupId' := SigningGroupId,
          'signingGroupName' := SigningGroupName,
          'subject' := Subject,
          'tabId' := TabId,
          'text' := Text,
          'threadId' := ThreadId,
          'threadOriginatorId' := ThreadOriginatorId,
          'timestamp' := Timestamp,
          'timeStampFormatted' := TimeStampFormatted,
          'visibleTo' := VisibleTo
        }) ->
    #{ 'envelopeId' => EnvelopeId,
       'hmac' => Hmac,
       'id' => Id,
       'mentions' => Mentions,
       'read' => Read,
       'sentByEmail' => SentByEmail,
       'sentByFullName' => SentByFullName,
       'sentByImageId' => SentByImageId,
       'sentByInitials' => SentByInitials,
       'sentByRecipientId' => SentByRecipientId,
       'sentByUserId' => SentByUserId,
       'signingGroupId' => SigningGroupId,
       'signingGroupName' => SigningGroupName,
       'subject' => Subject,
       'tabId' => TabId,
       'text' => Text,
       'threadId' => ThreadId,
       'threadOriginatorId' => ThreadOriginatorId,
       'timestamp' => Timestamp,
       'timeStampFormatted' => TimeStampFormatted,
       'visibleTo' => VisibleTo
     }.
