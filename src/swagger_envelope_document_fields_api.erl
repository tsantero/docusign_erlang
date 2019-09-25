-module(swagger_envelope_document_fields_api).

-export([document_fields_delete_document_fields/5, document_fields_delete_document_fields/6,
         document_fields_get_document_fields/4, document_fields_get_document_fields/5,
         document_fields_post_document_fields/5, document_fields_post_document_fields/6,
         document_fields_put_document_fields/5, document_fields_put_document_fields/6]).

-define(BASE_URL, "/restapi").

%% @doc Deletes custom document fields from an existing envelope document.
%% Deletes custom document fields from an existing envelope document.
-spec document_fields_delete_document_fields(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_envelope_document_fields:swagger_envelope_document_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
document_fields_delete_document_fields(Ctx, AccountId, DocumentId, EnvelopeId) ->
    document_fields_delete_document_fields(Ctx, AccountId, DocumentId, EnvelopeId, #{}).

-spec document_fields_delete_document_fields(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_document_fields:swagger_envelope_document_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
document_fields_delete_document_fields(Ctx, AccountId, DocumentId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/documents/", DocumentId, "/fields"],
    QS = [],
    Headers = [],
    Body1 = EnvelopeDocumentFields,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets the custom document fields from an  existing envelope document.
%% Retrieves the custom document field information from an existing envelope document.
-spec document_fields_get_document_fields(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_envelope_document_fields:swagger_envelope_document_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
document_fields_get_document_fields(Ctx, AccountId, DocumentId, EnvelopeId) ->
    document_fields_get_document_fields(Ctx, AccountId, DocumentId, EnvelopeId, #{}).

-spec document_fields_get_document_fields(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_document_fields:swagger_envelope_document_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
document_fields_get_document_fields(Ctx, AccountId, DocumentId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/documents/", DocumentId, "/fields"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Creates custom document fields in an existing envelope document.
%% Creates custom document fields in an existing envelope document.
-spec document_fields_post_document_fields(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_envelope_document_fields:swagger_envelope_document_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
document_fields_post_document_fields(Ctx, AccountId, DocumentId, EnvelopeId) ->
    document_fields_post_document_fields(Ctx, AccountId, DocumentId, EnvelopeId, #{}).

-spec document_fields_post_document_fields(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_document_fields:swagger_envelope_document_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
document_fields_post_document_fields(Ctx, AccountId, DocumentId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/documents/", DocumentId, "/fields"],
    QS = [],
    Headers = [],
    Body1 = EnvelopeDocumentFields,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates existing custom document fields in an existing envelope document.
%% Updates existing custom document fields in an existing envelope document.
-spec document_fields_put_document_fields(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_envelope_document_fields:swagger_envelope_document_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
document_fields_put_document_fields(Ctx, AccountId, DocumentId, EnvelopeId) ->
    document_fields_put_document_fields(Ctx, AccountId, DocumentId, EnvelopeId, #{}).

-spec document_fields_put_document_fields(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_document_fields:swagger_envelope_document_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
document_fields_put_document_fields(Ctx, AccountId, DocumentId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/documents/", DocumentId, "/fields"],
    QS = [],
    Headers = [],
    Body1 = EnvelopeDocumentFields,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


