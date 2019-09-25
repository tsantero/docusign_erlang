-module(swagger_contacts_api).

-export([contacts_delete_contact_with_id/3, contacts_delete_contact_with_id/4,
         contacts_delete_contacts/3, contacts_delete_contacts/4,
         contacts_get_contact_by_id/3, contacts_get_contact_by_id/4,
         contacts_post_contacts/3, contacts_post_contacts/4,
         contacts_put_contacts/3, contacts_put_contacts/4]).

-define(BASE_URL, "/restapi").

%% @doc Replaces a particular contact associated with an account for the DocuSign service.
-spec contacts_delete_contact_with_id(ctx:ctx(), binary(), binary()) -> {ok, swagger_contact_update_response:swagger_contact_update_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
contacts_delete_contact_with_id(Ctx, AccountId, ContactId) ->
    contacts_delete_contact_with_id(Ctx, AccountId, ContactId, #{}).

-spec contacts_delete_contact_with_id(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_contact_update_response:swagger_contact_update_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
contacts_delete_contact_with_id(Ctx, AccountId, ContactId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/contacts/", ContactId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Delete contacts associated with an account for the DocuSign service.
-spec contacts_delete_contacts(ctx:ctx(), binary()) -> {ok, swagger_contact_update_response:swagger_contact_update_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
contacts_delete_contacts(Ctx, AccountId) ->
    contacts_delete_contacts(Ctx, AccountId, #{}).

-spec contacts_delete_contacts(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_contact_update_response:swagger_contact_update_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
contacts_delete_contacts(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/contacts"],
    QS = [],
    Headers = [],
    Body1 = ContactModRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets a particular contact associated with the user's account.
-spec contacts_get_contact_by_id(ctx:ctx(), binary(), binary()) -> {ok, swagger_contact_get_response:swagger_contact_get_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
contacts_get_contact_by_id(Ctx, AccountId, ContactId) ->
    contacts_get_contact_by_id(Ctx, AccountId, ContactId, #{}).

-spec contacts_get_contact_by_id(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_contact_get_response:swagger_contact_get_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
contacts_get_contact_by_id(Ctx, AccountId, ContactId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/contacts/", ContactId, ""],
    QS = lists:flatten([])++swagger_utils:optional_params(['cloud_provider'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Imports multiple new contacts into the contacts collection from CSV, JSON, or XML (based on content type).
-spec contacts_post_contacts(ctx:ctx(), binary()) -> {ok, swagger_contact_update_response:swagger_contact_update_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
contacts_post_contacts(Ctx, AccountId) ->
    contacts_post_contacts(Ctx, AccountId, #{}).

-spec contacts_post_contacts(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_contact_update_response:swagger_contact_update_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
contacts_post_contacts(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/contacts"],
    QS = [],
    Headers = [],
    Body1 = ContactModRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Replaces contacts associated with an account for the DocuSign service.
-spec contacts_put_contacts(ctx:ctx(), binary()) -> {ok, swagger_contact_update_response:swagger_contact_update_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
contacts_put_contacts(Ctx, AccountId) ->
    contacts_put_contacts(Ctx, AccountId, #{}).

-spec contacts_put_contacts(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_contact_update_response:swagger_contact_update_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
contacts_put_contacts(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/contacts"],
    QS = [],
    Headers = [],
    Body1 = ContactModRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


