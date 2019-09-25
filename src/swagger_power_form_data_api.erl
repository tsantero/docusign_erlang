-module(swagger_power_form_data_api).

-export([power_forms_get_power_form_form_data/3, power_forms_get_power_form_form_data/4]).

-define(BASE_URL, "/restapi").

%% @doc Returns the data that users entered in a PowerForm.
%% This method enables Powerform Administrators or the sender of a PowerForm to download the data that recipients have entered into a PowerForm.  You specify the format in which you want to retrieve the data in the `Accept` header. This header accepts the following values:   - `application/json`: JSON format - `application/xml`: XML format - `text/csv`: Comma-separated value (CSV) format  **Note**: Only PowerForm Administrators or the PowerForm Sender can download the data associated with a PowerForm.
-spec power_forms_get_power_form_form_data(ctx:ctx(), binary(), binary()) -> {ok, swagger_power_forms_form_data_response:swagger_power_forms_form_data_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
power_forms_get_power_form_form_data(Ctx, AccountId, PowerFormId) ->
    power_forms_get_power_form_form_data(Ctx, AccountId, PowerFormId, #{}).

-spec power_forms_get_power_form_form_data(ctx:ctx(), binary(), binary(), maps:map()) -> {ok, swagger_power_forms_form_data_response:swagger_power_forms_form_data_response(), swagger_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), swagger_utils:response_info()}.
power_forms_get_power_form_form_data(Ctx, AccountId, PowerFormId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v2.1/accounts/", AccountId, "/powerforms/", PowerFormId, "/form_data"],
    QS = lists:flatten([])++swagger_utils:optional_params(['data_layout', 'from_date', 'to_date'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = swagger_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    swagger_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


