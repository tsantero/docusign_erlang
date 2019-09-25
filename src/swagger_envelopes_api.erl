-module(swagger_envelopes_api).

-export([audit_events_get_audit_events/3, audit_events_get_audit_events/4,
         envelopes_get_envelope/3, envelopes_get_envelope/4,
         envelopes_get_envelopes/2, envelopes_get_envelopes/3,
         envelopes_post_envelopes/3, envelopes_post_envelopes/4,
         envelopes_put_envelope/4, envelopes_put_envelope/5,
         envelopes_put_status/3, envelopes_put_status/4,
         notification_get_envelopes_envelope_id_notification/3, notification_get_envelopes_envelope_id_notification/4,
         notification_put_envelopes_envelope_id_notification/4, notification_put_envelopes_envelope_id_notification/5,
         pages_delete_page/5, pages_delete_page/6,
         pages_get_page_image/5, pages_get_page_image/6,
         pages_get_page_images/4, pages_get_page_images/5,
         pages_put_page_image/6, pages_put_page_image/7,
         recipients_get_recipient_initials_image/4, recipients_get_recipient_initials_image/5,
         recipients_get_recipient_signature/4, recipients_get_recipient_signature/5,
         recipients_get_recipient_signature_image/4, recipients_get_recipient_signature_image/5,
         recipients_put_recipient_initials_image/4, recipients_put_recipient_initials_image/5,
         recipients_put_recipient_signature_image/4, recipients_put_recipient_signature_image/5]).

-define(BASE_URL, "/restapi").

