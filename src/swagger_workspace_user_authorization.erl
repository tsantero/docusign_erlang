-module(swagger_workspace_user_authorization).

-export([encode/1]).

-export_type([swagger_workspace_user_authorization/0]).

-type swagger_workspace_user_authorization() ::
    #{ 'canDelete' => binary(),
       'canMove' => binary(),
       'canTransact' => binary(),
       'canView' => binary(),
       'created' => binary(),
       'createdById' => binary(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'modified' => binary(),
       'modifiedById' => binary(),
       'workspaceUserId' => binary(),
       'workspaceUserInformation' => swagger_workspace_user:swagger_workspace_user()
     }.

encode(#{ 'canDelete' := CanDelete,
          'canMove' := CanMove,
          'canTransact' := CanTransact,
          'canView' := CanView,
          'created' := Created,
          'createdById' := CreatedById,
          'errorDetails' := ErrorDetails,
          'modified' := Modified,
          'modifiedById' := ModifiedById,
          'workspaceUserId' := WorkspaceUserId,
          'workspaceUserInformation' := WorkspaceUserInformation
        }) ->
    #{ 'canDelete' => CanDelete,
       'canMove' => CanMove,
       'canTransact' => CanTransact,
       'canView' => CanView,
       'created' => Created,
       'createdById' => CreatedById,
       'errorDetails' => ErrorDetails,
       'modified' => Modified,
       'modifiedById' => ModifiedById,
       'workspaceUserId' => WorkspaceUserId,
       'workspaceUserInformation' => WorkspaceUserInformation
     }.
