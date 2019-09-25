-module(swagger_document_responsive_html_preview_api).

-export([responsive_html_post_document_responsive_html_preview/5, responsive_html_post_document_responsive_html_preview/6]).

-define(BASE_URL, "/restapi").

%% @doc 
-spec responsive_html_post_document_responsive_html_preview(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_document_responsive_html_preview:swagger_document_responsive_html_preview(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
responsive_html_post_document_responsive_html_preview(Ctx, AccountId, DocumentId, EnvelopeId) ->
    responsive_html_post_document_responsive_html_preview(Ctx, AccountId, DocumentId, EnvelopeId, #{}).

-spec responsive_html_post_document_responsive_html_preview(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_document_responsive_html_preview:swagger_document_responsive_html_preview(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
responsive_html_post_document_responsive_html_preview(Ctx, AccountId, DocumentId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/documents/", DocumentId, "/responsive_html_preview"],
    QS = [],
    Headers = [],
    Body1 = DocumentHtmlDefinition,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


