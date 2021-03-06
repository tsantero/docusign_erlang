-module(swagger_template_bulk_recipients_api).

-export([recipients_delete_template_bulk_recipients_file/4, recipients_delete_template_bulk_recipients_file/5,
         recipients_get_template_bulk_recipients/4, recipients_get_template_bulk_recipients/5,
         recipients_put_template_bulk_recipients/5, recipients_put_template_bulk_recipients/6]).

-define(BASE_URL, "/restapi").

%% @doc Deletes the bulk recipient list on a template.
%% Deletes the bulk recipient list on a template.
-spec recipients_delete_template_bulk_recipients_file(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_bulk_recipients_update_response:swagger_bulk_recipients_update_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_delete_template_bulk_recipients_file(Ctx, AccountId, RecipientId, TemplateId) ->
    recipients_delete_template_bulk_recipients_file(Ctx, AccountId, RecipientId, TemplateId, #{}).

-spec recipients_delete_template_bulk_recipients_file(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_bulk_recipients_update_response:swagger_bulk_recipients_update_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_delete_template_bulk_recipients_file(Ctx, AccountId, RecipientId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/recipients/", RecipientId, "/bulk_recipients"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets the bulk recipient file from a template.
%% Retrieves the bulk recipient file information from a template that has a bulk recipient.
-spec recipients_get_template_bulk_recipients(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_template_bulk_recipients:swagger_template_bulk_recipients(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_get_template_bulk_recipients(Ctx, AccountId, RecipientId, TemplateId) ->
    recipients_get_template_bulk_recipients(Ctx, AccountId, RecipientId, TemplateId, #{}).

-spec recipients_get_template_bulk_recipients(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_template_bulk_recipients:swagger_template_bulk_recipients(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_get_template_bulk_recipients(Ctx, AccountId, RecipientId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/recipients/", RecipientId, "/bulk_recipients"],
    QS = lists:flatten([])++swagger_utils:optional_params(['include_tabs', 'start_position'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Adds or replaces the bulk recipients list in a template.
%% Updates the bulk recipients in a template using a file upload. The Content-Type supported for uploading a bulk recipient file is CSV (text/csv).  The REST API does not support modifying individual rows or values in the bulk recipients file. It only allows the entire file to be added or replaced with a new file.
-spec recipients_put_template_bulk_recipients(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_bulk_recipients_summary_response:swagger_bulk_recipients_summary_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_put_template_bulk_recipients(Ctx, AccountId, RecipientId, TemplateId) ->
    recipients_put_template_bulk_recipients(Ctx, AccountId, RecipientId, TemplateId, #{}).

-spec recipients_put_template_bulk_recipients(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_bulk_recipients_summary_response:swagger_bulk_recipients_summary_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_put_template_bulk_recipients(Ctx, AccountId, RecipientId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/recipients/", RecipientId, "/bulk_recipients"],
    QS = [],
    Headers = [],
    Body1 = BulkRecipientsRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


