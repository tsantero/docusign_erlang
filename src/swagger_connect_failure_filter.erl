-module(swagger_connect_failure_filter).

-export([encode/1]).

-export_type([swagger_connect_failure_filter/0]).

-type swagger_connect_failure_filter() ::
    #{ 'envelopeIds' => list(),
       'synchronous' => binary()
     }.

encode(#{ 'envelopeIds' := EnvelopeIds,
          'synchronous' := Synchronous
        }) ->
    #{ 'envelopeIds' => EnvelopeIds,
       'synchronous' => Synchronous
     }.
