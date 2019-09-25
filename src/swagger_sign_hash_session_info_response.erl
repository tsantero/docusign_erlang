-module(swagger_sign_hash_session_info_response).

-export([encode/1]).

-export_type([swagger_sign_hash_session_info_response/0]).

-type swagger_sign_hash_session_info_response() ::
    #{ 'documents' => list(),
       'envelopeId' => binary(),
       'language' => binary(),
       'redirectionUrl' => binary(),
       'remainingSignatureRequests' => integer(),
       'seal' => swagger_seal:swagger_seal(),
       'sender' => swagger_sender:swagger_sender(),
       'user' => swagger_user:swagger_user()
     }.

encode(#{ 'documents' := Documents,
          'envelopeId' := EnvelopeId,
          'language' := Language,
          'redirectionUrl' := RedirectionUrl,
          'remainingSignatureRequests' := RemainingSignatureRequests,
          'seal' := Seal,
          'sender' := Sender,
          'user' := User
        }) ->
    #{ 'documents' => Documents,
       'envelopeId' => EnvelopeId,
       'language' => Language,
       'redirectionUrl' => RedirectionUrl,
       'remainingSignatureRequests' => RemainingSignatureRequests,
       'seal' => Seal,
       'sender' => Sender,
       'user' => User
     }.
