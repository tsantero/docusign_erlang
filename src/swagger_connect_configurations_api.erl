-module(swagger_connect_configurations_api).

-export([connect_delete_connect_config/3, connect_delete_connect_config/4,
         connect_get_connect_config/3, connect_get_connect_config/4,
         connect_get_connect_configs/2, connect_get_connect_configs/3,
         connect_get_connect_users/3, connect_get_connect_users/4,
         connect_post_connect_configuration/3, connect_post_connect_configuration/4,
         connect_put_connect_configuration/3, connect_put_connect_configuration/4]).

-define(BASE_URL, "/restapi").

%% @doc Deletes the specified connect configuration.
%% Deletes the specified DocuSign Connect configuration.  ###### Note: Connect must be enabled for your account to use this function.    
-spec connect_delete_connect_config(ctx:ctx(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
connect_delete_connect_config(Ctx, AccountId, ConnectId) ->
    connect_delete_connect_config(Ctx, AccountId, ConnectId, #{}).

-spec connect_delete_connect_config(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
connect_delete_connect_config(Ctx, AccountId, ConnectId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/connect/", ConnectId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get information on a Connect Configuration
%% Retrieves the information for the specified DocuSign Connect configuration.  ###### Note: Connect must be enabled for your account to use this function. 
-spec connect_get_connect_config(ctx:ctx(), binary(), binary()) -> {ok, swagger_connect_config_results:swagger_connect_config_results(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
connect_get_connect_config(Ctx, AccountId, ConnectId) ->
    connect_get_connect_config(Ctx, AccountId, ConnectId, #{}).

-spec connect_get_connect_config(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_connect_config_results:swagger_connect_config_results(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
connect_get_connect_config(Ctx, AccountId, ConnectId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/connect/", ConnectId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Connect Configuration Information
%% Retrieves all the DocuSign Custom Connect definitions for the specified account.  ###### Note: Connect must be enabled for your account to use this function. This does not retrieve information for Connect configurations for Box, eOriginal, or Salesforce.
-spec connect_get_connect_configs(ctx:ctx(), binary()) -> {ok, swagger_connect_config_results:swagger_connect_config_results(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
connect_get_connect_configs(Ctx, AccountId) ->
    connect_get_connect_configs(Ctx, AccountId, #{}).

-spec connect_get_connect_configs(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_connect_config_results:swagger_connect_config_results(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
connect_get_connect_configs(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/connect"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Returns users from the configured Connect service.
%% Returns users from the configured Connect service.
-spec connect_get_connect_users(ctx:ctx(), binary(), binary()) -> {ok, swagger_integrated_user_info_list:swagger_integrated_user_info_list(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
connect_get_connect_users(Ctx, AccountId, ConnectId) ->
    connect_get_connect_users(Ctx, AccountId, ConnectId, #{}).

-spec connect_get_connect_users(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_integrated_user_info_list:swagger_integrated_user_info_list(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
connect_get_connect_users(Ctx, AccountId, ConnectId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/connect/", ConnectId, "/users"],
    QS = lists:flatten([])++swagger_utils:optional_params(['count', 'email_substring', 'list_included_users', 'start_position', 'status', 'user_name_substring'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Creates a connect configuration for the specified account.
%% Creates a DocuSign Custom Connect definition for your account. DocuSign Connect enables the sending of real-time data updates to external applications. These updates are generated by user transactions as the envelope progresses through actions to completion. The Connect Service provides updated information about the status of these transactions and returns updates that include the actual content of document form fields. Be aware that, these updates might or might not include the document itself. For more information about Connect, see the [DocuSign Connect](https://developers.docusign.com/esign-rest-api/guides/connect).  ###### Note: Connect must be enabled for your account to use this function. This cannot be used to set up Connect configurations for Salesforce or eOriginal. 
-spec connect_post_connect_configuration(ctx:ctx(), binary()) -> {ok, swagger_connect_configurations:swagger_connect_configurations(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
connect_post_connect_configuration(Ctx, AccountId) ->
    connect_post_connect_configuration(Ctx, AccountId, #{}).

-spec connect_post_connect_configuration(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_connect_configurations:swagger_connect_configurations(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
connect_post_connect_configuration(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/connect"],
    QS = [],
    Headers = [],
    Body1 = ConnectConfigurations,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates a specified Connect configuration.
%% Updates the specified DocuSign Connect configuration in your account.  ###### Note: Connect must be enabled for your account to use this function. This cannot be used to update Connect configurations for Box, eOriginal, or Salesforce.
-spec connect_put_connect_configuration(ctx:ctx(), binary()) -> {ok, swagger_connect_configurations:swagger_connect_configurations(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
connect_put_connect_configuration(Ctx, AccountId) ->
    connect_put_connect_configuration(Ctx, AccountId, #{}).

-spec connect_put_connect_configuration(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_connect_configurations:swagger_connect_configurations(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
connect_put_connect_configuration(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/connect"],
    QS = [],
    Headers = [],
    Body1 = ConnectConfigurations,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


