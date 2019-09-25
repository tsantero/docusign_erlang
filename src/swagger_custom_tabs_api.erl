-module(swagger_custom_tabs_api).

-export([tab_delete_custom_tab/3, tab_delete_custom_tab/4,
         tab_get_custom_tab/3, tab_get_custom_tab/4,
         tab_put_custom_tab/4, tab_put_custom_tab/5,
         tabs_get_tab_definitions/2, tabs_get_tab_definitions/3,
         tabs_post_tab_definitions/3, tabs_post_tab_definitions/4]).

-define(BASE_URL, "/restapi").

%% @doc Deletes custom tab information.
%% Deletes the custom from the specified account.
-spec tab_delete_custom_tab(ctx:ctx(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
tab_delete_custom_tab(Ctx, AccountId, CustomTabId) ->
    tab_delete_custom_tab(Ctx, AccountId, CustomTabId, #{}).

-spec tab_delete_custom_tab(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
tab_delete_custom_tab(Ctx, AccountId, CustomTabId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/tab_definitions/", CustomTabId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets custom tab information.
%% Retrieves information about the requested custom tab on the specified account.
-spec tab_get_custom_tab(ctx:ctx(), binary(), binary()) -> {ok, swagger_custom_tabs:swagger_custom_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
tab_get_custom_tab(Ctx, AccountId, CustomTabId) ->
    tab_get_custom_tab(Ctx, AccountId, CustomTabId, #{}).

-spec tab_get_custom_tab(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_custom_tabs:swagger_custom_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
tab_get_custom_tab(Ctx, AccountId, CustomTabId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/tab_definitions/", CustomTabId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates custom tab information.  
%% Updates the information in a custom tab for the specified account.
-spec tab_put_custom_tab(ctx:ctx(), binary(), binary()) -> {ok, swagger_custom_tabs:swagger_custom_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
tab_put_custom_tab(Ctx, AccountId, CustomTabId) ->
    tab_put_custom_tab(Ctx, AccountId, CustomTabId, #{}).

-spec tab_put_custom_tab(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_custom_tabs:swagger_custom_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
tab_put_custom_tab(Ctx, AccountId, CustomTabId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/tab_definitions/", CustomTabId, ""],
    QS = [],
    Headers = [],
    Body1 = CustomTabs,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets a list of all account tabs.
%% Retrieves a list of all tabs associated with the account.
-spec tabs_get_tab_definitions(ctx:ctx(), binary()) -> {ok, swagger_tab_metadata_list:swagger_tab_metadata_list(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
tabs_get_tab_definitions(Ctx, AccountId) ->
    tabs_get_tab_definitions(Ctx, AccountId, #{}).

-spec tabs_get_tab_definitions(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_tab_metadata_list:swagger_tab_metadata_list(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
tabs_get_tab_definitions(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/tab_definitions"],
    QS = lists:flatten([])++swagger_utils:optional_params(['custom_tab_only'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Creates a custom tab.
%% Creates a tab with pre-defined properties, such as a text tab with a certain font type and validation pattern. Users can access the custom tabs when sending documents through the DocuSign web application.  Custom tabs can be created for approve, checkbox, company, date, date signed, decline, email, email address, envelope ID, first name, formula, full name, initial here, last name, list, note, number, radio, sign here, signer attachment, SSN, text, title, and zip tabs.
-spec tabs_post_tab_definitions(ctx:ctx(), binary()) -> {ok, swagger_custom_tabs:swagger_custom_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
tabs_post_tab_definitions(Ctx, AccountId) ->
    tabs_post_tab_definitions(Ctx, AccountId, #{}).

-spec tabs_post_tab_definitions(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_custom_tabs:swagger_custom_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
tabs_post_tab_definitions(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/tab_definitions"],
    QS = [],
    Headers = [],
    Body1 = CustomTabs,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


