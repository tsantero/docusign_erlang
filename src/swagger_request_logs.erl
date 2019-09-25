-module(swagger_request_logs).

-export([encode/1]).

-export_type([swagger_request_logs/0]).

-type swagger_request_logs() ::
    #{ 'apiRequestLogging' => binary(),
       'apiRequestLogMaxEntries' => binary(),
       'apiRequestLogRemainingEntries' => binary()
     }.

encode(#{ 'apiRequestLogging' := ApiRequestLogging,
          'apiRequestLogMaxEntries' := ApiRequestLogMaxEntries,
          'apiRequestLogRemainingEntries' := ApiRequestLogRemainingEntries
        }) ->
    #{ 'apiRequestLogging' => ApiRequestLogging,
       'apiRequestLogMaxEntries' => ApiRequestLogMaxEntries,
       'apiRequestLogRemainingEntries' => ApiRequestLogRemainingEntries
     }.
