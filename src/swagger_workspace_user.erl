-module(swagger_workspace_user).

-export([encode/1]).

-export_type([swagger_workspace_user/0]).

-type swagger_workspace_user() ::
    #{ 'accountId' => binary(),
       'accountName' => binary(),
       'activeSince' => binary(),
       'created' => binary(),
       'createdById' => binary(),
       'email' => binary(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'invitationEmailBlurb' => binary(),
       'invitationEmailSubject' => binary(),
       'lastModified' => binary(),
       'lastModifiedById' => binary(),
       'status' => binary(),
       'type' => binary(),
       'userId' => binary(),
       'userName' => binary(),
       'workspaceId' => binary(),
       'workspaceUserBaseUrl' => binary(),
       'workspaceUserId' => binary(),
       'workspaceUserUri' => binary()
     }.

encode(#{ 'accountId' := AccountId,
          'accountName' := AccountName,
          'activeSince' := ActiveSince,
          'created' := Created,
          'createdById' := CreatedById,
          'email' := Email,
          'errorDetails' := ErrorDetails,
          'invitationEmailBlurb' := InvitationEmailBlurb,
          'invitationEmailSubject' := InvitationEmailSubject,
          'lastModified' := LastModified,
          'lastModifiedById' := LastModifiedById,
          'status' := Status,
          'type' := Type,
          'userId' := UserId,
          'userName' := UserName,
          'workspaceId' := WorkspaceId,
          'workspaceUserBaseUrl' := WorkspaceUserBaseUrl,
          'workspaceUserId' := WorkspaceUserId,
          'workspaceUserUri' := WorkspaceUserUri
        }) ->
    #{ 'accountId' => AccountId,
       'accountName' => AccountName,
       'activeSince' => ActiveSince,
       'created' => Created,
       'createdById' => CreatedById,
       'email' => Email,
       'errorDetails' => ErrorDetails,
       'invitationEmailBlurb' => InvitationEmailBlurb,
       'invitationEmailSubject' => InvitationEmailSubject,
       'lastModified' => LastModified,
       'lastModifiedById' => LastModifiedById,
       'status' => Status,
       'type' => Type,
       'userId' => UserId,
       'userName' => UserName,
       'workspaceId' => WorkspaceId,
       'workspaceUserBaseUrl' => WorkspaceUserBaseUrl,
       'workspaceUserId' => WorkspaceUserId,
       'workspaceUserUri' => WorkspaceUserUri
     }.
