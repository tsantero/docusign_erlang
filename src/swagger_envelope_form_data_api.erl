-module(swagger_envelope_form_data_api).

-export([form_data_get_form_data/3, form_data_get_form_data/4]).

-define(BASE_URL, "/restapi").

%% @doc Returns envelope form data for an existing envelope.
%% This method downloads the envelope and field data from any in-process, completed, or canceled envelope that you sent or that is shared with you. Recipients who are also full administrators on an account can view form data for any envelopes that another user on the account has sent to them.  **Note**: To use this feature, the Sending Setting \"Allow sender to download form data\" must be enabled for the account.
-spec form_data_get_form_data(ctx:ctx(), binary(), binary()) -> {ok, swagger_envelope_form_data:swagger_envelope_form_data(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
form_data_get_form_data(Ctx, AccountId, EnvelopeId) ->
    form_data_get_form_data(Ctx, AccountId, EnvelopeId, #{}).

-spec form_data_get_form_data(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_envelope_form_data:swagger_envelope_form_data(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
form_data_get_form_data(Ctx, AccountId, EnvelopeId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/envelopes/", EnvelopeId, "/form_data"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


