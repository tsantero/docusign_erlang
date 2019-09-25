-module(swagger_folder_shared_item).

-export([encode/1]).

-export_type([swagger_folder_shared_item/0]).

-type swagger_folder_shared_item() ::
    #{ 'errorDetails' => swagger_error_details:swagger_error_details(),
       'folderId' => binary(),
       'name' => binary(),
       'owner' => swagger_user_info:swagger_user_info(),
       'parentFolderId' => binary(),
       'parentFolderUri' => binary(),
       'shared' => binary(),
       'sharedGroups' => list(),
       'sharedUsers' => list(),
       'uri' => binary(),
       'user' => swagger_user_info:swagger_user_info()
     }.

encode(#{ 'errorDetails' := ErrorDetails,
          'folderId' := FolderId,
          'name' := Name,
          'owner' := Owner,
          'parentFolderId' := ParentFolderId,
          'parentFolderUri' := ParentFolderUri,
          'shared' := Shared,
          'sharedGroups' := SharedGroups,
          'sharedUsers' := SharedUsers,
          'uri' := Uri,
          'user' := User
        }) ->
    #{ 'errorDetails' => ErrorDetails,
       'folderId' => FolderId,
       'name' => Name,
       'owner' => Owner,
       'parentFolderId' => ParentFolderId,
       'parentFolderUri' => ParentFolderUri,
       'shared' => Shared,
       'sharedGroups' => SharedGroups,
       'sharedUsers' => SharedUsers,
       'uri' => Uri,
       'user' => User
     }.
