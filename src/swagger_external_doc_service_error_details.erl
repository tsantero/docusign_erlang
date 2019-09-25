-module(swagger_external_doc_service_error_details).

-export([encode/1]).

-export_type([swagger_external_doc_service_error_details/0]).

-type swagger_external_doc_service_error_details() ::
    #{ 'authenticationUrl' => binary(),
       'errorCode' => binary(),
       'message' => binary()
     }.

encode(#{ 'authenticationUrl' := AuthenticationUrl,
          'errorCode' := ErrorCode,
          'message' := Message
        }) ->
    #{ 'authenticationUrl' => AuthenticationUrl,
       'errorCode' => ErrorCode,
       'message' => Message
     }.
