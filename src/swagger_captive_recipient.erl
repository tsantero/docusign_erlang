-module(swagger_captive_recipient).

-export([encode/1]).

-export_type([swagger_captive_recipient/0]).

-type swagger_captive_recipient() ::
    #{ 'clientUserId' => binary(),
       'email' => binary(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'userName' => binary()
     }.

encode(#{ 'clientUserId' := ClientUserId,
          'email' := Email,
          'errorDetails' := ErrorDetails,
          'userName' := UserName
        }) ->
    #{ 'clientUserId' => ClientUserId,
       'email' => Email,
       'errorDetails' => ErrorDetails,
       'userName' => UserName
     }.
