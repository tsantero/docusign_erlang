-module(swagger_template_document_visibility_api).

-export([recipients_get_template_recipient_document_visibility/4, recipients_get_template_recipient_document_visibility/5,
         recipients_put_template_recipient_document_visibility/5, recipients_put_template_recipient_document_visibility/6,
         recipients_put_template_recipients_document_visibility/4, recipients_put_template_recipients_document_visibility/5]).

-define(BASE_URL, "/restapi").

%% @doc Returns document visibility for a template recipient
%% This method returns information about document visibility for a template recipient.
-spec recipients_get_template_recipient_document_visibility(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_envelope_document_visibility:swagger_envelope_document_visibility(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_get_template_recipient_document_visibility(Ctx, AccountId, RecipientId, TemplateId) ->
    recipients_get_template_recipient_document_visibility(Ctx, AccountId, RecipientId, TemplateId, #{}).

-spec recipients_get_template_recipient_document_visibility(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_document_visibility:swagger_envelope_document_visibility(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_get_template_recipient_document_visibility(Ctx, AccountId, RecipientId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/recipients/", RecipientId, "/document_visibility"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates document visibility for a template recipient
%% This method updates the document visibility for a template recipient.  **Note**: A document cannot be hidden from a recipient if the recipient has tabs assigned to them on the document. Carbon Copy, Certified Delivery (Needs to Sign), Editor, and Agent recipients can always see all documents.
-spec recipients_put_template_recipient_document_visibility(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_template_document_visibility:swagger_template_document_visibility(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_put_template_recipient_document_visibility(Ctx, AccountId, RecipientId, TemplateId) ->
    recipients_put_template_recipient_document_visibility(Ctx, AccountId, RecipientId, TemplateId, #{}).

-spec recipients_put_template_recipient_document_visibility(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_template_document_visibility:swagger_template_document_visibility(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_put_template_recipient_document_visibility(Ctx, AccountId, RecipientId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/recipients/", RecipientId, "/document_visibility"],
    QS = [],
    Headers = [],
    Body1 = TemplateDocumentVisibility,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates document visibility for template recipients
%% This method updates document visibility for one or more template recipients based on the `recipientId` and `visible` values that you include in the request body.   **Note**: A document cannot be hidden from a recipient if the recipient has tabs assigned to them on the document. Carbon Copy, Certified Delivery (Needs to Sign), Editor, and Agent recipients can always see all documents.
-spec recipients_put_template_recipients_document_visibility(ctx:ctx(), binary(), binary()) -> {ok, swagger_template_document_visibility:swagger_template_document_visibility(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_put_template_recipients_document_visibility(Ctx, AccountId, TemplateId) ->
    recipients_put_template_recipients_document_visibility(Ctx, AccountId, TemplateId, #{}).

-spec recipients_put_template_recipients_document_visibility(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_template_document_visibility:swagger_template_document_visibility(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_put_template_recipients_document_visibility(Ctx, AccountId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/recipients/document_visibility"],
    QS = [],
    Headers = [],
    Body1 = TemplateDocumentVisibility,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


