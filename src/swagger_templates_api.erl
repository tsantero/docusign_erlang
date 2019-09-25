-module(swagger_templates_api).

-export([notification_get_templates_template_id_notification/3, notification_get_templates_template_id_notification/4,
         notification_put_templates_template_id_notification/4, notification_put_templates_template_id_notification/5,
         pages_delete_template_page/6, pages_delete_template_page/7,
         pages_get_template_page_image/5, pages_get_template_page_image/6,
         pages_get_template_page_images/4, pages_get_template_page_images/5,
         pages_put_template_page_image/6, pages_put_template_page_image/7,
         templates_delete_template_part/5, templates_delete_template_part/6,
         templates_get_template/3, templates_get_template/4,
         templates_get_templates/2, templates_get_templates/3,
         templates_post_templates/3, templates_post_templates/4,
         templates_put_template/4, templates_put_template/5,
         templates_put_template_part/5, templates_put_template_part/6]).

-define(BASE_URL, "/restapi").

%% @doc Gets template notification information.
%% Retrieves the envelope notification, reminders and expirations, information for an existing template.
-spec notification_get_templates_template_id_notification(ctx:ctx(), binary(), binary()) -> {ok, swagger_notification:swagger_notification(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
notification_get_templates_template_id_notification(Ctx, AccountId, TemplateId) ->
    notification_get_templates_template_id_notification(Ctx, AccountId, TemplateId, #{}).

-spec notification_get_templates_template_id_notification(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_notification:swagger_notification(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
notification_get_templates_template_id_notification(Ctx, AccountId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/notification"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates the notification  structure for an existing template.
%% Updates the notification structure for an existing template. Use this endpoint to set reminder and expiration notifications.
-spec notification_put_templates_template_id_notification(ctx:ctx(), binary(), binary()) -> {ok, swagger_notification:swagger_notification(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
notification_put_templates_template_id_notification(Ctx, AccountId, TemplateId) ->
    notification_put_templates_template_id_notification(Ctx, AccountId, TemplateId, #{}).

-spec notification_put_templates_template_id_notification(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_notification:swagger_notification(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
notification_put_templates_template_id_notification(Ctx, AccountId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/notification"],
    QS = [],
    Headers = [],
    Body1 = TemplateNotificationRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Deletes a page from a document in an template.
%% Deletes a page from a document in a template based on the page number.
-spec pages_delete_template_page(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
pages_delete_template_page(Ctx, AccountId, DocumentId, PageNumber, TemplateId) ->
    pages_delete_template_page(Ctx, AccountId, DocumentId, PageNumber, TemplateId, #{}).

-spec pages_delete_template_page(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
pages_delete_template_page(Ctx, AccountId, DocumentId, PageNumber, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/documents/", DocumentId, "/pages/", PageNumber, ""],
    QS = [],
    Headers = [],
    Body1 = PageRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets a page image from a template for display.
%% Retrieves a page image for display from the specified template.
-spec pages_get_template_page_image(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, binary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
pages_get_template_page_image(Ctx, AccountId, DocumentId, PageNumber, TemplateId) ->
    pages_get_template_page_image(Ctx, AccountId, DocumentId, PageNumber, TemplateId, #{}).

-spec pages_get_template_page_image(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
pages_get_template_page_image(Ctx, AccountId, DocumentId, PageNumber, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/documents/", DocumentId, "/pages/", PageNumber, "/page_image"],
    QS = lists:flatten([])++swagger_utils:optional_params(['dpi', 'max_height', 'max_width', 'show_changes'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Returns document page image(s) based on input.
%% Returns images of the pages in a template document for display based on the parameters that you specify.
-spec pages_get_template_page_images(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_page_images:swagger_page_images(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
pages_get_template_page_images(Ctx, AccountId, DocumentId, TemplateId) ->
    pages_get_template_page_images(Ctx, AccountId, DocumentId, TemplateId, #{}).

-spec pages_get_template_page_images(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_page_images:swagger_page_images(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
pages_get_template_page_images(Ctx, AccountId, DocumentId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/documents/", DocumentId, "/pages"],
    QS = lists:flatten([])++swagger_utils:optional_params(['count', 'dpi', 'max_height', 'max_width', 'nocache', 'show_changes', 'start_position'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Rotates page image from a template for display.
%% Rotates page image from a template for display. The page image can be rotated to the left or right.
-spec pages_put_template_page_image(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
pages_put_template_page_image(Ctx, AccountId, DocumentId, PageNumber, TemplateId) ->
    pages_put_template_page_image(Ctx, AccountId, DocumentId, PageNumber, TemplateId, #{}).

-spec pages_put_template_page_image(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
pages_put_template_page_image(Ctx, AccountId, DocumentId, PageNumber, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/documents/", DocumentId, "/pages/", PageNumber, "/page_image"],
    QS = [],
    Headers = [],
    Body1 = PageRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Removes a member group's sharing permissions for a template.
%% Removes a member group's sharing permissions for a specified template.
-spec templates_delete_template_part(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_groups:swagger_groups(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
templates_delete_template_part(Ctx, AccountId, TemplateId, TemplatePart) ->
    templates_delete_template_part(Ctx, AccountId, TemplateId, TemplatePart, #{}).

-spec templates_delete_template_part(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_groups:swagger_groups(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
templates_delete_template_part(Ctx, AccountId, TemplateId, TemplatePart, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/", TemplatePart, ""],
    QS = [],
    Headers = [],
    Body1 = Groups,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets a specific template associated with a specified account.
%% Retrieves the definition of the specified template.
-spec templates_get_template(ctx:ctx(), binary(), binary()) -> {ok, swagger_templates:swagger_templates(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
templates_get_template(Ctx, AccountId, TemplateId) ->
    templates_get_template(Ctx, AccountId, TemplateId, #{}).

-spec templates_get_template(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_templates:swagger_templates(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
templates_get_template(Ctx, AccountId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, ""],
    QS = lists:flatten([])++swagger_utils:optional_params(['include'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets the definition of a template.
%% Retrieves the list of templates for the specified account. The request can be limited to a specific folder.
-spec templates_get_templates(ctx:ctx(), binary()) -> {ok, swagger_envelope_template_results:swagger_envelope_template_results(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
templates_get_templates(Ctx, AccountId) ->
    templates_get_templates(Ctx, AccountId, #{}).

-spec templates_get_templates(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_envelope_template_results:swagger_envelope_template_results(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
templates_get_templates(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/templates"],
    QS = lists:flatten([])++swagger_utils:optional_params(['count', 'created_from_date', 'created_to_date', 'folder_ids', 'folder_types', 'from_date', 'include', 'is_download', 'modified_from_date', 'modified_to_date', 'order', 'order_by', 'search_fields', 'search_text', 'shared_by_me', 'start_position', 'template_ids', 'to_date', 'used_from_date', 'used_to_date', 'user_filter', 'user_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Creates a template.
%% Creates a template definition using a multipart request.  ### Template Email Subject Merge Fields  Call this endpoint to insert a recipient name and email address merge fields into the email subject line when creating or sending from a template.  The merge fields, based on the recipient's role name, are added to the `emailSubject` property when the template is created or when the template is used to create an envelope. After a template sender adds the name and email information for the recipient and sends the envelope, the recipient information is automatically merged into the appropriate fields in the email subject line.  Both the sender and the recipients will see the information in the email subject line for any emails associated with the template. This provides an easy way for senders to organize their envelope emails without having to open an envelope to check the recipient.   ###### If merging the recipient information into the subject line causes the subject line to exceed 100 characters, then any characters over the 100 character limit are not included in the subject line. For cases where the recipient name or email is expected to be long, you should consider placing the merge field at the start of the email subject.  To add a recipient's name in the subject line add the following text in the `emailSubject` property when creating the template or when sending an envelope from a template:  `[[<roleName>_UserName]]`  Example:  `\"emailSubject\":\"[[Signer 1_UserName]], Please sign this NDA\",`  To add a recipient's email address in the subject line add the following text in the `emailSubject` property when creating the template or when sending an envelope from a template:  `[[<roleName>_Email]]`  Example:  `\"emailSubject\":\"[[Signer 1_Email]], Please sign this NDA\",`   In both cases the <roleName> is the recipient's contents of the `roleName` property in the template.  For cases where another recipient (such as an Agent, Editor, or Intermediary recipient) is entering the name and email information for the recipient included in the email subject, then `[[<roleName>_UserName]]` or `[[<roleName>_Email]]` is shown in the email subject.
-spec templates_post_templates(ctx:ctx(), binary()) -> {ok, swagger_template_summary:swagger_template_summary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
templates_post_templates(Ctx, AccountId) ->
    templates_post_templates(Ctx, AccountId, #{}).

-spec templates_post_templates(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_template_summary:swagger_template_summary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
templates_post_templates(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/templates"],
    QS = [],
    Headers = [],
    Body1 = Templates,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates an existing template.
%% Updates an existing template.
-spec templates_put_template(ctx:ctx(), binary(), binary()) -> {ok, swagger_template_update_summary:swagger_template_update_summary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
templates_put_template(Ctx, AccountId, TemplateId) ->
    templates_put_template(Ctx, AccountId, TemplateId, #{}).

-spec templates_put_template(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_template_update_summary:swagger_template_update_summary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
templates_put_template(Ctx, AccountId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, ""],
    QS = [],
    Headers = [],
    Body1 = Templates,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Shares a template with a group
%% Shares a template with the specified members group.
-spec templates_put_template_part(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_groups:swagger_groups(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
templates_put_template_part(Ctx, AccountId, TemplateId, TemplatePart) ->
    templates_put_template_part(Ctx, AccountId, TemplateId, TemplatePart, #{}).

-spec templates_put_template_part(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_groups:swagger_groups(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
templates_put_template_part(Ctx, AccountId, TemplateId, TemplatePart, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/", TemplatePart, ""],
    QS = [],
    Headers = [],
    Body1 = Groups,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


