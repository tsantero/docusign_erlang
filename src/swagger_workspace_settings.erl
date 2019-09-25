-module(swagger_workspace_settings).

-export([encode/1]).

-export_type([swagger_workspace_settings/0]).

-type swagger_workspace_settings() ::
    #{ 'commentsAllowed' => binary()
     }.

encode(#{ 'commentsAllowed' := CommentsAllowed
        }) ->
    #{ 'commentsAllowed' => CommentsAllowed
     }.
