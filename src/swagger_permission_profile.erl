-module(swagger_permission_profile).

-export([encode/1]).

-export_type([swagger_permission_profile/0]).

-type swagger_permission_profile() ::
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
