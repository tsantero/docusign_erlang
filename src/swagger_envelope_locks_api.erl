-module(swagger_envelope_locks_api).

-export([lock_delete_envelope_lock/3, lock_delete_envelope_lock/4,
         lock_get_envelope_lock/3, lock_get_envelope_lock/4,
         lock_post_envelope_lock/4, lock_post_envelope_lock/5,
         lock_put_envelope_lock/4, lock_put_envelope_lock/5]).

-define(BASE_URL, "/restapi").

%% @doc Deletes an envelope lock.
%% Deletes the lock from the specified envelope. The user must match the user specified by the `lockByUser` property, and the integrator key that you pass in must match the integrator key information. You must also include the `X-DocuSign-Edit` header, which contains a `lockToken` that proves ownership of the lock and the `lockDurationInSeconds`. The token that you need for this header is returned in the response to the POST and GET methods.  Example:  `X-DocuSign-Edit:<DocuSignEdit><LockToken>{{lockToken}}</LockToken></DocuSignEdit>`
-spec lock_delete_envelope_lock(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_locks:swagger_envelope_locks(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
lock_delete_envelope_lock(Ctx, AccountId, EnvelopeId) ->
    lock_delete_envelope_lock(Ctx, AccountId, EnvelopeId, #{}).

-spec lock_delete_envelope_lock(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_locks:swagger_envelope_locks(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
lock_delete_envelope_lock(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/lock"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets envelope lock information.
%% Retrieves general information about an envelope lock.  If the call is made by the locked by user and the request has the same integrator key as original, then the `X-DocuSign-Edit` header and additional lock information is included in the response. This information enables users to recover a lost editing session token and the `X-DocuSign-Edit` header.
-spec lock_get_envelope_lock(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_locks:swagger_envelope_locks(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
lock_get_envelope_lock(Ctx, AccountId, EnvelopeId) ->
    lock_get_envelope_lock(Ctx, AccountId, EnvelopeId, #{}).

-spec lock_get_envelope_lock(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_locks:swagger_envelope_locks(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
lock_get_envelope_lock(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/lock"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Lock an envelope.
%% Locks the specified envelope, and sets the time until the lock expires, to prevent other users or recipients from accessing and changing the envelope.  **Note**: Users must have envelope locking capability enabled to use this function (userSetting `canLockEnvelopes` must be  set to true for the user).  The response to this request returns a `lockToken` parameter. You must use the `lockToken` to update or delete an existing lock.
-spec lock_post_envelope_lock(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_locks:swagger_envelope_locks(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
lock_post_envelope_lock(Ctx, AccountId, EnvelopeId) ->
    lock_post_envelope_lock(Ctx, AccountId, EnvelopeId, #{}).

-spec lock_post_envelope_lock(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_locks:swagger_envelope_locks(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
lock_post_envelope_lock(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/lock"],
    QS = [],
    Headers = [],
    Body1 = LockRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates an envelope lock.
%% Updates the lock duration or the `lockedByApp` property for the specified envelope. The user must match the user specified by the `lockByUser` property, and the integrator key that you pass in must match the integrator key information. You must also include the `X-DocuSign-Edit` header, which contains a `lockToken` that proves ownership of the lock and the `lockDurationInSeconds`. The token that you need for this header is returned in the response to the POST and GET methods.  Example:  `X-DocuSign-Edit:<DocuSignEdit><LockToken>{{lockToken}}</LockToken></DocuSignEdit>`
-spec lock_put_envelope_lock(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_locks:swagger_envelope_locks(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
lock_put_envelope_lock(Ctx, AccountId, EnvelopeId) ->
    lock_put_envelope_lock(Ctx, AccountId, EnvelopeId, #{}).

-spec lock_put_envelope_lock(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_locks:swagger_envelope_locks(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
lock_put_envelope_lock(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/lock"],
    QS = [],
    Headers = [],
    Body1 = LockRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


