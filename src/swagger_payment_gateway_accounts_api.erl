-module(swagger_payment_gateway_accounts_api).

-export([payment_gateway_accounts_get_all_payment_gateway_accounts/2, payment_gateway_accounts_get_all_payment_gateway_accounts/3]).

-define(BASE_URL, "/restapi").

%% @doc List payment gateway account information
%% List payment gateway account information
-spec payment_gateway_accounts_get_all_payment_gateway_accounts(ctx:ctx(), binary()) -> {ok, swagger_payment_gateway_accounts_info:swagger_payment_gateway_accounts_info(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
payment_gateway_accounts_get_all_payment_gateway_accounts(Ctx, AccountId) ->
    payment_gateway_accounts_get_all_payment_gateway_accounts(Ctx, AccountId, #{}).

-spec payment_gateway_accounts_get_all_payment_gateway_accounts(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_payment_gateway_accounts_info:swagger_payment_gateway_accounts_info(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
payment_gateway_accounts_get_all_payment_gateway_accounts(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/payment_gateway_accounts"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


