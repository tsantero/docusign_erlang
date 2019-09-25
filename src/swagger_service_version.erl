-module(swagger_service_version).

-export([encode/1]).

-export_type([swagger_service_version/0]).

-type swagger_service_version() ::
    #{ 'version' => binary(),
       'versionUrl' => binary()
     }.

encode(#{ 'version' := Version,
          'versionUrl' := VersionUrl
        }) ->
    #{ 'version' => Version,
       'versionUrl' => VersionUrl
     }.
