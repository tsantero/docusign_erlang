-module(swagger_folders_api).

-export([folders_get_folder_items/3, folders_get_folder_items/4,
         folders_get_folders/2, folders_get_folders/3,
         folders_put_folder_by_id/4, folders_put_folder_by_id/5,
         search_folders_get_search_folder_contents/3, search_folders_get_search_folder_contents/4]).

-define(BASE_URL, "/restapi").

%% @doc Gets a list of the envelopes in the specified folder.
%% Retrieves a list of the envelopes in the specified folder. You can narrow the query by specifying search criteria in the query string parameters.
-spec folders_get_folder_items(ctx:ctx(), binary(), binary()) -> {ok, swagger_folder_items_response:swagger_folder_items_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
folders_get_folder_items(Ctx, AccountId, FolderId) ->
    folders_get_folder_items(Ctx, AccountId, FolderId, #{}).

-spec folders_get_folder_items(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_folder_items_response:swagger_folder_items_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
folders_get_folder_items(Ctx, AccountId, FolderId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/folders/", FolderId, ""],
    QS = lists:flatten([])++swagger_utils:optional_params(['from_date', 'include_items', 'owner_email', 'owner_name', 'search_text', 'start_position', 'status', 'to_date'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets a list of the folders for the account.
%% Retrieves a list of the folders for the account, including the folder hierarchy. You can specify whether to return just the template folder or template folder and normal folders by setting the `template` query string parameter.
-spec folders_get_folders(ctx:ctx(), binary()) -> {ok, swagger_folders:swagger_folders(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
folders_get_folders(Ctx, AccountId) ->
    folders_get_folders(Ctx, AccountId, #{}).

-spec folders_get_folders(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_folders:swagger_folders(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
folders_get_folders(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/folders"],
    QS = lists:flatten([])++swagger_utils:optional_params(['include', 'include_items', 'start_position', 'template', 'user_filter'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Moves an envelope from its current folder to the specified folder.
%% Moves an envelope from its current folder to the specified folder.  You can use this method to delete envelopes by specifying `recyclebin` in the `folderId` parameter. Placing an in-process envelope (envelope status of `sent` or `delivered`) in the recycle bin voids the envelope.  You can also use this method to delete templates by specifying a template ID instead of an envelope ID in the 'envelopeIds' property and specifying `recyclebin` in the `folderId` parameter. 
-spec folders_put_folder_by_id(ctx:ctx(), binary(), binary()) -> {ok, swagger_folders:swagger_folders(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
folders_put_folder_by_id(Ctx, AccountId, FolderId) ->
    folders_put_folder_by_id(Ctx, AccountId, FolderId, #{}).

-spec folders_put_folder_by_id(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_folders:swagger_folders(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
folders_put_folder_by_id(Ctx, AccountId, FolderId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/folders/", FolderId, ""],
    QS = [],
    Headers = [],
    Body1 = FoldersRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets a list of envelopes in folders matching the specified criteria.
%% **This method is deprecated in API v2.1.**  Use  [Envelopes::listStatusChanges](https://developers.docusign.com/esign-rest-api/reference/Envelopes/Envelopes/listStatusChanges) instead.  Retrieves a list of items that match the criteria specified in the query.  If the user ID of the user making the call is the same as the user ID for any returned recipient, then the userId property is added to the returned information for those recipients.
-spec search_folders_get_search_folder_contents(ctx:ctx(), binary(), binary()) -> {ok, swagger_folder_item_response:swagger_folder_item_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
search_folders_get_search_folder_contents(Ctx, AccountId, SearchFolderId) ->
    search_folders_get_search_folder_contents(Ctx, AccountId, SearchFolderId, #{}).

-spec search_folders_get_search_folder_contents(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_folder_item_response:swagger_folder_item_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
search_folders_get_search_folder_contents(Ctx, AccountId, SearchFolderId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/search_folders/", SearchFolderId, ""],
    QS = lists:flatten([])++swagger_utils:optional_params(['all', 'count', 'from_date', 'include_recipients', 'order', 'order_by', 'start_position', 'to_date'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


