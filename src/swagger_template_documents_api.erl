-module(swagger_template_documents_api).

-export([documents_delete_template_documents/4, documents_delete_template_documents/5,
         documents_get_template_document/4, documents_get_template_document/5,
         documents_get_template_documents/3, documents_get_template_documents/4,
         documents_put_template_document/5, documents_put_template_document/6,
         documents_put_template_documents/4, documents_put_template_documents/5]).

-define(BASE_URL, "/restapi").

%% @doc Deletes documents from a template.
%% Deletes one or more documents from an existing template.  To delete a document, use only the relevant parts of the [`envelopeDefinition`](#envelopeDefinition). For example, this request body specifies that you want to delete the document whose `documentId` is \"1\".   ```text {   \"documents\": [     {       \"documentId\": \"1\"     }   ] } ```
-spec documents_delete_template_documents(ctx:ctx(), binary(), binary()) -> {ok, swagger_template_documents:swagger_template_documents(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
documents_delete_template_documents(Ctx, AccountId, TemplateId) ->
    documents_delete_template_documents(Ctx, AccountId, TemplateId, #{}).

-spec documents_delete_template_documents(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_template_documents:swagger_template_documents(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
documents_delete_template_documents(Ctx, AccountId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/documents"],
    QS = [],
    Headers = [],
    Body1 = EnvelopeDefinition,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets PDF documents from a template.
%% Retrieves one or more PDF documents from the specified template.  You can specify the ID of the document to retrieve or can specify `combined` to retrieve all documents in the template as one pdf.
-spec documents_get_template_document(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
documents_get_template_document(Ctx, AccountId, DocumentId, TemplateId) ->
    documents_get_template_document(Ctx, AccountId, DocumentId, TemplateId, #{}).

-spec documents_get_template_document(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
documents_get_template_document(Ctx, AccountId, DocumentId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/documents/", DocumentId, ""],
    QS = lists:flatten([])++swagger_utils:optional_params(['encrypt', 'show_changes'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets a list of documents associated with a template.
%% Retrieves a list of documents associated with the specified template.
-spec documents_get_template_documents(ctx:ctx(), binary(), binary()) -> {ok, swagger_template_documents:swagger_template_documents(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
documents_get_template_documents(Ctx, AccountId, TemplateId) ->
    documents_get_template_documents(Ctx, AccountId, TemplateId, #{}).

-spec documents_get_template_documents(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_template_documents:swagger_template_documents(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
documents_get_template_documents(Ctx, AccountId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/documents"],
    QS = lists:flatten([])++swagger_utils:optional_params(['include_tabs'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Adds a document to a template document.
%% Adds the specified document to an existing template document.
-spec documents_put_template_document(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_envelope_document:swagger_envelope_document(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
documents_put_template_document(Ctx, AccountId, DocumentId, TemplateId) ->
    documents_put_template_document(Ctx, AccountId, DocumentId, TemplateId, #{}).

-spec documents_put_template_document(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_document:swagger_envelope_document(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
documents_put_template_document(Ctx, AccountId, DocumentId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/documents/", DocumentId, ""],
    QS = lists:flatten([])++swagger_utils:optional_params(['is_envelope_definition'], _OptionalParams),
    Headers = [],
    Body1 = EnvelopeDefinition,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Adds documents to a template document.
%% Adds one or more documents to an existing template document.
-spec documents_put_template_documents(ctx:ctx(), binary(), binary()) -> {ok, swagger_template_documents:swagger_template_documents(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
documents_put_template_documents(Ctx, AccountId, TemplateId) ->
    documents_put_template_documents(Ctx, AccountId, TemplateId, #{}).

-spec documents_put_template_documents(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_template_documents:swagger_template_documents(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
documents_put_template_documents(Ctx, AccountId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/documents"],
    QS = [],
    Headers = [],
    Body1 = EnvelopeDefinition,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


