-module(swagger_connect_log).

-export([encode/1]).

-export_type([swagger_connect_log/0]).

-type swagger_connect_log() ::
    #{ 'accountId' => binary(),
       'configUrl' => binary(),
       'connectDebugLog' => list(),
       'connectId' => binary(),
       'created' => binary(),
       'email' => binary(),
       'envelopeId' => binary(),
       'error' => binary(),
       'failureId' => binary(),
       'failureUri' => binary(),
       'lastTry' => binary(),
       'logId' => binary(),
       'logUri' => binary(),
       'retryCount' => binary(),
       'retryUri' => binary(),
       'status' => binary(),
       'subject' => binary(),
       'userName' => binary()
     }.

encode(#{ 'accountId' := AccountId,
          'configUrl' := ConfigUrl,
          'connectDebugLog' := ConnectDebugLog,
          'connectId' := ConnectId,
          'created' := Created,
          'email' := Email,
          'envelopeId' := EnvelopeId,
          'error' := Error,
          'failureId' := FailureId,
          'failureUri' := FailureUri,
          'lastTry' := LastTry,
          'logId' := LogId,
          'logUri' := LogUri,
          'retryCount' := RetryCount,
          'retryUri' := RetryUri,
          'status' := Status,
          'subject' := Subject,
          'userName' := UserName
        }) ->
    #{ 'accountId' => AccountId,
       'configUrl' => ConfigUrl,
       'connectDebugLog' => ConnectDebugLog,
       'connectId' => ConnectId,
       'created' => Created,
       'email' => Email,
       'envelopeId' => EnvelopeId,
       'error' => Error,
       'failureId' => FailureId,
       'failureUri' => FailureUri,
       'lastTry' => LastTry,
       'logId' => LogId,
       'logUri' => LogUri,
       'retryCount' => RetryCount,
       'retryUri' => RetryUri,
       'status' => Status,
       'subject' => Subject,
       'userName' => UserName
     }.
