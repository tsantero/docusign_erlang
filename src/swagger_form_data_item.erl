-module(swagger_form_data_item).

-export([encode/1]).

-export_type([swagger_form_data_item/0]).

-type swagger_form_data_item() ::
    #{ 'errorDetails' => swagger_error_details:swagger_error_details(),
       'listSelectedValue' => binary(),
       'name' => binary(),
       'originalValue' => binary(),
       'value' => binary()
     }.

encode(#{ 'errorDetails' := ErrorDetails,
          'listSelectedValue' := ListSelectedValue,
          'name' := Name,
          'originalValue' := OriginalValue,
          'value' := Value
        }) ->
    #{ 'errorDetails' => ErrorDetails,
       'listSelectedValue' => ListSelectedValue,
       'name' => Name,
       'originalValue' => OriginalValue,
       'value' => Value
     }.
