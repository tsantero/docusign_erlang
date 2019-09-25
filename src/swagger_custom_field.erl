-module(swagger_custom_field).

-export([encode/1]).

-export_type([swagger_custom_field/0]).

-type swagger_custom_field() ::
    #{ 'customFieldType' => binary(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'fieldId' => binary(),
       'listItems' => list(),
       'name' => binary(),
       'required' => binary(),
       'show' => binary(),
       'value' => binary()
     }.

encode(#{ 'customFieldType' := CustomFieldType,
          'errorDetails' := ErrorDetails,
          'fieldId' := FieldId,
          'listItems' := ListItems,
          'name' := Name,
          'required' := Required,
          'show' := Show,
          'value' := Value
        }) ->
    #{ 'customFieldType' => CustomFieldType,
       'errorDetails' => ErrorDetails,
       'fieldId' => FieldId,
       'listItems' => ListItems,
       'name' => Name,
       'required' => Required,
       'show' => Show,
       'value' => Value
     }.
