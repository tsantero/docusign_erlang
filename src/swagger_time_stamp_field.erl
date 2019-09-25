-module(swagger_time_stamp_field).

-export([encode/1]).

-export_type([swagger_time_stamp_field/0]).

-type swagger_time_stamp_field() ::
    #{ 'documentSecurityStore' => swagger_document_security_store:swagger_document_security_store(),
       'maxTimeStampSignatureLength' => binary(),
       'timeStampFieldName' => binary()
     }.

encode(#{ 'documentSecurityStore' := DocumentSecurityStore,
          'maxTimeStampSignatureLength' := MaxTimeStampSignatureLength,
          'timeStampFieldName' := TimeStampFieldName
        }) ->
    #{ 'documentSecurityStore' => DocumentSecurityStore,
       'maxTimeStampSignatureLength' => MaxTimeStampSignatureLength,
       'timeStampFieldName' => TimeStampFieldName
     }.
