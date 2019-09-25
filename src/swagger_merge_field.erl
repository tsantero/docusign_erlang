-module(swagger_merge_field).

-export([encode/1]).

-export_type([swagger_merge_field/0]).

-type swagger_merge_field() ::
    #{ 'allowSenderToEdit' => binary(),
       'allowSenderToEditMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'configurationType' => binary(),
       'configurationTypeMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'path' => binary(),
       'pathExtended' => list(),
       'pathExtendedMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'pathMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'row' => binary(),
       'rowMetadata' => swagger_property_metadata:swagger_property_metadata(),
       'writeBack' => binary(),
       'writeBackMetadata' => swagger_property_metadata:swagger_property_metadata()
     }.

encode(#{ 'allowSenderToEdit' := AllowSenderToEdit,
          'allowSenderToEditMetadata' := AllowSenderToEditMetadata,
          'configurationType' := ConfigurationType,
          'configurationTypeMetadata' := ConfigurationTypeMetadata,
          'path' := Path,
          'pathExtended' := PathExtended,
          'pathExtendedMetadata' := PathExtendedMetadata,
          'pathMetadata' := PathMetadata,
          'row' := Row,
          'rowMetadata' := RowMetadata,
          'writeBack' := WriteBack,
          'writeBackMetadata' := WriteBackMetadata
        }) ->
    #{ 'allowSenderToEdit' => AllowSenderToEdit,
       'allowSenderToEditMetadata' => AllowSenderToEditMetadata,
       'configurationType' => ConfigurationType,
       'configurationTypeMetadata' => ConfigurationTypeMetadata,
       'path' => Path,
       'pathExtended' => PathExtended,
       'pathExtendedMetadata' => PathExtendedMetadata,
       'pathMetadata' => PathMetadata,
       'row' => Row,
       'rowMetadata' => RowMetadata,
       'writeBack' => WriteBack,
       'writeBackMetadata' => WriteBackMetadata
     }.
