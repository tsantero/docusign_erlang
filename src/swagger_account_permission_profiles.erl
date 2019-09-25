-module(swagger_account_permission_profiles).

-export([encode/1]).

-export_type([swagger_account_permission_profiles/0]).

-type swagger_account_permission_profiles() ::
    #{ 'modifiedByUsername' => binary(),
       'modifiedDateTime' => binary(),
       'permissionProfileId' => binary(),
       'permissionProfileName' => binary(),
       'settings' => swagger_account_role_settings:swagger_account_role_settings(),
       'userCount' => binary(),
       'users' => list()
     }.

encode(#{ 'modifiedByUsername' := ModifiedByUsername,
          'modifiedDateTime' := ModifiedDateTime,
          'permissionProfileId' := PermissionProfileId,
          'permissionProfileName' := PermissionProfileName,
          'settings' := Settings,
          'userCount' := UserCount,
          'users' := Users
        }) ->
    #{ 'modifiedByUsername' => ModifiedByUsername,
       'modifiedDateTime' => ModifiedDateTime,
       'permissionProfileId' => PermissionProfileId,
       'permissionProfileName' => PermissionProfileName,
       'settings' => Settings,
       'userCount' => UserCount,
       'users' => Users
     }.
