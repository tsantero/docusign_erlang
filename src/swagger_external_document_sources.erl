-module(swagger_external_document_sources).

-export([encode/1]).

-export_type([swagger_external_document_sources/0]).

-type swagger_external_document_sources() ::
    #{ 'boxnetEnabled' => binary(),
       'boxnetMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'dropboxEnabled' => binary(),
       'dropboxMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'googleDriveEnabled' => binary(),
       'googleDriveMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'oneDriveEnabled' => binary(),
       'oneDriveMetadata' => swagger_settings_metadata:swagger_settings_metadata(),
       'salesforceEnabled' => binary(),
       'salesforceMetadata' => swagger_settings_metadata:swagger_settings_metadata()
     }.

encode(#{ 'boxnetEnabled' := BoxnetEnabled,
          'boxnetMetadata' := BoxnetMetadata,
          'dropboxEnabled' := DropboxEnabled,
          'dropboxMetadata' := DropboxMetadata,
          'googleDriveEnabled' := GoogleDriveEnabled,
          'googleDriveMetadata' := GoogleDriveMetadata,
          'oneDriveEnabled' := OneDriveEnabled,
          'oneDriveMetadata' := OneDriveMetadata,
          'salesforceEnabled' := SalesforceEnabled,
          'salesforceMetadata' := SalesforceMetadata
        }) ->
    #{ 'boxnetEnabled' => BoxnetEnabled,
       'boxnetMetadata' => BoxnetMetadata,
       'dropboxEnabled' => DropboxEnabled,
       'dropboxMetadata' => DropboxMetadata,
       'googleDriveEnabled' => GoogleDriveEnabled,
       'googleDriveMetadata' => GoogleDriveMetadata,
       'oneDriveEnabled' => OneDriveEnabled,
       'oneDriveMetadata' => OneDriveMetadata,
       'salesforceEnabled' => SalesforceEnabled,
       'salesforceMetadata' => SalesforceMetadata
     }.
