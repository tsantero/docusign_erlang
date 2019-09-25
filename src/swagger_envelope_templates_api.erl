-module(swagger_envelope_templates_api).

-export([templates_delete_document_templates/5, templates_delete_document_templates/6,
         templates_get_document_templates/4, templates_get_document_templates/5,
         templates_get_envelope_templates/3, templates_get_envelope_templates/4,
         templates_post_document_templates/5, templates_post_document_templates/6,
         templates_post_envelope_templates/4, templates_post_envelope_templates/5]).

-define(BASE_URL, "/restapi").

%% @doc Deletes a template from a document in an existing envelope.
%% Deletes the specified template from a document in an existing envelope.
-spec templates_delete_document_templates(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
templates_delete_document_templates(Ctx, AccountId, DocumentId, EnvelopeId, TemplateId) ->
    templates_delete_document_templates(Ctx, AccountId, DocumentId, EnvelopeId, TemplateId, #{}).

-spec templates_delete_document_templates(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
templates_delete_document_templates(Ctx, AccountId, DocumentId, EnvelopeId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/documents/", DocumentId, "/templates/", TemplateId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets the templates associated with a document in an existing envelope.
%% Retrieves the templates associated with a document in the specified envelope.
-spec templates_get_document_templates(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_envelope_templates:swagger_envelope_templates(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
templates_get_document_templates(Ctx, AccountId, DocumentId, EnvelopeId) ->
    templates_get_document_templates(Ctx, AccountId, DocumentId, EnvelopeId, #{}).

-spec templates_get_document_templates(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_templates:swagger_envelope_templates(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
templates_get_document_templates(Ctx, AccountId, DocumentId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/documents/", DocumentId, "/templates"],
    QS = lists:flatten([])++swagger_utils:optional_params(['include'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get List of Templates used in an Envelope
%% This returns a list of the server-side templates, their name and ID, used in an envelope. 
-spec templates_get_envelope_templates(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_templates:swagger_envelope_templates(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
templates_get_envelope_templates(Ctx, AccountId, EnvelopeId) ->
    templates_get_envelope_templates(Ctx, AccountId, EnvelopeId, #{}).

-spec templates_get_envelope_templates(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_templates:swagger_envelope_templates(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
templates_get_envelope_templates(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/templates"],
    QS = lists:flatten([])++swagger_utils:optional_params(['include'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Adds templates to a document in an  envelope.
%% Adds templates to a document in the specified envelope.
-spec templates_post_document_templates(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_document_template_list:swagger_document_template_list(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
templates_post_document_templates(Ctx, AccountId, DocumentId, EnvelopeId) ->
    templates_post_document_templates(Ctx, AccountId, DocumentId, EnvelopeId, #{}).

-spec templates_post_document_templates(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_document_template_list:swagger_document_template_list(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
templates_post_document_templates(Ctx, AccountId, DocumentId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/documents/", DocumentId, "/templates"],
    QS = [],
    Headers = [],
    Body1 = DocumentTemplateList,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Adds templates to an envelope.
%% Adds templates to the specified envelope.
-spec templates_post_envelope_templates(ctx:ctx(), binary(), binary()) -> {ok, swagger_document_template_list:swagger_document_template_list(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
templates_post_envelope_templates(Ctx, AccountId, EnvelopeId) ->
    templates_post_envelope_templates(Ctx, AccountId, EnvelopeId, #{}).

-spec templates_post_envelope_templates(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_document_template_list:swagger_document_template_list(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
templates_post_envelope_templates(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/templates"],
    QS = [],
    Headers = [],
    Body1 = DocumentTemplateList,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


