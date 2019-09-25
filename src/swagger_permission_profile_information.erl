-module(swagger_permission_profile_information).

-export([encode/1]).

-export_type([swagger_permission_profile_information/0]).

-type swagger_permission_profile_information() ::
    #{ 'permissionProfiles' => list()
     }.

encode(#{ 'permissionProfiles' := PermissionProfiles
        }) ->
    #{ 'permissionProfiles' => PermissionProfiles
     }.
