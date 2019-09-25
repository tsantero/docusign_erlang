-module(swagger_envelope_document_tabs_api).

-export([tabs_delete_document_tabs/5, tabs_delete_document_tabs/6,
         tabs_get_document_tabs/4, tabs_get_document_tabs/5,
         tabs_get_page_tabs/5, tabs_get_page_tabs/6,
         tabs_post_document_tabs/5, tabs_post_document_tabs/6,
         tabs_put_document_tabs/5, tabs_put_document_tabs/6]).

-define(BASE_URL, "/restapi").

%% @doc 
-spec tabs_delete_document_tabs(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_template_recipient_tabs:swagger_template_recipient_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
tabs_delete_document_tabs(Ctx, AccountId, DocumentId, EnvelopeId) ->
    tabs_delete_document_tabs(Ctx, AccountId, DocumentId, EnvelopeId, #{}).

-spec tabs_delete_document_tabs(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_template_recipient_tabs:swagger_template_recipient_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
tabs_delete_document_tabs(Ctx, AccountId, DocumentId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/documents/", DocumentId, "/tabs"],
    QS = [],
    Headers = [],
    Body1 = TemplateRecipientTabs,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Returns the tabs on a document.
%% This method returns the tabs associated with a document.
-spec tabs_get_document_tabs(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_envelope_document_tabs:swagger_envelope_document_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
tabs_get_document_tabs(Ctx, AccountId, DocumentId, EnvelopeId) ->
    tabs_get_document_tabs(Ctx, AccountId, DocumentId, EnvelopeId, #{}).

-spec tabs_get_document_tabs(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_document_tabs:swagger_envelope_document_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
tabs_get_document_tabs(Ctx, AccountId, DocumentId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/documents/", DocumentId, "/tabs"],
    QS = lists:flatten([])++swagger_utils:optional_params(['page_numbers'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Returns tabs on the specified page.
-spec tabs_get_page_tabs(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, swagger_envelope_document_tabs:swagger_envelope_document_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
tabs_get_page_tabs(Ctx, AccountId, DocumentId, EnvelopeId, PageNumber) ->
    tabs_get_page_tabs(Ctx, AccountId, DocumentId, EnvelopeId, PageNumber, #{}).

-spec tabs_get_page_tabs(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_document_tabs:swagger_envelope_document_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
tabs_get_page_tabs(Ctx, AccountId, DocumentId, EnvelopeId, PageNumber, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/documents/", DocumentId, "/pages/", PageNumber, "/tabs"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
-spec tabs_post_document_tabs(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_template_recipient_tabs:swagger_template_recipient_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
tabs_post_document_tabs(Ctx, AccountId, DocumentId, EnvelopeId) ->
    tabs_post_document_tabs(Ctx, AccountId, DocumentId, EnvelopeId, #{}).

-spec tabs_post_document_tabs(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_template_recipient_tabs:swagger_template_recipient_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
tabs_post_document_tabs(Ctx, AccountId, DocumentId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/documents/", DocumentId, "/tabs"],
    QS = [],
    Headers = [],
    Body1 = TemplateRecipientTabs,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
-spec tabs_put_document_tabs(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_template_recipient_tabs:swagger_template_recipient_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
tabs_put_document_tabs(Ctx, AccountId, DocumentId, EnvelopeId) ->
    tabs_put_document_tabs(Ctx, AccountId, DocumentId, EnvelopeId, #{}).

-spec tabs_put_document_tabs(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_template_recipient_tabs:swagger_template_recipient_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
tabs_put_document_tabs(Ctx, AccountId, DocumentId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/documents/", DocumentId, "/tabs"],
    QS = [],
    Headers = [],
    Body1 = TemplateRecipientTabs,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


