-module(swagger_social_account_information).

-export([encode/1]).

-export_type([swagger_social_account_information/0]).

-type swagger_social_account_information() ::
    #{ 'email' => binary(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'provider' => binary(),
       'socialId' => binary(),
       'userName' => binary()
     }.

encode(#{ 'email' := Email,
          'errorDetails' := ErrorDetails,
          'provider' := Provider,
          'socialId' := SocialId,
          'userName' := UserName
        }) ->
    #{ 'email' => Email,
       'errorDetails' => ErrorDetails,
       'provider' => Provider,
       'socialId' => SocialId,
       'userName' => UserName
     }.
