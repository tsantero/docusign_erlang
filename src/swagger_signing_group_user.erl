-module(swagger_signing_group_user).

-export([encode/1]).

-export_type([swagger_signing_group_user/0]).

-type swagger_signing_group_user() ::
    #{ 'email' => binary(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'userName' => binary()
     }.

encode(#{ 'email' := Email,
          'errorDetails' := ErrorDetails,
          'userName' := UserName
        }) ->
    #{ 'email' => Email,
       'errorDetails' => ErrorDetails,
       'userName' => UserName
     }.
