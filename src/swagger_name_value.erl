-module(swagger_name_value).

-export([encode/1]).

-export_type([swagger_name_value/0]).

-type swagger_name_value() ::
    #{ 'errorDetails' => swagger_error_details:swagger_error_details(),
       'name' => binary(),
       'originalValue' => binary(),
       'value' => binary()
     }.

encode(#{ 'errorDetails' := ErrorDetails,
          'name' := Name,
          'originalValue' := OriginalValue,
          'value' := Value
        }) ->
    #{ 'errorDetails' => ErrorDetails,
       'name' => Name,
       'originalValue' => OriginalValue,
       'value' => Value
     }.
