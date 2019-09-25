-module(swagger_account_permission_profiles_api).

-export([permission_profiles_delete_permission_profiles/3, permission_profiles_delete_permission_profiles/4,
         permission_profiles_get_permission_profile/3, permission_profiles_get_permission_profile/4,
         permission_profiles_get_permission_profiles/2, permission_profiles_get_permission_profiles/3,
         permission_profiles_post_permission_profiles/3, permission_profiles_post_permission_profiles/4,
         permission_profiles_put_permission_profiles/4, permission_profiles_put_permission_profiles/5]).

-define(BASE_URL, "/restapi").

%% @doc Deletes a permission profile from an account.
%% This method deletes a permission profile from an account.
-spec permission_profiles_delete_permission_profiles(ctx:ctx(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
permission_profiles_delete_permission_profiles(Ctx, AccountId, PermissionProfileId) ->
    permission_profiles_delete_permission_profiles(Ctx, AccountId, PermissionProfileId, #{}).

-spec permission_profiles_delete_permission_profiles(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
permission_profiles_delete_permission_profiles(Ctx, AccountId, PermissionProfileId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/permission_profiles/", PermissionProfileId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Returns a permission profile for an account.
%% This method returns information about a specific permission profile that is associated with an account.
-spec permission_profiles_get_permission_profile(ctx:ctx(), binary(), binary()) -> {ok, swagger_account_permission_profiles:swagger_account_permission_profiles(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
permission_profiles_get_permission_profile(Ctx, AccountId, PermissionProfileId) ->
    permission_profiles_get_permission_profile(Ctx, AccountId, PermissionProfileId, #{}).

-spec permission_profiles_get_permission_profile(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_account_permission_profiles:swagger_account_permission_profiles(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
permission_profiles_get_permission_profile(Ctx, AccountId, PermissionProfileId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/permission_profiles/", PermissionProfileId, ""],
    QS = lists:flatten([])++swagger_utils:optional_params(['include'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets a list of permission profiles.
%% This method returns a list of permission profiles that are associated with an account.
-spec permission_profiles_get_permission_profiles(ctx:ctx(), binary()) -> {ok, swagger_permission_profile_information:swagger_permission_profile_information(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
permission_profiles_get_permission_profiles(Ctx, AccountId) ->
    permission_profiles_get_permission_profiles(Ctx, AccountId, #{}).

-spec permission_profiles_get_permission_profiles(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_permission_profile_information:swagger_permission_profile_information(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
permission_profiles_get_permission_profiles(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/permission_profiles"],
    QS = lists:flatten([])++swagger_utils:optional_params(['include'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Creates a new permission profile for an account.
%% This method creates a new permission profile for an account.
-spec permission_profiles_post_permission_profiles(ctx:ctx(), binary()) -> {ok, swagger_account_permission_profiles:swagger_account_permission_profiles(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
permission_profiles_post_permission_profiles(Ctx, AccountId) ->
    permission_profiles_post_permission_profiles(Ctx, AccountId, #{}).

-spec permission_profiles_post_permission_profiles(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_account_permission_profiles:swagger_account_permission_profiles(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
permission_profiles_post_permission_profiles(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/permission_profiles"],
    QS = lists:flatten([])++swagger_utils:optional_params(['include'], _OptionalParams),
    Headers = [],
    Body1 = AccountPermissionProfiles,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates a permission profile.
%% This method updates an account permission profile.
-spec permission_profiles_put_permission_profiles(ctx:ctx(), binary(), binary()) -> {ok, swagger_account_permission_profiles:swagger_account_permission_profiles(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
permission_profiles_put_permission_profiles(Ctx, AccountId, PermissionProfileId) ->
    permission_profiles_put_permission_profiles(Ctx, AccountId, PermissionProfileId, #{}).

-spec permission_profiles_put_permission_profiles(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_account_permission_profiles:swagger_account_permission_profiles(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
permission_profiles_put_permission_profiles(Ctx, AccountId, PermissionProfileId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/permission_profiles/", PermissionProfileId, ""],
    QS = lists:flatten([])++swagger_utils:optional_params(['include'], _OptionalParams),
    Headers = [],
    Body1 = AccountPermissionProfiles,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


