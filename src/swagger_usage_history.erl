-module(swagger_usage_history).

-export([encode/1]).

-export_type([swagger_usage_history/0]).

-type swagger_usage_history() ::
    #{ 'lastSentDateTime' => binary(),
       'lastSignedDateTime' => binary(),
       'sentCount' => binary(),
       'signedCount' => binary()
     }.

encode(#{ 'lastSentDateTime' := LastSentDateTime,
          'lastSignedDateTime' := LastSignedDateTime,
          'sentCount' := SentCount,
          'signedCount' := SignedCount
        }) ->
    #{ 'lastSentDateTime' => LastSentDateTime,
       'lastSignedDateTime' => LastSignedDateTime,
       'sentCount' => SentCount,
       'signedCount' => SignedCount
     }.