%% @doc Gets the envelope audit events for an envelope.
%% Gets the envelope audit events for the specified envelope.
-spec audit_events_get_audit_events(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_audit_event_response:swagger_envelope_audit_event_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
audit_events_get_audit_events(Ctx, AccountId, EnvelopeId) ->
    audit_events_get_audit_events(Ctx, AccountId, EnvelopeId, #{}).

-spec audit_events_get_audit_events(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_audit_event_response:swagger_envelope_audit_event_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
audit_events_get_audit_events(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/audit_events"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets the status of a single envelope.
%% Retrieves the overall status for the specified envelope. To get the status of a list of envelopes, use [Envelope: listStatusChanges ](https://developers.docusign.com/esign-rest-api/reference/Envelopes/Envelopes/listStatusChanges/).
-spec envelopes_get_envelope(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelopes:swagger_envelopes(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
envelopes_get_envelope(Ctx, AccountId, EnvelopeId) ->
    envelopes_get_envelope(Ctx, AccountId, EnvelopeId, #{}).

-spec envelopes_get_envelope(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelopes:swagger_envelopes(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
envelopes_get_envelope(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, ""],
    QS = lists:flatten([])++swagger_utils:optional_params(['advanced_update', 'include'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets status changes for one or more envelopes.
%% Retrieves a list of envelopes that match your request.  A large set of optional filters let you filter by date, by envelope ID, or by status codes.  Your request must include one or more of the following parameters:  * `from_date` * `envelope_ids` * `transaction_ids`   Getting envelope status using `transaction_ids` is useful for offline signing situations where it can be used determine if an envelope was created or not. It can be used for the cases where a network connection was lost, before the envelope status could be returned.  To avoid unnecessary database queries, the DocuSign signature platform first checks requests to ensure that the filter set supplied does not result in a zero-size response before querying the database.   For example, for a request with a `from_to_status` of `delivered` and a current `status` of `created,sent`, DocuSign will always return an empty list.  This is because the request translates to: find the envelopes that were delivered between the `from_date` and `to_date` dates that have a current status of `created` or `sent`. Since an envelope that has been delivered can never have a status of `created` or `sent`, a zero-size response would be generated.  In this case, DocuSign does not query the database and returns an empty list immediately.   The following table shows the valid current envelope statuses (`status` parameter) for the different status qualifiers (`from_to_status` parameter) in the request. If the status and status qualifiers in the API request do not contain any of the values shown in the Valid Current Statuses column, then an empty list is returned.  Client applications should check that the statuses (`status` parameter) they are requesting make sense for a given `from_to_status` parameter value.  | Status Qualifier<br>(`from_to_status`) | Effective Status Qualifier | Valid Current Statuses                                                      |   | :------------------------------------- | :------------------------- | :-------------------------------------------------------------------------- |   | any (changed)                          | StatusChanged              | any, created, sent, delivered, signed, completed, declined, voided, deleted |   | created                                | Created                    | any, created, sent, delivered, signed, completed, declined, voided, deleted |   | sent                                   | Sent                       | any, sent, delivered, signed, completed, declined, voided, deleted          |   | delivered                              | StatusChanged              | any, delivered, signed, completed, declined, voided, deleted                |   | signed                                 | StatusChanged              | any, signed, completed, declined, voided, deleted                           |   | completed                              | Completed                  | any, completed, declined, voided, deleted                                   |   | declined                               | StatusChanged              | any, declined, voided, deleted                                              |   | timedout<br>always return zero results | StatusChanged              | any, voided, deleted                                                        |   | voided                                 | Voided                     | any, voided, deleted                                                        |   | deleted                                | StatusChanged              | any, deleted                                                                |    ## Extraneous results  In some cases, a request for a specific envelope status will include envelopes with additional statuses. For example, in a request with a `from_date` of 2017-01-01, a `to_date` of 2017-01-07 and the status qualifier (`from_to_status`) set to `delivered`, the response set might contain envelopes that were created during that time period, but not delivered during the time period. As a workaround, check the envelope status values in the result set as needed.  
-spec envelopes_get_envelopes(ctx:ctx(), binary()) -> {ok, swagger_envelopes_information:swagger_envelopes_information(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
envelopes_get_envelopes(Ctx, AccountId) ->
    envelopes_get_envelopes(Ctx, AccountId, #{}).

-spec envelopes_get_envelopes(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_envelopes_information:swagger_envelopes_information(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
envelopes_get_envelopes(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes"],
    QS = lists:flatten([])++swagger_utils:optional_params(['ac_status', 'block', 'cdse_mode', 'continuation_token', 'count', 'custom_field', 'email', 'envelope_ids', 'exclude', 'folder_ids', 'folder_types', 'from_date', 'from_to_status', 'include', 'include_purge_information', 'intersecting_folder_ids', 'last_queried_date', 'order', 'order_by', 'powerformids', 'query_budget', 'search_text', 'start_position', 'status', 'to_date', 'transaction_ids', 'user_filter', 'user_id', 'user_name'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Creates an envelope.
%% Creates and sends an envelope or creates a draft envelope. Envelopes are fundamental resources in the DocuSign platform.  With this method you can:  * Create and send an envelope   with [documents][], [recipients][], and [tabs][]. * Create and send an envelope from a template. * Create and send an envelope from   a combination of documents and templates. * Create a draft envelope.   When you use this method to create and send an envelope in a single request, the following parameters in the request body (an [`envelopeDefinition`][envelopeDefinition]) are required:  | Parameter      | Description | | :--------      | :---------- | | `status`       | Set to `sent` to send the envelope to recipients.<br>Set to `created` (or don't set at all) to save the envelope as a draft. | | `emailSubject` | The subject of the email used to send the envelope. | | `documents`    | The [documents][] to be signed. | | `recipients`   | The email addresses of the envelope [recipients][]. |   There are many ways to use envelopes. You can create and send an envelope with a single API request, or you can use several API requests to create, populate, and send envelopes.   | See…                     | To learn about…                                                                                                                    | | :----------------------- | :--------------------------------------------------------------------------------------------------------------------------------- | | [Envelopes][envelopes]   | Envelopes, [adding documents][addingdocs], [tracking][], [locking][], [deleting][], [templates][]                                  | | [Documents][documents]   | Documents, [attachments][], [supplemental documents][supdocs], [authoritative copies][authcopies], [purging][]                     | | [Recipients][recipients] | Recipients, [recipient types][reciptypes], [recipient status][recipstatus]                                                         | | [Tabs][tabs]             | Tabs, [tab types][tabtypes], [anchoring tabs][tabanchor], [auto-populating tabs][tabauto],  [custom tabs][tabcustom], [payments][] |   [addingdocs]:           https://developers.docusign.com/esign-rest-api/guides/concepts/envelopes#adding-documents-to-an-envelope [attachments]:          https://developers.docusign.com/esign-rest-api/guides/concepts/documents#attachments [authcopies]:           https://developers.docusign.com/esign-rest-api/guides/concepts/documents#authoritative-copies [conoverview]:          https://developers.docusign.com/esign-rest-api/guides/concepts/overview [deleting]:             https://developers.docusign.com/esign-rest-api/guides/concepts/envelopes#deleting-envelopes [documents]:            https://developers.docusign.com/esign-rest-api/guides/concepts/documents [envelopeDefinition]:   https://developers.docusign.com/esign-rest-api/reference/Envelopes/Envelopes/create#envelopeDefinition [envelopes]:            https://developers.docusign.com/esign-rest-api/guides/concepts/envelopes [locking]:              https://developers.docusign.com/esign-rest-api/guides/concepts/envelopes#locking-envelopes [payments]:             https://developers.docusign.com/esign-rest-api/guides/concepts/tabs#requesting-payments [purging]:              https://developers.docusign.com/esign-rest-api/guides/concepts/documents#purging-documents [recipients]:           https://developers.docusign.com/esign-rest-api/guides/concepts/recipients [recipstatus]:          https://developers.docusign.com/esign-rest-api/guides/concepts/recipients#recipient-status [reciptypes]:           https://developers.docusign.com/esign-rest-api/guides/concepts/recipients#recipient-types [supdocs]:              https://developers.docusign.com/esign-rest-api/guides/concepts/documents#supplemental-documents [tabanchor]:            https://developers.docusign.com/esign-rest-api/guides/concepts/tabs#anchoring-tabs [tabauto]:              https://developers.docusign.com/esign-rest-api/guides/concepts/tabs#automatically-populating-tabs [tabcustom]:            https://developers.docusign.com/esign-rest-api/guides/concepts/tabs#using-custom-tabs-in-envelopes-and-templates [tabs]:                 https://developers.docusign.com/esign-rest-api/guides/concepts/tabs [tabtypes]:             https://developers.docusign.com/esign-rest-api/guides/concepts/tabs#tab-types [templates]:            https://developers.docusign.com/esign-rest-api/guides/concepts/envelopes#working-with-templates [tracking]:             https://developers.docusign.com/esign-rest-api/guides/concepts/envelopes#tracking-envelope-status 
-spec envelopes_post_envelopes(ctx:ctx(), binary()) -> {ok, swagger_envelope_summary:swagger_envelope_summary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
envelopes_post_envelopes(Ctx, AccountId) ->
    envelopes_post_envelopes(Ctx, AccountId, #{}).

-spec envelopes_post_envelopes(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_envelope_summary:swagger_envelope_summary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
envelopes_post_envelopes(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes"],
    QS = lists:flatten([])++swagger_utils:optional_params(['cdse_mode', 'change_routing_order', 'completed_documents_only', 'merge_roles_on_draft'], _OptionalParams),
    Headers = [],
    Body1 = EnvelopeDefinition,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Send, void, or modify a draft envelope. Purge documents from a completed envelope.
%% This method enables you to make changes to an envelope. You can use it to:  * Send a draft envelope * Void an in-process envelope * Modify a draft envelope * Purge documents and envelope metadata from the DocuSign platform   <div class=\"highlight highlight-info\"> <p markdown=\"1\">  Although the request body for this method is a complete envelope definition, you only need to provide the properties that you're updating.   </p> </div>   ## Sending a Draft Envelope  To send a draft envelope, include the following code in the request body:  ```json {   \"status\": \"sent\" } ```   ## Voiding an In-Process Envelope  To void an in-process envelope, include the following code in the request body:  ```json {   \"status\": \"voided\",   \"voidedReason\": \"The reason for voiding the envelope\" } ```  ## Modifying Envelope Email Information  To change the email subject and message of a draft envelope, include the following code in the request body:  ```json {   \"emailSubject\": \"new email subject\",   \"emailBlurb\": \"new email message\" } ```  ## Purging Documents from DocuSign   To place only the documents in the purge queue, leaving any corresponding attachments  and tabs in the DocuSign platform, set the `purgeState` property to `documents_queued`.   ```json {   \"purgeState\": \"documents_queued\" } ```  To place documents, attachments, and tabs in the purge queue, set the `purgeState` property to `documents_and_metadata_queued`.  ```json {   \"purgeState\": \"documents_and_metadata_queued\" } ```   You can purge documents only from completed envelopes that are not marked as the authoritative copy. The user requesting the purge must have permission to purge documents and must be the sender or be acting on behalf of the sender.    When the purge request is initiated the items to be purged are placed in the purge queue for deletion in 14 days. The sender and all recipients with DocuSign accounts associated with the envelope get an email notification the the documents will be deleted in 14 days. The notification contains a link to the documents. A second email notification is sent 7 days later. At the end of the 14-day period the documents are deleted from the system. Recipients without DocuSign accounts do not receive email notifications.   If your account has a Document Retention policy, envelope documents are automatically placed in the purge queue, and notification emails are sent at the end of the retention period. Setting a Document Retention policy is the same as setting a schedule for purging documents.  ## Removing Documents from the Purge Queue  To remove documents from the purge queue, include the following code in the request body:  ``` {   \"purgeState\": \"documents_dequeued\" } ```
-spec envelopes_put_envelope(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_update_summary:swagger_envelope_update_summary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
envelopes_put_envelope(Ctx, AccountId, EnvelopeId) ->
    envelopes_put_envelope(Ctx, AccountId, EnvelopeId, #{}).

-spec envelopes_put_envelope(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_update_summary:swagger_envelope_update_summary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
envelopes_put_envelope(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, ""],
    QS = lists:flatten([])++swagger_utils:optional_params(['advanced_update', 'resend_envelope'], _OptionalParams),
    Headers = [],
    Body1 = Envelopes,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets the envelope status for the specified envelopes.
%% Retrieves the envelope status for the specified envelopes.  You can specify the list of envelopes in the `envelope_ids` query parameter or in the request body as part of a `envelopeIdsRequest` object.
-spec envelopes_put_status(ctx:ctx(), binary()) -> {ok, swagger_envelopes_information:swagger_envelopes_information(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
envelopes_put_status(Ctx, AccountId) ->
    envelopes_put_status(Ctx, AccountId, #{}).

-spec envelopes_put_status(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_envelopes_information:swagger_envelopes_information(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
envelopes_put_status(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/status"],
    QS = lists:flatten([])++swagger_utils:optional_params(['ac_status', 'block', 'count', 'email', 'envelope_ids', 'from_date', 'from_to_status', 'start_position', 'status', 'to_date', 'transaction_ids', 'user_name'], _OptionalParams),
    Headers = [],
    Body1 = EnvelopeIdsRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets envelope notification information.
%% Retrieves the envelope notification, reminders and expirations, information for an existing envelope.
-spec notification_get_envelopes_envelope_id_notification(ctx:ctx(), binary(), binary()) -> {ok, swagger_notification:swagger_notification(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
notification_get_envelopes_envelope_id_notification(Ctx, AccountId, EnvelopeId) ->
    notification_get_envelopes_envelope_id_notification(Ctx, AccountId, EnvelopeId, #{}).

-spec notification_get_envelopes_envelope_id_notification(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_notification:swagger_notification(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
notification_get_envelopes_envelope_id_notification(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/notification"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Sets envelope notifications for an existing envelope.
%% This method sets the notifications (reminders and expirations) for an existing envelope. The request body sends a structure containing reminders and expirations settings. It also specifies whether to use the settings specified in the request, or the account default notification settings for the envelope.  Note that this request only specifies when notifications are sent; it does not initiate sending of email messages.
-spec notification_put_envelopes_envelope_id_notification(ctx:ctx(), binary(), binary()) -> {ok, swagger_notification:swagger_notification(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
notification_put_envelopes_envelope_id_notification(Ctx, AccountId, EnvelopeId) ->
    notification_put_envelopes_envelope_id_notification(Ctx, AccountId, EnvelopeId, #{}).

-spec notification_put_envelopes_envelope_id_notification(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_notification:swagger_notification(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
notification_put_envelopes_envelope_id_notification(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/notification"],
    QS = [],
    Headers = [],
    Body1 = EnvelopeNotificationRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Deletes a page from a document in an envelope.
%% Deletes a page from a document in an envelope based on the page number.
-spec pages_delete_page(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
pages_delete_page(Ctx, AccountId, DocumentId, EnvelopeId, PageNumber) ->
    pages_delete_page(Ctx, AccountId, DocumentId, EnvelopeId, PageNumber, #{}).

-spec pages_delete_page(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
pages_delete_page(Ctx, AccountId, DocumentId, EnvelopeId, PageNumber, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/documents/", DocumentId, "/pages/", PageNumber, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets a page image from an envelope for display.
%% Returns an image of a page in a document for display.
-spec pages_get_page_image(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, binary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
pages_get_page_image(Ctx, AccountId, DocumentId, EnvelopeId, PageNumber) ->
    pages_get_page_image(Ctx, AccountId, DocumentId, EnvelopeId, PageNumber, #{}).

-spec pages_get_page_image(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
pages_get_page_image(Ctx, AccountId, DocumentId, EnvelopeId, PageNumber, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/documents/", DocumentId, "/pages/", PageNumber, "/page_image"],
    QS = lists:flatten([])++swagger_utils:optional_params(['dpi', 'max_height', 'max_width', 'show_changes'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Returns document page image(s) based on input.
%% Returns images of the pages in a document for display based on the parameters that you specify.
-spec pages_get_page_images(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_page_images:swagger_page_images(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
pages_get_page_images(Ctx, AccountId, DocumentId, EnvelopeId) ->
    pages_get_page_images(Ctx, AccountId, DocumentId, EnvelopeId, #{}).

-spec pages_get_page_images(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_page_images:swagger_page_images(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
pages_get_page_images(Ctx, AccountId, DocumentId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/documents/", DocumentId, "/pages"],
    QS = lists:flatten([])++swagger_utils:optional_params(['count', 'dpi', 'max_height', 'max_width', 'nocache', 'show_changes', 'start_position'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Rotates page image from an envelope for display.
%% Rotates page image from an envelope for display. The page image can be rotated to the left or right.
-spec pages_put_page_image(ctx:ctx(), binary(), binary(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
pages_put_page_image(Ctx, AccountId, DocumentId, EnvelopeId, PageNumber) ->
    pages_put_page_image(Ctx, AccountId, DocumentId, EnvelopeId, PageNumber, #{}).

-spec pages_put_page_image(ctx:ctx(), binary(), binary(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
pages_put_page_image(Ctx, AccountId, DocumentId, EnvelopeId, PageNumber, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/documents/", DocumentId, "/pages/", PageNumber, "/page_image"],
    QS = [],
    Headers = [],
    Body1 = PageRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets the initials image for a user.
%% Retrieves the initials image for the specified user. The image is returned in the same format as it was uploaded. In the request you can specify if the chrome (the added line and identifier around the initial image) is returned with the image.  The userId specified in the endpoint must match the authenticated user's user id and the user must be a member of the account.  The `signatureIdOrName` paramter accepts signature ID or signature name. DocuSign recommends you use signature ID (`signatureId`), since some names contain characters that do not properly URL encode. If you use the user name, it is likely that the name includes spaces and you might need to URL encode the name before using it in the endpoint.   For example: \"Bob Smith\" to \"Bob%20Smith\"  Older envelopes might only contain chromed images. If getting the non-chromed image fails, try getting the chromed image.
-spec recipients_get_recipient_initials_image(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_get_recipient_initials_image(Ctx, AccountId, EnvelopeId, RecipientId) ->
    recipients_get_recipient_initials_image(Ctx, AccountId, EnvelopeId, RecipientId, #{}).

-spec recipients_get_recipient_initials_image(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_get_recipient_initials_image(Ctx, AccountId, EnvelopeId, RecipientId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/recipients/", RecipientId, "/initials_image"],
    QS = lists:flatten([])++swagger_utils:optional_params(['include_chrome'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets signature information for a signer or sign-in-person recipient.
%% Retrieves signature information for a signer or sign-in-person recipient.
-spec recipients_get_recipient_signature(ctx:ctx(), binary(), binary(), binary()) -> {ok, swagger_user_signatures:swagger_user_signatures(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_get_recipient_signature(Ctx, AccountId, EnvelopeId, RecipientId) ->
    recipients_get_recipient_signature(Ctx, AccountId, EnvelopeId, RecipientId, #{}).

-spec recipients_get_recipient_signature(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, swagger_user_signatures:swagger_user_signatures(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_get_recipient_signature(Ctx, AccountId, EnvelopeId, RecipientId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/recipients/", RecipientId, "/signature"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Retrieve signature image information for a signer/sign-in-person recipient.
%% Retrieves the specified user signature image. The image is returned in the same format as uploaded. In the request you can specify if the chrome (the added line and identifier around the initial image) is returned with the image.  The userId specified in the endpoint must match the authenticated user's user ID and the user must be a member of the account.  The `signatureIdOrName` parameter accepts signature ID or signature name. DocuSign recommends you use signature ID (`signatureId`), since some names contain characters that don't properly URL encode. If you use the user name, it is likely that the name includes spaces and you might need to URL encode the name before using it in the endpoint.   For example: \"Bob Smith\" to \"Bob%20Smith\"  Older envelopes might only have chromed images. If getting the non-chromed image fails, try getting the chromed image.
-spec recipients_get_recipient_signature_image(ctx:ctx(), binary(), binary(), binary()) -> {ok, binary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_get_recipient_signature_image(Ctx, AccountId, EnvelopeId, RecipientId) ->
    recipients_get_recipient_signature_image(Ctx, AccountId, EnvelopeId, RecipientId, #{}).

-spec recipients_get_recipient_signature_image(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, binary(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_get_recipient_signature_image(Ctx, AccountId, EnvelopeId, RecipientId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/recipients/", RecipientId, "/signature_image"],
    QS = lists:flatten([])++swagger_utils:optional_params(['include_chrome'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Sets the initials image for an accountless signer.
%% Updates the initials image for a signer that does not have a DocuSign account. The supported image formats for this file are: gif, png, jpeg, and bmp. The file size must be less than 200K.  For the Authentication/Authorization for this call, the credentials must match the sender of the envelope, the recipient must be an accountless signer or in person signer. The account must have the `CanSendEnvelope` property set to **true** and the `ExpressSendOnly` property in `SendingUser` structure must be set to **false**.
-spec recipients_put_recipient_initials_image(ctx:ctx(), binary(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_put_recipient_initials_image(Ctx, AccountId, EnvelopeId, RecipientId) ->
    recipients_put_recipient_initials_image(Ctx, AccountId, EnvelopeId, RecipientId, #{}).

-spec recipients_put_recipient_initials_image(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_put_recipient_initials_image(Ctx, AccountId, EnvelopeId, RecipientId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/recipients/", RecipientId, "/initials_image"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"image/gif">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Sets the signature image for an accountless signer.
%% Updates the signature image for an accountless signer. The supported image formats for this file are: gif, png, jpeg, and bmp. The file size must be less than 200K.  For the Authentication/Authorization for this call, the credentials must match the sender of the envelope, the recipient must be an accountless signer or in person signer. The account must have the `CanSendEnvelope` property set to **true** and the `ExpressSendOnly` property in `SendingUser` structure must be set to **false**.
-spec recipients_put_recipient_signature_image(ctx:ctx(), binary(), binary(), binary()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_put_recipient_signature_image(Ctx, AccountId, EnvelopeId, RecipientId) ->
    recipients_put_recipient_signature_image(Ctx, AccountId, EnvelopeId, RecipientId, #{}).

-spec recipients_put_recipient_signature_image(ctx:ctx(), binary(), binary(), binary(), maps:map()) -> {ok, [], swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
recipients_put_recipient_signature_image(Ctx, AccountId, EnvelopeId, RecipientId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/recipients/", RecipientId, "/signature_image"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([<<"image/gif">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


