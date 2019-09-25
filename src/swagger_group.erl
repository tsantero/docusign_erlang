-module(swagger_group).

-export([encode/1]).

-export_type([swagger_group/0]).

-type swagger_group() ::
    #{ 'errorDetails' => swagger_error_details:swagger_error_details(),
       'groupId' => binary(),
       'groupName' => binary(),
       'groupType' => binary(),
       'permissionProfileId' => binary(),
       'users' => list(),
       'usersCount' => binary()
     }.

encode(#{ 'errorDetails' := ErrorDetails,
          'groupId' := GroupId,
          'groupName' := GroupName,
          'groupType' := GroupType,
          'permissionProfileId' := PermissionProfileId,
          'users' := Users,
          'usersCount' := UsersCount
        }) ->
    #{ 'errorDetails' => ErrorDetails,
       'groupId' => GroupId,
       'groupName' => GroupName,
       'groupType' => GroupType,
       'permissionProfileId' => PermissionProfileId,
       'users' => Users,
       'usersCount' => UsersCount
     }.
