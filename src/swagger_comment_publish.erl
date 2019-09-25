-module(swagger_comment_publish).

-export([encode/1]).

-export_type([swagger_comment_publish/0]).

-type swagger_comment_publish() ::
    #{ 'id' => binary(),
       'mentions' => list(),
       'text' => binary(),
       'threadAnchorKeys' => maps:map(),
       'threadId' => binary(),
       'visibleTo' => list()
     }.

encode(#{ 'id' := Id,
          'mentions' := Mentions,
          'text' := Text,
          'threadAnchorKeys' := ThreadAnchorKeys,
          'threadId' := ThreadId,
          'visibleTo' := VisibleTo
        }) ->
    #{ 'id' => Id,
       'mentions' => Mentions,
       'text' => Text,
       'threadAnchorKeys' => ThreadAnchorKeys,
       'threadId' => ThreadId,
       'visibleTo' => VisibleTo
     }.
