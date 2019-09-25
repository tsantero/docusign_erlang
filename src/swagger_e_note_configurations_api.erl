-module(swagger_e_note_configurations_api).

-export([e_note_configuration_delete_e_note_configuration/2, e_note_configuration_delete_e_note_configuration/3,
         e_note_configuration_get_e_note_configuration/2, e_note_configuration_get_e_note_configuration/3,
         e_note_configuration_put_e_note_configuration/3, e_note_configuration_put_e_note_configuration/4]).

-define(BASE_URL, "/restapi").

%% @doc Deletes configuration information for the eNote eOriginal integration.
-spec e_note_configuration_delete_e_note_configuration(ctx:ctx(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
e_note_configuration_delete_e_note_configuration(Ctx, AccountId) ->
    e_note_configuration_delete_e_note_configuration(Ctx, AccountId, #{}).

-spec e_note_configuration_delete_e_note_configuration(ctx:ctx(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
e_note_configuration_delete_e_note_configuration(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/settings/enote_configuration"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Returns the configuration information for the eNote eOriginal integration.
-spec e_note_configuration_get_e_note_configuration(ctx:ctx(), binary()) -> {ok, swagger_e_note_configurations:swagger_e_note_configurations(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
e_note_configuration_get_e_note_configuration(Ctx, AccountId) ->
    e_note_configuration_get_e_note_configuration(Ctx, AccountId, #{}).

-spec e_note_configuration_get_e_note_configuration(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_e_note_configurations:swagger_e_note_configurations(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
e_note_configuration_get_e_note_configuration(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/settings/enote_configuration"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates configuration information for the eNote eOriginal integration.
-spec e_note_configuration_put_e_note_configuration(ctx:ctx(), binary()) -> {ok, swagger_e_note_configurations:swagger_e_note_configurations(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
e_note_configuration_put_e_note_configuration(Ctx, AccountId) ->
    e_note_configuration_put_e_note_configuration(Ctx, AccountId, #{}).

-spec e_note_configuration_put_e_note_configuration(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_e_note_configurations:swagger_e_note_configurations(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
e_note_configuration_put_e_note_configuration(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/settings/enote_configuration"],
    QS = [],
    Headers = [],
    Body1 = ENoteConfigurations,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


