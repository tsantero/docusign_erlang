-module(swagger_list_item).

-export([encode/1]).

-export_type([swagger_list_item/0]).

-type swagger_list_item() ::
    #{ 'selected' => binary(),
       'selectedMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'text' => binary(),
       'textMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'value' => binary(),
       'valueMetadata' => swagger_property_metadata:swagger_property_metadata()
     }.

encode(#{ 'selected' := Selected,
          'selectedMetadata' := SelectedMetadata,
          'text' := Text,
          'textMetadata' := TextMetadata,
          'value' := Value,
          'valueMetadata' := ValueMetadata
        }) ->
    #{ 'selected' => Selected,
       'selectedMetadata' => SelectedMetadata,
       'text' => Text,
       'textMetadata' => TextMetadata,
       'value' => Value,
       'valueMetadata' => ValueMetadata
     }.
