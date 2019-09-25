-module(swagger_workspace).

-export([encode/1]).

-export_type([swagger_workspace/0]).

-type swagger_workspace() ::
    #{ 'billableAccountId' => binary(),
       'callerInformation' => swagger_workspace_user:swagger_workspace_user(),
       'created' => binary(),
       'createdByInformation' => swagger_workspace_user:swagger_workspace_user(),
       'lastModified' => binary(),
       'lastModifiedByInformation' => swagger_workspace_user:swagger_workspace_user(),
       'settings' => swagger_workspace_settings:swagger_workspace_settings(),
       'status' => binary(),
       'workspaceBaseUrl' => binary(),
       'workspaceDescription' => binary(),
       'workspaceId' => binary(),
       'workspaceName' => binary(),
       'workspaceUri' => binary()
     }.

encode(#{ 'billableAccountId' := BillableAccountId,
          'callerInformation' := CallerInformation,
          'created' := Created,
          'createdByInformation' := CreatedByInformation,
          'lastModified' := LastModified,
          'lastModifiedByInformation' := LastModifiedByInformation,
          'settings' := Settings,
          'status' := Status,
          'workspaceBaseUrl' := WorkspaceBaseUrl,
          'workspaceDescription' := WorkspaceDescription,
          'workspaceId' := WorkspaceId,
          'workspaceName' := WorkspaceName,
          'workspaceUri' := WorkspaceUri
        }) ->
    #{ 'billableAccountId' => BillableAccountId,
       'callerInformation' => CallerInformation,
       'created' => Created,
       'createdByInformation' => CreatedByInformation,
       'lastModified' => LastModified,
       'lastModifiedByInformation' => LastModifiedByInformation,
       'settings' => Settings,
       'status' => Status,
       'workspaceBaseUrl' => WorkspaceBaseUrl,
       'workspaceDescription' => WorkspaceDescription,
       'workspaceId' => WorkspaceId,
       'workspaceName' => WorkspaceName,
       'workspaceUri' => WorkspaceUri
     }.
