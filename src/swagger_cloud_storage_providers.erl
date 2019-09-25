-module(swagger_cloud_storage_providers).

-export([encode/1]).

-export_type([swagger_cloud_storage_providers/0]).

-type swagger_cloud_storage_providers() ::
    #{ 'storageProviders' => list()
     }.

encode(#{ 'storageProviders' := StorageProviders
        }) ->
    #{ 'storageProviders' => StorageProviders
     }.
