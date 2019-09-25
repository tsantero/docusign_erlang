-module(swagger_envelope_recipients_api).

-export([recipients_delete_recipient/4, recipients_delete_recipient/5,
         recipients_delete_recipients/4, recipients_delete_recipients/5,
         recipients_get_recipients/3, recipients_get_recipients/4,
         recipients_post_recipients/4, recipients_post_recipients/5,
         recipients_put_recipients/4, recipients_put_recipients/5]).

-define(BASE_URL, "/restapi").

%% @doc Deletes a recipient from an envelope.
%% Deletes a recipient from a `draft` or `sent` envelope.  If the envelope is \"In Process\" (has been sent and is not completed or voided), recipients that have completed their actions cannot be deleted.
-spec recipients_delete_recipient(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_envelope_recipients:swagger_envelope_recipients(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_delete_recipient(Ctx, AccountId, EnvelopeId, RecipientId) ->
    recipients_delete_recipient(Ctx, AccountId, EnvelopeId, RecipientId, #{}).

-spec recipients_delete_recipient(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_recipients:swagger_envelope_recipients(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_delete_recipient(Ctx, AccountId, EnvelopeId, RecipientId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/recipients/", RecipientId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Deletes recipients from an envelope.
%% Deletes one or more recipients from a draft or sent envelope. List the recipients that you want to delete in the body of the request. This method uses the `recipientId` as the key for deleting recipients.  If the envelope is `In Process`, meaning that it has been sent and has not been completed or voided, recipients that have completed their actions cannot be deleted.
-spec recipients_delete_recipients(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_recipients:swagger_envelope_recipients(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_delete_recipients(Ctx, AccountId, EnvelopeId) ->
    recipients_delete_recipients(Ctx, AccountId, EnvelopeId, #{}).

-spec recipients_delete_recipients(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_recipients:swagger_envelope_recipients(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_delete_recipients(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/recipients"],
    QS = [],
    Headers = [],
    Body1 = EnvelopeRecipients,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets the status of recipients for an envelope.
%% Retrieves the status of all recipients in a single envelope and identifies the current recipient in the routing list. This method can also be used to retrieve the tab values.  The `currentRoutingOrder` property of the response contains the `routingOrder` value of the current recipient indicating that the envelope has been sent to the recipient, but the recipient has not completed their actions.
-spec recipients_get_recipients(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_recipients:swagger_envelope_recipients(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_get_recipients(Ctx, AccountId, EnvelopeId) ->
    recipients_get_recipients(Ctx, AccountId, EnvelopeId, #{}).

-spec recipients_get_recipients(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_recipients:swagger_envelope_recipients(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_get_recipients(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/recipients"],
    QS = lists:flatten([])++swagger_utils:optional_params(['include_anchor_tab_locations', 'include_extended', 'include_metadata', 'include_tabs'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Adds one or more recipients to an envelope.
%% Adds one or more recipients to an envelope.  For an in process envelope, one that has been sent and has not been completed or voided, an email is sent to a new recipient when they are reached in the routing order. If the new recipient's routing order is before or the same as the envelope's next recipient, an email is only sent if the optional `resend_envelope` query string is set to **true**.
-spec recipients_post_recipients(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_recipients:swagger_envelope_recipients(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_post_recipients(Ctx, AccountId, EnvelopeId) ->
    recipients_post_recipients(Ctx, AccountId, EnvelopeId, #{}).

-spec recipients_post_recipients(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_recipients:swagger_envelope_recipients(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_post_recipients(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/recipients"],
    QS = lists:flatten([])++swagger_utils:optional_params(['resend_envelope'], _OptionalParams),
    Headers = [],
    Body1 = EnvelopeRecipients,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates recipients in a draft envelope or corrects recipient information for an in process envelope.
%% Updates recipients in a draft envelope or corrects recipient information for an in process envelope.   For draft envelopes, you can edit the following properties: `email`, `userName`, `routingOrder`, `faxNumber`, `deliveryMethod`, `accessCode`, and `requireIdLookup`.  Once an envelope has been sent, you can only edit: `email`, `userName`, `signerName`, `signingGroupId`, `routingOrder`, `faxNumber`, and `deliveryMethod`. You can also select to resend an envelope by using the `resend_envelope` option.  If you send information for a recipient that does not already exist in a draft envelope, the recipient is added to the envelope (similar to the POST).
-spec recipients_put_recipients(ctx:ctx(), binary(), binary()) -> {ok, swagger_recipients_update_summary:swagger_recipients_update_summary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_put_recipients(Ctx, AccountId, EnvelopeId) ->
    recipients_put_recipients(Ctx, AccountId, EnvelopeId, #{}).

-spec recipients_put_recipients(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_recipients_update_summary:swagger_recipients_update_summary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_put_recipients(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/recipients"],
    QS = lists:flatten([])++swagger_utils:optional_params(['combine_same_order_recipients', 'offline_signing', 'resend_envelope'], _OptionalParams),
    Headers = [],
    Body1 = EnvelopeRecipients,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


