-module(swagger_diagnostics_settings_information).

-export([encode/1]).

-export_type([swagger_diagnostics_settings_information/0]).

-type swagger_diagnostics_settings_information() ::
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
