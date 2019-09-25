-module(swagger_user_custom_settings).

-export([encode/1]).

-export_type([swagger_user_custom_settings/0]).

-type swagger_user_custom_settings() ::
    #{ 'customSettings' => list()
     }.

encode(#{ 'customSettings' := CustomSettings
        }) ->
    #{ 'customSettings' => CustomSettings
     }.
