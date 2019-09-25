-module(swagger_new_user).

-export([encode/1]).

-export_type([swagger_new_user/0]).

-type swagger_new_user() ::
    #{ 'apiPassword' => binary(),
       'createdDateTime' => binary(),
       'email' => binary(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'permissionProfileId' => binary(),
       'permissionProfileName' => binary(),
       'uri' => binary(),
       'userId' => binary(),
       'userName' => binary(),
       'userStatus' => binary()
     }.

encode(#{ 'apiPassword' := ApiPassword,
          'createdDateTime' := CreatedDateTime,
          'email' := Email,
          'errorDetails' := ErrorDetails,
          'permissionProfileId' := PermissionProfileId,
          'permissionProfileName' := PermissionProfileName,
          'uri' := Uri,
          'userId' := UserId,
          'userName' := UserName,
          'userStatus' := UserStatus
        }) ->
    #{ 'apiPassword' => ApiPassword,
       'createdDateTime' => CreatedDateTime,
       'email' => Email,
       'errorDetails' => ErrorDetails,
       'permissionProfileId' => PermissionProfileId,
       'permissionProfileName' => PermissionProfileName,
       'uri' => Uri,
       'userId' => UserId,
       'userName' => UserName,
       'userStatus' => UserStatus
     }.
