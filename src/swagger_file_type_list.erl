-module(swagger_file_type_list).

-export([encode/1]).

-export_type([swagger_file_type_list/0]).

-type swagger_file_type_list() ::
    #{ 'fileTypes' => list()
     }.

encode(#{ 'fileTypes' := FileTypes
        }) ->
    #{ 'fileTypes' => FileTypes
     }.
