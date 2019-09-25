-module(swagger_signing_group_users_api).

-export([signing_groups_delete_signing_group_users/4, signing_groups_delete_signing_group_users/5,
         signing_groups_get_signing_group_users/3, signing_groups_get_signing_group_users/4,
         signing_groups_put_signing_group_users/4, signing_groups_put_signing_group_users/5]).

-define(BASE_URL, "/restapi").

%% @doc Deletes  one or more members from a signing group.
%% Deletes  one or more members from the specified signing group. 
-spec signing_groups_delete_signing_group_users(ctx:ctx(), binary(), binary()) -> {ok, swagger_signing_group_users:swagger_signing_group_users(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
signing_groups_delete_signing_group_users(Ctx, AccountId, SigningGroupId) ->
    signing_groups_delete_signing_group_users(Ctx, AccountId, SigningGroupId, #{}).

-spec signing_groups_delete_signing_group_users(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_signing_group_users:swagger_signing_group_users(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
signing_groups_delete_signing_group_users(Ctx, AccountId, SigningGroupId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/signing_groups/", SigningGroupId, "/users"],
    QS = [],
    Headers = [],
    Body1 = SigningGroupUsers,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets a list of members in a Signing Group.
%% Retrieves the list of members in the specified Signing Group.
-spec signing_groups_get_signing_group_users(ctx:ctx(), binary(), binary()) -> {ok, swagger_signing_group_users:swagger_signing_group_users(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
signing_groups_get_signing_group_users(Ctx, AccountId, SigningGroupId) ->
    signing_groups_get_signing_group_users(Ctx, AccountId, SigningGroupId, #{}).

-spec signing_groups_get_signing_group_users(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_signing_group_users:swagger_signing_group_users(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
signing_groups_get_signing_group_users(Ctx, AccountId, SigningGroupId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/signing_groups/", SigningGroupId, "/users"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Adds members to a signing group. 
%% Adds one or more new members to a signing group. A signing group can have a maximum of 50 members. 
-spec signing_groups_put_signing_group_users(ctx:ctx(), binary(), binary()) -> {ok, swagger_signing_group_users:swagger_signing_group_users(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
signing_groups_put_signing_group_users(Ctx, AccountId, SigningGroupId) ->
    signing_groups_put_signing_group_users(Ctx, AccountId, SigningGroupId, #{}).

-spec signing_groups_put_signing_group_users(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_signing_group_users:swagger_signing_group_users(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
signing_groups_put_signing_group_users(Ctx, AccountId, SigningGroupId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/signing_groups/", SigningGroupId, "/users"],
    QS = [],
    Headers = [],
    Body1 = SigningGroupUsers,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


