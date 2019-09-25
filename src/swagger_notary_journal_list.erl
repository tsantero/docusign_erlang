-module(swagger_notary_journal_list).

-export([encode/1]).

-export_type([swagger_notary_journal_list/0]).

-type swagger_notary_journal_list() ::
    #{ 'endPosition' => binary(),
       'nextUri' => binary(),
       'notaryJournals' => list(),
       'previousUri' => binary(),
       'resultSetSize' => binary(),
       'startPosition' => binary(),
       'totalSetSize' => binary()
     }.

encode(#{ 'endPosition' := EndPosition,
          'nextUri' := NextUri,
          'notaryJournals' := NotaryJournals,
          'previousUri' := PreviousUri,
          'resultSetSize' := ResultSetSize,
          'startPosition' := StartPosition,
          'totalSetSize' := TotalSetSize
        }) ->
    #{ 'endPosition' => EndPosition,
       'nextUri' => NextUri,
       'notaryJournals' => NotaryJournals,
       'previousUri' => PreviousUri,
       'resultSetSize' => ResultSetSize,
       'startPosition' => StartPosition,
       'totalSetSize' => TotalSetSize
     }.
