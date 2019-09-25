-module(swagger_sign_session_info_request).

-export([encode/1]).

-export_type([swagger_sign_session_info_request/0]).

-type swagger_sign_session_info_request() ::
    #{ 'certificate' => binary(),
       'maxSignatureLength' => binary(),
       'returnFormat' => binary(),
       'signingLocation' => binary()
     }.

encode(#{ 'certificate' := Certificate,
          'maxSignatureLength' := MaxSignatureLength,
          'returnFormat' := ReturnFormat,
          'signingLocation' := SigningLocation
        }) ->
    #{ 'certificate' => Certificate,
       'maxSignatureLength' => MaxSignatureLength,
       'returnFormat' => ReturnFormat,
       'signingLocation' => SigningLocation
     }.
