-module(swagger_folder).

-export([encode/1]).

-export_type([swagger_folder/0]).

-type swagger_folder() ::
    #{ 'errorDetails' => swagger_error_details:swagger_error_details(),
       'filter' => swagger_filter:swagger_filter(),
       'folderId' => binary(),
       'folderItems' => list(),
       'folders' => list(),
       'hasAccess' => binary(),
       'hasSubFolders' => binary(),
       'itemCount' => binary(),
       'name' => binary(),
       'owner' => swagger_user_info:swagger_user_info(),
       'parentFolderId' => binary(),
       'parentFolderUri' => binary(),
       'subFolderCount' => binary(),
       'type' => binary(),
       'uri' => binary()
     }.

encode(#{ 'errorDetails' := ErrorDetails,
          'filter' := Filter,
          'folderId' := FolderId,
          'folderItems' := FolderItems,
          'folders' := Folders,
          'hasAccess' := HasAccess,
          'hasSubFolders' := HasSubFolders,
          'itemCount' := ItemCount,
          'name' := Name,
          'owner' := Owner,
          'parentFolderId' := ParentFolderId,
          'parentFolderUri' := ParentFolderUri,
          'subFolderCount' := SubFolderCount,
          'type' := Type,
          'uri' := Uri
        }) ->
    #{ 'errorDetails' => ErrorDetails,
       'filter' => Filter,
       'folderId' => FolderId,
       'folderItems' => FolderItems,
       'folders' => Folders,
       'hasAccess' => HasAccess,
       'hasSubFolders' => HasSubFolders,
       'itemCount' => ItemCount,
       'name' => Name,
       'owner' => Owner,
       'parentFolderId' => ParentFolderId,
       'parentFolderUri' => ParentFolderUri,
       'subFolderCount' => SubFolderCount,
       'type' => Type,
       'uri' => Uri
     }.
