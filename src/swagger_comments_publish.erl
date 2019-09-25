-module(swagger_comments_publish).

-export([encode/1]).

-export_type([swagger_comments_publish/0]).

-type swagger_comments_publish() ::
    #{ 'commentsToPublish' => list()
     }.

encode(#{ 'commentsToPublish' := CommentsToPublish
        }) ->
    #{ 'commentsToPublish' => CommentsToPublish
     }.
