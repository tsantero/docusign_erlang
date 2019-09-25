-module(swagger_envelope_transfer_rules_api).

-export([envelope_transfer_rules_delete_envelope_transfer_rules/3, envelope_transfer_rules_delete_envelope_transfer_rules/4,
         envelope_transfer_rules_get_envelope_transfer_rules/2, envelope_transfer_rules_get_envelope_transfer_rules/3,
         envelope_transfer_rules_post_envelope_transfer_rules/3, envelope_transfer_rules_post_envelope_transfer_rules/4,
         envelope_transfer_rules_put_envelope_transfer_rule/4, envelope_transfer_rules_put_envelope_transfer_rule/5,
         envelope_transfer_rules_put_envelope_transfer_rules/3, envelope_transfer_rules_put_envelope_transfer_rules/4]).

-define(BASE_URL, "/restapi").

%% @doc 
-spec envelope_transfer_rules_delete_envelope_transfer_rules(ctx:ctx(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
envelope_transfer_rules_delete_envelope_transfer_rules(Ctx, AccountId, EnvelopeTransferRuleId) ->
    envelope_transfer_rules_delete_envelope_transfer_rules(Ctx, AccountId, EnvelopeTransferRuleId, #{}).

-spec envelope_transfer_rules_delete_envelope_transfer_rules(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
envelope_transfer_rules_delete_envelope_transfer_rules(Ctx, AccountId, EnvelopeTransferRuleId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/transfer_rules/", EnvelopeTransferRuleId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
-spec envelope_transfer_rules_get_envelope_transfer_rules(ctx:ctx(), binary()) -> {ok, swagger_envelope_transfer_rules:swagger_envelope_transfer_rules(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
envelope_transfer_rules_get_envelope_transfer_rules(Ctx, AccountId) ->
    envelope_transfer_rules_get_envelope_transfer_rules(Ctx, AccountId, #{}).

-spec envelope_transfer_rules_get_envelope_transfer_rules(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_envelope_transfer_rules:swagger_envelope_transfer_rules(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
envelope_transfer_rules_get_envelope_transfer_rules(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/transfer_rules"],
    QS = lists:flatten([])++swagger_utils:optional_params(['count', 'start_position'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
-spec envelope_transfer_rules_post_envelope_transfer_rules(ctx:ctx(), binary()) -> {ok, swagger_envelope_transfer_rules:swagger_envelope_transfer_rules(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
envelope_transfer_rules_post_envelope_transfer_rules(Ctx, AccountId) ->
    envelope_transfer_rules_post_envelope_transfer_rules(Ctx, AccountId, #{}).

-spec envelope_transfer_rules_post_envelope_transfer_rules(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_envelope_transfer_rules:swagger_envelope_transfer_rules(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
envelope_transfer_rules_post_envelope_transfer_rules(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/transfer_rules"],
    QS = [],
    Headers = [],
    Body1 = EnvelopeTransferRuleRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
-spec envelope_transfer_rules_put_envelope_transfer_rule(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_transfer_rule:swagger_envelope_transfer_rule(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
envelope_transfer_rules_put_envelope_transfer_rule(Ctx, AccountId, EnvelopeTransferRuleId) ->
    envelope_transfer_rules_put_envelope_transfer_rule(Ctx, AccountId, EnvelopeTransferRuleId, #{}).

-spec envelope_transfer_rules_put_envelope_transfer_rule(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_transfer_rule:swagger_envelope_transfer_rule(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
envelope_transfer_rules_put_envelope_transfer_rule(Ctx, AccountId, EnvelopeTransferRuleId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/transfer_rules/", EnvelopeTransferRuleId, ""],
    QS = [],
    Headers = [],
    Body1 = EnvelopeTransferRule,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
-spec envelope_transfer_rules_put_envelope_transfer_rules(ctx:ctx(), binary()) -> {ok, swagger_envelope_transfer_rules:swagger_envelope_transfer_rules(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
envelope_transfer_rules_put_envelope_transfer_rules(Ctx, AccountId) ->
    envelope_transfer_rules_put_envelope_transfer_rules(Ctx, AccountId, #{}).

-spec envelope_transfer_rules_put_envelope_transfer_rules(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_envelope_transfer_rules:swagger_envelope_transfer_rules(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
envelope_transfer_rules_put_envelope_transfer_rules(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/transfer_rules"],
    QS = [],
    Headers = [],
    Body1 = EnvelopeTransferRules,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


