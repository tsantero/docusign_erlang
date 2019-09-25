-module(swagger_contact).

-export([encode/1]).

-export_type([swagger_contact/0]).

-type swagger_contact() ::
    #{ 'cloudProvider' => binary(),
       'cloudProviderContainerId' => binary(),
       'contactId' => binary(),
       'contactPhoneNumbers' => list(),
       'contactUri' => binary(),
       'emails' => list(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'isOwner' => boolean(),
       'name' => binary(),
       'organization' => binary(),
       'shared' => binary(),
       'signingGroup' => binary(),
       'signingGroupName' => binary()
     }.

encode(#{ 'cloudProvider' := CloudProvider,
          'cloudProviderContainerId' := CloudProviderContainerId,
          'contactId' := ContactId,
          'contactPhoneNumbers' := ContactPhoneNumbers,
          'contactUri' := ContactUri,
          'emails' := Emails,
          'errorDetails' := ErrorDetails,
          'isOwner' := IsOwner,
          'name' := Name,
          'organization' := Organization,
          'shared' := Shared,
          'signingGroup' := SigningGroup,
          'signingGroupName' := SigningGroupName
        }) ->
    #{ 'cloudProvider' => CloudProvider,
       'cloudProviderContainerId' => CloudProviderContainerId,
       'contactId' => ContactId,
       'contactPhoneNumbers' => ContactPhoneNumbers,
       'contactUri' => ContactUri,
       'emails' => Emails,
       'errorDetails' => ErrorDetails,
       'isOwner' => IsOwner,
       'name' => Name,
       'organization' => Organization,
       'shared' => Shared,
       'signingGroup' => SigningGroup,
       'signingGroupName' => SigningGroupName
     }.
