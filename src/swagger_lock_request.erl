-module(swagger_lock_request).

-export([encode/1]).

-export_type([swagger_lock_request/0]).

-type swagger_lock_request() ::
    #{ 'lockDurationInSeconds' => binary(),
       'lockedByApp' => binary(),
       'lockType' => binary(),
       'templatePassword' => binary(),
       'useScratchPad' => binary()
     }.

encode(#{ 'lockDurationInSeconds' := LockDurationInSeconds,
          'lockedByApp' := LockedByApp,
          'lockType' := LockType,
          'templatePassword' := TemplatePassword,
          'useScratchPad' := UseScratchPad
        }) ->
    #{ 'lockDurationInSeconds' => LockDurationInSeconds,
       'lockedByApp' => LockedByApp,
       'lockType' => LockType,
       'templatePassword' => TemplatePassword,
       'useScratchPad' => UseScratchPad
     }.
