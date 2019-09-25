-module(swagger_e_note_configuration).

-export([encode/1]).

-export_type([swagger_e_note_configuration/0]).

-type swagger_e_note_configuration() ::
    #{ 'connectConfigured' => binary(),
       'eNoteConfigured' => binary(),
       'organization' => binary(),
       'password' => binary(),
       'userName' => binary()
     }.

encode(#{ 'connectConfigured' := ConnectConfigured,
          'eNoteConfigured' := ENoteConfigured,
          'organization' := Organization,
          'password' := Password,
          'userName' := UserName
        }) ->
    #{ 'connectConfigured' => ConnectConfigured,
       'eNoteConfigured' => ENoteConfigured,
       'organization' => Organization,
       'password' => Password,
       'userName' => UserName
     }.
