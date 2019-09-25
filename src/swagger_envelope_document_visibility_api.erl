-module(swagger_envelope_document_visibility_api).

-export([recipients_get_recipient_document_visibility/4, recipients_get_recipient_document_visibility/5,
         recipients_put_recipient_document_visibility/5, recipients_put_recipient_document_visibility/6,
         recipients_put_recipients_document_visibility/4, recipients_put_recipients_document_visibility/5]).

-define(BASE_URL, "/restapi").

%% @doc Returns document visibility for a recipient
%% This method returns information about document visibility for a recipient.
-spec recipients_get_recipient_document_visibility(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_envelope_document_visibility:swagger_envelope_document_visibility(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_get_recipient_document_visibility(Ctx, AccountId, EnvelopeId, RecipientId) ->
    recipients_get_recipient_document_visibility(Ctx, AccountId, EnvelopeId, RecipientId, #{}).

-spec recipients_get_recipient_document_visibility(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_document_visibility:swagger_envelope_document_visibility(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_get_recipient_document_visibility(Ctx, AccountId, EnvelopeId, RecipientId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/recipients/", RecipientId, "/document_visibility"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates document visibility for a recipient
%% This method updates document visibility for a recipient.  **Note**: A document cannot be hidden from a recipient if the recipient has tabs assigned to them on the document. Carbon Copy, Certified Delivery (Needs to Sign), Editor, and Agent recipients can always see all documents.
-spec recipients_put_recipient_document_visibility(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_envelope_document_visibility:swagger_envelope_document_visibility(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_put_recipient_document_visibility(Ctx, AccountId, EnvelopeId, RecipientId) ->
    recipients_put_recipient_document_visibility(Ctx, AccountId, EnvelopeId, RecipientId, #{}).

-spec recipients_put_recipient_document_visibility(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_document_visibility:swagger_envelope_document_visibility(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_put_recipient_document_visibility(Ctx, AccountId, EnvelopeId, RecipientId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/recipients/", RecipientId, "/document_visibility"],
    QS = [],
    Headers = [],
    Body1 = EnvelopeDocumentVisibility,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates document visibility for recipients
%% This method updates document visibility for one or more recipients based on the `recipientId` and `visible` values that you include in the request body.  **Note**: A document cannot be hidden from a recipient if the recipient has tabs assigned to them on the document. Carbon Copy, Certified Delivery (Needs to Sign), Editor, and Agent recipients can always see all documents.
-spec recipients_put_recipients_document_visibility(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_document_visibility:swagger_envelope_document_visibility(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_put_recipients_document_visibility(Ctx, AccountId, EnvelopeId) ->
    recipients_put_recipients_document_visibility(Ctx, AccountId, EnvelopeId, #{}).

-spec recipients_put_recipients_document_visibility(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_document_visibility:swagger_envelope_document_visibility(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_put_recipients_document_visibility(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/recipients/document_visibility"],
    QS = [],
    Headers = [],
    Body1 = EnvelopeDocumentVisibility,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


