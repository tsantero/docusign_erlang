-module(swagger_cloud_storage_providers_api).

-export([cloud_storage_delete_cloud_storage/4, cloud_storage_delete_cloud_storage/5,
         cloud_storage_delete_cloud_storage_providers/4, cloud_storage_delete_cloud_storage_providers/5,
         cloud_storage_get_cloud_storage/4, cloud_storage_get_cloud_storage/5,
         cloud_storage_get_cloud_storage_providers/3, cloud_storage_get_cloud_storage_providers/4,
         cloud_storage_post_cloud_storage/4, cloud_storage_post_cloud_storage/5]).

-define(BASE_URL, "/restapi").

%% @doc Deletes the user authentication information for the specified cloud storage provider.
%% Deletes the user authentication information for the specified cloud storage provider. The next time the user tries to access the cloud storage provider, they must pass normal authentication for this cloud storage provider.
-spec cloud_storage_delete_cloud_storage(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_cloud_storage_providers:swagger_cloud_storage_providers(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
cloud_storage_delete_cloud_storage(Ctx, AccountId, ServiceId, UserId) ->
    cloud_storage_delete_cloud_storage(Ctx, AccountId, ServiceId, UserId, #{}).

-spec cloud_storage_delete_cloud_storage(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_cloud_storage_providers:swagger_cloud_storage_providers(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
cloud_storage_delete_cloud_storage(Ctx, AccountId, ServiceId, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/users/", UserId, "/cloud_storage/", ServiceId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Deletes the user authentication information for one or more cloud storage providers.
%% Deletes the user authentication information for one or more cloud storage providers. The next time the user tries to access the cloud storage provider, they must pass normal authentication.
-spec cloud_storage_delete_cloud_storage_providers(ctx:ctx(), binary(), binary()) -> {ok, swagger_cloud_storage_providers:swagger_cloud_storage_providers(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
cloud_storage_delete_cloud_storage_providers(Ctx, AccountId, UserId) ->
    cloud_storage_delete_cloud_storage_providers(Ctx, AccountId, UserId, #{}).

-spec cloud_storage_delete_cloud_storage_providers(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_cloud_storage_providers:swagger_cloud_storage_providers(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
cloud_storage_delete_cloud_storage_providers(Ctx, AccountId, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/users/", UserId, "/cloud_storage"],
    QS = [],
    Headers = [],
    Body1 = CloudStorageProviders,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets the specified Cloud Storage Provider configuration for the User.
%% Retrieves the list of cloud storage providers enabled for the account and the configuration information for the user.
-spec cloud_storage_get_cloud_storage(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_cloud_storage_providers:swagger_cloud_storage_providers(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
cloud_storage_get_cloud_storage(Ctx, AccountId, ServiceId, UserId) ->
    cloud_storage_get_cloud_storage(Ctx, AccountId, ServiceId, UserId, #{}).

-spec cloud_storage_get_cloud_storage(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_cloud_storage_providers:swagger_cloud_storage_providers(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
cloud_storage_get_cloud_storage(Ctx, AccountId, ServiceId, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/users/", UserId, "/cloud_storage/", ServiceId, ""],
    QS = lists:flatten([])++swagger_utils:optional_params(['redirectUrl'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get the Cloud Storage Provider configuration for the specified user.
%% Retrieves the list of cloud storage providers enabled for the account and the configuration information for the user. 
-spec cloud_storage_get_cloud_storage_providers(ctx:ctx(), binary(), binary()) -> {ok, swagger_cloud_storage_providers:swagger_cloud_storage_providers(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
cloud_storage_get_cloud_storage_providers(Ctx, AccountId, UserId) ->
    cloud_storage_get_cloud_storage_providers(Ctx, AccountId, UserId, #{}).

-spec cloud_storage_get_cloud_storage_providers(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_cloud_storage_providers:swagger_cloud_storage_providers(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
cloud_storage_get_cloud_storage_providers(Ctx, AccountId, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/users/", UserId, "/cloud_storage"],
    QS = lists:flatten([])++swagger_utils:optional_params(['redirectUrl'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Configures the redirect URL information  for one or more cloud storage providers for the specified user.
%% Configures the redirect URL information  for one or more cloud storage providers for the specified user. The redirect URL is added to the authentication URL to complete the return route.
-spec cloud_storage_post_cloud_storage(ctx:ctx(), binary(), binary()) -> {ok, swagger_cloud_storage_providers:swagger_cloud_storage_providers(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
cloud_storage_post_cloud_storage(Ctx, AccountId, UserId) ->
    cloud_storage_post_cloud_storage(Ctx, AccountId, UserId, #{}).

-spec cloud_storage_post_cloud_storage(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_cloud_storage_providers:swagger_cloud_storage_providers(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
cloud_storage_post_cloud_storage(Ctx, AccountId, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/users/", UserId, "/cloud_storage"],
    QS = [],
    Headers = [],
    Body1 = CloudStorageProviders,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


