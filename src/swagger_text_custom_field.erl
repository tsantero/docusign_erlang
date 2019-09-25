-module(swagger_text_custom_field).

-export([encode/1]).

-export_type([swagger_text_custom_field/0]).

-type swagger_text_custom_field() ::
    #{ 'configurationType' => binary(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'fieldId' => binary(),
       'name' => binary(),
       'required' => binary(),
       'show' => binary(),
       'value' => binary()
     }.

encode(#{ 'configurationType' := ConfigurationType,
          'errorDetails' := ErrorDetails,
          'fieldId' := FieldId,
          'name' := Name,
          'required' := Required,
          'show' := Show,
          'value' := Value
        }) ->
    #{ 'configurationType' => ConfigurationType,
       'errorDetails' => ErrorDetails,
       'fieldId' => FieldId,
       'name' => Name,
       'required' => Required,
       'show' => Show,
       'value' => Value
     }.
