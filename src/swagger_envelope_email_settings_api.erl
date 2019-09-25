-module(swagger_envelope_email_settings_api).

-export([email_settings_delete_email_settings/3, email_settings_delete_email_settings/4,
         email_settings_get_email_settings/3, email_settings_get_email_settings/4,
         email_settings_post_email_settings/4, email_settings_post_email_settings/5,
         email_settings_put_email_settings/4, email_settings_put_email_settings/5]).

-define(BASE_URL, "/restapi").

%% @doc Deletes the email setting overrides for an envelope.
%% Deletes all existing email override settings for the envelope. If you want to delete an individual email override setting, use the PUT and set the value to an empty string. Note that deleting email settings will only affect email communications that occur after the deletion and the normal account email settings are used for future email communications.
-spec email_settings_delete_email_settings(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_email_settings:swagger_envelope_email_settings(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
email_settings_delete_email_settings(Ctx, AccountId, EnvelopeId) ->
    email_settings_delete_email_settings(Ctx, AccountId, EnvelopeId, #{}).

-spec email_settings_delete_email_settings(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_email_settings:swagger_envelope_email_settings(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
email_settings_delete_email_settings(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/email_settings"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets the email setting overrides for an envelope.
%% Retrieves the email override settings for the specified envelope.
-spec email_settings_get_email_settings(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_email_settings:swagger_envelope_email_settings(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
email_settings_get_email_settings(Ctx, AccountId, EnvelopeId) ->
    email_settings_get_email_settings(Ctx, AccountId, EnvelopeId, #{}).

-spec email_settings_get_email_settings(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_email_settings:swagger_envelope_email_settings(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
email_settings_get_email_settings(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/email_settings"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Adds email setting overrides to an envelope.
%% Adds email override settings, changing the email address to reply to an email address, name, or the BCC for email archive information, for the envelope. Note that adding email settings will only affect email communications that occur after the addition was made.  ### Important: The BCC Email address feature is designed to provide a copy of all email communications for external archiving purposes. DocuSign recommends that envelopes sent using the BCC for Email Archive feature, including the BCC Email Override option, include additional signer authentication options. To send a copy of the envelope to a recipient who does not need to sign, use a Carbon Copies or Certified Deliveries Recipient Type.
-spec email_settings_post_email_settings(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_email_settings:swagger_envelope_email_settings(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
email_settings_post_email_settings(Ctx, AccountId, EnvelopeId) ->
    email_settings_post_email_settings(Ctx, AccountId, EnvelopeId, #{}).

-spec email_settings_post_email_settings(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_email_settings:swagger_envelope_email_settings(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
email_settings_post_email_settings(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/email_settings"],
    QS = [],
    Headers = [],
    Body1 = EnvelopeEmailSettings,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates the email setting overrides for an envelope.
%% Updates the existing email override settings for the specified envelope. Note that modifying email settings will only affect email communications that occur after the modification was made.  This can also be used to delete an individual email override setting by using an empty string for the value to be deleted.
-spec email_settings_put_email_settings(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_email_settings:swagger_envelope_email_settings(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
email_settings_put_email_settings(Ctx, AccountId, EnvelopeId) ->
    email_settings_put_email_settings(Ctx, AccountId, EnvelopeId, #{}).

-spec email_settings_put_email_settings(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_email_settings:swagger_envelope_email_settings(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
email_settings_put_email_settings(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/email_settings"],
    QS = [],
    Headers = [],
    Body1 = EnvelopeEmailSettings,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


