-module(swagger_envelope_purge_configuration_api).

-export([envelope_purge_configuration_get_envelope_purge_configuration/2, envelope_purge_configuration_get_envelope_purge_configuration/3,
         envelope_purge_configuration_put_envelope_purge_configuration/3, envelope_purge_configuration_put_envelope_purge_configuration/4]).

-define(BASE_URL, "/restapi").

%% @doc 
-spec envelope_purge_configuration_get_envelope_purge_configuration(ctx:ctx(), binary()) -> {ok, swagger_envelope_purge_configuration:swagger_envelope_purge_configuration(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
envelope_purge_configuration_get_envelope_purge_configuration(Ctx, AccountId) ->
    envelope_purge_configuration_get_envelope_purge_configuration(Ctx, AccountId, #{}).

-spec envelope_purge_configuration_get_envelope_purge_configuration(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_envelope_purge_configuration:swagger_envelope_purge_configuration(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
envelope_purge_configuration_get_envelope_purge_configuration(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/settings/envelope_purge_configuration"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
-spec envelope_purge_configuration_put_envelope_purge_configuration(ctx:ctx(), binary()) -> {ok, swagger_envelope_purge_configuration:swagger_envelope_purge_configuration(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
envelope_purge_configuration_put_envelope_purge_configuration(Ctx, AccountId) ->
    envelope_purge_configuration_put_envelope_purge_configuration(Ctx, AccountId, #{}).

-spec envelope_purge_configuration_put_envelope_purge_configuration(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_envelope_purge_configuration:swagger_envelope_purge_configuration(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
envelope_purge_configuration_put_envelope_purge_configuration(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/settings/envelope_purge_configuration"],
    QS = [],
    Headers = [],
    Body1 = EnvelopePurgeConfiguration,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


