-module(swagger_user_account_management_granular_information).

-export([encode/1]).

-export_type([swagger_user_account_management_granular_information/0]).

-type swagger_user_account_management_granular_information() ::
    #{ 'canManageAccountSecuritySettings' => binary(),
       'canManageAccountSecuritySettingsMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'canManageAccountSettings' => binary(),
       'canManageAccountSettingsMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'canManageAdmins' => binary(),
       'canManageAdminsMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'canManageReporting' => binary(),
       'canManageReportingMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'canManageSharing' => binary(),
       'canManageSharingMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'canManageSigningGroups' => binary(),
       'canManageSigningGroupsMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'canManageUsers' => binary(),
       'canManageUsersMetadata' => swagger_settings_metadata:swagger_settings_metadata()
     }.

encode(#{ 'canManageAccountSecuritySettings' := CanManageAccountSecuritySettings,
          'canManageAccountSecuritySettingsMetadata' := CanManageAccountSecuritySettingsMetadata,
          'canManageAccountSettings' := CanManageAccountSettings,
          'canManageAccountSettingsMetadata' := CanManageAccountSettingsMetadata,
          'canManageAdmins' := CanManageAdmins,
          'canManageAdminsMetadata' := CanManageAdminsMetadata,
          'canManageReporting' := CanManageReporting,
          'canManageReportingMetadata' := CanManageReportingMetadata,
          'canManageSharing' := CanManageSharing,
          'canManageSharingMetadata' := CanManageSharingMetadata,
          'canManageSigningGroups' := CanManageSigningGroups,
          'canManageSigningGroupsMetadata' := CanManageSigningGroupsMetadata,
          'canManageUsers' := CanManageUsers,
          'canManageUsersMetadata' := CanManageUsersMetadata
        }) ->
    #{ 'canManageAccountSecuritySettings' => CanManageAccountSecuritySettings,
       'canManageAccountSecuritySettingsMetadata' => CanManageAccountSecuritySettingsMetadata,
       'canManageAccountSettings' => CanManageAccountSettings,
       'canManageAccountSettingsMetadata' => CanManageAccountSettingsMetadata,
       'canManageAdmins' => CanManageAdmins,
       'canManageAdminsMetadata' => CanManageAdminsMetadata,
       'canManageReporting' => CanManageReporting,
       'canManageReportingMetadata' => CanManageReportingMetadata,
       'canManageSharing' => CanManageSharing,
       'canManageSharingMetadata' => CanManageSharingMetadata,
       'canManageSigningGroups' => CanManageSigningGroups,
       'canManageSigningGroupsMetadata' => CanManageSigningGroupsMetadata,
       'canManageUsers' => CanManageUsers,
       'canManageUsersMetadata' => CanManageUsersMetadata
     }.
