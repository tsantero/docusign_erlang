-module(swagger_comment_history_result).

-export([encode/1]).

-export_type([swagger_comment_history_result/0]).

-type swagger_comment_history_result() ::
    #{ 'comments' => list(),
       'count' => integer(),
       'endTimetoken' => binary(),
       'startTimetoken' => binary()
     }.

encode(#{ 'comments' := Comments,
          'count' := Count,
          'endTimetoken' := EndTimetoken,
          'startTimetoken' := StartTimetoken
        }) ->
    #{ 'comments' => Comments,
       'count' => Count,
       'endTimetoken' => EndTimetoken,
       'startTimetoken' => StartTimetoken
     }.
