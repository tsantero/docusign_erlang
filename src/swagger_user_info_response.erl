-module(swagger_user_info_response).

-export([encode/1]).

-export_type([swagger_user_info_response/0]).

-type swagger_user_info_response() ::
    #{ 'envelopeId' => binary(),
       'language' => binary(),
       'seal' => swagger_seal:swagger_seal(),
       'sender' => swagger_sender:swagger_sender(),
       'user' => swagger_user:swagger_user()
     }.

encode(#{ 'envelopeId' := EnvelopeId,
          'language' := Language,
          'seal' := Seal,
          'sender' := Sender,
          'user' := User
        }) ->
    #{ 'envelopeId' => EnvelopeId,
       'language' => Language,
       'seal' => Seal,
       'sender' => Sender,
       'user' => User
     }.
