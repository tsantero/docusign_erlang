-module(swagger_notification_defaults_api).

-export([notification_defaults_get_notification_defaults/2, notification_defaults_get_notification_defaults/3,
         notification_defaults_put_notification_defaults/3, notification_defaults_put_notification_defaults/4]).

-define(BASE_URL, "/restapi").

%% @doc 
-spec notification_defaults_get_notification_defaults(ctx:ctx(), binary()) -> {ok, swagger_notification_defaults:swagger_notification_defaults(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
notification_defaults_get_notification_defaults(Ctx, AccountId) ->
    notification_defaults_get_notification_defaults(Ctx, AccountId, #{}).

-spec notification_defaults_get_notification_defaults(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_notification_defaults:swagger_notification_defaults(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
notification_defaults_get_notification_defaults(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/settings/notification_defaults"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
-spec notification_defaults_put_notification_defaults(ctx:ctx(), binary()) -> {ok, swagger_notification_defaults:swagger_notification_defaults(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
notification_defaults_put_notification_defaults(Ctx, AccountId) ->
    notification_defaults_put_notification_defaults(Ctx, AccountId, #{}).

-spec notification_defaults_put_notification_defaults(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_notification_defaults:swagger_notification_defaults(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
notification_defaults_put_notification_defaults(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/settings/notification_defaults"],
    QS = [],
    Headers = [],
    Body1 = NotificationDefaults,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


