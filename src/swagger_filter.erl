-module(swagger_filter).

-export([encode/1]).

-export_type([swagger_filter/0]).

-type swagger_filter() ::
    #{ 'actionRequired' => binary(),
       'expires' => binary(),
       'folderIds' => binary(),
       'fromDateTime' => binary(),
       'isTemplate' => binary(),
       'order' => binary(),
       'orderBy' => binary(),
       'searchTarget' => binary(),
       'searchText' => binary(),
       'status' => binary(),
       'toDateTime' => binary()
     }.

encode(#{ 'actionRequired' := ActionRequired,
          'expires' := Expires,
          'folderIds' := FolderIds,
          'fromDateTime' := FromDateTime,
          'isTemplate' := IsTemplate,
          'order' := Order,
          'orderBy' := OrderBy,
          'searchTarget' := SearchTarget,
          'searchText' := SearchText,
          'status' := Status,
          'toDateTime' := ToDateTime
        }) ->
    #{ 'actionRequired' => ActionRequired,
       'expires' => Expires,
       'folderIds' => FolderIds,
       'fromDateTime' => FromDateTime,
       'isTemplate' => IsTemplate,
       'order' => Order,
       'orderBy' => OrderBy,
       'searchTarget' => SearchTarget,
       'searchText' => SearchText,
       'status' => Status,
       'toDateTime' => ToDateTime
     }.
