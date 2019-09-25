-module(swagger_tab_metadata_list).

-export([encode/1]).

-export_type([swagger_tab_metadata_list/0]).

-type swagger_tab_metadata_list() ::
    #{ 'tabs' => list()
     }.

encode(#{ 'tabs' := Tabs
        }) ->
    #{ 'tabs' => Tabs
     }.
