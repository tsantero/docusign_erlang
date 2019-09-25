-module(swagger_identity_verifications_api).

-export([account_identity_verification_get_account_identity_verification/2, account_identity_verification_get_account_identity_verification/3]).

-define(BASE_URL, "/restapi").

%% @doc Retrieves the list of identity verification workflows available to an account
%% Retrieves the list of identity verification workflows available to an account
-spec account_identity_verification_get_account_identity_verification(ctx:ctx(), binary()) -> {ok, swagger_identity_verifications:swagger_identity_verifications(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
account_identity_verification_get_account_identity_verification(Ctx, AccountId) ->
    account_identity_verification_get_account_identity_verification(Ctx, AccountId, #{}).

-spec account_identity_verification_get_account_identity_verification(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_identity_verifications:swagger_identity_verifications(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
account_identity_verification_get_account_identity_verification(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/identity_verification"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


