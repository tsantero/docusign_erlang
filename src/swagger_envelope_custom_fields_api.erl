-module(swagger_envelope_custom_fields_api).

-export([custom_fields_delete_custom_fields/4, custom_fields_delete_custom_fields/5,
         custom_fields_get_custom_fields/3, custom_fields_get_custom_fields/4,
         custom_fields_post_custom_fields/4, custom_fields_post_custom_fields/5,
         custom_fields_put_custom_fields/4, custom_fields_put_custom_fields/5]).

-define(BASE_URL, "/restapi").

%% @doc Deletes envelope custom fields for draft and in-process envelopes.
%% Deletes envelope custom fields for draft and in-process envelopes.
-spec custom_fields_delete_custom_fields(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_custom_fields:swagger_envelope_custom_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
custom_fields_delete_custom_fields(Ctx, AccountId, EnvelopeId) ->
    custom_fields_delete_custom_fields(Ctx, AccountId, EnvelopeId, #{}).

-spec custom_fields_delete_custom_fields(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_custom_fields:swagger_envelope_custom_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
custom_fields_delete_custom_fields(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = delete,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/custom_fields"],
    QS = [],
    Headers = [],
    Body1 = EnvelopeCustomFields,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Gets the custom field information for the specified envelope.
%% Retrieves the custom field information for the specified envelope. You can use these fields in the envelopes for your account to record information about the envelope, help search for envelopes, and track information. The envelope custom fields are shown in the Envelope Settings section when a user is creating an envelope in the DocuSign member console. The envelope custom fields are not seen by the envelope recipients.  There are two types of envelope custom fields, text, and list. A text custom field lets the sender enter the value for the field. With a list custom field, the sender selects the value of the field from a pre-made list.
-spec custom_fields_get_custom_fields(ctx:ctx(), binary(), binary()) -> {ok, swagger_custom_fields_envelope:swagger_custom_fields_envelope(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
custom_fields_get_custom_fields(Ctx, AccountId, EnvelopeId) ->
    custom_fields_get_custom_fields(Ctx, AccountId, EnvelopeId, #{}).

-spec custom_fields_get_custom_fields(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_custom_fields_envelope:swagger_custom_fields_envelope(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
custom_fields_get_custom_fields(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/custom_fields"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates envelope custom fields for an envelope.
%% Updates the envelope custom fields for draft and in-process envelopes.  Each custom field used in an envelope must have a unique name.
-spec custom_fields_post_custom_fields(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_custom_fields:swagger_envelope_custom_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
custom_fields_post_custom_fields(Ctx, AccountId, EnvelopeId) ->
    custom_fields_post_custom_fields(Ctx, AccountId, EnvelopeId, #{}).

-spec custom_fields_post_custom_fields(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_custom_fields:swagger_envelope_custom_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
custom_fields_post_custom_fields(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/custom_fields"],
    QS = [],
    Headers = [],
    Body1 = EnvelopeCustomFields,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Updates envelope custom fields in an envelope.
%% Updates the envelope custom fields in draft and in-process envelopes.  Each custom field used in an envelope must have a unique name. 
-spec custom_fields_put_custom_fields(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_custom_fields:swagger_envelope_custom_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
custom_fields_put_custom_fields(Ctx, AccountId, EnvelopeId) ->
    custom_fields_put_custom_fields(Ctx, AccountId, EnvelopeId, #{}).

-spec custom_fields_put_custom_fields(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_custom_fields:swagger_envelope_custom_fields(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
custom_fields_put_custom_fields(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = put,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/custom_fields"],
    QS = [],
    Headers = [],
    Body1 = EnvelopeCustomFields,
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


