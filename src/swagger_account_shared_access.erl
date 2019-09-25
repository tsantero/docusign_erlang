-module(swagger_account_shared_access).

-export([encode/1]).

-export_type([swagger_account_shared_access/0]).

-type swagger_account_shared_access() ::
    #{ 'accountId' => binary(),
       'endPosition' => binary(),
       'errorDetails' => swagger_error_details:swagger_error_details(),
       'nextUri' => binary(),
       'previousUri' => binary(),
       'resultSetSize' => binary(),
       'sharedAccess' => list(),
       'startPosition' => binary(),
       'totalSetSize' => binary()
     }.

encode(#{ 'accountId' := AccountId,
          'endPosition' := EndPosition,
          'errorDetails' := ErrorDetails,
          'nextUri' := NextUri,
          'previousUri' := PreviousUri,
          'resultSetSize' := ResultSetSize,
          'sharedAccess' := SharedAccess,
          'startPosition' := StartPosition,
          'totalSetSize' := TotalSetSize
        }) ->
    #{ 'accountId' => AccountId,
       'endPosition' => EndPosition,
       'errorDetails' => ErrorDetails,
       'nextUri' => NextUri,
       'previousUri' => PreviousUri,
       'resultSetSize' => ResultSetSize,
       'sharedAccess' => SharedAccess,
       'startPosition' => StartPosition,
       'totalSetSize' => TotalSetSize
     }.
