-module(swagger_template_locks_api).

-export([lock_delete_template_lock/4, lock_delete_template_lock/5,
         lock_get_template_lock/3, lock_get_template_lock/4,
         lock_post_template_lock/4, lock_post_template_lock/5,
         lock_put_template_lock/4, lock_put_template_lock/5]).

-define(BASE_URL, "/restapi").

%% @doc Deletes a template lock.
%% Deletes the lock from the specified template. The `X-DocuSign-Edit` header must be included in the request.
-spec lock_delete_template_lock(ctx:ctx(), binary(), binary()) -> {ok, swagger_template_locks:swagger_template_locks(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
lock_delete_template_lock(Ctx, AccountId, TemplateId) ->
    lock_delete_template_lock(Ctx, AccountId, TemplateId, #{}).

-spec lock_delete_template_lock(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_template_locks:swagger_template_locks(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
lock_delete_template_lock(Ctx, AccountId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/lock"],
    QS = [],
    Headers = [],
    Body1 = LockRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets template lock information.
%% Retrieves general information about the template lock.  If the call is made by the user who has the lock and the request has the same integrator key as original, then the `X-DocuSign-Edit` header  field and additional lock information is included in the response. This allows users to recover a lost editing session token and the `X-DocuSign-Edit` header.
-spec lock_get_template_lock(ctx:ctx(), binary(), binary()) -> {ok, swagger_template_locks:swagger_template_locks(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
lock_get_template_lock(Ctx, AccountId, TemplateId) ->
    lock_get_template_lock(Ctx, AccountId, TemplateId, #{}).

-spec lock_get_template_lock(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_template_locks:swagger_template_locks(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
lock_get_template_lock(Ctx, AccountId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/lock"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Lock a template.
%% Locks the specified template, and sets the time until the lock expires, to prevent other users or recipients from accessing and changing the template.  ###### Note: Users must have envelope locking capability enabled to use this function (the userSetting property `canLockEnvelopes` must be set to **true** for the user).
-spec lock_post_template_lock(ctx:ctx(), binary(), binary()) -> {ok, swagger_template_locks:swagger_template_locks(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
lock_post_template_lock(Ctx, AccountId, TemplateId) ->
    lock_post_template_lock(Ctx, AccountId, TemplateId, #{}).

-spec lock_post_template_lock(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_template_locks:swagger_template_locks(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
lock_post_template_lock(Ctx, AccountId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/lock"],
    QS = [],
    Headers = [],
    Body1 = LockRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates a template lock.
%% Updates the lock duration time or update the `lockedByApp` property information for the specified template. The user and integrator key must match the user specified by the `lockByUser` property and integrator key information and the `X-DocuSign-Edit` header must be included or an error will be generated.
-spec lock_put_template_lock(ctx:ctx(), binary(), binary()) -> {ok, swagger_template_locks:swagger_template_locks(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
lock_put_template_lock(Ctx, AccountId, TemplateId) ->
    lock_put_template_lock(Ctx, AccountId, TemplateId, #{}).

-spec lock_put_template_lock(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_template_locks:swagger_template_locks(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
lock_put_template_lock(Ctx, AccountId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/lock"],
    QS = [],
    Headers = [],
    Body1 = LockRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


