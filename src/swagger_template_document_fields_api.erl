-module(swagger_template_document_fields_api).

-export([document_fields_delete_template_document_fields/5, document_fields_delete_template_document_fields/6,
         document_fields_get_template_document_fields/4, document_fields_get_template_document_fields/5,
         document_fields_post_template_document_fields/5, document_fields_post_template_document_fields/6,
         document_fields_put_template_document_fields/5, document_fields_put_template_document_fields/6]).

-define(BASE_URL, "/restapi").

%% @doc Deletes custom document fields from an existing template document.
%% Deletes custom document fields from an existing template document.
-spec document_fields_delete_template_document_fields(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_template_document_fields:swagger_template_document_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
document_fields_delete_template_document_fields(Ctx, AccountId, DocumentId, TemplateId) ->
    document_fields_delete_template_document_fields(Ctx, AccountId, DocumentId, TemplateId, #{}).

-spec document_fields_delete_template_document_fields(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_template_document_fields:swagger_template_document_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
document_fields_delete_template_document_fields(Ctx, AccountId, DocumentId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/documents/", DocumentId, "/fields"],
    QS = [],
    Headers = [],
    Body1 = TemplateDocumentFields,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets the custom document fields for a an existing template document.
%% This method retrieves the custom document fields for an existing template document.
-spec document_fields_get_template_document_fields(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_template_document_fields:swagger_template_document_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
document_fields_get_template_document_fields(Ctx, AccountId, DocumentId, TemplateId) ->
    document_fields_get_template_document_fields(Ctx, AccountId, DocumentId, TemplateId, #{}).

-spec document_fields_get_template_document_fields(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_template_document_fields:swagger_template_document_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
document_fields_get_template_document_fields(Ctx, AccountId, DocumentId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/documents/", DocumentId, "/fields"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Creates custom document fields in an existing template document.
%% Creates custom document fields in an existing template document.
-spec document_fields_post_template_document_fields(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_template_document_fields:swagger_template_document_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
document_fields_post_template_document_fields(Ctx, AccountId, DocumentId, TemplateId) ->
    document_fields_post_template_document_fields(Ctx, AccountId, DocumentId, TemplateId, #{}).

-spec document_fields_post_template_document_fields(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_template_document_fields:swagger_template_document_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
document_fields_post_template_document_fields(Ctx, AccountId, DocumentId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/documents/", DocumentId, "/fields"],
    QS = [],
    Headers = [],
    Body1 = TemplateDocumentFields,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates existing custom document fields in an existing template document.
%% Updates existing custom document fields in an existing template document.
-spec document_fields_put_template_document_fields(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_template_document_fields:swagger_template_document_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
document_fields_put_template_document_fields(Ctx, AccountId, DocumentId, TemplateId) ->
    document_fields_put_template_document_fields(Ctx, AccountId, DocumentId, TemplateId, #{}).

-spec document_fields_put_template_document_fields(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_template_document_fields:swagger_template_document_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
document_fields_put_template_document_fields(Ctx, AccountId, DocumentId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/documents/", DocumentId, "/fields"],
    QS = [],
    Headers = [],
    Body1 = TemplateDocumentFields,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


