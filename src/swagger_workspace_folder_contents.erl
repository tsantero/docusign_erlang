-module(swagger_workspace_folder_contents).

-export([encode/1]).

-export_type([swagger_workspace_folder_contents/0]).

-type swagger_workspace_folder_contents() ::
    #{ 'endPosition' => binary(),
       'folder' => swagger_workspace_items:swagger_workspace_items(),
       'items' => list(),
       'parentFolders' => list(),
       'resultSetSize' => binary(),
       'startPosition' => binary(),
       'totalSetSize' => binary(),
       'workspaceId' => binary()
     }.

encode(#{ 'endPosition' := EndPosition,
          'folder' := Folder,
          'items' := Items,
          'parentFolders' := ParentFolders,
          'resultSetSize' := ResultSetSize,
          'startPosition' := StartPosition,
          'totalSetSize' := TotalSetSize,
          'workspaceId' := WorkspaceId
        }) ->
    #{ 'endPosition' => EndPosition,
       'folder' => Folder,
       'items' => Items,
       'parentFolders' => ParentFolders,
       'resultSetSize' => ResultSetSize,
       'startPosition' => StartPosition,
       'totalSetSize' => TotalSetSize,
       'workspaceId' => WorkspaceId
     }.
