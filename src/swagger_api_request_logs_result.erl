-module(swagger_api_request_logs_result).

-export([encode/1]).

-export_type([swagger_api_request_logs_result/0]).

-type swagger_api_request_logs_result() ::
    #{ 'apiRequestLogs' => list()
     }.

encode(#{ 'apiRequestLogs' := ApiRequestLogs
        }) ->
    #{ 'apiRequestLogs' => ApiRequestLogs
     }.
