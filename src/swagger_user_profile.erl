-module(swagger_user_profile).

-export([encode/1]).

-export_type([swagger_user_profile/0]).

-type swagger_user_profile() ::
    #{ 'address' => swagger_address_information:swagger_address_information(),
       'authenticationMethods' => list(),
       'companyName' => binary(),
       'displayOrganizationInfo' => binary(),
       'displayPersonalInfo' => binary(),
       'displayProfile' => binary(),
       'displayUsageHistory' => binary(),
       'profileImageUri' => binary(),
       'title' => binary(),
       'usageHistory' => swagger_usage_history:swagger_usage_history(),
       'userDetails' => swagger_users:swagger_users(),
       'userProfileLastModifiedDate' => binary()
     }.

encode(#{ 'address' := Address,
          'authenticationMethods' := AuthenticationMethods,
          'companyName' := CompanyName,
          'displayOrganizationInfo' := DisplayOrganizationInfo,
          'displayPersonalInfo' := DisplayPersonalInfo,
          'displayProfile' := DisplayProfile,
          'displayUsageHistory' := DisplayUsageHistory,
          'profileImageUri' := ProfileImageUri,
          'title' := Title,
          'usageHistory' := UsageHistory,
          'userDetails' := UserDetails,
          'userProfileLastModifiedDate' := UserProfileLastModifiedDate
        }) ->
    #{ 'address' => Address,
       'authenticationMethods' => AuthenticationMethods,
       'companyName' => CompanyName,
       'displayOrganizationInfo' => DisplayOrganizationInfo,
       'displayPersonalInfo' => DisplayPersonalInfo,
       'displayProfile' => DisplayProfile,
       'displayUsageHistory' => DisplayUsageHistory,
       'profileImageUri' => ProfileImageUri,
       'title' => Title,
       'usageHistory' => UsageHistory,
       'userDetails' => UserDetails,
       'userProfileLastModifiedDate' => UserProfileLastModifiedDate
     }.
