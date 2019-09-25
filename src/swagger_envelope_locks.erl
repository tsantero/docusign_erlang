-module(swagger_envelope_locks).

-export([encode/1]).

-export_type([swagger_envelope_locks/0]).

-type swagger_envelope_locks() ::
    #{ 'errorDetails' => swagger_error_details:swagger_error_details(),
       'lockDurationInSeconds' => binary(),
       'lockedByApp' => binary(),
       'lockedByUser' => swagger_user_info:swagger_user_info(),
       'lockedUntilDateTime' => binary(),
       'lockToken' => binary(),
       'lockType' => binary(),
       'useScratchPad' => binary()
     }.

encode(#{ 'errorDetails' := ErrorDetails,
          'lockDurationInSeconds' := LockDurationInSeconds,
          'lockedByApp' := LockedByApp,
          'lockedByUser' := LockedByUser,
          'lockedUntilDateTime' := LockedUntilDateTime,
          'lockToken' := LockToken,
          'lockType' := LockType,
          'useScratchPad' := UseScratchPad
        }) ->
    #{ 'errorDetails' => ErrorDetails,
       'lockDurationInSeconds' => LockDurationInSeconds,
       'lockedByApp' => LockedByApp,
       'lockedByUser' => LockedByUser,
       'lockedUntilDateTime' => LockedUntilDateTime,
       'lockToken' => LockToken,
       'lockType' => LockType,
       'useScratchPad' => UseScratchPad
     }.
