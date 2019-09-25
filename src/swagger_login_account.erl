-module(swagger_login_account).

-export([encode/1]).

-export_type([swagger_login_account/0]).

-type swagger_login_account() ::
    #{ 'accountId' => binary(),
       'accountIdGuid' => binary(),
       'baseUrl' => binary(),
       'email' => binary(),
       'isDefault' => binary(),
       'loginAccountSettings' => list(),
       'loginUserSettings' => list(),
       'name' => binary(),
       'siteDescription' => binary(),
       'userId' => binary(),
       'userName' => binary()
     }.

encode(#{ 'accountId' := AccountId,
          'accountIdGuid' := AccountIdGuid,
          'baseUrl' := BaseUrl,
          'email' := Email,
          'isDefault' := IsDefault,
          'loginAccountSettings' := LoginAccountSettings,
          'loginUserSettings' := LoginUserSettings,
          'name' := Name,
          'siteDescription' := SiteDescription,
          'userId' := UserId,
          'userName' := UserName
        }) ->
    #{ 'accountId' => AccountId,
       'accountIdGuid' => AccountIdGuid,
       'baseUrl' => BaseUrl,
       'email' => Email,
       'isDefault' => IsDefault,
       'loginAccountSettings' => LoginAccountSettings,
       'loginUserSettings' => LoginUserSettings,
       'name' => Name,
       'siteDescription' => SiteDescription,
       'userId' => UserId,
       'userName' => UserName
     }.
