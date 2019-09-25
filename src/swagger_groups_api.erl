-module(swagger_groups_api).

-export([groups_delete_groups/3, groups_delete_groups/4,
         groups_get_groups/2, groups_get_groups/3,
         groups_post_groups/3, groups_post_groups/4,
         groups_put_groups/3, groups_put_groups/4]).

-define(BASE_URL, "/restapi").

%% @doc Deletes an existing user group.
%% Deletes an existing user group.
-spec groups_delete_groups(ctx:ctx(), binary()) -> {ok, swagger_groups:swagger_groups(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
groups_delete_groups(Ctx, AccountId) ->
    groups_delete_groups(Ctx, AccountId, #{}).

-spec groups_delete_groups(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_groups:swagger_groups(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
groups_delete_groups(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/groups"],
    QS = [],
    Headers = [],
    Body1 = Groups,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets information about groups associated with the account.
%% Retrieves information about groups associated with the account.
-spec groups_get_groups(ctx:ctx(), binary()) -> {ok, swagger_groups:swagger_groups(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
groups_get_groups(Ctx, AccountId) ->
    groups_get_groups(Ctx, AccountId, #{}).

-spec groups_get_groups(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_groups:swagger_groups(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
groups_get_groups(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/groups"],
    QS = lists:flatten([])++swagger_utils:optional_params(['count', 'group_type', 'include_usercount', 'search_text', 'start_position'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Creates one or more groups for the account.
%% Creates one or more groups for the account.  Groups can be used to help manage users by associating users with a group. You can associate a group with a Permission Profile, which sets the user permissions for users in that group without having to set the `userSettings` property for each user. You are not required to set Permission Profiles for a group, but it makes it easier to manage user permissions for a large number of users. You can also use groups with template sharing to limit user access to templates.
-spec groups_post_groups(ctx:ctx(), binary()) -> {ok, swagger_groups:swagger_groups(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
groups_post_groups(Ctx, AccountId) ->
    groups_post_groups(Ctx, AccountId, #{}).

-spec groups_post_groups(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_groups:swagger_groups(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
groups_post_groups(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/groups"],
    QS = [],
    Headers = [],
    Body1 = Groups,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates the group information for a group.
%% Updates the group name and modifies, or sets, the permission profile for the group.
-spec groups_put_groups(ctx:ctx(), binary()) -> {ok, swagger_groups:swagger_groups(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
groups_put_groups(Ctx, AccountId) ->
    groups_put_groups(Ctx, AccountId, #{}).

-spec groups_put_groups(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_groups:swagger_groups(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
groups_put_groups(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/groups"],
    QS = [],
    Headers = [],
    Body1 = Groups,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


