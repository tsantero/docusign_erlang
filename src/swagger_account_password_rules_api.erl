-module(swagger_account_password_rules_api).

-export([account_password_rules_get_account_password_rules/2, account_password_rules_get_account_password_rules/3,
         account_password_rules_put_account_password_rules/3, account_password_rules_put_account_password_rules/4,
         password_rules_get_password_rules/1, password_rules_get_password_rules/2]).

-define(BASE_URL, "/restapi").

%% @doc Get the password rules
-spec account_password_rules_get_account_password_rules(ctx:ctx(), binary()) -> {ok, swagger_account_password_rules:swagger_account_password_rules(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
account_password_rules_get_account_password_rules(Ctx, AccountId) ->
    account_password_rules_get_account_password_rules(Ctx, AccountId, #{}).

-spec account_password_rules_get_account_password_rules(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_account_password_rules:swagger_account_password_rules(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
account_password_rules_get_account_password_rules(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/settings/password_rules"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update the password rules
-spec account_password_rules_put_account_password_rules(ctx:ctx(), binary()) -> {ok, swagger_account_password_rules:swagger_account_password_rules(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
account_password_rules_put_account_password_rules(Ctx, AccountId) ->
    account_password_rules_put_account_password_rules(Ctx, AccountId, #{}).

-spec account_password_rules_put_account_password_rules(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_account_password_rules:swagger_account_password_rules(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
account_password_rules_put_account_password_rules(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/settings/password_rules"],
    QS = [],
    Headers = [],
    Body1 = AccountPasswordRules,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get membership account password rules
-spec password_rules_get_password_rules(ctx:ctx()) -> {ok, swagger_user_password_rules:swagger_user_password_rules(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
password_rules_get_password_rules(Ctx) ->
    password_rules_get_password_rules(Ctx, #{}).

-spec password_rules_get_password_rules(ctx:ctx(), maps:map()) -> {ok, swagger_user_password_rules:swagger_user_password_rules(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
password_rules_get_password_rules(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/current_user/password_rules"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


