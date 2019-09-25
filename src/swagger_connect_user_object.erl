-module(swagger_connect_user_object).

-export([encode/1]).

-export_type([swagger_connect_user_object/0]).

-type swagger_connect_user_object() ::
    #{ 'configurationtype' => binary(),
       'connectId' => binary(),
       'enabled' => binary(),
       'hasAccess' => binary(),
       'senderSearchableItems' => list()
     }.

encode(#{ 'configurationtype' := Configurationtype,
          'connectId' := ConnectId,
          'enabled' := Enabled,
          'hasAccess' := HasAccess,
          'senderSearchableItems' := SenderSearchableItems
        }) ->
    #{ 'configurationtype' => Configurationtype,
       'connectId' => ConnectId,
       'enabled' => Enabled,
       'hasAccess' => HasAccess,
       'senderSearchableItems' => SenderSearchableItems
     }.
