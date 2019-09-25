-module(swagger_workspace_items_api).

-export([workspace_file_get_workspace_file/5, workspace_file_get_workspace_file/6,
         workspace_file_pages_get_workspace_file_pages/5, workspace_file_pages_get_workspace_file_pages/6,
         workspace_file_post_workspace_files/4, workspace_file_post_workspace_files/5,
         workspace_file_put_workspace_file/5, workspace_file_put_workspace_file/6,
         workspace_folder_delete_workspace_items/5, workspace_folder_delete_workspace_items/6,
         workspace_folder_get_workspace_folder/4, workspace_folder_get_workspace_folder/5]).

-define(BASE_URL, "/restapi").

%% @doc Get Workspace File
%% Retrieves a workspace file (the binary).
-spec workspace_file_get_workspace_file(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
workspace_file_get_workspace_file(Ctx, AccountId, FileId, FolderId, WorkspaceId) ->
    workspace_file_get_workspace_file(Ctx, AccountId, FileId, FolderId, WorkspaceId, #{}).

-spec workspace_file_get_workspace_file(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
workspace_file_get_workspace_file(Ctx, AccountId, FileId, FolderId, WorkspaceId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/workspaces/", WorkspaceId, "/folders/", FolderId, "/files/", FileId, ""],
    QS = lists:flatten([])++swagger_utils:optional_params(['is_download', 'pdf_version'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List File Pages
%% Retrieves a workspace file as rasterized pages.
-spec workspace_file_pages_get_workspace_file_pages(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, swagger_page_images:swagger_page_images(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
workspace_file_pages_get_workspace_file_pages(Ctx, AccountId, FileId, FolderId, WorkspaceId) ->
    workspace_file_pages_get_workspace_file_pages(Ctx, AccountId, FileId, FolderId, WorkspaceId, #{}).

-spec workspace_file_pages_get_workspace_file_pages(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_page_images:swagger_page_images(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
workspace_file_pages_get_workspace_file_pages(Ctx, AccountId, FileId, FolderId, WorkspaceId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/workspaces/", WorkspaceId, "/folders/", FolderId, "/files/", FileId, "/pages"],
    QS = lists:flatten([])++swagger_utils:optional_params(['count', 'dpi', 'max_height', 'max_width', 'start_position'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Creates a workspace file.
-spec workspace_file_post_workspace_files(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_workspace_items:swagger_workspace_items(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
workspace_file_post_workspace_files(Ctx, AccountId, FolderId, WorkspaceId) ->
    workspace_file_post_workspace_files(Ctx, AccountId, FolderId, WorkspaceId, #{}).

-spec workspace_file_post_workspace_files(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_workspace_items:swagger_workspace_items(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
workspace_file_post_workspace_files(Ctx, AccountId, FolderId, WorkspaceId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/workspaces/", WorkspaceId, "/folders/", FolderId, "/files"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update Workspace File Metadata
%% Updates workspace item metadata for one or more specific files/folders.
-spec workspace_file_put_workspace_file(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, swagger_workspace_items:swagger_workspace_items(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
workspace_file_put_workspace_file(Ctx, AccountId, FileId, FolderId, WorkspaceId) ->
    workspace_file_put_workspace_file(Ctx, AccountId, FileId, FolderId, WorkspaceId, #{}).

-spec workspace_file_put_workspace_file(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_workspace_items:swagger_workspace_items(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
workspace_file_put_workspace_file(Ctx, AccountId, FileId, FolderId, WorkspaceId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/workspaces/", WorkspaceId, "/folders/", FolderId, "/files/", FileId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Deletes workspace one or more specific files/folders from the given folder or root.
-spec workspace_folder_delete_workspace_items(ctx:ctx(), binary(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
workspace_folder_delete_workspace_items(Ctx, AccountId, FolderId, WorkspaceId) ->
    workspace_folder_delete_workspace_items(Ctx, AccountId, FolderId, WorkspaceId, #{}).

-spec workspace_folder_delete_workspace_items(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
workspace_folder_delete_workspace_items(Ctx, AccountId, FolderId, WorkspaceId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/workspaces/", WorkspaceId, "/folders/", FolderId, ""],
    QS = [],
    Headers = [],
    Body1 = WorkspaceItemList,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List Workspace Folder Contents
%% Retrieves workspace folder contents, which can include sub folders and files.
-spec workspace_folder_get_workspace_folder(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_workspace_folder_contents:swagger_workspace_folder_contents(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
workspace_folder_get_workspace_folder(Ctx, AccountId, FolderId, WorkspaceId) ->
    workspace_folder_get_workspace_folder(Ctx, AccountId, FolderId, WorkspaceId, #{}).

-spec workspace_folder_get_workspace_folder(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_workspace_folder_contents:swagger_workspace_folder_contents(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
workspace_folder_get_workspace_folder(Ctx, AccountId, FolderId, WorkspaceId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/workspaces/", WorkspaceId, "/folders/", FolderId, ""],
    QS = lists:flatten([])++swagger_utils:optional_params(['count', 'include_files', 'include_sub_folders', 'include_thumbnails', 'include_user_detail', 'start_position', 'workspace_user_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


