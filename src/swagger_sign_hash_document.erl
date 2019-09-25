-module(swagger_sign_hash_document).

-export([encode/1]).

-export_type([swagger_sign_hash_document/0]).

-type swagger_sign_hash_document() ::
    #{ 'data' => binary(),
       'documentId' => binary(),
       'format' => binary(),
       'name' => binary(),
       'remainingSignatures' => integer(),
       'revisions' => list(),
       'signatureProperties' => swagger_signature_properties:swagger_signature_properties(),
       'signatureType' => binary()
     }.

encode(#{ 'data' := Data,
          'documentId' := DocumentId,
          'format' := Format,
          'name' := Name,
          'remainingSignatures' := RemainingSignatures,
          'revisions' := Revisions,
          'signatureProperties' := SignatureProperties,
          'signatureType' := SignatureType
        }) ->
    #{ 'data' => Data,
       'documentId' => DocumentId,
       'format' => Format,
       'name' => Name,
       'remainingSignatures' => RemainingSignatures,
       'revisions' => Revisions,
       'signatureProperties' => SignatureProperties,
       'signatureType' => SignatureType
     }.
