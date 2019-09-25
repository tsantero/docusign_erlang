-module(swagger_group_users_api).

-export([groups_delete_group_users/4, groups_delete_group_users/5,
         groups_get_group_users/3, groups_get_group_users/4,
         groups_put_group_users/4, groups_put_group_users/5]).

-define(BASE_URL, "/restapi").

%% @doc Deletes one or more users from a group
%% Deletes one or more users from a group. This request takes a `userInfoList` that contains the users that you want to delete. 
-spec groups_delete_group_users(ctx:ctx(), binary(), binary()) -> {ok, swagger_group_users:swagger_group_users(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
groups_delete_group_users(Ctx, AccountId, GroupId) ->
    groups_delete_group_users(Ctx, AccountId, GroupId, #{}).

-spec groups_delete_group_users(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_group_users:swagger_group_users(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
groups_delete_group_users(Ctx, AccountId, GroupId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/groups/", GroupId, "/users"],
    QS = [],
    Headers = [],
    Body1 = UserInfoList,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets a list of users in a group.
%% Retrieves a list of users in a group.
-spec groups_get_group_users(ctx:ctx(), binary(), binary()) -> {ok, swagger_group_users:swagger_group_users(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
groups_get_group_users(Ctx, AccountId, GroupId) ->
    groups_get_group_users(Ctx, AccountId, GroupId, #{}).

-spec groups_get_group_users(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_group_users:swagger_group_users(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
groups_get_group_users(Ctx, AccountId, GroupId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/groups/", GroupId, "/users"],
    QS = lists:flatten([])++swagger_utils:optional_params(['count', 'start_position'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Adds one or more users to an existing group.
%% Adds one or more existing DocuSign users to an existing group.
-spec groups_put_group_users(ctx:ctx(), binary(), binary()) -> {ok, swagger_group_users:swagger_group_users(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
groups_put_group_users(Ctx, AccountId, GroupId) ->
    groups_put_group_users(Ctx, AccountId, GroupId, #{}).

-spec groups_put_group_users(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_group_users:swagger_group_users(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
groups_put_group_users(Ctx, AccountId, GroupId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/groups/", GroupId, "/users"],
    QS = [],
    Headers = [],
    Body1 = UserInfoList,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


