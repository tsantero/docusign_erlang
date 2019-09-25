-module(swagger_complete_sign_hash_response).

-export([encode/1]).

-export_type([swagger_complete_sign_hash_response/0]).

-type swagger_complete_sign_hash_response() ::
    #{ 'documents' => list(),
       'redirectionUrl' => binary(),
       'remainingSignatureRequests' => binary()
     }.

encode(#{ 'documents' := Documents,
          'redirectionUrl' := RedirectionUrl,
          'remainingSignatureRequests' := RemainingSignatureRequests
        }) ->
    #{ 'documents' => Documents,
       'redirectionUrl' => RedirectionUrl,
       'remainingSignatureRequests' => RemainingSignatureRequests
     }.
