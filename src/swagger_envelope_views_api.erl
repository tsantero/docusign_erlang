-module(swagger_envelope_views_api).

-export([views_post_account_console_view/3, views_post_account_console_view/4,
         views_post_envelope_correct_view/4, views_post_envelope_correct_view/5,
         views_post_envelope_edit_view/4, views_post_envelope_edit_view/5,
         views_post_envelope_recipient_preview/4, views_post_envelope_recipient_preview/5,
         views_post_envelope_recipient_shared_view/4, views_post_envelope_recipient_shared_view/5,
         views_post_envelope_recipient_view/4, views_post_envelope_recipient_view/5,
         views_post_envelope_sender_view/4, views_post_envelope_sender_view/5,
         views_post_template_recipient_preview/4, views_post_template_recipient_preview/5]).

-define(BASE_URL, "/restapi").

%% @doc Returns a URL to the authentication view UI.
%% Returns a URL that allows you to embed the authentication view of the DocuSign UI in your applications.
-spec views_post_account_console_view(ctx:ctx(), binary()) -> {ok, swagger_envelope_views:swagger_envelope_views(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
views_post_account_console_view(Ctx, AccountId) ->
    views_post_account_console_view(Ctx, AccountId, #{}).

-spec views_post_account_console_view(ctx:ctx(), binary(), maps:map()) -> {ok, swagger_envelope_views:swagger_envelope_views(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
views_post_account_console_view(Ctx, AccountId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/views/console"],
    QS = [],
    Headers = [],
    Body1 = ConsoleViewRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Returns a URL to the envelope correction UI.
%% Returns a URL that allows you to embed the envelope correction view of the DocuSign UI in your applications.  Important: iFrames should not be used for embedded operations on mobile devices due to screen space issues. For iOS devices DocuSign recommends using a WebView. 
-spec views_post_envelope_correct_view(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_views:swagger_envelope_views(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
views_post_envelope_correct_view(Ctx, AccountId, EnvelopeId) ->
    views_post_envelope_correct_view(Ctx, AccountId, EnvelopeId, #{}).

-spec views_post_envelope_correct_view(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_views:swagger_envelope_views(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
views_post_envelope_correct_view(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/views/correct"],
    QS = [],
    Headers = [],
    Body1 = CorrectViewRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Returns a URL to the edit view UI.
%% Returns a URL that allows you to embed the edit view of the DocuSign UI in your applications. This is a one-time use login token that allows the user to be placed into the DocuSign editing view.   Upon sending completion, the user is returned to the return URL provided by the API application.  Important: iFrames should not be used for embedded operations on mobile devices due to screen space issues. For iOS devices DocuSign recommends using a WebView. 
-spec views_post_envelope_edit_view(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_views:swagger_envelope_views(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
views_post_envelope_edit_view(Ctx, AccountId, EnvelopeId) ->
    views_post_envelope_edit_view(Ctx, AccountId, EnvelopeId, #{}).

-spec views_post_envelope_edit_view(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_views:swagger_envelope_views(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
views_post_envelope_edit_view(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/views/edit"],
    QS = [],
    Headers = [],
    Body1 = ReturnUrlRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
-spec views_post_envelope_recipient_preview(ctx:ctx(), binary(), binary()) -> {ok, swagger_template_views:swagger_template_views(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
views_post_envelope_recipient_preview(Ctx, AccountId, EnvelopeId) ->
    views_post_envelope_recipient_preview(Ctx, AccountId, EnvelopeId, #{}).

-spec views_post_envelope_recipient_preview(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_template_views:swagger_template_views(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
views_post_envelope_recipient_preview(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/views/recipient_preview"],
    QS = [],
    Headers = [],
    Body1 = RecipientPreviewRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
-spec views_post_envelope_recipient_shared_view(ctx:ctx(), binary(), binary()) -> {ok, swagger_template_views:swagger_template_views(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
views_post_envelope_recipient_shared_view(Ctx, AccountId, EnvelopeId) ->
    views_post_envelope_recipient_shared_view(Ctx, AccountId, EnvelopeId, #{}).

-spec views_post_envelope_recipient_shared_view(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_template_views:swagger_template_views(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
views_post_envelope_recipient_shared_view(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/views/shared"],
    QS = [],
    Headers = [],
    Body1 = RecipientViewRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Returns a URL to the recipient view UI.
%% Returns a URL that enables you to embed the recipient view of the DocuSign UI in your applications. If the recipient is a signer, then the view will provide the signing ceremony.  ###### Note: Please redirect the client to the URL. iFrames should not be used, especially if the recipient is using a mobile or tablet.   This method is only used with envelopes in the `sent` status.  Your application is responsible for authenticating the identity of the recipient or signer when you use this method. Use the parameters `assertionId`, `authenticationInstant`, `authenticationMethod`, `clientUserId`, and `securityDomain` to record information on how the recipient was authenticated. At a minimum, `authenticationMethod` and `clientUserId` are required. The information that you provide is included in the envelope's certificate of completion.  ## The event status parameter After the signer completes or ends the signing ceremony, DocuSign will redirect the user's browser back to your app via the `returnUrl` that you supply. DocuSIgn appends an `event` query parameter to the URL with the outcome of the signing ceremony. Your app should use the event parameter to determine the next step for the envelope. Don't fetch the envelope's status via Envelopes: get or a similar method; that could break the DocuSign rule against polling.  ## The URL is time-limited The URL returned by this method is valid for one use. It must be used/displayed within a couple of minutes after being generated. Once the recipient is redirected to the recipient view, they must interact with the DocuSign system periodically or their session will time out.  Because the URL is time-limited, it should not be stored or sent via email. Immediately redirect the user's browser to the URL after you receive it.  If you want to invite someone to an embedded signing session via email, the email invitation's URL must be to your application. When invoked, your app should request a recipientView URL from DocuSign and then redirect the signer to that URL.  ## Maintaining State After the recipient completes the recipient view (or signing ceremony), they are redirected to your application. Your application can recover state information about the transaction by storing information in a cookie, or by including query parameters in the `returnUrl` field. Eg, `https://myapp.eg.com/docusign_return?myState=12345` When the user is redirected to your app, the `event` query parameter will be appended. In this example, prevent spoofing by not using a guessable value as the state value.
-spec views_post_envelope_recipient_view(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_views:swagger_envelope_views(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
views_post_envelope_recipient_view(Ctx, AccountId, EnvelopeId) ->
    views_post_envelope_recipient_view(Ctx, AccountId, EnvelopeId, #{}).

-spec views_post_envelope_recipient_view(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_views:swagger_envelope_views(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
views_post_envelope_recipient_view(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/views/recipient"],
    QS = [],
    Headers = [],
    Body1 = RecipientViewRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Returns a URL to the sender view UI.
%% Returns a URL that enables you to embed the sender view of the DocuSign UI in your applications.  The returned URL can only be redirected to immediately after it is generated. It can only be used once. Therefore, request the URL immediately before you redirect your user to it.  For the best user experience, don't use an iFrame. For iOS devices DocuSign recommends using a WebView.  Multiple solutions are available for maintaining your client state. See the **Maintaining State** section of the [Embedded Signing introduction.](https://developers.docusign.com/esign-rest-api/guides/embedded-signing)  After the user has completed the sending view, the browser is redirected to the `returnUrl` supplied.  By default, if the envelope already contains one or more documents, DocuSign will initially show the document tagging view when you redirect to the URL.   To start with the envelope's recipients and documents view instead, examine the URL in the method's response.  Then change the query parameter from `send=1` to `send=0` to start with the recipients/documents view.  <blockquote> <p><b>Information Security notice:</b> This method provides full access to the sender's user account. When you use this view, the sender has full access to the user account. If the sender user account has administrative privileges, then this method also provides administrator access.</p>  <p>If your use case needs to enable a sender to update a draft envelope before it is sent, then either:</p>  <ul> <li>Configure each sender to have their own individual user account to use this API method.</li> <li>Enhance your API integration so that this method is not needed. Your integration can create the tabs, recipients and other envelope settings as needed.</li> </ul> </blockquote> 
-spec views_post_envelope_sender_view(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_views:swagger_envelope_views(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
views_post_envelope_sender_view(Ctx, AccountId, EnvelopeId) ->
    views_post_envelope_sender_view(Ctx, AccountId, EnvelopeId, #{}).

-spec views_post_envelope_sender_view(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_views:swagger_envelope_views(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
views_post_envelope_sender_view(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/views/sender"],
    QS = [],
    Headers = [],
    Body1 = ReturnUrlRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc 
-spec views_post_template_recipient_preview(ctx:ctx(), binary(), binary()) -> {ok, swagger_template_views:swagger_template_views(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
views_post_template_recipient_preview(Ctx, AccountId, TemplateId) ->
    views_post_template_recipient_preview(Ctx, AccountId, TemplateId, #{}).

-spec views_post_template_recipient_preview(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_template_views:swagger_template_views(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
views_post_template_recipient_preview(Ctx, AccountId, TemplateId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/templates/", TemplateId, "/views/recipient_preview"],
    QS = [],
    Headers = [],
    Body1 = RecipientPreviewRequest,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


