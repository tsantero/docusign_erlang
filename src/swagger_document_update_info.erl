-module(swagger_document_update_info).

-export([encode/1]).

-export_type([swagger_document_update_info/0]).

-type swagger_document_update_info() ::
    #{ 'data' => binary(),
       'documentId' => binary(),
       'documentSecurityStore' => swagger_document_security_store:swagger_document_security_store(),
       'name' => binary(),
       'returnFormat' => binary(),
       'signatureDataInfos' => list(),
       'timeStampField' => swagger_time_stamp_field:swagger_time_stamp_field()
     }.

encode(#{ 'data' := Data,
          'documentId' := DocumentId,
          'documentSecurityStore' := DocumentSecurityStore,
          'name' := Name,
          'returnFormat' := ReturnFormat,
          'signatureDataInfos' := SignatureDataInfos,
          'timeStampField' := TimeStampField
        }) ->
    #{ 'data' => Data,
       'documentId' => DocumentId,
       'documentSecurityStore' => DocumentSecurityStore,
       'name' => Name,
       'returnFormat' => ReturnFormat,
       'signatureDataInfos' => SignatureDataInfos,
       'timeStampField' => TimeStampField
     }.
