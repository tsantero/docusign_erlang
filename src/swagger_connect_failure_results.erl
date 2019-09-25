-module(swagger_connect_failure_results).

-export([encode/1]).

-export_type([swagger_connect_failure_results/0]).

-type swagger_connect_failure_results() ::
    #{ 'retryQueue' => list()
     }.

encode(#{ 'retryQueue' := RetryQueue
        }) ->
    #{ 'retryQueue' => RetryQueue
     }.
