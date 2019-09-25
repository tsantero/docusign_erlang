-module(swagger_complete_sign_request).

-export([encode/1]).

-export_type([swagger_complete_sign_request/0]).

-type swagger_complete_sign_request() ::
    #{ 'certificate' => binary(),
       'correlationId' => binary(),
       'documentUpdateInfos' => list(),
       'maxSignatureLength' => binary(),
       'signingLocation' => binary(),
       'transactionId' => binary()
     }.

encode(#{ 'certificate' := Certificate,
          'correlationId' := CorrelationId,
          'documentUpdateInfos' := DocumentUpdateInfos,
          'maxSignatureLength' := MaxSignatureLength,
          'signingLocation' := SigningLocation,
          'transactionId' := TransactionId
        }) ->
    #{ 'certificate' => Certificate,
       'correlationId' => CorrelationId,
       'documentUpdateInfos' => DocumentUpdateInfos,
       'maxSignatureLength' => MaxSignatureLength,
       'signingLocation' => SigningLocation,
       'transactionId' => TransactionId
     }.
