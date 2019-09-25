-module(swagger_envelope_attachments_api).

-export([attachments_delete_attachments/4, attachments_delete_attachments/5,
         attachments_get_attachment/4, attachments_get_attachment/5,
         attachments_get_attachments/3, attachments_get_attachments/4,
         attachments_put_attachment/5, attachments_put_attachment/6,
         attachments_put_attachments/4, attachments_put_attachments/5]).

-define(BASE_URL, "/restapi").

%% @doc Delete one or more attachments from a DRAFT envelope.
-spec attachments_delete_attachments(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_attachments_result:swagger_envelope_attachments_result(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
attachments_delete_attachments(Ctx, AccountId, EnvelopeId) ->
    attachments_delete_attachments(Ctx, AccountId, EnvelopeId, #{}).

-spec attachments_delete_attachments(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_attachments_result:swagger_envelope_attachments_result(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
attachments_delete_attachments(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/attachments"],
    QS = [],
    Headers = [],
    Body1 = EnvelopeAttachmentsRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Retrieves an attachment from the envelope.
-spec attachments_get_attachment(ctx:ctx(), binary(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
attachments_get_attachment(Ctx, AccountId, AttachmentId, EnvelopeId) ->
    attachments_get_attachment(Ctx, AccountId, AttachmentId, EnvelopeId, #{}).

-spec attachments_get_attachment(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
attachments_get_attachment(Ctx, AccountId, AttachmentId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/attachments/", AttachmentId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Returns a list of attachments associated with the specified envelope
-spec attachments_get_attachments(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_attachments_result:swagger_envelope_attachments_result(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
attachments_get_attachments(Ctx, AccountId, EnvelopeId) ->
    attachments_get_attachments(Ctx, AccountId, EnvelopeId, #{}).

-spec attachments_get_attachments(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_attachments_result:swagger_envelope_attachments_result(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
attachments_get_attachments(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/attachments"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add an attachment to a DRAFT or IN-PROCESS envelope.
-spec attachments_put_attachment(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_envelope_attachments_result:swagger_envelope_attachments_result(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
attachments_put_attachment(Ctx, AccountId, AttachmentId, EnvelopeId) ->
    attachments_put_attachment(Ctx, AccountId, AttachmentId, EnvelopeId, #{}).

-spec attachments_put_attachment(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_attachments_result:swagger_envelope_attachments_result(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
attachments_put_attachment(Ctx, AccountId, AttachmentId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/attachments/", AttachmentId, ""],
    QS = [],
    Headers = [],
    Body1 = Attachment,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Add one or more attachments to a draft or in-process envelope.
%% Supported attachment formats include: .asp, .bmp, .csv, .doc, .docm, .docx, .dot, .dotm, .dotx, .gif, .htm, .html, .jpeg, .jpg, .msg, .pdf, .png, .pot, .potx, .pps, .ppt, .pptm, .pptx, .ps, .rtf, .tif, .tiff, .txt, .wpd, .xls, .xlsm, .xlsx, .xml, and .xps. For more information about supported file formats, see [Supported File Formats](https://support.docusign.com/guides/ndse-user-guide-supported-file-formats).
-spec attachments_put_attachments(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_attachments_result:swagger_envelope_attachments_result(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
attachments_put_attachments(Ctx, AccountId, EnvelopeId) ->
    attachments_put_attachments(Ctx, AccountId, EnvelopeId, #{}).

-spec attachments_put_attachments(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_attachments_result:swagger_envelope_attachments_result(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
attachments_put_attachments(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/attachments"],
    QS = [],
    Headers = [],
    Body1 = EnvelopeAttachmentsRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


