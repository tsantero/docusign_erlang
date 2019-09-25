-module(swagger_envelope_html_definitions_api).

-export([responsive_html_get_envelope_html_definitions/3, responsive_html_get_envelope_html_definitions/4]).

-define(BASE_URL, "/restapi").

%% @doc 
-spec responsive_html_get_envelope_html_definitions(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_document_html_definitions:swagger_envelope_document_html_definitions(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
responsive_html_get_envelope_html_definitions(Ctx, AccountId, EnvelopeId) ->
    responsive_html_get_envelope_html_definitions(Ctx, AccountId, EnvelopeId, #{}).

-spec responsive_html_get_envelope_html_definitions(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_document_html_definitions:swagger_envelope_document_html_definitions(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
responsive_html_get_envelope_html_definitions(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/html_definitions"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


