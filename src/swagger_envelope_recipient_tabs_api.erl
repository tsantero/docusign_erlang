-module(swagger_envelope_recipient_tabs_api).

-export([recipients_delete_recipient_tabs/5, recipients_delete_recipient_tabs/6,
         recipients_get_recipient_tabs/4, recipients_get_recipient_tabs/5,
         recipients_post_recipient_tabs/5, recipients_post_recipient_tabs/6,
         recipients_put_recipient_tabs/5, recipients_put_recipient_tabs/6]).

-define(BASE_URL, "/restapi").

%% @doc Deletes the tabs associated with a recipient.
%% Deletes one or more tabs associated with a recipient in a draft envelope.
-spec recipients_delete_recipient_tabs(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_envelope_recipient_tabs:swagger_envelope_recipient_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_delete_recipient_tabs(Ctx, AccountId, EnvelopeId, RecipientId) ->
    recipients_delete_recipient_tabs(Ctx, AccountId, EnvelopeId, RecipientId, #{}).

-spec recipients_delete_recipient_tabs(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_recipient_tabs:swagger_envelope_recipient_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_delete_recipient_tabs(Ctx, AccountId, EnvelopeId, RecipientId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/recipients/", RecipientId, "/tabs"],
    QS = [],
    Headers = [],
    Body1 = EnvelopeRecipientTabs,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets the tabs information for a signer or sign-in-person recipient in an envelope.
%% Retrieves information about the tabs associated with a recipient. You can make a single API call to get all the tab values and information from a given, completed envelope in addition to draft ones.  Tab values can be retrieved by using the [EnvelopeRecipients:list method](https://developers.docusign.com/esign-rest-api/reference/Envelopes/EnvelopeRecipients/list/) with query parameter include_tabs set to \"true\".
-spec recipients_get_recipient_tabs(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_envelope_recipient_tabs:swagger_envelope_recipient_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_get_recipient_tabs(Ctx, AccountId, EnvelopeId, RecipientId) ->
    recipients_get_recipient_tabs(Ctx, AccountId, EnvelopeId, RecipientId, #{}).

-spec recipients_get_recipient_tabs(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_recipient_tabs:swagger_envelope_recipient_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_get_recipient_tabs(Ctx, AccountId, EnvelopeId, RecipientId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/recipients/", RecipientId, "/tabs"],
    QS = lists:flatten([])++swagger_utils:optional_params(['include_anchor_tab_locations', 'include_metadata'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Adds tabs for a recipient.
%% Adds one or more tabs for a recipient.
-spec recipients_post_recipient_tabs(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_envelope_recipient_tabs:swagger_envelope_recipient_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_post_recipient_tabs(Ctx, AccountId, EnvelopeId, RecipientId) ->
    recipients_post_recipient_tabs(Ctx, AccountId, EnvelopeId, RecipientId, #{}).

-spec recipients_post_recipient_tabs(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_recipient_tabs:swagger_envelope_recipient_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_post_recipient_tabs(Ctx, AccountId, EnvelopeId, RecipientId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/recipients/", RecipientId, "/tabs"],
    QS = [],
    Headers = [],
    Body1 = EnvelopeRecipientTabs,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates the tabs for a recipient.  
%% Updates one or more tabs for a recipient in a draft envelope.  **Note**: The Update method can be used if the envelope is not yet complete. To update an existing tab, the request body must include the `tabId`.
-spec recipients_put_recipient_tabs(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_envelope_recipient_tabs:swagger_envelope_recipient_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_put_recipient_tabs(Ctx, AccountId, EnvelopeId, RecipientId) ->
    recipients_put_recipient_tabs(Ctx, AccountId, EnvelopeId, RecipientId, #{}).

-spec recipients_put_recipient_tabs(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_recipient_tabs:swagger_envelope_recipient_tabs(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_put_recipient_tabs(Ctx, AccountId, EnvelopeId, RecipientId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/recipients/", RecipientId, "/tabs"],
    QS = [],
    Headers = [],
    Body1 = EnvelopeRecipientTabs,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


