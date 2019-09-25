-module(swagger_signing_group).

-export([encode/1]).

-export_type([swagger_signing_group/0]).

-type swagger_signing_group() ::
    #{ 'created' => binary(),
       'createdBy' => binary(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'groupEmail' => binary(),
       'groupName' => binary(),
       'groupType' => binary(),
       'modified' => binary(),
       'modifiedBy' => binary(),
       'signingGroupId' => binary(),
       'users' => list()
     }.

encode(#{ 'created' := Created,
          'createdBy' := CreatedBy,
          'errorDetails' := ErrorDetails,
          'groupEmail' := GroupEmail,
          'groupName' := GroupName,
          'groupType' := GroupType,
          'modified' := Modified,
          'modifiedBy' := ModifiedBy,
          'signingGroupId' := SigningGroupId,
          'users' := Users
        }) ->
    #{ 'created' => Created,
       'createdBy' => CreatedBy,
       'errorDetails' => ErrorDetails,
       'groupEmail' => GroupEmail,
       'groupName' => GroupName,
       'groupType' => GroupType,
       'modified' => Modified,
       'modifiedBy' => ModifiedBy,
       'signingGroupId' => SigningGroupId,
       'users' => Users
     }.
