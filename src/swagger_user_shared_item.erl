-module(swagger_user_shared_item).

-export([encode/1]).

-export_type([swagger_user_shared_item/0]).

-type swagger_user_shared_item() ::
    #{ 'errorDetails' => swagger_error_details:swagger_error_details(),
       'shared' => binary(),
       'user' => swagger_user_info:swagger_user_info()
     }.

encode(#{ 'errorDetails' := ErrorDetails,
          'shared' := Shared,
          'user' := User
        }) ->
    #{ 'errorDetails' => ErrorDetails,
       'shared' => Shared,
       'user' => User
     }.
