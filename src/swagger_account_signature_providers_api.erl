-module(swagger_account_signature_providers_api).

-export([account_signature_providers_get_signature_providers/2, account_signature_providers_get_signature_providers/3]).

-define(BASE_URL, "/restapi").

%% @doc Returns Account available signature providers for specified account.
-spec account_signature_providers_get_signature_providers(ctx:ctx(), binary()) -> {ok, swagger_account_signature_providers:swagger_account_signature_providers(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
account_signature_providers_get_signature_providers(Ctx, AccountId) ->
    account_signature_providers_get_signature_providers(Ctx, AccountId, #{}).

-spec account_signature_providers_get_signature_providers(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_account_signature_providers:swagger_account_signature_providers(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
account_signature_providers_get_signature_providers(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/signatureProviders"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


