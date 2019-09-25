-module(swagger_account_consumer_disclosures_api).

-export([consumer_disclosure_get_consumer_disclosure/2, consumer_disclosure_get_consumer_disclosure/3,
         consumer_disclosure_get_consumer_disclosure_lang_code/3, consumer_disclosure_get_consumer_disclosure_lang_code/4,
         consumer_disclosure_put_consumer_disclosure/4, consumer_disclosure_put_consumer_disclosure/5]).

-define(BASE_URL, "/restapi").

%% @doc Gets the Electronic Record and Signature Disclosure for the account.
%% Retrieves the Electronic Record and Signature Disclosure, with HTML formatting, associated with the account. You can use an optional query string to set the language for the disclosure.
-spec consumer_disclosure_get_consumer_disclosure(ctx:ctx(), binary()) -> {ok, swagger_account_consumer_disclosures:swagger_account_consumer_disclosures(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
consumer_disclosure_get_consumer_disclosure(Ctx, AccountId) ->
    consumer_disclosure_get_consumer_disclosure(Ctx, AccountId, #{}).

-spec consumer_disclosure_get_consumer_disclosure(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_account_consumer_disclosures:swagger_account_consumer_disclosures(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
consumer_disclosure_get_consumer_disclosure(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/consumer_disclosure"],
    QS = lists:flatten([])++swagger_utils:optional_params(['langCode'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets the Electronic Record and Signature Disclosure.
%% Retrieves the Electronic Record and Signature Disclosure, with HTML formatting, for the requested envelope recipient. This might be different than the current account disclosure depending on account settings, such as branding, and when the account disclosure was last updated. An optional query string can be included to return the language for the disclosure.  
-spec consumer_disclosure_get_consumer_disclosure_lang_code(ctx:ctx(), binary(), binary()) -> {ok, swagger_account_consumer_disclosures:swagger_account_consumer_disclosures(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
consumer_disclosure_get_consumer_disclosure_lang_code(Ctx, AccountId, LangCode) ->
    consumer_disclosure_get_consumer_disclosure_lang_code(Ctx, AccountId, LangCode, #{}).

-spec consumer_disclosure_get_consumer_disclosure_lang_code(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_account_consumer_disclosures:swagger_account_consumer_disclosures(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
consumer_disclosure_get_consumer_disclosure_lang_code(Ctx, AccountId, LangCode, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/consumer_disclosure/", LangCode, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update Consumer Disclosure.
-spec consumer_disclosure_put_consumer_disclosure(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_consumer_disclosures:swagger_envelope_consumer_disclosures(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
consumer_disclosure_put_consumer_disclosure(Ctx, AccountId, LangCode) ->
    consumer_disclosure_put_consumer_disclosure(Ctx, AccountId, LangCode, #{}).

-spec consumer_disclosure_put_consumer_disclosure(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_consumer_disclosures:swagger_envelope_consumer_disclosures(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
consumer_disclosure_put_consumer_disclosure(Ctx, AccountId, LangCode, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/consumer_disclosure/", LangCode, ""],
    QS = lists:flatten([])++swagger_utils:optional_params(['include_metadata'], _OptionalParams),
    Headers = [],
    Body1 = EnvelopeConsumerDisclosures,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


