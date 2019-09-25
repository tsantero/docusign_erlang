-module(swagger_user_info).

-export([encode/1]).

-export_type([swagger_user_info/0]).

-type swagger_user_info() ::
    #{ 'accountId' => binary(),
       'accountName' => binary(),
       'activationAccessCode' => binary(),
       'email' => binary(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'loginStatus' => binary(),
       'membershipId' => binary(),
       'sendActivationEmail' => binary(),
       'uri' => binary(),
       'userId' => binary(),
       'userName' => binary(),
       'userStatus' => binary(),
       'userType' => binary()
     }.

encode(#{ 'accountId' := AccountId,
          'accountName' := AccountName,
          'activationAccessCode' := ActivationAccessCode,
          'email' := Email,
          'errorDetails' := ErrorDetails,
          'loginStatus' := LoginStatus,
          'membershipId' := MembershipId,
          'sendActivationEmail' := SendActivationEmail,
          'uri' := Uri,
          'userId' := UserId,
          'userName' := UserName,
          'userStatus' := UserStatus,
          'userType' := UserType
        }) ->
    #{ 'accountId' => AccountId,
       'accountName' => AccountName,
       'activationAccessCode' => ActivationAccessCode,
       'email' => Email,
       'errorDetails' => ErrorDetails,
       'loginStatus' => LoginStatus,
       'membershipId' => MembershipId,
       'sendActivationEmail' => SendActivationEmail,
       'uri' => Uri,
       'userId' => UserId,
       'userName' => UserName,
       'userStatus' => UserStatus,
       'userType' => UserType
     }.
