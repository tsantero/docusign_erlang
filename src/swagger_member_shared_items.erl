-module(swagger_member_shared_items).

-export([encode/1]).

-export_type([swagger_member_shared_items/0]).

-type swagger_member_shared_items() ::
    #{ 'envelopes' => list(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'folders' => list(),
       'templates' => list(),
       'user' => swagger_user_info:swagger_user_info()
     }.

encode(#{ 'envelopes' := Envelopes,
          'errorDetails' := ErrorDetails,
          'folders' := Folders,
          'templates' := Templates,
          'user' := User
        }) ->
    #{ 'envelopes' => Envelopes,
       'errorDetails' => ErrorDetails,
       'folders' => Folders,
       'templates' => Templates,
       'user' => User
     }.
