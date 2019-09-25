-module(swagger_signature_data_info).

-export([encode/1]).

-export_type([swagger_signature_data_info/0]).

-type swagger_signature_data_info() ::
    #{ 'documentSecurityStore' => swagger_document_security_store:swagger_document_security_store(),
       'signatureData' => binary(),
       'signatureFieldName' => binary()
     }.

encode(#{ 'documentSecurityStore' := DocumentSecurityStore,
          'signatureData' := SignatureData,
          'signatureFieldName' := SignatureFieldName
        }) ->
    #{ 'documentSecurityStore' => DocumentSecurityStore,
       'signatureData' => SignatureData,
       'signatureFieldName' => SignatureFieldName
     }.
