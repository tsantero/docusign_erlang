-module(swagger_envelope_bulk_recipients_api).

-export([recipients_delete_bulk_recipients_file/4, recipients_delete_bulk_recipients_file/5,
         recipients_get_bulk_recipients/4, recipients_get_bulk_recipients/5,
         recipients_put_bulk_recipients/5, recipients_put_bulk_recipients/6]).

-define(BASE_URL, "/restapi").

%% @doc Deletes the bulk recipient file from an envelope.
%% Deletes the bulk recipient file from an envelope. This cannot be used if the envelope has been sent.  After using this, the `bulkRecipientsUri` property is not returned in subsequent GET calls for the envelope, but the recipient will remain as a bulk recipient.
-spec recipients_delete_bulk_recipients_file(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_bulk_recipients_update_response:swagger_bulk_recipients_update_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_delete_bulk_recipients_file(Ctx, AccountId, EnvelopeId, RecipientId) ->
    recipients_delete_bulk_recipients_file(Ctx, AccountId, EnvelopeId, RecipientId, #{}).

-spec recipients_delete_bulk_recipients_file(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_bulk_recipients_update_response:swagger_bulk_recipients_update_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_delete_bulk_recipients_file(Ctx, AccountId, EnvelopeId, RecipientId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/recipients/", RecipientId, "/bulk_recipients"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets the bulk recipient file from an envelope.
%% Retrieves the bulk recipient file information from an envelope that has a bulk recipient.
-spec recipients_get_bulk_recipients(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_envelope_bulk_recipients:swagger_envelope_bulk_recipients(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_get_bulk_recipients(Ctx, AccountId, EnvelopeId, RecipientId) ->
    recipients_get_bulk_recipients(Ctx, AccountId, EnvelopeId, RecipientId, #{}).

-spec recipients_get_bulk_recipients(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_bulk_recipients:swagger_envelope_bulk_recipients(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_get_bulk_recipients(Ctx, AccountId, EnvelopeId, RecipientId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/recipients/", RecipientId, "/bulk_recipients"],
    QS = lists:flatten([])++swagger_utils:optional_params(['include_tabs', 'start_position'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Adds or replaces envelope bulk recipients.
%% Updates the bulk recipients in a draft envelope using a file upload. The Content-Type supported for uploading a bulk recipient file is CSV (text/csv).  The REST API does not support modifying individual rows or values in the bulk recipients file. It only allows the entire file to be added or replaced with a new file.
-spec recipients_put_bulk_recipients(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_bulk_recipients_summary_response:swagger_bulk_recipients_summary_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_put_bulk_recipients(Ctx, AccountId, EnvelopeId, RecipientId) ->
    recipients_put_bulk_recipients(Ctx, AccountId, EnvelopeId, RecipientId, #{}).

-spec recipients_put_bulk_recipients(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_bulk_recipients_summary_response:swagger_bulk_recipients_summary_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_put_bulk_recipients(Ctx, AccountId, EnvelopeId, RecipientId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/recipients/", RecipientId, "/bulk_recipients"],
    QS = [],
    Headers = [],
    Body1 = BulkRecipientsRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"text/csv">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


