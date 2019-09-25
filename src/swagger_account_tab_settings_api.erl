-module(swagger_account_tab_settings_api).

-export([tab_settings_get_tab_settings/2, tab_settings_get_tab_settings/3,
         tab_settings_put_settings/3, tab_settings_put_settings/4]).

-define(BASE_URL, "/restapi").

%% @doc Returns tab settings list for specified account
-spec tab_settings_get_tab_settings(ctx:ctx(), binary()) -> {ok, swagger_account_tab_settings:swagger_account_tab_settings(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
tab_settings_get_tab_settings(Ctx, AccountId) ->
    tab_settings_get_tab_settings(Ctx, AccountId, #{}).

-spec tab_settings_get_tab_settings(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_account_tab_settings:swagger_account_tab_settings(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
tab_settings_get_tab_settings(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/settings/tabs"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Modifies tab settings for specified account
-spec tab_settings_put_settings(ctx:ctx(), binary()) -> {ok, swagger_account_tab_settings:swagger_account_tab_settings(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
tab_settings_put_settings(Ctx, AccountId) ->
    tab_settings_put_settings(Ctx, AccountId, #{}).

-spec tab_settings_put_settings(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_account_tab_settings:swagger_account_tab_settings(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
tab_settings_put_settings(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/settings/tabs"],
    QS = [],
    Headers = [],
    Body1 = AccountTabSettings,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


