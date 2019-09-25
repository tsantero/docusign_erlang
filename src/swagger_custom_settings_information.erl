-module(swagger_custom_settings_information).

-export([encode/1]).

-export_type([swagger_custom_settings_information/0]).

-type swagger_custom_settings_information() ::
    #{ 'customSettings' => list()
     }.

encode(#{ 'customSettings' := CustomSettings
        }) ->
    #{ 'customSettings' => CustomSettings
     }.
