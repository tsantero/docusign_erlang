-module(swagger_cloud_storage_api).

-export([cloud_storage_folder_get_cloud_storage_folder/5, cloud_storage_folder_get_cloud_storage_folder/6,
         cloud_storage_folder_get_cloud_storage_folder_all/4, cloud_storage_folder_get_cloud_storage_folder_all/5]).

-define(BASE_URL, "/restapi").

%% @doc Gets a list of all the items from the specified cloud storage provider.
%% Retrieves a list of all the items in all  the folders associated with the user from the specified cloud storage provider. You can limit the scope of the returned items by providing a comma separated list of folder IDs in the request.
-spec cloud_storage_folder_get_cloud_storage_folder(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, swagger_cloud_storage:swagger_cloud_storage(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
cloud_storage_folder_get_cloud_storage_folder(Ctx, AccountId, FolderId, ServiceId, UserId) ->
    cloud_storage_folder_get_cloud_storage_folder(Ctx, AccountId, FolderId, ServiceId, UserId, #{}).

-spec cloud_storage_folder_get_cloud_storage_folder(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_cloud_storage:swagger_cloud_storage(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
cloud_storage_folder_get_cloud_storage_folder(Ctx, AccountId, FolderId, ServiceId, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/users/", UserId, "/cloud_storage/", ServiceId, "/folders/", FolderId, ""],
    QS = lists:flatten([])++swagger_utils:optional_params(['cloud_storage_folder_path', 'cloud_storage_folderid_plain', 'count', 'order', 'order_by', 'search_text', 'start_position'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Retrieves a list of all the items in a specified folder from the specified cloud storage provider.
%% Retrieves a list of all the items in a specified folder from the specified cloud storage provider. 
-spec cloud_storage_folder_get_cloud_storage_folder_all(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_cloud_storage:swagger_cloud_storage(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
cloud_storage_folder_get_cloud_storage_folder_all(Ctx, AccountId, ServiceId, UserId) ->
    cloud_storage_folder_get_cloud_storage_folder_all(Ctx, AccountId, ServiceId, UserId, #{}).

-spec cloud_storage_folder_get_cloud_storage_folder_all(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_cloud_storage:swagger_cloud_storage(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
cloud_storage_folder_get_cloud_storage_folder_all(Ctx, AccountId, ServiceId, UserId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/users/", UserId, "/cloud_storage/", ServiceId, "/folders"],
    QS = lists:flatten([])++swagger_utils:optional_params(['cloud_storage_folder_path', 'count', 'order', 'order_by', 'search_text', 'start_position'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


