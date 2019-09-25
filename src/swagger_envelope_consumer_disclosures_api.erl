-module(swagger_envelope_consumer_disclosures_api).

-export([consumer_disclosure_get_consumer_disclosure_envelope_id_recipient_id/4, consumer_disclosure_get_consumer_disclosure_envelope_id_recipient_id/5,
         consumer_disclosure_get_consumer_disclosure_envelope_id_recipient_id_lang_code/5, consumer_disclosure_get_consumer_disclosure_envelope_id_recipient_id_lang_code/6]).

-define(BASE_URL, "/restapi").

%% @doc Gets the Electronic Record and Signature Disclosure associated with the account.
%% Retrieves the Electronic Record and Signature Disclosure, with html formatting, associated with the account. You can use an optional query string to set the language for the disclosure.
-spec consumer_disclosure_get_consumer_disclosure_envelope_id_recipient_id(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_envelope_consumer_disclosures:swagger_envelope_consumer_disclosures(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
consumer_disclosure_get_consumer_disclosure_envelope_id_recipient_id(Ctx, AccountId, EnvelopeId, RecipientId) ->
    consumer_disclosure_get_consumer_disclosure_envelope_id_recipient_id(Ctx, AccountId, EnvelopeId, RecipientId, #{}).

-spec consumer_disclosure_get_consumer_disclosure_envelope_id_recipient_id(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_consumer_disclosures:swagger_envelope_consumer_disclosures(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
consumer_disclosure_get_consumer_disclosure_envelope_id_recipient_id(Ctx, AccountId, EnvelopeId, RecipientId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/recipients/", RecipientId, "/consumer_disclosure"],
    QS = lists:flatten([])++swagger_utils:optional_params(['langCode'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Reserved: Gets the Electronic Record and Signature Disclosure associated with the account.
%% Reserved: Retrieves the Electronic Record and Signature Disclosure, with HTML formatting, associated with the account.
-spec consumer_disclosure_get_consumer_disclosure_envelope_id_recipient_id_lang_code(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, swagger_envelope_consumer_disclosures:swagger_envelope_consumer_disclosures(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
consumer_disclosure_get_consumer_disclosure_envelope_id_recipient_id_lang_code(Ctx, AccountId, EnvelopeId, LangCode, RecipientId) ->
    consumer_disclosure_get_consumer_disclosure_envelope_id_recipient_id_lang_code(Ctx, AccountId, EnvelopeId, LangCode, RecipientId, #{}).

-spec consumer_disclosure_get_consumer_disclosure_envelope_id_recipient_id_lang_code(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_consumer_disclosures:swagger_envelope_consumer_disclosures(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
consumer_disclosure_get_consumer_disclosure_envelope_id_recipient_id_lang_code(Ctx, AccountId, EnvelopeId, LangCode, RecipientId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/recipients/", RecipientId, "/consumer_disclosure/", LangCode, ""],
    QS = lists:flatten([])++swagger_utils:optional_params(['langCode'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


