-module(swagger_workspace_item_list).

-export([encode/1]).

-export_type([swagger_workspace_item_list/0]).

-type swagger_workspace_item_list() ::
    #{ 'items' => list()
     }.

encode(#{ 'items' := Items
        }) ->
    #{ 'items' => Items
     }.
