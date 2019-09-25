-module(swagger_add_on).

-export([encode/1]).

-export_type([swagger_add_on/0]).

-type swagger_add_on() ::
    #{ 'active' => binary(),
       'addOnId' => binary(),
       'id' => binary(),
       'name' => binary()
     }.

encode(#{ 'active' := Active,
          'addOnId' := AddOnId,
          'id' := Id,
          'name' := Name
        }) ->
    #{ 'active' => Active,
       'addOnId' => AddOnId,
       'id' => Id,
       'name' => Name
     }.
