-module(swagger_revision).

-export([encode/1]).

-export_type([swagger_revision/0]).

-type swagger_revision() ::
    #{ 'endData' => binary(),
       'fieldName' => binary(),
       'maxSignatureLength' => binary(),
       'signatureProperties' => swagger_signature_properties:swagger_signature_properties(),
       'signatureType' => binary(),
       'startData' => binary()
     }.

encode(#{ 'endData' := EndData,
          'fieldName' := FieldName,
          'maxSignatureLength' := MaxSignatureLength,
          'signatureProperties' := SignatureProperties,
          'signatureType' := SignatureType,
          'startData' := StartData
        }) ->
    #{ 'endData' => EndData,
       'fieldName' => FieldName,
       'maxSignatureLength' => MaxSignatureLength,
       'signatureProperties' => SignatureProperties,
       'signatureType' => SignatureType,
       'startData' => StartData
     }.
