-module(swagger_connect_failure_result).

-export([encode/1]).

-export_type([swagger_connect_failure_result/0]).

-type swagger_connect_failure_result() ::
    #{ 'configId' => binary(),
       'configUrl' => binary(),
       'envelopeId' => binary(),
       'status' => binary(),
       'statusMessage' => binary()
     }.

encode(#{ 'configId' := ConfigId,
          'configUrl' := ConfigUrl,
          'envelopeId' := EnvelopeId,
          'status' := Status,
          'statusMessage' := StatusMessage
        }) ->
    #{ 'configId' => ConfigId,
       'configUrl' => ConfigUrl,
       'envelopeId' => EnvelopeId,
       'status' => Status,
       'statusMessage' => StatusMessage
     }.
