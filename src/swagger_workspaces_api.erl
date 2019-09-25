-module(swagger_workspaces_api).

-export([workspace_delete_workspace/3, workspace_delete_workspace/4,
         workspace_get_workspace/3, workspace_get_workspace/4,
         workspace_get_workspaces/2, workspace_get_workspaces/3,
         workspace_post_workspace/3, workspace_post_workspace/4,
         workspace_put_workspace/4, workspace_put_workspace/5]).

-define(BASE_URL, "/restapi").

%% @doc Delete Workspace
%% Deletes an existing workspace (logically).
-spec workspace_delete_workspace(ctx:ctx(), binary(), binary()) -> {ok, swagger_workspaces:swagger_workspaces(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
workspace_delete_workspace(Ctx, AccountId, WorkspaceId) ->
    workspace_delete_workspace(Ctx, AccountId, WorkspaceId, #{}).

-spec workspace_delete_workspace(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_workspaces:swagger_workspaces(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
workspace_delete_workspace(Ctx, AccountId, WorkspaceId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/workspaces/", WorkspaceId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get Workspace
%% Retrives properties about a workspace given a unique workspaceId. 
-spec workspace_get_workspace(ctx:ctx(), binary(), binary()) -> {ok, swagger_workspaces:swagger_workspaces(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
workspace_get_workspace(Ctx, AccountId, WorkspaceId) ->
    workspace_get_workspace(Ctx, AccountId, WorkspaceId, #{}).

-spec workspace_get_workspace(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_workspaces:swagger_workspaces(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
workspace_get_workspace(Ctx, AccountId, WorkspaceId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/workspaces/", WorkspaceId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Workspaces
%% Gets information about the Workspaces that have been created.
-spec workspace_get_workspaces(ctx:ctx(), binary()) -> {ok, swagger_workspace_list:swagger_workspace_list(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
workspace_get_workspaces(Ctx, AccountId) ->
    workspace_get_workspaces(Ctx, AccountId, #{}).

-spec workspace_get_workspaces(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_workspace_list:swagger_workspace_list(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
workspace_get_workspaces(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/workspaces"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Create a Workspace
%% Creates a new workspace.
-spec workspace_post_workspace(ctx:ctx(), binary()) -> {ok, swagger_workspaces:swagger_workspaces(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
workspace_post_workspace(Ctx, AccountId) ->
    workspace_post_workspace(Ctx, AccountId, #{}).

-spec workspace_post_workspace(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_workspaces:swagger_workspaces(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
workspace_post_workspace(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/workspaces"],
    QS = [],
    Headers = [],
    Body1 = Workspaces,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update Workspace
%% Updates information about a specific workspace.
-spec workspace_put_workspace(ctx:ctx(), binary(), binary()) -> {ok, swagger_workspaces:swagger_workspaces(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
workspace_put_workspace(Ctx, AccountId, WorkspaceId) ->
    workspace_put_workspace(Ctx, AccountId, WorkspaceId, #{}).

-spec workspace_put_workspace(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_workspaces:swagger_workspaces(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
workspace_put_workspace(Ctx, AccountId, WorkspaceId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/workspaces/", WorkspaceId, ""],
    QS = [],
    Headers = [],
    Body1 = Workspaces,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


