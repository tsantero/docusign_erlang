-module(swagger_signing_groups_api).

-export([signing_groups_delete_signing_groups/3, signing_groups_delete_signing_groups/4,
         signing_groups_get_signing_group/3, signing_groups_get_signing_group/4,
         signing_groups_get_signing_groups/2, signing_groups_get_signing_groups/3,
         signing_groups_post_signing_groups/3, signing_groups_post_signing_groups/4,
         signing_groups_put_signing_group/4, signing_groups_put_signing_group/5,
         signing_groups_put_signing_groups/3, signing_groups_put_signing_groups/4]).

-define(BASE_URL, "/restapi").

%% @doc Deletes one or more signing groups.
%% Deletes one or more signing groups in the specified account.
-spec signing_groups_delete_signing_groups(ctx:ctx(), binary()) -> {ok, swagger_signing_group_information:swagger_signing_group_information(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
signing_groups_delete_signing_groups(Ctx, AccountId) ->
    signing_groups_delete_signing_groups(Ctx, AccountId, #{}).

-spec signing_groups_delete_signing_groups(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_signing_group_information:swagger_signing_group_information(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
signing_groups_delete_signing_groups(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/signing_groups"],
    QS = [],
    Headers = [],
    Body1 = SigningGroupInformation,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets information about a signing group. 
%% Retrieves information, including group member information, for the specified signing group. 
-spec signing_groups_get_signing_group(ctx:ctx(), binary(), binary()) -> {ok, swagger_signing_groups:swagger_signing_groups(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
signing_groups_get_signing_group(Ctx, AccountId, SigningGroupId) ->
    signing_groups_get_signing_group(Ctx, AccountId, SigningGroupId, #{}).

-spec signing_groups_get_signing_group(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_signing_groups:swagger_signing_groups(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
signing_groups_get_signing_group(Ctx, AccountId, SigningGroupId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/signing_groups/", SigningGroupId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets a list of the Signing Groups in an account.
%% Retrieves a list of all signing groups in the specified account.
-spec signing_groups_get_signing_groups(ctx:ctx(), binary()) -> {ok, swagger_signing_group_information:swagger_signing_group_information(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
signing_groups_get_signing_groups(Ctx, AccountId) ->
    signing_groups_get_signing_groups(Ctx, AccountId, #{}).

-spec signing_groups_get_signing_groups(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_signing_group_information:swagger_signing_group_information(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
signing_groups_get_signing_groups(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/signing_groups"],
    QS = lists:flatten([])++swagger_utils:optional_params(['group_type', 'include_users'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Creates a signing group. 
%% Creates one or more signing groups.   Multiple signing groups can be created in one call. Only users with account administrator privileges can create signing groups.   An account can have a maximum of 50 signing groups. Each signing group can have a maximum of 50 group members.   Signing groups can be used by any account user.
-spec signing_groups_post_signing_groups(ctx:ctx(), binary()) -> {ok, swagger_signing_group_information:swagger_signing_group_information(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
signing_groups_post_signing_groups(Ctx, AccountId) ->
    signing_groups_post_signing_groups(Ctx, AccountId, #{}).

-spec signing_groups_post_signing_groups(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_signing_group_information:swagger_signing_group_information(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
signing_groups_post_signing_groups(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/signing_groups"],
    QS = [],
    Headers = [],
    Body1 = SigningGroupInformation,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates a signing group. 
%% Updates signing group name and member information. You can also add new members to the signing group. A signing group can have a maximum of 50 members. 
-spec signing_groups_put_signing_group(ctx:ctx(), binary(), binary()) -> {ok, swagger_signing_groups:swagger_signing_groups(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
signing_groups_put_signing_group(Ctx, AccountId, SigningGroupId) ->
    signing_groups_put_signing_group(Ctx, AccountId, SigningGroupId, #{}).

-spec signing_groups_put_signing_group(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_signing_groups:swagger_signing_groups(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
signing_groups_put_signing_group(Ctx, AccountId, SigningGroupId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/signing_groups/", SigningGroupId, ""],
    QS = [],
    Headers = [],
    Body1 = SigningGroups,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates signing group names.
%% Updates the name of one or more existing signing groups. 
-spec signing_groups_put_signing_groups(ctx:ctx(), binary()) -> {ok, swagger_signing_group_information:swagger_signing_group_information(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
signing_groups_put_signing_groups(Ctx, AccountId) ->
    signing_groups_put_signing_groups(Ctx, AccountId, #{}).

-spec signing_groups_put_signing_groups(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_signing_group_information:swagger_signing_group_information(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
signing_groups_put_signing_groups(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/signing_groups"],
    QS = [],
    Headers = [],
    Body1 = SigningGroupInformation,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


