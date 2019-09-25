-module(swagger_group_brands_api).

-export([brands_delete_group_brands/4, brands_delete_group_brands/5,
         brands_get_group_brands/3, brands_get_group_brands/4,
         brands_put_group_brands/4, brands_put_group_brands/5]).

-define(BASE_URL, "/restapi").

%% @doc Deletes brand information from the requested group.
%% Deletes brand information from the requested group.
-spec brands_delete_group_brands(ctx:ctx(), binary(), binary()) -> {ok, swagger_group_brands:swagger_group_brands(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brands_delete_group_brands(Ctx, AccountId, GroupId) ->
    brands_delete_group_brands(Ctx, AccountId, GroupId, #{}).

-spec brands_delete_group_brands(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_group_brands:swagger_group_brands(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brands_delete_group_brands(Ctx, AccountId, GroupId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/groups/", GroupId, "/brands"],
    QS = [],
    Headers = [],
    Body1 = BrandsRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets group brand ID Information. 
%% Retrieves information about the brands associated with the requested group.
-spec brands_get_group_brands(ctx:ctx(), binary(), binary()) -> {ok, swagger_group_brands:swagger_group_brands(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brands_get_group_brands(Ctx, AccountId, GroupId) ->
    brands_get_group_brands(Ctx, AccountId, GroupId, #{}).

-spec brands_get_group_brands(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_group_brands:swagger_group_brands(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brands_get_group_brands(Ctx, AccountId, GroupId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/groups/", GroupId, "/brands"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Adds group brand ID information to a group.
%% Adds group brand ID information to a group.
-spec brands_put_group_brands(ctx:ctx(), binary(), binary()) -> {ok, swagger_group_brands:swagger_group_brands(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brands_put_group_brands(Ctx, AccountId, GroupId) ->
    brands_put_group_brands(Ctx, AccountId, GroupId, #{}).

-spec brands_put_group_brands(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_group_brands:swagger_group_brands(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
brands_put_group_brands(Ctx, AccountId, GroupId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/groups/", GroupId, "/brands"],
    QS = [],
    Headers = [],
    Body1 = BrandsRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


