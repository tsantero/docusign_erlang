-module(swagger_bulk_recipient_tab_label).

-export([encode/1]).

-export_type([swagger_bulk_recipient_tab_label/0]).

-type swagger_bulk_recipient_tab_label() ::
    #{ 'name' => binary(),
       'value' => binary()
     }.

encode(#{ 'name' := Name,
          'value' := Value
        }) ->
    #{ 'name' => Name,
       'value' => Value
     }.
